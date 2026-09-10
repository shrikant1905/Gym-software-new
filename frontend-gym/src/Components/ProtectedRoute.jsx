import React, { useState, useEffect } from 'react';
import { Navigate, useLocation, useNavigate } from 'react-router-dom';
import axiosInstance from '../Api/axiosInstance';

/**
 * ProtectedRoute - Route protection with role-based access control
 * @param {React.Component} children - Component to render if authorized
 * @param {string|string[]} allowedRoles - Single role or array of roles allowed to access
 * @param {boolean} requireAuth - Whether authentication is required (default: true)
 */
const ProtectedRoute = ({ children, allowedRoles = null, requireAuth = true }) => {
  const location = useLocation();
  const navigate = useNavigate();
  
  // Get authentication data from localStorage
  const token = localStorage.getItem('authToken');
  const userRole = localStorage.getItem('userRole');
  const [user, setUser] = useState(() => JSON.parse(localStorage.getItem('user') || '{}'));

  useEffect(() => {
    const handleUpgrade = () => {
      setUser(JSON.parse(localStorage.getItem('user') || '{}'));
    };
    window.addEventListener("userUpgrade", handleUpgrade);

    // Background check for latest plan status (useful for members whose plans are approved offline by admin)
    const checkLatestStatus = async () => {
      try {
        const currentUser = JSON.parse(localStorage.getItem('user') || '{}');
        if (currentUser && currentUser.isPlanExpired && currentUser.id) {
          const res = await axiosInstance.get(`/auth/user/${currentUser.id}`);
          if (res.data.success && res.data.user) {
            const freshUser = res.data.user;
            if (freshUser.isPlanExpired === false || (freshUser.status && freshUser.status.toLowerCase() === 'active' && freshUser.trialStatus !== 'Expired')) {
              // The backend has updated the user to active! (e.g. member payment approved)
              currentUser.isPlanExpired = false;
              localStorage.setItem('user', JSON.stringify(currentUser));
              setUser(currentUser);
            }
          }
        }
      } catch (err) {
        console.warn("Background status check failed:", err);
      }
    };
    checkLatestStatus();

    return () => window.removeEventListener("userUpgrade", handleUpgrade);
  }, []);

  // If authentication is required but no token exists, redirect to login
  if (requireAuth && !token) {
    return <Navigate to="/login" state={{ from: location }} replace />;
  }

  // If role-based access is specified, check if user has required role
  if (allowedRoles && userRole) {
    const normalizedUserRole = userRole.toUpperCase();
    const normalizedAllowedRoles = Array.isArray(allowedRoles)
      ? allowedRoles.map(role => role.toUpperCase())
      : [allowedRoles.toUpperCase()];

    if (!normalizedAllowedRoles.includes(normalizedUserRole)) {
      // User doesn't have required role, redirect to their dashboard
      const roleDashboardMap = {
        'SUPERADMIN': '/superadmin/dashboard',
        'SUBADMIN': '/admin/admindashboard',
        'ADMIN': '/admin/admindashboard',
        'MANAGER': '/manager/dashboard',
        'GENERALTRAINER': '/generaltrainer/dashboard',
        'PERSONALTRAINER': '/personaltrainer/dashboard',
        'MEMBER': '/member/dashboard',
        'HOUSEKEEPING': '/housekeeping/dashboard',
        'RECEPTIONIST': '/receptionist/dashboard',
        'SALES_AGENT': '/sales/dashboard',
      };

      const redirectPath = roleDashboardMap[normalizedUserRole] || '/member/dashboard';
      return <Navigate to={redirectPath} replace />;
    }

    // Additional sub-admin permission checklist routing protection
    if (normalizedUserRole === 'SUBADMIN') {
      const routeModuleMap = {
        '/superadmin/dashboard': 'Dashboard',
        '/sales/leads': 'Leads / Inquiries',
        '/admin/AdminBranches': 'Branches',
        '/superadmin/Admin': 'Gym Owners',
        '/superadmin/request-plan': 'Request Plan',
        '/superadmin/Plans&Pricing': 'Plans & Pricing',
        '/superadmin/payments': 'Payments',
        '/superadmin/setting': 'Setting',
        '/account': 'Setting',
      };

      const requiredModule = routeModuleMap[location.pathname];
      if (requiredModule) {
        let perms = user.permissions || [];
        if (typeof perms === 'string') {
          try {
            perms = JSON.parse(perms);
            if (typeof perms === 'string') {
              perms = JSON.parse(perms);
            }
          } catch (e) {
            perms = [];
          }
        }
        const permsArray = Array.isArray(perms) ? perms : [];

        if (!permsArray.includes(requiredModule)) {
          const subadminMenus = [
            { module: 'Dashboard', path: '/superadmin/dashboard' },
            { module: 'Leads / Inquiries', path: '/sales/leads' },
            { module: 'Branches', path: '/admin/AdminBranches' },
            { module: 'Gym Owners', path: '/superadmin/Admin' },
            { module: 'Request Plan', path: '/superadmin/request-plan' },
            { module: 'Plans & Pricing', path: '/superadmin/Plans&Pricing' },
            { module: 'Payments', path: '/superadmin/payments' },
            { module: 'Setting', path: '/superadmin/setting' }
          ];
          const firstPermitted = subadminMenus.find(m => permsArray.includes(m.module));
          const redirectPath = firstPermitted ? firstPermitted.path : '/login';
          return <Navigate to={redirectPath} replace />;
        }
      }
    }
  }

  // Check for expired plan
  if (user?.isPlanExpired) {
    const currentPath = location.pathname.toLowerCase();
    const isWhitelisted = [
      '/admin/my-subscription', 
      '/member/allplans', 
      '/login'
    ].some(path => currentPath.includes(path.toLowerCase()));

    if (!isWhitelisted) {
      const isMember = userRole?.toUpperCase() === 'MEMBER';
      const upgradePath = isMember ? '/member/allplans' : '/admin/my-subscription';
      const upgradeMessage = isMember ? 'Your membership has expired. Please renew your membership to continue.' : 'Your subscription has expired. Please renew your subscription to continue.';
      const upgradeBtnText = isMember ? 'Renew Membership' : 'Renew Subscription';
      
      return (
        <div style={{ position: 'relative', width: '100%', height: '100vh', overflow: 'hidden' }}>
          {/* Blurred Background Content */}
          <div style={{ filter: 'blur(5px)', opacity: 0.4, pointerEvents: 'none', height: '100%', overflow: 'hidden' }}>
            {children}
          </div>
          {/* Blocking Modal */}
          <div style={{
            position: 'absolute', top: 0, left: 0, width: '100%', height: '100%',
            display: 'flex', alignItems: 'center', justifyContent: 'center',
            backgroundColor: 'rgba(0,0,0,0.6)', zIndex: 99999
          }}>
            <div style={{
              background: '#ffffff', padding: '40px', borderRadius: '12px',
              textAlign: 'center', boxShadow: '0 8px 30px rgba(0,0,0,0.3)', maxWidth: '450px'
            }}>
              <h3 style={{ color: '#dc3545', marginBottom: '20px', fontWeight: 'bold' }}>Access Restricted</h3>
              <p style={{ marginBottom: '30px', fontSize: '18px', color: '#444' }}>{upgradeMessage}</p>
              <button 
                onClick={() => navigate(upgradePath)} 
                style={{
                  background: '#0d6efd', color: '#fff', border: 'none',
                  padding: '12px 24px', borderRadius: '6px', cursor: 'pointer',
                  fontWeight: 'bold', fontSize: '16px', width: '100%'
                }}
              >
                {upgradeBtnText}
              </button>
            </div>
          </div>
        </div>
      );
    }
  }

  // User is authenticated and authorized, render the component
  return children;
};

export default ProtectedRoute;


