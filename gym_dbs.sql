-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: tokaido.proxy.rlwy.net:55340
-- Generation Time: Aug 04, 2026 at 02:54 PM
-- Server version: 9.4.0
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_activity_logs`
--

CREATE TABLE `admin_activity_logs` (
  `id` int NOT NULL,
  `admin_id` int NOT NULL,
  `action_type` varchar(100) DEFAULT NULL,
  `description` text,
  `reference_id` int DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_activity_logs`
--

INSERT INTO `admin_activity_logs` (`id`, `admin_id`, `action_type`, `description`, `reference_id`, `createdAt`) VALUES
(1, 314, 'CREATE_CLASS', 'Created new class: 1Day', 38, '2026-07-25 11:54:32'),
(2, 320, 'CREATE_CLASS', 'Created new class: new class', 39, '2026-07-25 11:55:48'),
(3, 314, 'CREATE_SESSION', 'Created new session: 2nd', 51, '2026-07-25 11:55:53'),
(4, 320, 'CREATE_CLASS', 'Created new class: new two', 40, '2026-07-25 11:58:09'),
(5, 320, 'CREATE_CLASS', 'Created new class: old class', 41, '2026-07-25 12:06:05'),
(6, 320, 'CREATE_CLASS', 'Created new class: old', 42, '2026-07-25 12:06:29'),
(7, 314, 'CREATE_CLASS', 'Created new class: day2', 43, '2026-07-25 12:10:39'),
(8, 314, 'CREATE_CLASS', 'Created new class: day 3', 44, '2026-07-25 12:12:03'),
(9, 314, 'CREATE_CLASS', 'Created new class: day4', 45, '2026-07-25 12:13:33'),
(10, 320, 'CREATE_SESSION', 'Created new session: ws', 52, '2026-07-25 12:19:02'),
(11, 90, 'CREATE_SESSION', 'Created new session: 1st', 53, '2026-07-25 12:30:14'),
(12, 320, 'CREATE_CLASS', 'Created new class: wr', 46, '2026-07-26 10:01:36'),
(13, 90, 'CREATE_CLASS', 'Created new class: Yoga Advance ', 47, '2026-07-31 21:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `id` int NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memberId` int DEFAULT NULL,
  `staffId` int DEFAULT NULL,
  `branchId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `channels` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `targetRoles` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sentBy` int DEFAULT NULL,
  `branchId` int DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `adminId` int DEFAULT NULL,
  `imageUrl` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `subject`, `message`, `channels`, `targetRoles`, `sentBy`, `branchId`, `createdAt`, `adminId`, `imageUrl`) VALUES
(17, 'team', 'hiii', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '[2]', 67, NULL, '2026-07-14 10:36:31', NULL, 'https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf'),
(18, 'Independence Day Special Timing Notice 🇮🇳', 'Happy Independence Day to all our members! Please note that the gym will open from 6:00 AM to 12:00 PM on August 15th. We have a special morning Zumba and Strength session planned. Join us in tri-color attire! Regular hours will resume on August 16th.', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '[\"MEMBERS\",\"STAFF\"]', 90, NULL, '2026-07-22 05:26:45', 90, NULL),
(19, 'Free Personal Training & Diet consultation this week! 🥗', 'Monsoon is here! Don\'t let the rains stop your gains. Get a free customized diet chart and 1-on-1 fitness assessment with our certified trainers from July 25th to July 30th. Book your slot at the reception desk today!', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '[\"MEMBERS\"]', 90, NULL, '2026-07-22 05:26:45', 90, NULL),
(20, 'New Equipment Alert: Premium Strength Upgrades! 🏋️‍♂️', 'We have upgraded our strength area with brand new premium steel dumbbell sets (ranging from 2.5kg to 45kg) and a brand new commercial spin bike. Head over to the weight room and crush your training goals!', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '[\"MEMBERS\",\"STAFF\"]', 90, NULL, '2026-07-22 05:26:45', 90, NULL),
(21, 'today is the big day of our admin and sub admin ', 'today is the big day of our admin and sub admin ', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '[2]', 67, NULL, '2026-07-23 10:09:40', NULL, 'http://localhost:4000/uploads/1784801380955_y8dq9h.png'),
(22, 'today is the big day of our admin and sub admin ', 'today is the big day of our admin and sub admin ', '[\"APP_PUSH\",\"EMAIL\"]', '[\"MEMBERS\",\"STAFF\"]', 90, 48, '2026-07-23 10:11:39', 90, 'http://localhost:4000/uploads/1784801499354_naa0j1.png'),
(23, 'hiii', 'hiii', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '[2]', 67, NULL, '2026-07-23 17:00:19', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784826018/announcements/lm75tz85_1784826018157.jpg.jpg'),
(24, 'Tughhh', 'dddd', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '[2]', 67, NULL, '2026-07-24 07:35:22', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784878522/announcements/65vj4yc2_1784878520765.jpg.jpg'),
(25, 'ff', 'hhnk', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '[2]', 67, NULL, '2026-07-24 09:10:03', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784884203/announcements/ktwhuicq_1784884202252.png.png'),
(26, 'today is the big day of our admin and sub admin ', 'qwertyuioppppppp;lkjhgfdsazxcvbnm,./', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '[2]', 67, NULL, '2026-07-24 12:52:05', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784897525/announcements/0mt2vyp6_1784897524839.jpg.jpg'),
(27, 'today is the big day of our admin and sub admin ', '11111111111111111111111111111111111111111111', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '[2]', 67, NULL, '2026-07-24 13:00:01', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png'),
(28, 'GYM', 'offer 3Month  only 1000 rs', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '[2]', 67, NULL, '2026-07-25 07:46:37', NULL, NULL),
(29, 'fwwwwwwww', 'fffffffffff', '[\"APP_PUSH\",\"EMAIL\"]', '[\"MEMBERS\",\"STAFF\"]', 320, NULL, '2026-07-26 10:07:55', 320, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png');

-- --------------------------------------------------------

--
-- Table structure for table `app_notification`
--

CREATE TABLE `app_notification` (
  `id` int NOT NULL,
  `tenantId` int NOT NULL,
  `senderId` int DEFAULT NULL,
  `receiverId` int NOT NULL,
  `receiverRole` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `referenceType` varchar(100) DEFAULT NULL,
  `referenceId` varchar(100) DEFAULT NULL,
  `actionUrl` varchar(255) DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `isRead` tinyint(1) DEFAULT '0',
  `readAt` datetime DEFAULT NULL,
  `priority` varchar(50) DEFAULT 'NORMAL',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_notification`
--

INSERT INTO `app_notification` (`id`, `tenantId`, `senderId`, `receiverId`, `receiverRole`, `type`, `title`, `message`, `referenceType`, `referenceId`, `actionUrl`, `metadata`, `isRead`, `readAt`, `priority`, `createdAt`, `updatedAt`) VALUES
(1, 67, NULL, 67, 'Super Admin', 'PLAN_PURCHASED', 'New Subscription Purchased', 'Admin: N/A\nCompany: gymsoft \nPlan: 7 day freee package\nBilling: 7 Days\nAmount: ₹0.00\nStatus: Active', 'SUBSCRIPTION', '31', '/admin/subscription', NULL, 1, '2026-07-27 10:37:19', 'NORMAL', '2026-07-24 10:47:12', '2026-07-27 10:37:19'),
(2, 307, NULL, 307, 'Admin', 'SUBSCRIPTION_ACTIVATED', 'SUBSCRIPTION ACTIVATED', 'Hi Admin,\n\nThank you for purchasing your subscription.\n\nYour account has been activated successfully.\n\nPlan: 7 day freee package\nExpiry: 31/07/2026\n\nEnjoy using the platform.', 'SUBSCRIPTION', '31', '/', NULL, 0, NULL, 'NORMAL', '2026-07-24 10:48:07', '2026-07-24 10:48:07'),
(3, 67, NULL, 67, 'Super Admin', 'PLAN_UPGRADE_REQUEST', 'Plan Upgrade Request', 'Admin requested upgrade.\n\nCurrent Plan: Basic\nRequested Plan: bronz\nBilling: Monthly', 'SUBSCRIPTION', '32', '/admin/subscription', NULL, 1, '2026-07-27 10:37:19', 'NORMAL', '2026-07-24 10:50:02', '2026-07-27 10:37:19'),
(4, 67, NULL, 67, 'Super Admin', 'PLAN_UPGRADE_REQUEST', 'New Plan Upgrade Request', 'Admin: John Admin\\nGym: John Admin\\nCurrent Plan: Current Plan\\nRequested Plan: Basic\\nBilling: Monthly / Yearly\\nRequested At: 24/07/2026\\nStatus: Pending', 'SUBSCRIPTION', '34', '/admin/subscription', NULL, 1, '2026-07-27 10:37:19', 'NORMAL', '2026-07-24 12:09:40', '2026-07-27 10:37:19'),
(5, 67, NULL, 67, 'Superadmin', 'PLAN_UPGRADE_REQUEST', 'New Plan Upgrade Request', 'Admin: shrikant sullere\\nGym: shrikant sullere\\nCurrent Plan: Current Plan\\nRequested Plan: bronz\\nBilling: Monthly / Yearly\\nRequested At: 24/07/2026\\nStatus: Pending', 'SUBSCRIPTION', '35', '/admin/subscription', NULL, 1, '2026-07-24 12:37:52', 'NORMAL', '2026-07-24 12:29:01', '2026-07-24 12:37:52'),
(6, 67, NULL, 67, 'Superadmin', 'PLAN_PURCHASED', 'Plan Purchased', 'Hi fithit gym , you purchased 7 day freee package.', 'SUBSCRIPTION', '36', '/admin/subscription', NULL, 1, '2026-07-25 06:42:01', 'NORMAL', '2026-07-24 12:39:38', '2026-07-25 06:42:01'),
(7, 313, NULL, 313, 'Admin', 'SUBSCRIPTION_ACTIVATED', 'Subscription Activated', 'Hi fithit gym , your 7 day freee package is active.', 'SUBSCRIPTION', '36', '/', NULL, 0, NULL, 'NORMAL', '2026-07-24 12:40:13', '2026-07-24 12:40:13'),
(8, 67, NULL, 67, 'Superadmin', 'PLAN_UPGRADE_REQUEST', 'New Plan Upgrade Request', 'Admin: fithit gym \\nGym: fithit gym \\nCurrent Plan: Current Plan\\nRequested Plan: Pro\\nBilling: Monthly / Yearly\\nRequested At: 24/07/2026\\nStatus: Pending', 'SUBSCRIPTION', '37', '/admin/subscription', NULL, 1, '2026-07-25 06:42:01', 'NORMAL', '2026-07-24 12:41:15', '2026-07-25 06:42:01'),
(9, 90, NULL, 89, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear John Smith, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:08', '2026-07-24 13:00:08'),
(10, 244, NULL, 244, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear 7daysfreetrialgym, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:08', '2026-07-24 13:00:08'),
(11, 247, NULL, 247, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear zzgym, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:08', '2026-07-24 13:00:08'),
(12, 245, NULL, 245, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear 7dayssecondfree, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:08', '2026-07-24 13:00:08'),
(13, 246, NULL, 246, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear aaagym, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:08', '2026-07-24 13:00:08'),
(14, 90, NULL, 90, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear John Admin, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 1, '2026-07-24 13:16:40', 'NORMAL', '2026-07-24 13:00:08', '2026-07-24 13:16:40'),
(15, 248, NULL, 248, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear plangym, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:08', '2026-07-24 13:00:08'),
(16, 249, NULL, 249, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear planbgym, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:08', '2026-07-24 13:00:08'),
(17, 250, NULL, 250, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear plancgym, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:08', '2026-07-24 13:00:08'),
(18, 251, NULL, 251, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear palnaagym, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:09', '2026-07-24 13:00:09'),
(19, 253, NULL, 253, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear bhaktigym, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:09', '2026-07-24 13:00:09'),
(20, 260, NULL, 260, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear bhgaygym, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:09', '2026-07-24 13:00:09'),
(21, 267, NULL, 267, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear barodpia, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:09', '2026-07-24 13:00:09'),
(22, 268, NULL, 268, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear piasingh, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:09', '2026-07-24 13:00:09'),
(23, 276, NULL, 276, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear piiigym, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:09', '2026-07-24 13:00:09'),
(24, 252, NULL, 252, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear chikkugym, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:10', '2026-07-24 13:00:10'),
(25, 282, NULL, 282, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear nalinigym, 11111111111111111111111111111111111111111111\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784898000/announcements/o6t4tg6f_1784897999580.png.png', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-24 13:00:10', '2026-07-24 13:00:10'),
(26, 67, NULL, 67, 'Superadmin', 'PLAN_PURCHASED', 'Plan Purchased', 'Hi icon, you purchased 7-Day Free Trial.', 'SUBSCRIPTION', '38', '/admin/subscription', NULL, 1, '2026-07-25 06:42:01', 'NORMAL', '2026-07-25 06:09:08', '2026-07-25 06:42:01'),
(27, 314, NULL, 314, 'Admin', 'SUBSCRIPTION_ACTIVATED', 'Subscription Activated', 'Hi icon, your subscription for 7-Day Free Trial has been successfully activated. You can now login at http://localhost:5173/login.\\nAmount Paid: 0.00', 'SUBSCRIPTION', '38', '/', NULL, 0, NULL, 'NORMAL', '2026-07-25 06:11:04', '2026-07-25 06:11:04'),
(28, 67, NULL, 67, 'Superadmin', 'PLAN_PURCHASED', 'Plan Purchased', 'Hi gym  soft go, you purchased 7 day freee package.', 'SUBSCRIPTION', '39', '/admin/subscription', NULL, 1, '2026-07-25 06:42:01', 'NORMAL', '2026-07-25 06:17:14', '2026-07-25 06:42:01'),
(29, 315, NULL, 315, 'Admin', 'SUBSCRIPTION_ACTIVATED', 'Subscription Activated', 'Hi gym  soft go, your subscription for 7 day freee package has been successfully activated. You can now login at http://localhost:5173/login.\\nAmount Paid: 0.00', 'SUBSCRIPTION', '39', '/', NULL, 1, '2026-07-25 06:43:11', 'NORMAL', '2026-07-25 06:19:12', '2026-07-25 06:43:11'),
(30, 67, NULL, 67, 'Superadmin', 'PLAN_PURCHASED', 'Plan Purchased', 'Hi first fitness gym, you purchased 7-Day Free Trial.', 'SUBSCRIPTION', '40', '/admin/subscription', NULL, 1, '2026-07-27 10:37:19', 'NORMAL', '2026-07-25 06:44:56', '2026-07-27 10:37:19'),
(31, 319, NULL, 319, 'Admin', 'SUBSCRIPTION_ACTIVATED', 'Subscription Activated', 'Hi first fitness gym, your subscription for 7-Day Free Trial has been successfully activated. You can now login at http://localhost:5173/login.\\nAmount Paid: 0.00', 'SUBSCRIPTION', '40', '/', NULL, 0, NULL, 'NORMAL', '2026-07-25 06:49:07', '2026-07-25 06:49:07'),
(32, 67, NULL, 67, 'Superadmin', 'PLAN_PURCHASED', 'Plan Purchased', 'Hi fresh up, you purchased bronz.', 'SUBSCRIPTION', '41', '/admin/subscription', NULL, 1, '2026-07-27 10:37:19', 'NORMAL', '2026-07-25 07:13:21', '2026-07-27 10:37:19'),
(33, 320, NULL, 320, 'Admin', 'SUBSCRIPTION_ACTIVATED', 'Subscription Activated', 'Hi fresh up, your subscription for bronz has been successfully activated. Amount Paid: 2000.00', 'SUBSCRIPTION', '41', '/', NULL, 1, '2026-07-25 08:33:32', 'NORMAL', '2026-07-25 07:13:44', '2026-07-25 08:33:32'),
(34, 90, NULL, 90, 'Admin', 'PLAN_UPGRADED', 'Plan Upgraded', 'Hi John Admin, your plan has been successfully upgraded to bronz.', 'SUBSCRIPTION', '33', '/admin/subscription', NULL, 1, '2026-07-28 07:58:46', 'NORMAL', '2026-07-25 07:36:32', '2026-07-28 07:58:46'),
(35, 90, NULL, 90, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear John Admin, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 1, '2026-07-28 07:58:46', 'NORMAL', '2026-07-25 07:46:43', '2026-07-28 07:58:46'),
(36, 244, NULL, 244, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear 7daysfreetrialgym, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(37, 245, NULL, 245, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear 7dayssecondfree, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(38, 90, NULL, 89, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear John Smith, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(39, 246, NULL, 246, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear aaagym, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(40, 247, NULL, 247, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear zzgym, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(41, 249, NULL, 249, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear planbgym, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(42, 250, NULL, 250, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear plancgym, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(43, 251, NULL, 251, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear palnaagym, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(44, 248, NULL, 248, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear plangym, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(45, 252, NULL, 252, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear chikkugym, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:45', '2026-07-25 07:46:45'),
(46, 253, NULL, 253, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear bhaktigym, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:45', '2026-07-25 07:46:45'),
(47, 267, NULL, 267, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear barodpia, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:45', '2026-07-25 07:46:45'),
(48, 268, NULL, 268, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear piasingh, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:45', '2026-07-25 07:46:45'),
(49, 276, NULL, 276, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear piiigym, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:45', '2026-07-25 07:46:45'),
(50, 260, NULL, 260, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear bhgaygym, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:45', '2026-07-25 07:46:45'),
(51, 282, NULL, 282, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear nalinigym, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:45', '2026-07-25 07:46:45'),
(52, 283, NULL, 283, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear raj_shekar sir, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:46', '2026-07-25 07:46:46'),
(53, 302, NULL, 302, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear Gym1, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:46', '2026-07-25 07:46:46'),
(54, 304, NULL, 304, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear maxwell gym, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:46', '2026-07-25 07:46:46'),
(55, 305, NULL, 305, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear ABC Pvt Ltd, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:46', '2026-07-25 07:46:46'),
(56, 293, NULL, 293, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear Mohit sharma, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:46', '2026-07-25 07:46:46'),
(57, 306, NULL, 306, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear testing gym , offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:46', '2026-07-25 07:46:46'),
(58, 307, NULL, 307, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear gymsoft , offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:46', '2026-07-25 07:46:46'),
(59, 314, NULL, 314, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear icon, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:47', '2026-07-25 07:46:47'),
(60, 315, NULL, 315, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear gym  soft go, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:47', '2026-07-25 07:46:47'),
(61, 319, NULL, 319, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear first fitness gym, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:47', '2026-07-25 07:46:47'),
(62, 313, NULL, 313, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear fithit gym , offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-25 07:46:47', '2026-07-25 07:46:47'),
(63, 320, NULL, 320, 'Admin', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear fresh up, offer 3Month  only 1000 rs', 'ANNOUNCEMENT', NULL, '/admin/announcements', NULL, 1, '2026-07-25 08:33:32', 'NORMAL', '2026-07-25 07:46:47', '2026-07-25 08:33:32'),
(64, 90, NULL, 360, 'Member', 'Welcome', 'Welcome to the Gym 🎉', 'Welcome to our fitness family. Your account has been created successfully. We wish you a healthy and successful fitness journey.', 'MEMBER', '196', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-07-25 10:06:34', '2026-07-25 10:06:34'),
(65, 90, NULL, 360, 'Member', 'Membership', 'Membership Activated', 'Your membership plan has been activated successfully.\n\nPlan Name: Pre\nPlan Duration: 60 days\nStart Date: 2026-07-25\nExpiry Date: 2026-09-23', 'MEMBERSHIP', '196', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-07-25 10:06:34', '2026-07-25 10:06:34'),
(66, 314, 7, 345, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-23\nTime: 09:00 - 10:30', 'SHIFT', '64', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:17:27', '2026-07-25 10:17:27'),
(67, 314, 7, 345, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-24\nTime: 09:00 - 10:30', 'SHIFT', '65', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:17:28', '2026-07-25 10:17:28'),
(68, 314, 7, 345, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-25\nTime: 09:00 - 10:30', 'SHIFT', '66', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:17:28', '2026-07-25 10:17:28'),
(69, 314, 7, 345, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-26\nTime: 09:00 - 10:30', 'SHIFT', '67', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:17:28', '2026-07-25 10:17:28'),
(70, 314, 7, 345, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-27\nTime: 09:00 - 10:30', 'SHIFT', '68', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:17:29', '2026-07-25 10:17:29'),
(71, 314, 7, 345, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-28\nTime: 09:00 - 10:30', 'SHIFT', '69', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:17:29', '2026-07-25 10:17:29'),
(72, 314, 7, 345, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-29\nTime: 09:00 - 10:30', 'SHIFT', '70', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:17:30', '2026-07-25 10:17:30'),
(73, 314, 7, 345, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-30\nTime: 09:00 - 10:30', 'SHIFT', '71', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:17:30', '2026-07-25 10:17:30'),
(74, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-08\nTime: 09:00 - 10:30', 'SHIFT', '72', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:15', '2026-07-25 10:21:15'),
(75, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-09\nTime: 09:00 - 10:30', 'SHIFT', '73', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:16', '2026-07-25 10:21:16'),
(76, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-10\nTime: 09:00 - 10:30', 'SHIFT', '74', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:16', '2026-07-25 10:21:16'),
(77, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-11\nTime: 09:00 - 10:30', 'SHIFT', '75', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:16', '2026-07-25 10:21:16'),
(78, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-12\nTime: 09:00 - 10:30', 'SHIFT', '76', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:17', '2026-07-25 10:21:17'),
(79, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-13\nTime: 09:00 - 10:30', 'SHIFT', '77', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:17', '2026-07-25 10:21:17'),
(80, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-14\nTime: 09:00 - 10:30', 'SHIFT', '78', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:17', '2026-07-25 10:21:17'),
(81, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-15\nTime: 09:00 - 10:30', 'SHIFT', '79', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:18', '2026-07-25 10:21:18'),
(82, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-16\nTime: 09:00 - 10:30', 'SHIFT', '80', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:18', '2026-07-25 10:21:18'),
(83, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-17\nTime: 09:00 - 10:30', 'SHIFT', '81', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:19', '2026-07-25 10:21:19'),
(84, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-18\nTime: 09:00 - 10:30', 'SHIFT', '82', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:19', '2026-07-25 10:21:19'),
(85, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-19\nTime: 09:00 - 10:30', 'SHIFT', '83', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:19', '2026-07-25 10:21:19'),
(86, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-08\nTime: 09:00 - 10:30', 'SHIFT', '84', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:19', '2026-07-25 10:21:19'),
(87, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-20\nTime: 09:00 - 10:30', 'SHIFT', '85', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:20', '2026-07-25 10:21:20'),
(88, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-09\nTime: 09:00 - 10:30', 'SHIFT', '86', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:20', '2026-07-25 10:21:20'),
(89, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-21\nTime: 09:00 - 10:30', 'SHIFT', '87', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:20', '2026-07-25 10:21:20'),
(90, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-10\nTime: 09:00 - 10:30', 'SHIFT', '88', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:21', '2026-07-25 10:21:21'),
(91, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-22\nTime: 09:00 - 10:30', 'SHIFT', '89', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:21', '2026-07-25 10:21:21'),
(92, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-11\nTime: 09:00 - 10:30', 'SHIFT', '90', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:21', '2026-07-25 10:21:21'),
(93, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-23\nTime: 09:00 - 10:30', 'SHIFT', '91', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:21', '2026-07-25 10:21:21'),
(94, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-12\nTime: 09:00 - 10:30', 'SHIFT', '92', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:21', '2026-07-25 10:21:21'),
(95, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-24\nTime: 09:00 - 10:30', 'SHIFT', '93', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:21', '2026-07-25 10:21:21'),
(96, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-25\nTime: 09:00 - 10:30', 'SHIFT', '94', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:22', '2026-07-25 10:21:22'),
(97, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-13\nTime: 09:00 - 10:30', 'SHIFT', '95', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:22', '2026-07-25 10:21:22'),
(98, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-26\nTime: 09:00 - 10:30', 'SHIFT', '96', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:22', '2026-07-25 10:21:22'),
(99, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-14\nTime: 09:00 - 10:30', 'SHIFT', '97', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:22', '2026-07-25 10:21:22'),
(100, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-27\nTime: 09:00 - 10:30', 'SHIFT', '98', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:22', '2026-07-25 10:21:22'),
(101, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-15\nTime: 09:00 - 10:30', 'SHIFT', '99', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:23', '2026-07-25 10:21:23'),
(102, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-28\nTime: 09:00 - 10:30', 'SHIFT', '100', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:23', '2026-07-25 10:21:23'),
(103, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-16\nTime: 09:00 - 10:30', 'SHIFT', '101', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:23', '2026-07-25 10:21:23'),
(104, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-29\nTime: 09:00 - 10:30', 'SHIFT', '102', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:23', '2026-07-25 10:21:23'),
(105, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-17\nTime: 09:00 - 10:30', 'SHIFT', '103', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:23', '2026-07-25 10:21:23'),
(106, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-30\nTime: 09:00 - 10:30', 'SHIFT', '104', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:24', '2026-07-25 10:21:24'),
(107, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-18\nTime: 09:00 - 10:30', 'SHIFT', '105', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:24', '2026-07-25 10:21:24'),
(108, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-31\nTime: 09:00 - 10:30', 'SHIFT', '106', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:24', '2026-07-25 10:21:24'),
(109, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-19\nTime: 09:00 - 10:30', 'SHIFT', '107', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:24', '2026-07-25 10:21:24'),
(110, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-01\nTime: 09:00 - 10:30', 'SHIFT', '108', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:24', '2026-07-25 10:21:24'),
(111, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-20\nTime: 09:00 - 10:30', 'SHIFT', '109', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:25', '2026-07-25 10:21:25'),
(112, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-02\nTime: 09:00 - 10:30', 'SHIFT', '110', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:25', '2026-07-25 10:21:25'),
(113, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-21\nTime: 09:00 - 10:30', 'SHIFT', '111', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:25', '2026-07-25 10:21:25'),
(114, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-03\nTime: 09:00 - 10:30', 'SHIFT', '112', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:25', '2026-07-25 10:21:25'),
(115, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-22\nTime: 09:00 - 10:30', 'SHIFT', '113', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:25', '2026-07-25 10:21:25'),
(116, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-04\nTime: 09:00 - 10:30', 'SHIFT', '114', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:26', '2026-07-25 10:21:26'),
(117, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-23\nTime: 09:00 - 10:30', 'SHIFT', '115', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:26', '2026-07-25 10:21:26'),
(118, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-05\nTime: 09:00 - 10:30', 'SHIFT', '116', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:26', '2026-07-25 10:21:26'),
(119, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-24\nTime: 09:00 - 10:30', 'SHIFT', '117', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:26', '2026-07-25 10:21:26'),
(120, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-06\nTime: 09:00 - 10:30', 'SHIFT', '119', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:27', '2026-07-25 10:21:27'),
(121, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-25\nTime: 09:00 - 10:30', 'SHIFT', '118', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:27', '2026-07-25 10:21:27'),
(122, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-07\nTime: 09:00 - 10:30', 'SHIFT', '120', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:27', '2026-07-25 10:21:27'),
(123, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-26\nTime: 09:00 - 10:30', 'SHIFT', '121', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:27', '2026-07-25 10:21:27'),
(124, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-08\nTime: 09:00 - 10:30', 'SHIFT', '122', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:28', '2026-07-25 10:21:28'),
(125, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-27\nTime: 09:00 - 10:30', 'SHIFT', '123', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:28', '2026-07-25 10:21:28'),
(126, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-28\nTime: 09:00 - 10:30', 'SHIFT', '124', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:29', '2026-07-25 10:21:29'),
(127, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-29\nTime: 09:00 - 10:30', 'SHIFT', '125', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:29', '2026-07-25 10:21:29'),
(128, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-30\nTime: 09:00 - 10:30', 'SHIFT', '126', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:33', '2026-07-25 10:21:33'),
(129, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-31\nTime: 09:00 - 10:30', 'SHIFT', '127', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:34', '2026-07-25 10:21:34'),
(130, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-01\nTime: 09:00 - 10:30', 'SHIFT', '128', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:34', '2026-07-25 10:21:34'),
(131, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-02\nTime: 09:00 - 10:30', 'SHIFT', '129', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:35', '2026-07-25 10:21:35'),
(132, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-03\nTime: 09:00 - 10:30', 'SHIFT', '130', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:35', '2026-07-25 10:21:35'),
(133, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-04\nTime: 09:00 - 10:30', 'SHIFT', '131', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:35', '2026-07-25 10:21:35'),
(134, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-05\nTime: 09:00 - 10:30', 'SHIFT', '132', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:36', '2026-07-25 10:21:36'),
(135, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-06\nTime: 09:00 - 10:30', 'SHIFT', '133', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:36', '2026-07-25 10:21:36'),
(136, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-07\nTime: 09:00 - 10:30', 'SHIFT', '134', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:37', '2026-07-25 10:21:37'),
(137, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-08\nTime: 09:00 - 10:30', 'SHIFT', '135', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:21:37', '2026-07-25 10:21:37'),
(138, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-25\nTime: 09:00 - 10:15', 'SHIFT', '136', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:45', '2026-07-25 10:23:45'),
(139, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-26\nTime: 09:00 - 10:15', 'SHIFT', '137', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:46', '2026-07-25 10:23:46'),
(140, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-27\nTime: 09:00 - 10:15', 'SHIFT', '138', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:46', '2026-07-25 10:23:46'),
(141, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-28\nTime: 09:00 - 10:15', 'SHIFT', '139', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:46', '2026-07-25 10:23:46'),
(142, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-29\nTime: 09:00 - 10:15', 'SHIFT', '140', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:47', '2026-07-25 10:23:47'),
(143, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-30\nTime: 09:00 - 10:15', 'SHIFT', '141', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:47', '2026-07-25 10:23:47'),
(144, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-07-31\nTime: 09:00 - 10:15', 'SHIFT', '142', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:48', '2026-07-25 10:23:48'),
(145, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-01\nTime: 09:00 - 10:15', 'SHIFT', '143', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:48', '2026-07-25 10:23:48'),
(146, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-02\nTime: 09:00 - 10:15', 'SHIFT', '144', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:48', '2026-07-25 10:23:48'),
(147, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-03\nTime: 09:00 - 10:15', 'SHIFT', '145', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:49', '2026-07-25 10:23:49'),
(148, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-04\nTime: 09:00 - 10:15', 'SHIFT', '146', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:49', '2026-07-25 10:23:49'),
(149, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-05\nTime: 09:00 - 10:15', 'SHIFT', '147', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:49', '2026-07-25 10:23:49'),
(150, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-06\nTime: 09:00 - 10:15', 'SHIFT', '148', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:50', '2026-07-25 10:23:50'),
(151, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-07\nTime: 09:00 - 10:15', 'SHIFT', '149', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:50', '2026-07-25 10:23:50'),
(152, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-08\nTime: 09:00 - 10:15', 'SHIFT', '150', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:51', '2026-07-25 10:23:51'),
(153, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-09\nTime: 09:00 - 10:15', 'SHIFT', '151', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:51', '2026-07-25 10:23:51'),
(154, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-10\nTime: 09:00 - 10:15', 'SHIFT', '152', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:52', '2026-07-25 10:23:52'),
(155, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-11\nTime: 09:00 - 10:15', 'SHIFT', '153', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:52', '2026-07-25 10:23:52'),
(156, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-12\nTime: 09:00 - 10:15', 'SHIFT', '154', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:52', '2026-07-25 10:23:52'),
(157, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-13\nTime: 09:00 - 10:15', 'SHIFT', '155', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:53', '2026-07-25 10:23:53'),
(158, 90, 7, 321, 'Member', 'New Shift Assigned', 'New Shift Assigned', 'New Shift Assigned\nShift Type: Morning Shift\nDate: 2026-08-14\nTime: 09:00 - 10:15', 'SHIFT', '156', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:23:53', '2026-07-25 10:23:53'),
(159, 314, 314, 318, 'Member', 'New Task Assigned', 'New Task Assigned', 'A new task has been assigned to you by Admin.\nTask Name: fitness\nPriority: Medium\nDue Date: 2026-07-29\nStatus: Assigned', 'TASK', '42', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:29:09', '2026-07-25 10:29:09'),
(160, 314, 314, 340, 'Member', 'New Task Assigned', 'New Task Assigned', 'A new task has been assigned to you by Admin.\nTask Name: chj\nPriority: Low\nDue Date: 2026-07-29\nStatus: Assigned', 'TASK', '43', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:29:49', '2026-07-25 10:29:49'),
(161, 314, 314, 344, 'Member', 'New Task Assigned', 'New Task Assigned', 'A new task has been assigned to you by Admin.\nTask Name: jhgfds\nPriority: High\nDue Date: 2026-07-31\nStatus: Assigned', 'TASK', '44', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:30:24', '2026-07-25 10:30:24'),
(162, 314, 314, 339, 'Member', 'New Task Assigned', 'New Task Assigned', 'A new task has been assigned to you by Admin.\nTask Name: jhgf\nPriority: Medium\nDue Date: 2026-07-31\nStatus: Assigned', 'TASK', '45', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 10:31:09', '2026-07-25 10:31:09'),
(163, 314, 314, 340, 'Trainer', 'New Class Assigned', 'New Class Assigned', 'You have been assigned to a new class: 1Day | Date: 2026-07-25 | Time: 09:00 | Capacity: 20', 'CLASS', '38', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 11:54:31', '2026-07-25 11:54:31'),
(164, 320, 320, 330, 'Trainer', 'New Class Assigned', 'New Class Assigned', 'You have been assigned to a new class: new class | Date: 2026-07-26 | Time: 06:45 | Capacity: 20', 'CLASS', '39', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 11:55:48', '2026-07-25 11:55:48'),
(165, 314, 314, 340, 'Trainer', 'New Session Assigned', 'New Session Assigned', 'You have been assigned to a new session: 2nd | Date: 2026-07-25 | Time: 10:00 | Capacity: 20', 'SESSION', '51', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 11:55:53', '2026-07-25 11:55:53'),
(166, 320, 320, 331, 'Trainer', 'New Class Assigned', 'New Class Assigned', 'You have been assigned to a new class: new two | Date: 2026-07-29 | Time: 16:45 | Capacity: 20', 'CLASS', '40', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 11:58:08', '2026-07-25 11:58:08'),
(167, 320, NULL, 331, 'Member', 'SYSTEM', 'Notification', 'Class Updated: new two', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 11:58:45', '2026-07-25 11:58:45'),
(168, 320, NULL, 330, 'Member', 'SYSTEM', 'Notification', 'Class Updated: new class', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 11:58:56', '2026-07-25 11:58:56'),
(169, 320, 320, 322, 'Trainer', 'New Class Assigned', 'New Class Assigned', 'You have been assigned to a new class: old class | Date: 2026-07-31 | Time: 17:00 | Capacity: 20', 'CLASS', '41', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 12:06:04', '2026-07-25 12:06:04'),
(170, 320, 320, 327, 'Trainer', 'New Class Assigned', 'New Class Assigned', 'You have been assigned to a new class: old | Date: 2026-08-01 | Time: 17:00 | Capacity: 20', 'CLASS', '42', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 12:06:29', '2026-07-25 12:06:29'),
(171, 314, 314, 339, 'Trainer', 'New Class Assigned', 'New Class Assigned', 'You have been assigned to a new class: day2 | Date: 2026-07-24 | Time: 07:45 | Capacity: 20', 'CLASS', '43', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 12:10:39', '2026-07-25 12:10:39'),
(172, 314, 314, 318, 'Trainer', 'New Class Assigned', 'New Class Assigned', 'You have been assigned to a new class: day 3 | Date: 2026-07-23 | Time: 17:30 | Capacity: 20', 'CLASS', '44', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 12:12:02', '2026-07-25 12:12:02'),
(173, 314, 314, 338, 'Trainer', 'New Class Assigned', 'New Class Assigned', 'You have been assigned to a new class: day4 | Date: 2026-07-15 | Time: 07:00 | Capacity: 20', 'CLASS', '45', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 12:13:33', '2026-07-25 12:13:33'),
(174, 320, 320, 327, 'Trainer', 'New Session Assigned', 'New Session Assigned', 'You have been assigned to a new session: ws | Date: 2026-07-30 | Time: 01:00 | Capacity: 20', 'SESSION', '52', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 12:19:01', '2026-07-25 12:19:01'),
(175, 90, 90, 324, 'Trainer', 'New Session Assigned', 'New Session Assigned', 'You have been assigned to a new session: 1st | Date: 2026-07-31 | Time: 17:00 | Capacity: 20', 'SESSION', '53', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 12:30:14', '2026-07-25 12:30:14'),
(176, 320, 320, 359, 'Member', 'Booking Confirmed', 'Booking Confirmed', 'Your booking has been confirmed for old', 'CLASS', '42', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 12:41:28', '2026-07-25 12:41:28'),
(177, 320, 359, 327, 'Trainer', 'New Class Booking', 'New Class Booking', 'New booking received for old by asd', 'CLASS', '42', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 12:41:28', '2026-07-25 12:41:28'),
(178, 320, 359, 320, 'Admin', 'New Class Booking', 'New Class Booking', 'New booking received for old by asd', 'CLASS', '42', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 12:41:28', '2026-07-25 12:41:28'),
(179, 314, 314, 357, 'Member', 'Booking Confirmed', 'Booking Confirmed', 'Your booking has been confirmed for day4', 'CLASS', '45', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 12:42:09', '2026-07-25 12:42:09'),
(180, 314, 357, 338, 'Trainer', 'New Class Booking', 'New Class Booking', 'New booking received for day4 by kkk', 'CLASS', '45', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 12:42:09', '2026-07-25 12:42:09'),
(181, 314, 357, 314, 'Admin', 'New Class Booking', 'New Class Booking', 'New booking received for day4 by kkk', 'CLASS', '45', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 12:42:09', '2026-07-25 12:42:09'),
(182, 314, NULL, 354, 'Staff', 'Workout Plan Assigned', 'Workout Plan Assigned', 'A new workout plan \"sdfghj\" has been assigned to you.', 'WORKOUT_PLAN', '12', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 13:18:45', '2026-07-25 13:18:45'),
(183, 302, NULL, 302, 'Admin', 'New Check-In', 'New Check-In', 'member1 has checked in at 06:08 PM.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 18:08:57', '2026-07-25 18:08:57'),
(184, 302, NULL, 303, 'Receptionist', 'New Check-In', 'New Check-In', 'member1 has checked in at 06:08 PM.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 18:08:57', '2026-07-25 18:08:57'),
(185, 302, NULL, 308, 'Trainer', 'New Check-In', 'New Check-In', 'member1 has checked in at 06:08 PM.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 18:08:57', '2026-07-25 18:08:57'),
(186, 302, NULL, 309, 'Trainer', 'New Check-In', 'New Check-In', 'member1 has checked in at 06:08 PM.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 18:08:57', '2026-07-25 18:08:57'),
(187, 302, NULL, 310, 'Receptionist', 'New Check-In', 'New Check-In', 'member1 has checked in at 06:08 PM.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 18:08:57', '2026-07-25 18:08:57'),
(188, 302, NULL, 311, 'Staff', 'Workout Plan Assigned', 'Workout Plan Assigned', 'A new workout plan \"Legs\" has been assigned to you.', 'WORKOUT_PLAN', '13', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 18:32:37', '2026-07-25 18:32:37'),
(189, 302, NULL, 311, 'Staff', 'Diet Plan Assigned', 'Diet Plan Assigned', 'A new diet plan \"2 eggs\" has been assigned to you.', 'DIET_PLAN', '7', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-25 18:34:04', '2026-07-25 18:34:04');
INSERT INTO `app_notification` (`id`, `tenantId`, `senderId`, `receiverId`, `receiverRole`, `type`, `title`, `message`, `referenceType`, `referenceId`, `actionUrl`, `metadata`, `isRead`, `readAt`, `priority`, `createdAt`, `updatedAt`) VALUES
(190, 313, NULL, 313, 'Admin', 'PLAN_UPGRADED', 'Plan Upgraded', 'Hi fithit gym , your plan has been successfully upgraded to Pro.', 'SUBSCRIPTION', '37', '/admin/subscription', NULL, 0, NULL, 'NORMAL', '2026-07-25 22:21:49', '2026-07-25 22:21:49'),
(191, 320, 320, 327, 'Trainer', 'New Class Assigned', 'New Class Assigned', 'You have been assigned to a new class: wr | Date: 2026-07-28 | Time: 15:00 | Capacity: 20', 'CLASS', '46', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-26 10:01:36', '2026-07-26 10:01:36'),
(192, 320, NULL, 359, 'Staff', 'Diet Plan Assigned', 'Diet Plan Assigned', 'A new diet plan \"2 eggs\" has been assigned to you.', 'DIET_PLAN', '7', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-26 10:02:42', '2026-07-26 10:02:42'),
(193, 320, NULL, 359, 'Staff', 'Workout Plan Assigned', 'Workout Plan Assigned', 'A new workout plan \"vr\" has been assigned to you.', 'WORKOUT_PLAN', '14', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-26 10:03:01', '2026-07-26 10:03:01'),
(194, 320, NULL, 320, 'Admin', 'New Check-In', 'New Check-In', 'asd has checked in at 10:03 AM.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(195, 320, NULL, 322, 'Trainer', 'New Check-In', 'New Check-In', 'asd has checked in at 10:03 AM.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(196, 320, NULL, 327, 'Trainer', 'New Check-In', 'New Check-In', 'asd has checked in at 10:03 AM.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(197, 320, NULL, 330, 'Trainer', 'New Check-In', 'New Check-In', 'asd has checked in at 10:03 AM.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(198, 320, NULL, 331, 'Trainer', 'New Check-In', 'New Check-In', 'asd has checked in at 10:03 AM.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(199, 320, NULL, 333, 'Receptionist', 'New Check-In', 'New Check-In', 'asd has checked in at 10:03 AM.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(200, 320, NULL, 334, 'Receptionist', 'New Check-In', 'New Check-In', 'asd has checked in at 10:03 AM.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(201, 320, NULL, 335, 'Staff', 'New Check-In', 'New Check-In', 'asd has checked in at 10:03 AM.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(202, 320, NULL, 336, 'Staff', 'New Check-In', 'New Check-In', 'asd has checked in at 10:03 AM.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(203, 320, NULL, 342, 'Member', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear safari, fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/member/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:04', '2026-07-26 10:08:04'),
(204, 320, NULL, 346, 'Member', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear safari two , fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/member/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:04', '2026-07-26 10:08:04'),
(205, 320, NULL, 347, 'Member', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear pgx , fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/member/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:04', '2026-07-26 10:08:04'),
(206, 320, NULL, 348, 'Member', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear pgx two , fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/member/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:04', '2026-07-26 10:08:04'),
(207, 320, NULL, 349, 'Member', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear kt, fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/member/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:05', '2026-07-26 10:08:05'),
(208, 320, NULL, 351, 'Member', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear kt two, fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/member/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:05', '2026-07-26 10:08:05'),
(209, 320, NULL, 358, 'Member', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear r4ewf, fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/member/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:05', '2026-07-26 10:08:05'),
(210, 320, NULL, 359, 'Member', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear asd, fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/member/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:05', '2026-07-26 10:08:05'),
(211, 320, NULL, 322, 'Staff', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear personal trainer one, fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/staff/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:05', '2026-07-26 10:08:05'),
(212, 320, NULL, 327, 'Staff', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear personal trainer second, fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/staff/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:05', '2026-07-26 10:08:05'),
(213, 320, NULL, 330, 'Staff', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear general trainer one, fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/staff/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:05', '2026-07-26 10:08:05'),
(214, 320, NULL, 331, 'Staff', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear general trainer two, fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/staff/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:06', '2026-07-26 10:08:06'),
(215, 320, NULL, 333, 'Staff', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear receptionist one, fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/staff/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:06', '2026-07-26 10:08:06'),
(216, 320, NULL, 334, 'Staff', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear receptionist Two, fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/staff/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:06', '2026-07-26 10:08:06'),
(217, 320, NULL, 335, 'Staff', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear sales one, fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/staff/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:06', '2026-07-26 10:08:06'),
(218, 320, NULL, 336, 'Staff', 'ANNOUNCEMENT', 'Gym Announcement', 'Dear sales two , fffffffffff\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1785060475/announcements/fdk69rmz_1785060474357.png.png', 'ANNOUNCEMENT', NULL, '/staff/announcements', NULL, 0, NULL, 'NORMAL', '2026-07-26 10:08:06', '2026-07-26 10:08:06'),
(219, 90, NULL, 89, 'Admin', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(220, 90, NULL, 90, 'Admin', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 1, '2026-07-31 09:52:14', 'NORMAL', '2026-07-28 09:31:14', '2026-07-31 09:52:14'),
(221, 90, NULL, 127, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(222, 90, NULL, 129, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(223, 90, NULL, 130, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(224, 90, NULL, 131, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(225, 90, NULL, 132, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(226, 90, NULL, 269, 'Staff', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(227, 90, NULL, 270, 'Staff', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(228, 90, NULL, 271, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(229, 90, NULL, 272, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(230, 90, NULL, 273, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(231, 90, NULL, 274, 'Receptionist', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(232, 90, NULL, 277, 'Receptionist', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(233, 90, NULL, 278, 'Manager', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(234, 90, NULL, 279, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 1, '2026-07-30 05:23:17', 'NORMAL', '2026-07-28 09:31:14', '2026-07-30 05:23:17'),
(235, 90, NULL, 280, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 1, '2026-07-31 20:22:31', 'NORMAL', '2026-07-28 09:31:14', '2026-07-31 20:22:31'),
(236, 90, NULL, 281, 'Staff', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(237, 90, NULL, 321, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(238, 90, NULL, 323, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(239, 90, NULL, 324, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(240, 90, NULL, 325, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(241, 90, NULL, 326, 'Receptionist', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(242, 90, NULL, 328, 'Receptionist', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(243, 90, NULL, 329, 'Staff', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(244, 90, NULL, 332, 'Staff', 'New Check-In', 'New Check-In', 'Mamber has checked in at 03:01 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(245, 90, 90, 163, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi {name}, we noticed you\'ve been absent for {daysAbsent} days. We miss you at the gym!', 'AT_RISK_MEMBER', '156', NULL, NULL, 1, '2026-07-28 10:33:29', 'HIGH', '2026-07-28 09:39:40', '2026-07-28 10:33:29'),
(246, 90, 90, 224, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi demo boy, we noticed you\'ve been absent for 43 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '152', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:16', '2026-07-28 09:58:16'),
(247, 90, 90, 163, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi Mamber, we noticed you\'ve been absent for 1 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '156', NULL, NULL, 1, '2026-07-28 10:33:29', 'HIGH', '2026-07-28 09:58:17', '2026-07-28 10:33:29'),
(248, 90, 90, 230, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi pia b, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '157', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:17', '2026-07-28 09:58:17'),
(249, 90, 90, 231, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi riya , we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '158', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:18', '2026-07-28 09:58:18'),
(250, 90, 90, 255, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi sanni, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '160', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:20', '2026-07-28 09:58:20'),
(251, 90, 90, 275, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi barodjia, we noticed you\'ve been absent for 8 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '161', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:21', '2026-07-28 09:58:21'),
(252, 90, 90, 285, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi rahshekar2, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '162', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:22', '2026-07-28 09:58:22'),
(253, 90, 90, 287, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi xyz, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '164', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:24', '2026-07-28 09:58:24'),
(254, 90, 90, 288, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi taasi, we noticed you\'ve been absent for 211 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '165', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:24', '2026-07-28 09:58:24'),
(255, 90, 90, 289, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi Auto Email Test Member, we noticed you\'ve been absent for 210 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '166', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:25', '2026-07-28 09:58:25'),
(256, 90, 90, 290, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi Auto Email Member, we noticed you\'ve been absent for 211 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '167', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:27', '2026-07-28 09:58:27'),
(257, 90, 90, 291, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi sarah, we noticed you\'ve been absent for 211 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '168', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:28', '2026-07-28 09:58:28'),
(258, 90, 90, 294, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi sam, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '170', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:29', '2026-07-28 09:58:29'),
(259, 90, 90, 295, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi Diya Jain, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '171', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:30', '2026-07-28 09:58:30'),
(260, 90, 90, 296, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi user user, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '172', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:31', '2026-07-28 09:58:31'),
(261, 90, 90, 297, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi test, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '173', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:31', '2026-07-28 09:58:31'),
(262, 90, 90, 298, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi tanuja, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '174', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:33', '2026-07-28 09:58:33'),
(263, 90, 90, 299, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi sdf, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '175', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:34', '2026-07-28 09:58:34'),
(264, 90, 90, 300, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi bot user, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '176', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:34', '2026-07-28 09:58:34'),
(265, 90, 90, 301, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi safari, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '177', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:35', '2026-07-28 09:58:35'),
(266, 90, 90, 360, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi wdsasxssxxss, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'AT_RISK_MEMBER', '196', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 09:58:50', '2026-07-28 09:58:50'),
(267, 90, 90, 288, 'Member', 'MEMBER_MESSAGE', 'GymSoft — We Miss You! 💪', 'Hi {name}, we noticed you\'ve been absent for {daysAbsent} days. We miss you at the gym!', 'AT_RISK_MEMBER', '165', NULL, NULL, 0, NULL, 'HIGH', '2026-07-28 10:29:36', '2026-07-28 10:29:36'),
(268, 67, NULL, 67, 'Superadmin', 'PLAN_PURCHASED', 'Plan Purchased', 'Hi house of gain, you purchased bronz.', 'SUBSCRIPTION', '42', '/admin/subscription', NULL, 1, '2026-08-03 12:28:17', 'NORMAL', '2026-07-31 09:36:31', '2026-08-03 12:28:17'),
(269, 90, NULL, 361, 'Member', 'Welcome', 'Welcome to the Gym 🎉', 'Welcome to our fitness family. Your account has been created successfully. We wish you a healthy and successful fitness journey.', 'MEMBER', '197', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-07-31 09:46:20', '2026-07-31 09:46:20'),
(270, 90, NULL, 361, 'Member', 'Membership', 'Membership Activated', 'Your membership plan has been activated successfully.\n\nPlan Name: Pre\nPlan Duration: 60 days\nStart Date: 2026-07-31\nExpiry Date: 2026-09-29', 'MEMBERSHIP', '197', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-07-31 09:46:20', '2026-07-31 09:46:20'),
(271, 67, NULL, 67, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi Super Admin,\\n\\nYour OTP is\\n564953\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 1, '2026-08-03 12:28:17', 'NORMAL', '2026-07-31 10:47:58', '2026-08-03 12:28:17'),
(272, 67, NULL, 67, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi Super Admin,\\n\\nYour OTP is\\n711791\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 1, '2026-08-03 12:28:17', 'NORMAL', '2026-07-31 10:57:43', '2026-08-03 12:28:17'),
(273, 90, NULL, 89, 'Admin', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:04', '2026-07-31 11:26:04'),
(274, 90, NULL, 90, 'Admin', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 1, '2026-08-01 10:00:56', 'NORMAL', '2026-07-31 11:26:04', '2026-08-01 10:00:56'),
(275, 90, NULL, 127, 'Trainer', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:04', '2026-07-31 11:26:04'),
(276, 90, NULL, 129, 'Trainer', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:04', '2026-07-31 11:26:04'),
(277, 90, NULL, 130, 'Trainer', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:04', '2026-07-31 11:26:04'),
(278, 90, NULL, 131, 'Trainer', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:04', '2026-07-31 11:26:04'),
(279, 90, NULL, 132, 'Trainer', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(280, 90, NULL, 269, 'Staff', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(281, 90, NULL, 270, 'Staff', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(282, 90, NULL, 271, 'Trainer', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(283, 90, NULL, 272, 'Trainer', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(284, 90, NULL, 273, 'Trainer', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(285, 90, NULL, 274, 'Receptionist', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(286, 90, NULL, 277, 'Receptionist', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(287, 90, NULL, 278, 'Manager', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(288, 90, NULL, 279, 'Trainer', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(289, 90, NULL, 280, 'Trainer', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 1, '2026-07-31 20:22:20', 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 20:22:20'),
(290, 90, NULL, 281, 'Staff', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(291, 90, NULL, 321, 'Trainer', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(292, 90, NULL, 323, 'Trainer', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(293, 90, NULL, 324, 'Trainer', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(294, 90, NULL, 325, 'Trainer', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(295, 90, NULL, 326, 'Receptionist', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(296, 90, NULL, 328, 'Receptionist', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(297, 90, NULL, 329, 'Staff', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(298, 90, NULL, 332, 'Staff', 'New Check-In', 'New Check-In', 'wqads has checked in at 04:56 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(299, 90, NULL, 366, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi shrikant,\\n\\nYour OTP is\\n865571\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 11:42:17', '2026-07-31 11:42:17'),
(300, 90, NULL, 367, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi shrikant sullere,\\n\\nYour OTP is\\n565371\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 12:09:53', '2026-07-31 12:09:53'),
(301, 320, NULL, 320, 'Admin', 'New Check-In', 'New Check-In', 'sdfgh has checked in at 05:44 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(302, 320, NULL, 322, 'Trainer', 'New Check-In', 'New Check-In', 'sdfgh has checked in at 05:44 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(303, 320, NULL, 327, 'Trainer', 'New Check-In', 'New Check-In', 'sdfgh has checked in at 05:44 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(304, 320, NULL, 330, 'Trainer', 'New Check-In', 'New Check-In', 'sdfgh has checked in at 05:44 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(305, 320, NULL, 331, 'Trainer', 'New Check-In', 'New Check-In', 'sdfgh has checked in at 05:44 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(306, 320, NULL, 333, 'Receptionist', 'New Check-In', 'New Check-In', 'sdfgh has checked in at 05:44 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(307, 320, NULL, 334, 'Receptionist', 'New Check-In', 'New Check-In', 'sdfgh has checked in at 05:44 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(308, 320, NULL, 335, 'Staff', 'New Check-In', 'New Check-In', 'sdfgh has checked in at 05:44 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(309, 320, NULL, 336, 'Staff', 'New Check-In', 'New Check-In', 'sdfgh has checked in at 05:44 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(310, 283, NULL, 283, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi raj_shekar sir,\\n\\nYour OTP is\\n678954\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 12:20:57', '2026-07-31 12:20:57'),
(311, 320, NULL, 320, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member was has been added to your gym.', 'MEMBER', '205', '/dashboard/memberlist', NULL, 0, NULL, 'NORMAL', '2026-07-31 12:22:13', '2026-07-31 12:22:13'),
(312, 320, NULL, 370, 'Member', 'MEMBER_CREATED', 'Welcome!', 'Hi amul, your account is created.', 'MEMBER', '206', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-07-31 12:35:34', '2026-07-31 12:35:34'),
(313, 320, NULL, 320, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member amul has been added to your gym.', 'MEMBER', '206', '/dashboard/memberlist', NULL, 0, NULL, 'NORMAL', '2026-07-31 12:35:34', '2026-07-31 12:35:34'),
(314, 320, NULL, 370, 'Member', 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned', 'Hi amul, personal two  has been assigned to you.', 'MEMBERSHIP', '206', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-07-31 12:35:34', '2026-07-31 12:35:34'),
(315, 320, NULL, 370, 'Member', 'General', 'Membership Activated', 'Your membership plan \'N/A\' has been successfully assigned. Validity: 30 days.', 'PLAN_ASSIGNMENT', '120', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-07-31 12:42:05', '2026-07-31 12:42:05'),
(316, 320, NULL, 370, 'Member', 'General', 'Membership Activated', 'Your membership plan \'N/A\' has been successfully assigned. Validity: 29 days.', 'PLAN_ASSIGNMENT', '121', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-07-31 12:42:49', '2026-07-31 12:42:49'),
(317, 90, NULL, 371, 'Member', 'MEMBER_CREATED', 'Welcome!', 'Hi shrikant, your account is created.', 'MEMBER', '207', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-07-31 12:56:47', '2026-07-31 12:56:47'),
(318, 90, NULL, 90, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member shrikant has been added to your gym.', 'MEMBER', '207', '/dashboard/memberlist', NULL, 1, '2026-08-01 10:00:56', 'NORMAL', '2026-07-31 12:56:47', '2026-08-01 10:00:56'),
(319, 90, NULL, 371, 'Member', 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned', 'Hi shrikant, Pre has been assigned to you.', 'MEMBERSHIP', '207', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-07-31 12:56:47', '2026-07-31 12:56:47'),
(320, 90, NULL, 371, 'Member', 'General', 'Membership Activated', 'Your membership plan \'new plan \' has been successfully assigned. Price: ₹1000, Validity: 5 days.', 'PLAN_ASSIGNMENT', '123', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-07-31 12:57:45', '2026-07-31 12:57:45'),
(321, 90, NULL, 371, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi shrikant,\\n\\nYour OTP is\\n469964\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 12:58:21', '2026-07-31 12:58:21'),
(322, 90, NULL, 371, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi shrikant,\\n\\nYour OTP is\\n144468\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 13:04:15', '2026-07-31 13:04:15'),
(323, 90, NULL, 371, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi shrikant,\\n\\nYour OTP is\\n691876\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 13:14:14', '2026-07-31 13:14:14'),
(324, 90, NULL, 371, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi shrikant,\\n\\nYour OTP is\\n380970\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 13:22:43', '2026-07-31 13:22:43'),
(325, 279, 90, 286, 'Member', 'Booking Confirmed', 'Booking Confirmed', 'Your booking has been confirmed for Workout classes', 'CLASS', '31', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 20:28:06', '2026-07-31 20:28:06'),
(326, 90, 286, 279, 'Trainer', 'New Class Booking', 'New Class Booking', 'New booking received for Workout classes by john', 'CLASS', '31', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 20:28:06', '2026-07-31 20:28:06'),
(327, 90, 286, 90, 'Admin', 'New Class Booking', 'New Class Booking', 'New booking received for Workout classes by john', 'CLASS', '31', NULL, NULL, 1, '2026-08-01 10:00:56', 'NORMAL', '2026-07-31 20:28:06', '2026-08-01 10:00:56'),
(328, 279, 90, 286, 'Member', 'Booking Confirmed', 'Booking Confirmed', 'Your booking has been confirmed for raj special onee', 'CLASS', '35', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 20:29:51', '2026-07-31 20:29:51'),
(329, 90, 286, 280, 'Trainer', 'New Class Booking', 'New Class Booking', 'New booking received for raj special onee by john', 'CLASS', '35', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 20:29:51', '2026-07-31 20:29:51'),
(330, 90, 286, 90, 'Admin', 'New Class Booking', 'New Class Booking', 'New booking received for raj special onee by john', 'CLASS', '35', NULL, NULL, 1, '2026-08-01 10:00:56', 'NORMAL', '2026-07-31 20:29:51', '2026-08-01 10:00:56'),
(331, 279, 90, 286, 'Member', 'Booking Confirmed', 'Booking Confirmed', 'Your booking has been confirmed for special july class', 'CLASS', '34', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 20:46:46', '2026-07-31 20:46:46'),
(332, 90, 286, 280, 'Trainer', 'New Class Booking', 'New Class Booking', 'New booking received for special july class by john', 'CLASS', '34', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 20:46:47', '2026-07-31 20:46:47'),
(333, 90, 286, 90, 'Admin', 'New Class Booking', 'New Class Booking', 'New booking received for special july class by john', 'CLASS', '34', NULL, NULL, 1, '2026-07-31 21:15:29', 'NORMAL', '2026-07-31 20:46:48', '2026-07-31 21:15:29'),
(334, 90, 90, 280, 'Trainer', 'New Class Assigned', 'New Class Assigned', 'You have been assigned to a new class: Yoga Advance  | Date: 2026-08-01 | Time: 05:00 | Capacity: 20', 'CLASS', '47', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 21:00:31', '2026-07-31 21:00:31'),
(335, 279, 90, 286, 'Member', 'Booking Confirmed', 'Booking Confirmed', 'Your booking has been confirmed for Yoga Advance ', 'CLASS', '47', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 21:03:08', '2026-07-31 21:03:08'),
(336, 90, 286, 280, 'Trainer', 'New Class Booking', 'New Class Booking', 'New booking received for Yoga Advance  by john', 'CLASS', '47', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 21:03:09', '2026-07-31 21:03:09'),
(337, 90, 286, 90, 'Admin', 'New Class Booking', 'New Class Booking', 'New booking received for Yoga Advance  by john', 'CLASS', '47', NULL, NULL, 1, '2026-08-01 10:00:56', 'NORMAL', '2026-07-31 21:03:10', '2026-08-01 10:00:56'),
(338, 279, 90, 286, 'Member', 'Booking Confirmed', 'Booking Confirmed', 'Your booking has been confirmed for group class', 'CLASS', '37', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 21:03:56', '2026-07-31 21:03:56'),
(339, 90, 286, 280, 'Trainer', 'New Class Booking', 'New Class Booking', 'New booking received for group class by john', 'CLASS', '37', NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 21:03:57', '2026-07-31 21:03:57'),
(340, 90, 286, 90, 'Admin', 'New Class Booking', 'New Class Booking', 'New booking received for group class by john', 'CLASS', '37', NULL, NULL, 1, '2026-07-31 21:22:38', 'NORMAL', '2026-07-31 21:03:58', '2026-07-31 21:22:38'),
(341, 283, NULL, 283, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi raj_shekar sir,\\n\\nYour OTP is\\n897289\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-07-31 21:20:28', '2026-07-31 21:20:28'),
(342, 90, NULL, 371, 'Member', 'General', 'Membership Activated', 'Your membership plan \'Yoga Evening \' has been successfully assigned. Price: ₹3200, Validity: 30 days.', 'PLAN_ASSIGNMENT', '125', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-01 05:09:10', '2026-08-01 05:09:10'),
(343, 90, NULL, 371, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi shrikant,\\n\\nYour OTP is\\n376291\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 05:15:54', '2026-08-01 05:15:54'),
(344, 90, NULL, 371, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi shrikant,\\n\\nYour OTP is\\n426258\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 05:30:42', '2026-08-01 05:30:42'),
(345, 90, NULL, 371, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi shrikant,\\n\\nYour OTP is\\n603567\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 05:36:21', '2026-08-01 05:36:21'),
(346, 90, NULL, 371, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi shrikant,\\n\\nYour OTP is\\n490012\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 05:51:30', '2026-08-01 05:51:30'),
(347, 90, NULL, 90, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member yash has been added to your gym.', 'MEMBER', '208', '/dashboard/memberlist', NULL, 1, '2026-08-01 10:00:56', 'NORMAL', '2026-08-01 06:17:25', '2026-08-01 10:00:56'),
(348, 90, NULL, 372, 'Member', 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned', 'Hi yash, Pre has been assigned to you.', 'MEMBERSHIP', '208', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-08-01 06:17:25', '2026-08-01 06:17:25'),
(349, 90, NULL, 372, 'Member', 'MEMBER_CREATED', 'Welcome!', 'Hi yash, your account is created.', 'MEMBER', '208', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-01 06:17:25', '2026-08-01 06:17:25'),
(350, 90, NULL, 372, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi yash,\\n\\nYour OTP is\\n478832\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:18:22', '2026-08-01 06:18:22'),
(351, 90, NULL, 372, 'Admin/Staff', 'PASSWORD_CHANGED', 'Password Changed Successfully', 'Your account password has been changed successfully.\\n\\nIf this was not you, please contact your administrator immediately.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:18:55', '2026-08-01 06:18:55'),
(352, 90, NULL, 89, 'Admin', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(353, 90, NULL, 90, 'Admin', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 1, '2026-08-01 10:00:56', 'NORMAL', '2026-08-01 06:20:59', '2026-08-01 10:00:56'),
(354, 90, NULL, 127, 'Trainer', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(355, 90, NULL, 129, 'Trainer', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(356, 90, NULL, 130, 'Trainer', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(357, 90, NULL, 131, 'Trainer', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(358, 90, NULL, 132, 'Trainer', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(359, 90, NULL, 269, 'Staff', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(360, 90, NULL, 270, 'Staff', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(361, 90, NULL, 271, 'Trainer', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(362, 90, NULL, 272, 'Trainer', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(363, 90, NULL, 273, 'Trainer', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(364, 90, NULL, 274, 'Receptionist', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(365, 90, NULL, 277, 'Receptionist', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(366, 90, NULL, 372, 'Member', 'MEMBER_ATTENDANCE', 'Attendance Marked', 'Hi yash, your attendance for 1/8/2026 has been marked as Checked In.', 'ATTENDANCE', '208', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(367, 90, NULL, 278, 'Manager', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(368, 90, NULL, 279, 'Trainer', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(369, 90, NULL, 280, 'Trainer', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(370, 90, NULL, 281, 'Staff', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(371, 90, NULL, 321, 'Trainer', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(372, 90, NULL, 323, 'Trainer', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(373, 90, NULL, 324, 'Trainer', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(374, 90, NULL, 325, 'Trainer', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(375, 90, NULL, 326, 'Receptionist', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(376, 90, NULL, 328, 'Receptionist', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(377, 90, NULL, 329, 'Staff', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(378, 90, NULL, 332, 'Staff', 'New Check-In', 'New Check-In', 'yash has checked in at 11:50 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(379, 90, NULL, 372, 'Member', 'DIET_PLAN_ASSIGNED', 'New Diet Plan', 'Hi yash, a new diet plan has been assigned to you. Please check your dashboard.', 'DIET_PLAN', '3', '/member-dashboard/diet', NULL, 0, NULL, 'NORMAL', '2026-08-01 06:22:34', '2026-08-01 06:22:34'),
(380, 90, NULL, 372, 'Member', 'General', 'Membership Activated', 'Your membership plan \'new plan \' has been successfully assigned. Price: ₹1000, Validity: 5 days.', 'PLAN_ASSIGNMENT', '127', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-01 06:24:19', '2026-08-01 06:24:19'),
(381, 90, NULL, 372, 'Member', 'DIET_PLAN_ASSIGNED', 'New Diet Plan - gymsoft', 'Hi yash,\\n\\nA new diet plan has been assigned to you at gymsoft.\\n\\nDiet Details:\\n- Breakfast: 4 Egg whites, 1 whole egg + Spinach\\n- Lunch: Grilled Chicken Breast with Steamed Broccoli\\n- Pre-Workout: One Apple or 100g Berries\\n- Post-Workout: Whey Protein Shake + 1 Rice Cake\\n- Dinner: Baked White Fish (Tilapia/Cod) with Asparagus\\n\\nTrainer: Your Trainer\\n\\nPlease check your dashboard for more details.', 'DIET_PLAN', '2', '/member-dashboard/diet', NULL, 0, NULL, 'NORMAL', '2026-08-01 06:37:26', '2026-08-01 06:37:26'),
(382, 90, NULL, 372, 'Member', 'WORKOUT_PLAN_ASSIGNED', 'New Workout Plan - {GymName}', 'Hi yash,\\n\\nA new workout plan has been assigned to you at {GymName}.\\n\\nTrainer: {TrainerName}\\n\\nPlease check your dashboard for more details.', 'WORKOUT_PLAN', '15', '/member-dashboard/workout', NULL, 0, NULL, 'NORMAL', '2026-08-01 06:38:20', '2026-08-01 06:38:20'),
(383, 90, 90, 372, 'Member', 'Booking Confirmed', 'Booking Confirmed', 'Your booking has been confirmed for Yoga Advance ', 'CLASS', '47', NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:45:37', '2026-08-01 06:45:37'),
(384, 90, 372, 280, 'Trainer', 'New Class Booking', 'New Class Booking', 'New booking received for Yoga Advance  by yash', 'CLASS', '47', NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 06:45:37', '2026-08-01 06:45:37'),
(385, 90, 372, 90, 'Admin', 'New Class Booking', 'New Class Booking', 'New booking received for Yoga Advance  by yash', 'CLASS', '47', NULL, NULL, 1, '2026-08-01 10:00:56', 'NORMAL', '2026-08-01 06:45:37', '2026-08-01 10:00:56'),
(386, 90, NULL, 373, 'Member', 'MEMBER_CREATED', 'Welcome to gymsoft!', 'Hi shri,\n\nYour account has been successfully created at gymsoft.\n\nLogin Details:\nEmail: shrikantsullere@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'MEMBER', '209', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-01 07:20:37', '2026-08-01 07:20:37'),
(387, 90, NULL, 373, 'Member', 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned - gymsoft', 'Hi shri,\n\nPre has been assigned to you at gymsoft.\n\nPlan Details:\nValid till: 2026-09-30\nDate/Time: 1/8/2026, 12:50:37 pm\n\nThank you!', 'MEMBERSHIP', '209', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-08-01 07:20:37', '2026-08-01 07:20:37'),
(388, 90, NULL, 90, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member shri has been added to your gym.', 'MEMBER', '209', '/members', NULL, 1, '2026-08-01 10:00:56', 'NORMAL', '2026-08-01 07:20:37', '2026-08-01 10:00:56'),
(389, 67, NULL, 67, 'Superadmin', 'PLAN_PURCHASED', 'Plan Purchased', 'Hi house of gain, you purchased testing plan.', 'SUBSCRIPTION', '43', '/admin/subscription', NULL, 1, '2026-08-03 12:28:17', 'NORMAL', '2026-08-01 07:24:03', '2026-08-03 12:28:17'),
(390, 67, NULL, 67, 'Superadmin', 'PLAN_UPGRADE_REQUEST', 'New Plan Upgrade Request', 'Admin: John Admin\\nGym: John Admin\\nCurrent Plan: bronz\\nRequested Plan: bronz\\nBilling: Monthly / Yearly\\nRequested At: 01/08/2026\\nStatus: Pending', 'SUBSCRIPTION', '44', '/admin/subscription', NULL, 1, '2026-08-03 12:28:17', 'NORMAL', '2026-08-01 07:24:45', '2026-08-03 12:28:17'),
(391, 374, NULL, 374, 'Admin', 'SUBSCRIPTION_ACTIVATED', 'Subscription Activated', 'Hi house of gain, your subscription for testing plan has been successfully activated. Amount Paid: 1.00', 'SUBSCRIPTION', '43', '/', NULL, 0, NULL, 'NORMAL', '2026-08-01 07:51:14', '2026-08-01 07:51:14'),
(392, 374, NULL, 374, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi house of gain,\\n\\nYour OTP is\\n315737\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 07:52:45', '2026-08-01 07:52:45');
INSERT INTO `app_notification` (`id`, `tenantId`, `senderId`, `receiverId`, `receiverRole`, `type`, `title`, `message`, `referenceType`, `referenceId`, `actionUrl`, `metadata`, `isRead`, `readAt`, `priority`, `createdAt`, `updatedAt`) VALUES
(393, 374, NULL, 374, 'Admin/Staff', 'PASSWORD_CHANGED', 'Password Changed Successfully', 'Your account password has been changed successfully.\\n\\nIf this was not you, please contact your administrator immediately.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 07:53:11', '2026-08-01 07:53:11'),
(394, 283, NULL, 283, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi raj_shekar sir,\\n\\nYour OTP is\\n566585\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-01 09:08:51', '2026-08-01 09:08:51'),
(395, 90, NULL, 90, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member Arjun has been added to your gym.', 'MEMBER', '210', '/members', NULL, 1, '2026-08-01 10:00:56', 'NORMAL', '2026-08-01 09:35:10', '2026-08-01 10:00:56'),
(396, 90, NULL, 375, 'Member', 'MEMBER_CREATED', 'Welcome to gymsoft!', 'Hi Arjun,\n\nYour account has been successfully created at gymsoft.\n\nLogin Details:\nEmail: dfhh@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'MEMBER', '210', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-01 09:35:10', '2026-08-01 09:35:10'),
(397, 90, NULL, 375, 'Member', 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned - gymsoft', 'Hi Arjun,\n\ngeneral has been assigned to you at gymsoft.\n\nPlan Details:\nValid till: 2026-08-31\nDate/Time: 1/8/2026, 3:05:10 pm\n\nThank you!', 'MEMBERSHIP', '210', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-08-01 09:35:10', '2026-08-01 09:35:10'),
(398, 90, NULL, 163, 'Member', 'General', 'Membership Activated', 'Your membership plan \'Golden\' has been successfully assigned. Price: ₹5999, Validity: 60 days.', 'PLAN_ASSIGNMENT', '130', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-03 06:32:39', '2026-08-03 06:32:39'),
(399, 90, NULL, 163, 'Member', 'MEMBER_ATTENDANCE', 'Attendance Marked - gymsoft', 'Hi Mamber,\\n\\nYour attendance at gymsoft has been marked as Checked In.\\n\\nDate: 3/8/2026\\nTime: 02:20 pm\\n\\nThank you!', 'ATTENDANCE', '156', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:05', '2026-08-03 08:50:05'),
(400, 90, NULL, 89, 'Admin', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:05', '2026-08-03 08:50:05'),
(401, 90, NULL, 90, 'Admin', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 1, '2026-08-03 10:57:28', 'NORMAL', '2026-08-03 08:50:06', '2026-08-03 10:57:28'),
(402, 90, NULL, 127, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:07', '2026-08-03 08:50:07'),
(403, 90, NULL, 129, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:07', '2026-08-03 08:50:07'),
(404, 90, NULL, 130, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:08', '2026-08-03 08:50:08'),
(405, 90, NULL, 131, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:09', '2026-08-03 08:50:09'),
(406, 90, NULL, 132, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:10', '2026-08-03 08:50:10'),
(407, 90, NULL, 269, 'Staff', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:11', '2026-08-03 08:50:11'),
(408, 90, NULL, 270, 'Staff', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:11', '2026-08-03 08:50:11'),
(409, 90, NULL, 271, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:12', '2026-08-03 08:50:12'),
(410, 90, NULL, 272, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:13', '2026-08-03 08:50:13'),
(411, 90, NULL, 273, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:14', '2026-08-03 08:50:14'),
(412, 90, NULL, 274, 'Receptionist', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:15', '2026-08-03 08:50:15'),
(413, 90, NULL, 277, 'Receptionist', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:15', '2026-08-03 08:50:15'),
(414, 90, NULL, 278, 'Manager', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:16', '2026-08-03 08:50:16'),
(415, 90, NULL, 279, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:17', '2026-08-03 08:50:17'),
(416, 90, NULL, 280, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:18', '2026-08-03 08:50:18'),
(417, 90, NULL, 281, 'Staff', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:19', '2026-08-03 08:50:19'),
(418, 90, NULL, 321, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:19', '2026-08-03 08:50:19'),
(419, 90, NULL, 323, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:20', '2026-08-03 08:50:20'),
(420, 90, NULL, 324, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:21', '2026-08-03 08:50:21'),
(421, 90, NULL, 325, 'Trainer', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:22', '2026-08-03 08:50:22'),
(422, 90, NULL, 326, 'Receptionist', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:23', '2026-08-03 08:50:23'),
(423, 90, NULL, 328, 'Receptionist', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:23', '2026-08-03 08:50:23'),
(424, 90, NULL, 329, 'Staff', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:24', '2026-08-03 08:50:24'),
(425, 90, NULL, 332, 'Staff', 'New Check-In', 'New Check-In', 'Mamber has checked in at 02:20 pm.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 08:50:25', '2026-08-03 08:50:25'),
(426, 90, NULL, 376, 'Member', 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned - gymsoft', 'Hi sdf,\n\nPre has been assigned to you at gymsoft.\n\nPlan Details:\nValid till: 2026-10-02\nDate/Time: 3/8/2026, 4:23:44 pm\n\nThank you!', 'MEMBERSHIP', '211', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-08-03 10:53:45', '2026-08-03 10:53:45'),
(427, 90, NULL, 90, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member sdf has been added to your gym.', 'MEMBER', '211', '/members', NULL, 1, '2026-08-03 10:57:28', 'NORMAL', '2026-08-03 10:53:45', '2026-08-03 10:57:28'),
(428, 90, NULL, 376, 'Member', 'MEMBER_CREATED', 'Welcome to gymsoft!', 'Hi sdf,\n\nYour account has been successfully created at gymsoft.\n\nLogin Details:\nEmail: dgsj@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'MEMBER', '211', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-03 10:53:45', '2026-08-03 10:53:45'),
(429, 90, NULL, 90, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member wgsx has been added to your gym.', 'MEMBER', '212', '/members', NULL, 1, '2026-08-03 10:57:28', 'NORMAL', '2026-08-03 10:57:07', '2026-08-03 10:57:28'),
(430, 90, NULL, 377, 'Member', 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned - gymsoft', 'Hi wgsx,\n\nPre has been assigned to you at gymsoft.\n\nPlan Details:\nValid till: 2026-10-02\nDate/Time: 3/8/2026, 4:27:07 pm\n\nThank you!', 'MEMBERSHIP', '212', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-08-03 10:57:07', '2026-08-03 10:57:07'),
(431, 90, NULL, 377, 'Member', 'MEMBER_CREATED', 'Welcome to gymsoft!', 'Hi wgsx,\n\nYour account has been successfully created at gymsoft.\n\nLogin Details:\nEmail: gdfchg@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'MEMBER', '212', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-03 10:57:07', '2026-08-03 10:57:07'),
(432, 374, NULL, 374, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi house of gain,\\n\\nYour OTP is\\n850642\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 12:02:03', '2026-08-03 12:02:03'),
(433, 378, NULL, 378, 'Admin', 'SYSTEM_ALERT', 'Welcome to GymSoft!', 'Hi shrikant sullere, welcome aboard! We are excited to have adxc with us. Let\'s get started!', 'SYSTEM', '1', NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 12:10:15', '2026-08-03 12:10:15'),
(434, 379, NULL, 379, 'Admin', 'SYSTEM_ALERT', 'Welcome to GymSoft!', 'Hi dsfd, welcome aboard! We are excited to have dsf with us. Let\'s get started!', 'SYSTEM', '1', NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 12:28:01', '2026-08-03 12:28:01'),
(435, 379, NULL, 379, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi dsfd,\\n\\nYour OTP is\\n977153\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 12:33:00', '2026-08-03 12:33:00'),
(436, 320, NULL, 320, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member shrikant sullere has been added to your gym.', 'MEMBER', '213', '/members', NULL, 0, NULL, 'NORMAL', '2026-08-03 12:35:35', '2026-08-03 12:35:35'),
(437, 320, NULL, 380, 'Member', 'MEMBER_CREATED', 'Welcome to fresh up!', 'Hi shrikant sullere,\n\nYour account has been successfully created at fresh up.\n\nLogin Details:\nEmail: shrikantsullere@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'MEMBER', '213', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-03 12:35:35', '2026-08-03 12:35:35'),
(438, 320, NULL, 380, 'Member', 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned - fresh up', 'Hi shrikant sullere,\n\npersonal two  has been assigned to you at fresh up.\n\nPlan Details:\nValid till: 2026-09-17\nDate/Time: 3/8/2026, 6:05:35 pm\n\nThank you!', 'MEMBERSHIP', '213', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-08-03 12:35:36', '2026-08-03 12:35:36'),
(439, 320, NULL, 380, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi shrikant sullere,\\n\\nYour OTP is\\n750410\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 12:36:24', '2026-08-03 12:36:24'),
(440, 320, NULL, 381, 'Member', 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned - fresh up', 'Hi ritik,\n\npersonal one has been assigned to you at fresh up.\n\nPlan Details:\nValid till: 2026-09-02\nDate/Time: 3/8/2026, 6:13:31 pm\n\nThank you!', 'MEMBERSHIP', '214', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-08-03 12:43:31', '2026-08-03 12:43:31'),
(441, 320, NULL, 320, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member ritik has been added to your gym.', 'MEMBER', '214', '/members', NULL, 0, NULL, 'NORMAL', '2026-08-03 12:43:31', '2026-08-03 12:43:31'),
(442, 320, NULL, 381, 'Member', 'MEMBER_CREATED', 'Welcome to fresh up!', 'Hi ritik,\n\nYour account has been successfully created at fresh up.\n\nLogin Details:\nEmail: ritiksen2333@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'MEMBER', '214', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-03 12:43:32', '2026-08-03 12:43:32'),
(443, 320, NULL, 381, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi ritik,\\n\\nYour OTP is\\n801835\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 12:47:07', '2026-08-03 12:47:07'),
(444, 320, NULL, 320, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member shrikant sullere has been added to your gym.', 'MEMBER', '215', '/members', NULL, 0, NULL, 'NORMAL', '2026-08-03 13:00:22', '2026-08-03 13:00:22'),
(445, 320, NULL, 382, 'Member', 'MEMBER_CREATED', 'Welcome to fresh up!', 'Hi shrikant sullere,\n\nYour account has been successfully created at fresh up.\n\nLogin Details:\nEmail: shrikantsullere@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'MEMBER', '215', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-03 13:00:22', '2026-08-03 13:00:22'),
(446, 320, NULL, 382, 'Member', 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned - fresh up', 'Hi shrikant sullere,\n\npersonal two  has been assigned to you at fresh up.\n\nPlan Details:\nValid till: 2026-09-17\nDate/Time: 3/8/2026, 6:30:22 pm\n\nThank you!', 'MEMBERSHIP', '215', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-08-03 13:00:23', '2026-08-03 13:00:23'),
(447, 320, NULL, 382, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi shrikant sullere,\\n\\nYour OTP is\\n155536\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-03 13:01:23', '2026-08-03 13:01:23'),
(448, 320, NULL, 383, 'Member', 'MEMBER_CREATED', 'Welcome to fresh up!', 'Hi shrikant sullere,\n\nYour account has been successfully created at fresh up.\n\nLogin Details:\nEmail: shrikantsullere@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'MEMBER', '216', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-03 13:05:34', '2026-08-03 13:05:34'),
(449, 320, NULL, 320, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member shrikant sullere has been added to your gym.', 'MEMBER', '216', '/members', NULL, 0, NULL, 'NORMAL', '2026-08-03 13:05:34', '2026-08-03 13:05:34'),
(450, 320, NULL, 383, 'Member', 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned - fresh up', 'Hi shrikant sullere,\n\npersonal two  has been assigned to you at fresh up.\n\nPlan Details:\nValid till: 2026-09-17\nDate/Time: 3/8/2026, 6:35:34 pm\n\nThank you!', 'MEMBERSHIP', '216', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-08-03 13:05:34', '2026-08-03 13:05:34'),
(451, 90, NULL, 376, 'Member', 'MEMBER_ATTENDANCE', 'Attendance Marked - gymsoft', 'Hi sdf,\\n\\nYour attendance at gymsoft has been marked as Checked In.\\n\\nDate: 4/8/2026\\nTime: 10:34 am\\n\\nThank you!', 'ATTENDANCE', '211', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:47', '2026-08-04 05:04:47'),
(452, 90, NULL, 89, 'Admin', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:47', '2026-08-04 05:04:47'),
(453, 90, NULL, 90, 'Admin', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 1, '2026-08-04 05:05:39', 'NORMAL', '2026-08-04 05:04:48', '2026-08-04 05:05:39'),
(454, 90, NULL, 127, 'Trainer', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:48', '2026-08-04 05:04:48'),
(455, 90, NULL, 129, 'Trainer', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:48', '2026-08-04 05:04:48'),
(456, 90, NULL, 130, 'Trainer', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:49', '2026-08-04 05:04:49'),
(457, 90, NULL, 131, 'Trainer', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:49', '2026-08-04 05:04:49'),
(458, 90, NULL, 132, 'Trainer', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:49', '2026-08-04 05:04:49'),
(459, 90, NULL, 269, 'Staff', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:49', '2026-08-04 05:04:49'),
(460, 90, NULL, 270, 'Staff', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:49', '2026-08-04 05:04:49'),
(461, 90, NULL, 271, 'Trainer', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:50', '2026-08-04 05:04:50'),
(462, 90, NULL, 272, 'Trainer', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:50', '2026-08-04 05:04:50'),
(463, 90, NULL, 273, 'Trainer', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:50', '2026-08-04 05:04:50'),
(464, 90, NULL, 274, 'Receptionist', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:50', '2026-08-04 05:04:50'),
(465, 90, NULL, 277, 'Receptionist', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:50', '2026-08-04 05:04:50'),
(466, 90, NULL, 278, 'Manager', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:51', '2026-08-04 05:04:51'),
(467, 90, NULL, 279, 'Trainer', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:51', '2026-08-04 05:04:51'),
(468, 90, NULL, 280, 'Trainer', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:51', '2026-08-04 05:04:51'),
(469, 90, NULL, 281, 'Staff', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:51', '2026-08-04 05:04:51'),
(470, 90, NULL, 321, 'Trainer', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:52', '2026-08-04 05:04:52'),
(471, 90, NULL, 323, 'Trainer', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:52', '2026-08-04 05:04:52'),
(472, 90, NULL, 324, 'Trainer', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:52', '2026-08-04 05:04:52'),
(473, 90, NULL, 325, 'Trainer', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:52', '2026-08-04 05:04:52'),
(474, 90, NULL, 326, 'Receptionist', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:52', '2026-08-04 05:04:52'),
(475, 90, NULL, 328, 'Receptionist', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:53', '2026-08-04 05:04:53'),
(476, 90, NULL, 329, 'Staff', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:53', '2026-08-04 05:04:53'),
(477, 90, NULL, 332, 'Staff', 'New Check-In', 'New Check-In', 'sdf has checked in at 10:34 am.', 'ATTENDANCE', NULL, NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:04:53', '2026-08-04 05:04:53'),
(478, 90, NULL, 301, 'Member', 'MEMBER_ATTENDANCE', 'Attendance Marked - gymsoft', 'Hi safari,\\n\\nYour attendance at gymsoft has been marked as Checked In.\\n\\nDate: 4/8/2026\\nTime: 10:36 am\\n\\nThank you!', 'ATTENDANCE', '177', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-04 05:06:16', '2026-08-04 05:06:16'),
(479, 90, 90, 279, 'Member', 'Task Approved', 'Task Approved', 'Your completed task has been approved: start train 5 person from today ', 'TASK', '39', NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 05:14:29', '2026-08-04 05:14:29'),
(480, 67, NULL, 67, 'Admin/Staff', 'FORGOT_PASSWORD_OTP', 'Password Reset OTP', 'Hi Super Admin,\\n\\nYour OTP is\\n572917\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', NULL, NULL, NULL, NULL, 1, '2026-08-04 09:05:48', 'NORMAL', '2026-08-04 06:22:12', '2026-08-04 09:05:48'),
(481, 67, NULL, 67, 'Admin/Staff', 'PASSWORD_CHANGED', 'Password Changed Successfully', 'Your account password has been changed successfully.\\n\\nIf this was not you, please contact your administrator immediately.', NULL, NULL, NULL, NULL, 1, '2026-08-04 09:05:48', 'NORMAL', '2026-08-04 06:23:20', '2026-08-04 09:05:48'),
(482, 384, NULL, 384, 'Admin', 'SUBSCRIPTION_ACTIVATED', 'Subscription Activated', 'Hi new aug, your subscription for testing plan has been successfully activated. Amount Paid: 1.00', 'SUBSCRIPTION', '45', '/', NULL, 0, NULL, 'NORMAL', '2026-08-04 06:36:22', '2026-08-04 06:36:22'),
(483, 90, NULL, 385, 'Member', 'MEMBER_CREATED', 'Welcome to gymsoft!', 'Hi fg,\n\nYour account has been successfully created at gymsoft.\n\nLogin Details:\nEmail: sd@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'MEMBER', '217', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-04 07:11:45', '2026-08-04 07:11:45'),
(484, 90, NULL, 90, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member fg has been added to your gym.', 'MEMBER', '217', '/members', NULL, 1, '2026-08-04 11:40:15', 'NORMAL', '2026-08-04 07:11:45', '2026-08-04 11:40:15'),
(485, 90, NULL, 385, 'Member', 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned - gymsoft', 'Hi fg,\n\nnew plan  has been assigned to you at gymsoft.\n\nPlan Details:\nValid till: 2026-08-09\nDate/Time: 4/8/2026, 12:41:45 pm\n\nThank you!', 'MEMBERSHIP', '217', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-08-04 07:11:45', '2026-08-04 07:11:45'),
(486, 90, NULL, 90, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member bhdbaj has been added to your gym.', 'MEMBER', '218', '/members', NULL, 1, '2026-08-04 11:40:15', 'NORMAL', '2026-08-04 08:54:43', '2026-08-04 11:40:15'),
(487, 90, NULL, 386, 'Member', 'MEMBER_CREATED', 'Welcome to gymsoft!', 'Hi bhdbaj,\n\nYour account has been successfully created at gymsoft.\n\nLogin Details:\nEmail: shrikantsullere@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'MEMBER', '218', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-04 08:54:43', '2026-08-04 08:54:43'),
(488, 90, NULL, 386, 'Member', 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned - gymsoft', 'Hi bhdbaj,\n\nrwe has been assigned to you at gymsoft.\n\nPlan Details:\nValid till: 2026-09-07\nDate/Time: 4/8/2026, 2:24:43 pm\n\nThank you!', 'MEMBERSHIP', '218', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-08-04 08:54:43', '2026-08-04 08:54:43'),
(489, 387, NULL, 387, 'Admin', 'SYSTEM_ALERT', 'Welcome to GymSoft!', 'Hi shrikant sullere, welcome aboard! We are excited to have shri with us. Let\'s get started!', 'SYSTEM', '1', NULL, NULL, 0, NULL, 'NORMAL', '2026-08-04 09:00:43', '2026-08-04 09:00:43'),
(490, 387, NULL, 387, 'Admin', 'MEMBER_ADDED', 'New Member Added', 'Hi Admin, a new member shrikant sullere has been added to your gym.', 'MEMBER', '219', '/members', NULL, 0, NULL, 'NORMAL', '2026-08-04 09:04:48', '2026-08-04 09:04:48'),
(491, 387, NULL, 388, 'Member', 'MEMBER_CREATED', 'Welcome to shri!', 'Hi shrikant sullere,\n\nYour account has been successfully created at shri.\n\nLogin Details:\nEmail: JGDJS@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'MEMBER', '219', '/member-dashboard', NULL, 0, NULL, 'NORMAL', '2026-08-04 09:04:48', '2026-08-04 09:04:48'),
(492, 387, NULL, 388, 'Member', 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned - shri', 'Hi shrikant sullere,\n\n23WESD has been assigned to you at shri.\n\nPlan Details:\nValid till: 2026-08-06\nDate/Time: 4/8/2026, 2:34:48 pm\n\nThank you!', 'MEMBERSHIP', '219', '/member-dashboard/my-plan', NULL, 0, NULL, 'NORMAL', '2026-08-04 09:04:49', '2026-08-04 09:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `app_notification_archive`
--

CREATE TABLE `app_notification_archive` (
  `id` int NOT NULL,
  `tenantId` int DEFAULT NULL,
  `senderId` int DEFAULT NULL,
  `receiverId` int NOT NULL,
  `receiverRole` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text,
  `referenceType` varchar(100) DEFAULT NULL,
  `referenceId` varchar(100) DEFAULT NULL,
  `actionUrl` varchar(255) DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `priority` varchar(50) DEFAULT 'NORMAL',
  `isRead` tinyint(1) DEFAULT '0',
  `readAt` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `archivedAt` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int NOT NULL,
  `logo` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gym_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `memberPlanId` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `adminId` int DEFAULT NULL,
  `hero_banner` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hero_subtitle` text COLLATE utf8mb4_general_ci,
  `hero_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `services_json` text COLLATE utf8mb4_general_ci,
  `testimonials_json` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `logo`, `gym_name`, `description`, `url`, `memberPlanId`, `createdAt`, `updatedAt`, `adminId`, `hero_banner`, `hero_subtitle`, `hero_title`, `services_json`, `testimonials_json`) VALUES
(9, 'http://localhost:4000/uploads/1784638451719_7wimyx.jfif', 'Power Gym', 'Best fitness gym in the city', 'gymsoft', 35, '2025-12-13 02:11:43', '2026-07-24 05:33:48', 90, NULL, NULL, NULL, NULL, NULL),
(10, 'http://localhost:4000/uploads/gymsoft-logo.png?v=3', NULL, 'Welcome to GYM – Where Fitness Meets Lifestyle\r\n\r\nGYM ek modern, fully-equipped fitness destination hai jo aapke health aur lifestyle goals ko dhyaan me rakh kar design kiya gaya hai. Yahan sirf workout nahi hota, balki complete fitness transformation hota hai – body, mind aur confidence ka.\r\n\r\nHum provide karte hain state-of-the-art gym equipment, certified trainers, aur scientifically designed workout programs jo beginners se leke advanced athletes tak sabke liye suitable hain. Chahe aap weight loss chahte ho, muscle gain, strength training, ya overall fitness – GYM aapke har goal ke liye ready hai.', 'fitgym', 22, '2025-12-13 02:18:29', '2026-07-21 18:21:57', 90, NULL, NULL, NULL, NULL, NULL),
(11, 'http://localhost:4000/uploads/gymsoft-logo.png?v=2', 'Power Gym', 'Best fitness gym in the city', 'powergym.com', 35, '2025-12-29 17:37:48', '2026-07-21 18:16:23', 164, NULL, NULL, NULL, NULL, NULL),
(12, 'http://localhost:4000/uploads/gymsoft-logo.png?v=2', NULL, 'Testing', 'fitgym', NULL, '2025-12-29 17:49:57', '2026-07-21 18:16:23', 170, NULL, NULL, NULL, NULL, NULL),
(13, 'http://localhost:4000/uploads/gymsoft-logo.png?v=2', NULL, '', '', NULL, '2026-07-09 13:34:02', '2026-07-21 18:16:23', 260, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_audit_log`
--

CREATE TABLE `auth_audit_log` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `event` varchar(100) NOT NULL,
  `ipAddress` varchar(45) DEFAULT NULL,
  `userAgent` varchar(255) DEFAULT NULL,
  `details` text,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_audit_log`
--

INSERT INTO `auth_audit_log` (`id`, `email`, `event`, `ipAddress`, `userAgent`, `details`, `createdAt`) VALUES
(1, 'superadmin@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.2', 'node', '{\"success\":true}', '2026-07-31 10:47:58'),
(2, 'superadmin@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.2', 'node', '{\"success\":true}', '2026-07-31 10:57:43'),
(3, 'superadmin@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.13', 'node', '{\"success\":true}', '2026-07-31 11:00:43'),
(4, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-07-31 11:42:17'),
(5, 'test@example.com', 'OTP_FAILED', '::ffff:100.64.0.11', 'node', '{\"reason\":\"Account not found\"}', '2026-07-31 12:03:56'),
(6, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-07-31 12:09:53'),
(7, 'rsld2012@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.14', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', '{\"success\":true}', '2026-07-31 12:20:57'),
(8, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-07-31 12:58:21'),
(9, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-07-31 13:04:15'),
(10, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-07-31 13:14:14'),
(11, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-07-31 13:17:58'),
(12, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-07-31 13:22:43'),
(13, 'shrikantsullere@gmail.com', 'OTP_FAILED', '::ffff:100.64.0.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"reason\":\"Rate limit exceeded\"}', '2026-07-31 13:33:18'),
(14, 'shrikantsullere@gmail.com', 'OTP_FAILED', '::ffff:100.64.0.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"reason\":\"Rate limit exceeded\"}', '2026-07-31 13:34:14'),
(15, 'shrikantsullere@gmail.com', 'OTP_FAILED', '::ffff:100.64.0.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"reason\":\"Rate limit exceeded\"}', '2026-07-31 13:41:49'),
(16, 'rsld2012@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.14', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', '{\"success\":true}', '2026-07-31 21:20:28'),
(17, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-08-01 05:15:53'),
(18, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-08-01 05:30:42'),
(19, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-08-01 05:36:21'),
(20, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-08-01 05:51:30'),
(21, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-08-01 05:52:57'),
(22, 'shrikantsullere@gmail.com', 'OTP_FAILED', '::ffff:100.64.0.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"reason\":\"Rate limit exceeded\"}', '2026-08-01 05:57:26'),
(23, 'shrikantsullere@gmail.com', 'OTP_VERIFIED', NULL, NULL, '{\"success\":true}', '2026-08-01 05:58:20'),
(24, 'shrikantsullere@gmail.com', 'OTP_FAILED', '::ffff:100.64.0.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"reason\":\"Rate limit exceeded\"}', '2026-08-01 06:05:06'),
(25, 'shrikantsullere@gmail.com', 'OTP_FAILED', '::ffff:100.64.0.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"reason\":\"Rate limit exceeded\"}', '2026-08-01 06:07:06'),
(26, 'shrikantsullere@gmail.com', 'OTP_FAILED', '::ffff:100.64.0.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"reason\":\"Rate limit exceeded\"}', '2026-08-01 06:07:21'),
(27, 'yashsonwane1392002@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-08-01 06:18:21'),
(28, 'yashsonwane1392002@gmail.com', 'OTP_VERIFIED', NULL, NULL, '{\"success\":true}', '2026-08-01 06:18:40'),
(29, 'yashsonwane1392002@gmail.com', 'PASSWORD_CHANGED', NULL, NULL, '{\"success\":true}', '2026-08-01 06:18:55'),
(30, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-08-01 07:52:45'),
(31, 'shrikantsullere@gmail.com', 'OTP_VERIFIED', NULL, NULL, '{\"success\":true}', '2026-08-01 07:53:01'),
(32, 'shrikantsullere@gmail.com', 'PASSWORD_CHANGED', NULL, NULL, '{\"success\":true}', '2026-08-01 07:53:11'),
(33, 'rsld2012@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', '{\"success\":true}', '2026-08-01 09:08:51'),
(34, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-08-03 12:02:03'),
(35, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-08-03 12:32:59'),
(36, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-08-03 12:36:23'),
(37, 'ritiksen2333@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-08-03 12:47:08'),
(38, 'shrikantsullere@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-08-03 13:01:23'),
(39, 'rsld2012@gmail.com', 'OTP_GENERATED', '::ffff:100.64.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"success\":true}', '2026-08-04 06:22:12'),
(40, 'rsld2012@gmail.com', 'OTP_VERIFIED', NULL, NULL, '{\"success\":true}', '2026-08-04 06:22:34'),
(41, 'rsld2012@gmail.com', 'PASSWORD_CHANGED', NULL, NULL, '{\"success\":true}', '2026-08-04 06:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `automation_settings`
--

CREATE TABLE `automation_settings` (
  `id` int NOT NULL,
  `trialDurationDays` int NOT NULL DEFAULT '7',
  `gracePeriodDays` int NOT NULL DEFAULT '3',
  `enableEmailNotif` tinyint(1) NOT NULL DEFAULT '1',
  `enableWhatsappNotif` tinyint(1) NOT NULL DEFAULT '0',
  `lowCreditThreshold` int NOT NULL DEFAULT '50',
  `quarterlyDiscount` decimal(5,2) NOT NULL DEFAULT '5.00',
  `yearlyDiscount` decimal(5,2) NOT NULL DEFAULT '15.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `automation_settings`
--

INSERT INTO `automation_settings` (`id`, `trialDurationDays`, `gracePeriodDays`, `enableEmailNotif`, `enableWhatsappNotif`, `lowCreditThreshold`, `quarterlyDiscount`, `yearlyDiscount`) VALUES
(1, 7, 3, 1, 1, 50, 5.00, 15.00);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int NOT NULL,
  `memberId` int NOT NULL,
  `scheduleId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `memberId`, `scheduleId`) VALUES
(44, 156, 32),
(45, 156, 33);

-- --------------------------------------------------------

--
-- Table structure for table `booking_requests`
--

CREATE TABLE `booking_requests` (
  `id` int NOT NULL,
  `memberId` int DEFAULT NULL,
  `planId` int DEFAULT NULL,
  `classId` int DEFAULT NULL,
  `branchId` int DEFAULT NULL,
  `adminId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `upiId` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `paymentProofImage` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `paymentMode` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_requests`
--

INSERT INTO `booking_requests` (`id`, `memberId`, `planId`, `classId`, `branchId`, `adminId`, `userId`, `status`, `createdAt`, `updatedAt`, `price`, `upiId`, `paymentProofImage`, `paymentMode`) VALUES
(14, 156, 24, NULL, 48, 90, 163, 'approved', '2026-07-22 11:10:44', '2026-07-22 11:13:15', 1200.00, '87531RGU', NULL, NULL),
(15, 156, 31, NULL, 48, 90, 163, 'pending', '2026-07-22 11:19:27', '2026-07-22 11:19:27', 1200.00, 'Cash', NULL, NULL),
(16, 156, 46, NULL, 48, 90, 163, 'approved', '2026-07-23 13:24:26', '2026-07-31 20:43:50', 59999.00, 'Cash', NULL, NULL),
(17, 175, 50, NULL, NULL, 90, 299, 'approved', '2026-07-24 05:44:49', '2026-07-24 05:53:40', 1000.00, 'addsd@upi', NULL, NULL),
(18, 156, 71, NULL, 48, 90, 163, 'approved', '2026-08-03 11:18:53', '2026-08-03 11:52:24', 1.00, '658196543501', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1785755932/gym/payment-proofs/pmhr04a3_1785755932113.jpeg.jpg', 'UPI');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `adminId` int DEFAULT NULL,
  `attendanceRadiusMeters` int NOT NULL DEFAULT '50'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`, `phone`, `createdAt`, `address`, `status`, `adminId`, `attendanceRadiusMeters`) VALUES
(33, 'Trainer', '07700912345', '2025-12-10 03:24:53.230', '123 High Street', 'ACTIVE', 90, 50),
(48, 'Fitness', '07700912345', '2025-12-12 23:43:47.135', '123 High Street', 'ACTIVE', 90, 50),
(50, 'Main Branch', '9999999999', '2025-12-30 16:36:43.625', 'Demo Address', 'ACTIVE', 90, 50),
(51, 'Main Branch', NULL, '2026-07-25 10:27:53.679', 'Headquarters', 'ACTIVE', 320, 50),
(52, 'Main Branch', NULL, '2026-07-25 10:38:39.117', 'Headquarters', 'ACTIVE', 314, 50);

-- --------------------------------------------------------

--
-- Table structure for table `classschedule`
--

CREATE TABLE `classschedule` (
  `id` int NOT NULL,
  `adminId` int DEFAULT NULL,
  `className` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trainerId` int NOT NULL,
  `date` datetime(3) NOT NULL,
  `startTime` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `endTime` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int NOT NULL,
  `members` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `day` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classschedule`
--

INSERT INTO `classschedule` (`id`, `adminId`, `className`, `trainerId`, `date`, `startTime`, `endTime`, `capacity`, `members`, `status`, `day`, `price`) VALUES
(18, NULL, 'new', 166, '2025-12-29 00:00:00.000', '22:18', '23:18', 20, '[]', 'Active', 'Monday', 0.00),
(19, 33, 'one', 165, '2025-12-30 00:00:00.000', '13:21', '14:22', 20, '[]', 'Active', 'Monday', 0.00),
(22, NULL, 'Old Class', 166, '2025-12-30 00:00:00.000', '20:22', '22:22', 20, '[]', 'Active', 'Wednesday', 0.00),
(27, 164, 'yoga', 182, '2026-01-02 00:00:00.000', '19:53', '20:53', 20, '[]', 'Active', '', 0.00),
(29, 90, 'yoga classes', 280, '2026-07-17 00:00:00.000', '11:30', '12:30', 25, '[{\"id\":1784528951222,\"name\":\"riya\"},{\"id\":1784529333132,\"name\":\"Demo Aayush\"},{\"id\":1784529338004,\"name\":\"Demo girl\"},{\"id\":1784529341988,\"name\":\"Dummy Lead 1\"}]', 'Active', 'Thursday', 0.00),
(30, 90, 'deo', 273, '2026-07-02 00:00:00.000', '17:45', '18:15', 20, '[]', 'Active', NULL, 0.00),
(31, 90, 'Workout classes', 279, '2026-07-10 00:00:00.000', '10:00', '11:15', 35, '[{\"id\":1784611422677,\"name\":\"Demo girl\"},{\"id\":1784611428764,\"name\":\"john\"},{\"id\":1784611440799,\"name\":\"Demo Aayush\"},{\"id\":1784611448188,\"name\":\"barodjia\"},{\"id\":1784611459000,\"name\":\"sanni\"},{\"id\":1784611466820,\"name\":\"riya\"},{\"id\":1784611470872,\"name\":\"Mamber\"},{\"id\":1784611476458,\"name\":\"xyz\"},{\"id\":1784611481847,\"name\":\"taasi\"},{\"id\":1784611486518,\"name\":\"Auto Email Member\"},{\"id\":1784611490718,\"name\":\"vfg\"},{\"id\":1784611495910,\"name\":\"Auto Email Test Member\"},{\"id\":1784611501319,\"name\":\"demo boy\"},{\"id\":1784611510143,\"name\":\"pia b\"}]', 'Active', NULL, 0.00),
(32, 90, 'weight gainnig classes', 279, '2026-07-17 00:00:00.000', '16:45', '17:15', 20, '[{\"id\":1784635568610,\"name\":\"taasi\"}]', 'Active', NULL, 0.00),
(33, 90, 'today special mentor come ', 280, '2026-07-26 00:00:00.000', '10:45', '11:30', 20, '[]', 'Active', 'Monday', 0.00),
(34, 90, 'special july class', 280, '2026-07-24 00:00:00.000', '10:45', '11:15', 20, '[]', 'Active', 'Friday', 0.00),
(35, 90, 'raj special onee', 280, '2026-07-26 00:00:00.000', '11:00', '12:15', 20, '[]', 'Active', 'Saturday', 0.00),
(37, 90, 'group class', 280, '2026-07-25 00:00:00.000', '16:45', '17:00', 20, '[]', 'Active', '', 0.00),
(38, 314, '1Day', 340, '2026-07-25 00:00:00.000', '09:00', '10:00', 20, '[]', 'Active', '', 0.00),
(39, 320, 'new class', 330, '2026-07-26 00:00:00.000', '06:45', '09:45', 20, '[]', 'Active', 'Friday', 0.00),
(40, 320, 'new two', 331, '2026-07-29 00:00:00.000', '16:45', '17:45', 20, '[]', 'Active', 'Monday', 0.00),
(41, 320, 'old class', 322, '2026-07-31 00:00:00.000', '17:00', '18:00', 20, '[]', 'Active', 'Tuesday', 0.00),
(42, 320, 'old', 327, '2026-08-01 00:00:00.000', '17:00', '18:15', 20, '[]', 'Active', 'Saturday', 0.00),
(43, 314, 'day2', 339, '2026-07-24 00:00:00.000', '07:45', '08:45', 20, '[]', 'Active', 'Monday', 0.00),
(44, 314, 'day 3', 318, '2026-07-23 00:00:00.000', '17:30', '18:15', 20, '[]', 'Active', 'Tuesday', 0.00),
(45, 314, 'day4', 338, '2026-07-15 00:00:00.000', '07:00', '08:15', 20, '[]', 'Active', 'Thursday', 0.00),
(46, 320, 'wr', 327, '2026-07-28 00:00:00.000', '15:00', '16:00', 20, '[]', 'Active', 'Wednesday', 0.00),
(47, 90, 'Yoga Advance ', 280, '2026-08-01 00:00:00.000', '05:00', '07:00', 20, '[]', 'Active', '', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `classtype`
--

CREATE TABLE `classtype` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_packages`
--

CREATE TABLE `credit_packages` (
  `id` int NOT NULL,
  `packageName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `credits` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `packageType` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'WHATSAPP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credit_packages`
--

INSERT INTO `credit_packages` (`id`, `packageName`, `credits`, `price`, `isActive`, `createdAt`, `packageType`) VALUES
(1, 'Bronze Package', 500, 1000.00, 1, '2026-06-20 15:03:16', 'WHATSAPP'),
(2, 'Silver Package', 5000, 4500.00, 1, '2026-06-20 15:03:16', 'WHATSAPP'),
(3, 'Gold Package', 10000, 8000.00, 1, '2026-06-20 15:03:16', 'WHATSAPP'),
(4, 'bronze package', 8, 200.00, 1, '2026-07-08 12:16:27', 'EMAIL');

-- --------------------------------------------------------

--
-- Table structure for table `demo_requests`
--

CREATE TABLE `demo_requests` (
  `id` int NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dietmeal`
--

CREATE TABLE `dietmeal` (
  `id` int NOT NULL,
  `dietPlanId` int NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `food` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dietmeal`
--

INSERT INTO `dietmeal` (`id`, `dietPlanId`, `time`, `food`) VALUES
(17, 3, 'Breakfast', 'Greek Yogurt (0%) with Chia Seeds & Blueberries'),
(18, 3, 'Lunch', 'Chickpea & Quinoa Salad with Cucumber'),
(19, 3, 'Pre-Workout', 'Handful of Almonds'),
(20, 3, 'Post-Workout', 'Plant-based Protein Shake'),
(21, 3, 'Dinner', 'Tofu Stir-fry with Bell Peppers and Soy Sauce'),
(22, 2, 'Breakfast', '4 Egg whites, 1 whole egg + Spinach'),
(23, 2, 'Lunch', 'Grilled Chicken Breast with Steamed Broccoli'),
(24, 2, 'Pre-Workout', 'One Apple or 100g Berries'),
(25, 2, 'Post-Workout', 'Whey Protein Shake + 1 Rice Cake'),
(26, 2, 'Dinner', 'Baked White Fish (Tilapia/Cod) with Asparagus'),
(27, 4, 'Evening Snack', '2 boiled eggs '),
(28, 5, 'Breakfast', 'fds'),
(29, 5, 'Mid-Morning Snack', 'fdsvdg'),
(30, 5, 'Lunch', 'rwet'),
(31, 6, 'Breakfast', '2 boild egg'),
(32, 6, 'Lunch', '6 roti dal salad');

-- --------------------------------------------------------

--
-- Table structure for table `dietplan`
--

CREATE TABLE `dietplan` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` int NOT NULL,
  `branchId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `dietType` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'Any'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dietplan`
--

INSERT INTO `dietplan` (`id`, `title`, `notes`, `createdBy`, `branchId`, `createdAt`, `dietType`) VALUES
(2, 'Extreme weight loss', 'Drink 3L daily', 102, 48, '2026-06-15 15:23:24.373', 'Non-Veg'),
(3, 'Extreme weight loss', 'Drink 3L daily', 102, 48, '2026-06-15 15:33:16.337', 'Veg'),
(4, 'Extreme weight gain', 'eggs,healthy diet', 279, 48, '2026-07-20 11:34:20.985', 'Any'),
(5, 'gefv', 'dsf', 327, 0, '2026-07-25 12:51:10.637', 'Any'),
(6, '1st diet', '4ltr  wtr daily', 339, 0, '2026-07-25 12:51:42.376', 'Veg'),
(7, '2 eggs', '3ltr wtr', 339, 0, '2026-07-25 13:19:17.946', 'Any');

-- --------------------------------------------------------

--
-- Table structure for table `dietplanassignment`
--

CREATE TABLE `dietplanassignment` (
  `id` int NOT NULL,
  `dietPlanId` int NOT NULL,
  `memberId` int NOT NULL,
  `assignedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dietplanassignment`
--

INSERT INTO `dietplanassignment` (`id`, `dietPlanId`, `memberId`, `assignedAt`) VALUES
(2, 3, 152, '2026-06-15 15:33:26.322'),
(3, 2, 153, '2026-06-15 15:33:35.576'),
(4, 3, 161, '2026-07-13 13:15:24.079'),
(5, 3, 160, '2026-07-20 11:32:32.472'),
(6, 4, 165, '2026-07-21 17:34:09.054'),
(7, 6, 190, '2026-07-25 12:52:07.676'),
(8, 7, 178, '2026-07-25 18:34:04.387'),
(9, 7, 195, '2026-07-26 10:02:41.684');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_requests`
--

CREATE TABLE `equipment_requests` (
  `id` int NOT NULL,
  `requestedBy` int NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MEMBER',
  `itemName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Other',
  `quantity` int NOT NULL,
  `reason` text COLLATE utf8mb4_general_ci,
  `branchId` int DEFAULT NULL,
  `adminId` int DEFAULT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'PENDING',
  `adminRemarks` text COLLATE utf8mb4_general_ci,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipment_requests`
--

INSERT INTO `equipment_requests` (`id`, `requestedBy`, `role`, `itemName`, `category`, `quantity`, `reason`, `branchId`, `adminId`, `imageUrl`, `status`, `adminRemarks`, `createdAt`, `updatedAt`) VALUES
(1, 279, 'personaltrainer', 'dumble', 'Accessories', 4, NULL, 48, 90, NULL, 'PENDING', NULL, '2026-07-20 16:43:01', '2026-07-20 16:43:01'),
(2, 277, 'receptionist', 'leg machine', 'Machine', 5, NULL, 48, 90, NULL, 'PENDING', NULL, '2026-07-20 17:39:08', '2026-07-20 17:39:08'),
(3, 281, 'sales_agent', 'dumble', 'Accessories', 30, NULL, 48, 90, NULL, 'PENDING', NULL, '2026-07-23 13:19:37', '2026-07-23 13:19:37'),
(4, 277, 'receptionist', 'Test equipment request', 'Free Weights', 2, 'Need it for test', 48, 90, NULL, 'PENDING', NULL, '2026-07-25 10:43:41', '2026-07-25 10:43:41'),
(5, 343, 'receptionist', 'first request', 'Free Weights', 2, 'asdfghj', 1, 314, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784976308/equipment_requests/euiahbrl_1784976307829.png.png', 'PENDING', NULL, '2026-07-25 10:45:08', '2026-07-25 10:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `date` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `branchId` int NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentMode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Cash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `title`, `category`, `amount`, `date`, `branchId`, `notes`, `createdAt`, `description`, `paymentMode`) VALUES
(1, 'gfvyfv', 'Electricity / Utility', 98, '2026-07-23 00:00:00.000', 48, NULL, '2026-07-23 14:27:29.358', 'gfvyfv', 'Cash'),
(2, 'sdfghj', 'Electricity / Utility', 5, '2026-07-16 00:00:00.000', 52, NULL, '2026-07-25 11:06:16.734', 'sdfghj', 'UPI / Online');

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `key_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`key_name`, `value_data`, `updatedAt`) VALUES
('free_trial_alert_channel', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '2026-07-03 16:21:29'),
('invoice_channel', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '2026-06-13 16:22:46'),
('saas_renewal_channel', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '2026-07-09 00:02:14'),
('templates_channel', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '2026-06-13 16:22:46'),
('welcome_note_channel', '[\"EMAIL\",\"WHATSAPP\",\"APP_PUSH\"]', '2026-06-13 16:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `group_class_bookings`
--

CREATE TABLE `group_class_bookings` (
  `id` int NOT NULL,
  `memberId` int NOT NULL,
  `classId` int NOT NULL,
  `date` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `bookingStatus` varchar(20) COLLATE utf8mb4_general_ci DEFAULT 'Booked',
  `paymentStatus` varchar(20) COLLATE utf8mb4_general_ci DEFAULT 'Pending',
  `notes` text COLLATE utf8mb4_general_ci,
  `branchId` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gym_equipment`
--

CREATE TABLE `gym_equipment` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `condition` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'Good',
  `purchaseDate` date DEFAULT NULL,
  `purchaseCost` double DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nextMaintenanceDate` date DEFAULT NULL,
  `branchId` int NOT NULL,
  `notes` text COLLATE utf8mb4_general_ci,
  `imageUrl` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isActive` tinyint NOT NULL DEFAULT '1',
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gym_equipment`
--

INSERT INTO `gym_equipment` (`id`, `name`, `category`, `quantity`, `condition`, `purchaseDate`, `purchaseCost`, `location`, `nextMaintenanceDate`, `branchId`, `notes`, `imageUrl`, `isActive`, `createdAt`, `updatedAt`) VALUES
(1, 'Commercial Treadmill X1', 'Cardio', 5, 'Good', NULL, NULL, 'Cardio Zone', NULL, 48, NULL, NULL, 1, '2026-07-20 15:18:16', '2026-07-20 15:18:16'),
(2, 'Olympic Barbell 20kg', 'Strength', 8, 'Good', NULL, NULL, 'Free Weight Area', NULL, 48, NULL, NULL, 1, '2026-07-20 15:18:16', '2026-07-20 15:18:16'),
(3, 'Adjustable Dumbbell Set', 'Strength', 12, 'Good', NULL, NULL, 'Dumbbell Rack', NULL, 48, NULL, NULL, 1, '2026-07-20 15:18:16', '2026-07-20 15:18:16'),
(4, 'Spin Bike Pro', 'Cardio', 2, 'Low Stock', NULL, NULL, 'Spinning Studio', NULL, 48, NULL, NULL, 1, '2026-07-20 15:18:16', '2026-07-20 15:18:16'),
(5, 'gkdguf', 'Strength', 2, 'Excellent', '2026-07-25', 1500, '1st floor', '2026-08-25', 1, '1st inventry start', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784971069/gym_equipment/56uhp3no_1784971068929.jfif.jpg', 1, '2026-07-25 09:17:49', '2026-07-25 09:17:49'),
(6, '1st euipment', 'Free Weights', 1, 'Good', '2026-07-16', 2000, '1st floor', '2026-08-16', 1, '1st equpment start', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784971204/gym_equipment/6fdzwr2l_1784971204279.png.png', 1, '2026-07-25 09:20:05', '2026-07-25 09:20:05'),
(7, 'dfgh', 'Free Weights', 1, 'Fair', '2026-07-15', 2500, '1st floor', '2026-08-15', 1, 'asdfghjk', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784971313/gym_equipment/kqc8f6qn_1784971313028.png.png', 1, '2026-07-25 09:21:53', '2026-07-25 09:21:53'),
(8, 'hgfdfg', 'Accessories', 1, 'Excellent', '2026-07-01', 3000, '2ndfloor', '2026-08-01', 48, 'asdfghjk', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784971542/gym_equipment/bm673qs3_1784971542675.png.png', 1, '2026-07-25 09:25:43', '2026-07-25 09:25:43'),
(9, 'dfghjk', 'Strength', 1, 'Good', '2026-07-09', 2000, '1st floor', '2026-08-09', 1, 'sdfghjk', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784973314/gym_equipment/uzryw1hq_1784973314413.png.png', 1, '2026-07-25 09:55:15', '2026-07-25 09:55:15'),
(10, ',hbuh', 'Cardio', 1, 'Good', '2026-07-25', 6543, 'ytghb', '2026-07-26', 1, 'kk', NULL, 1, '2026-07-25 09:58:20', '2026-07-25 09:58:20'),
(11, 'dfghj', 'Strength', 1, 'Good', '2026-07-16', 2000, '1', '2026-08-16', 1, 'asdfghjk', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784973890/gym_equipment/kxomh20m_1784973890177.png.png', 1, '2026-07-25 10:04:50', '2026-07-25 10:04:50'),
(12, 'dfgh', 'Cardio', 1, 'Good', '2026-07-17', 3000, '1', '2026-08-11', 1, 'sdfghjk', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784973977/gym_equipment/7wz9ozin_1784973977341.png.png', 1, '2026-07-25 10:06:18', '2026-07-25 10:06:18'),
(13, 'sdfghj', 'Cardio', 1, 'Good', '2026-07-01', NULL, '1st flor', '2026-08-01', 1, 'asdfghjk', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784974072/gym_equipment/uwwqyl5k_1784974072624.png.png', 1, '2026-07-25 10:07:53', '2026-07-25 10:07:53'),
(14, 'sdfghj', 'Free Weights', 1, 'Good', NULL, 3400, NULL, '2026-08-08', 1, 'sdfghjkl', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784974135/gym_equipment/5nb3bvqe_1784974134833.png.png', 1, '2026-07-25 10:08:55', '2026-07-25 10:08:55'),
(15, 'fsd', 'Strength', 1, 'Good', '2026-07-25', 1333, 'fdsx', '2026-07-28', 1, '3e', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784974303/gym_equipment/c892fuuq_1784974303094.png.png', 1, '2026-07-25 10:11:44', '2026-07-25 10:11:44'),
(16, 'sadsdf', 'Cardio', 1, 'Good', '2026-07-25', 2345, 'eedsd', '2026-07-29', 51, 'eeewewee', NULL, 1, '2026-07-25 10:27:53', '2026-07-25 10:27:53'),
(17, 'sdfghjk', 'Free Weights', 1, 'Good', '2026-07-16', 3000, '1st floor', '2026-08-17', 1, 'asdfghjkl;', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784975733/gym_equipment/287zibrn_1784975733384.png.png', 1, '2026-07-25 10:35:34', '2026-07-25 10:35:34'),
(18, 'sdfghj', 'Free Weights', 1, 'Good', '2026-07-23', 7656, '2nd floor', '2026-08-22', 52, 'asdfghjkl;', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784975918/gym_equipment/7c1ry501_1784975918194.png.png', 1, '2026-07-25 10:38:39', '2026-07-25 10:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `housekeepingattendance`
--

CREATE TABLE `housekeepingattendance` (
  `id` int NOT NULL,
  `staffId` int NOT NULL,
  `attendanceDate` date NOT NULL,
  `status` enum('Present','Absent','Late') COLLATE utf8mb4_general_ci NOT NULL,
  `checkIn` time DEFAULT NULL,
  `checkOut` time DEFAULT NULL,
  `workHours` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_general_ci,
  `createdById` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `housekeepingschedule`
--

CREATE TABLE `housekeepingschedule` (
  `id` int NOT NULL,
  `dutyDate` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `location` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('In Progress','Completed','Pending') COLLATE utf8mb4_general_ci DEFAULT 'Pending',
  `staffId` int NOT NULL,
  `createdById` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `landing_page_cms`
--

CREATE TABLE `landing_page_cms` (
  `id` int NOT NULL,
  `adminId` int NOT NULL,
  `heroTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heroSubtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bannerUrl` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featuresJson` text COLLATE utf8mb4_unicode_ci,
  `testimonialsJson` text COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int NOT NULL,
  `adminId` int DEFAULT NULL,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Landing Page',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `assignedToStaffId` int DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `branchId` int DEFAULT NULL,
  `followUpDate` datetime(3) DEFAULT NULL,
  `leadType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'GYM',
  `interestedPlan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `adminId`, `fullName`, `email`, `phone`, `gender`, `source`, `status`, `assignedToStaffId`, `notes`, `createdAt`, `updatedAt`, `branchId`, `followUpDate`, `leadType`, `interestedPlan`) VALUES
(1, 90, 'vaani', 'vaani@gmail.com', '7788994457', 'Female', 'Website', 'Converted', 72, 'wdfgh', '2026-06-05 14:31:44.000', '2026-07-24 04:59:35.000', NULL, NULL, 'GYM', NULL),
(11, 90, 'abc', 'abc@gmail.com', '1111112222', 'Male', 'Website', 'Converted', 72, NULL, '2026-06-08 15:50:21.000', '2026-07-24 04:59:35.000', 48, '2026-06-01 00:00:00.000', 'GYM', NULL),
(64, NULL, 'Visitor', NULL, '0000000000', NULL, 'Pricing Page', 'New', NULL, 'City: N/A | Gym: N/A', '2026-07-07 16:21:45.000', '2026-07-07 16:21:45.000', NULL, NULL, 'SAAS', '7-Day Free Trial'),
(65, NULL, '7dayssecondfree Owner', '7dayssecondfree@gmail.com', '554545545', NULL, 'Start Free Trial', 'Converted', NULL, 'City: N/A | Gym: 7dayssecondfree | GST Number: 52698323', '2026-07-07 16:51:03.000', '2026-07-07 16:51:03.000', NULL, NULL, 'SAAS', '7-Day Free Trial'),
(66, NULL, 'aaagym Owner', 'aaagym@gmail.com', '6565362545', NULL, 'Start Free Trial', 'Converted', NULL, 'City: noida | Gym: aaagym | GST Number: 5869746565', '2026-07-07 17:17:19.000', '2026-07-07 17:17:19.000', NULL, NULL, 'SAAS', '7-Day Free Trial'),
(67, NULL, 'zzgym Owner', 'zzgym@gmail.com', '456789965', NULL, 'Start Free Trial', 'Converted', NULL, 'City: indore | Gym: zzgym | GST Number: 5689565965', '2026-07-07 18:23:16.000', '2026-07-07 18:23:16.000', NULL, NULL, 'SAAS', 'Pro'),
(68, NULL, 'plangym Owner', 'plangym@gmail.com', '5522336984', NULL, 'Complete Purchase', 'Converted', NULL, 'City: gujrat | Gym: plangym | GST Number: 325698596536', '2026-07-08 11:01:57.000', '2026-07-08 11:01:57.000', NULL, NULL, 'SAAS', 'Pro'),
(69, NULL, 'planbgym Owner', 'planbgym@gmail.com', '5689565656', NULL, 'Complete Purchase', 'Converted', NULL, 'City: suart | Gym: planbgym | GST Number: 3569563259', '2026-07-08 11:11:47.000', '2026-07-08 11:11:47.000', NULL, NULL, 'SAAS', 'Basic'),
(70, NULL, 'plancgym Owner', 'plancgym@gmail.com', '456136554', NULL, 'Complete Purchase', 'Converted', NULL, 'City: ahemdabad | Gym: plancgym | GST Number: 658659856', '2026-07-08 11:27:21.000', '2026-07-08 11:27:21.000', NULL, NULL, 'SAAS', 'Gold'),
(71, NULL, 'palnaagym Owner', 'planaagym@gmail.com', '455656565', NULL, 'Complete Purchase', 'Converted', NULL, 'City: ranchi | Gym: palnaagym | GST Number: 565565965', '2026-07-08 11:40:08.000', '2026-07-08 11:40:08.000', NULL, NULL, 'SAAS', 'Pro'),
(72, NULL, 'chikkugym Owner', 'Chikkuyadav125@gmail.com', '654789656', NULL, 'Complete Purchase', 'Converted', NULL, 'City: indore | Gym: chikkugym | GST Number: 659898656598', '2026-07-08 15:51:22.000', '2026-07-08 15:51:22.000', NULL, NULL, 'SAAS', 'Pro'),
(73, NULL, 'bhaktigym Owner', 'yadavbhakti287@gmail.com', '9713391164', NULL, 'Complete Purchase', 'Converted', NULL, 'City: indore | Gym: bhaktigym | GST Number: 598568965', '2026-07-08 17:11:52.000', '2026-07-08 17:11:52.000', NULL, NULL, 'SAAS', 'Basic'),
(74, NULL, 'sarah', 'sarah123@gmail.com', '101010101010', NULL, 'Schedule Demo', 'New', NULL, 'City: noida | Gym: xyzgym', '2026-07-09 11:13:32.000', '2026-07-09 11:13:32.000', NULL, NULL, 'SAAS', 'Pro'),
(75, NULL, 'bhagyashreegym Owner', 'bhagyashreeyadav1001@gmail.com', '101010101010', NULL, 'Start Free Trial', 'Converted', NULL, 'City: noida | Gym: bhagyashreegym | GST Number: 9768563455', '2026-07-09 11:26:37.000', '2026-07-09 11:26:37.000', NULL, NULL, 'SAAS', '7-Day Free Trial'),
(76, NULL, 'bhgayshreegym Owner', 'bhagyashreeyadav1001@gmail.com', '5588996648', NULL, 'Start Free Trial', 'Converted', NULL, 'City: noida | Gym: bhgayshreegym | GST Number: 5885695656', '2026-07-09 11:32:21.000', '2026-07-09 11:32:21.000', NULL, NULL, 'SAAS', '7-Day Free Trial'),
(77, NULL, 'bhgaygym Owner', 'bhagyashreeyadav1001@gmail.com', '101010101019', NULL, 'Start Free Trial', 'Converted', NULL, 'City: noida | Gym: bhgaygym | GST Number: 65898563265', '2026-07-09 11:33:54.000', '2026-07-09 11:33:54.000', NULL, NULL, 'SAAS', '7-Day Free Trial'),
(78, 260, 'leed1', 'leed1@gmail.com', '45632145', 'Female', 'Phone', 'New', 57, NULL, '2026-07-09 13:28:26.000', '2026-07-09 13:28:26.000', NULL, '2026-07-11 00:00:00.000', 'GYM', NULL),
(79, 90, 'sarah', 'sarah123@gmail.com', '101010101010', 'Male', 'Phone', 'Converted', 72, NULL, '2026-07-09 13:42:49.000', '2026-07-24 04:59:35.000', 48, '2026-07-30 00:00:00.000', 'GYM', NULL),
(80, 260, 'leed2', 'leed2@gmail.com', '8523697412', 'Female', 'Website', 'New', NULL, NULL, '2026-07-09 13:48:27.000', '2026-07-09 13:48:27.000', NULL, '2026-07-30 00:00:00.000', 'GYM', NULL),
(81, 90, 'barodjia', 'barodjia@gmail.com', '456563365', 'Female', 'Walk-in', 'Converted', 63, 'ss', '2026-07-11 15:32:49.000', '2026-07-13 13:07:51.000', 48, '2026-07-23 00:00:00.000', 'GYM', NULL),
(82, NULL, 'piiigym Owner', 'barodpia280897@gmail.com', '1234567890', NULL, 'Start Free Trial', 'Converted', NULL, 'City: noida | Gym: piiigym | GST Number: 74AS741851526', '2026-07-14 11:13:49.000', '2026-07-14 11:13:49.000', NULL, NULL, 'SAAS', '7-Day Free Trial'),
(83, NULL, 'raj_gym', 'raj_gym@gmail.com', '4565656666', NULL, 'Schedule Demo', 'New', NULL, 'City: N/A | Gym: N/A', '2026-07-14 12:24:58.000', '2026-07-14 12:24:58.000', NULL, NULL, 'SAAS', NULL),
(84, NULL, 'nalinigym Owner', 'naliniparas228@gmail.com', '5566223148', NULL, 'Complete Purchase', 'New', NULL, 'City: pipli | Gym: nalinigym | GST Number: 74AS741851528', '2026-07-14 15:01:50.000', '2026-07-14 15:01:50.000', NULL, NULL, 'SAAS', 'Pro'),
(85, NULL, 'rah_shekar', 'raj23@gmail.com', '101010101010', NULL, 'Schedule Demo', 'New', NULL, 'City: noida | Gym: ra_gym', '2026-07-14 15:40:20.000', '2026-07-14 15:40:20.000', NULL, NULL, 'SAAS', 'Basic'),
(86, NULL, 'raj_shekar sir Owner', 'rsld2012@gmail.com', '5566442563', NULL, 'Start Free Trial', 'New', NULL, 'City: delhi | Gym: raj_shekar sir | GST Number: 74AS741851527', '2026-07-14 15:45:46.000', '2026-07-14 15:45:46.000', NULL, NULL, 'SAAS', '7-Day Free Trial'),
(88, 90, 'miera', 'mia@123gmail.com', '876956453', 'Female', 'Website', 'In Progress', 67, 'sqdwfefbg', '2026-07-22 10:37:38.000', '2026-07-23 14:36:54.000', 48, '2026-07-06 00:00:00.000', 'GYM', NULL),
(89, 90, 'geo rosham', 'geo@gmail.com', '9458763469', 'Male', 'Walk-in', 'Converted', 68, NULL, '2026-07-22 10:39:03.000', '2026-07-22 10:39:03.000', 48, '2026-07-01 00:00:00.000', 'GYM', NULL),
(90, 90, 'mira', 'mira@gmail.com', '874567345', 'Female', 'Phone', 'New', 67, 'sdvcx ', '2026-07-22 10:39:55.000', '2026-07-23 14:49:47.000', 48, '2026-07-12 00:00:00.000', 'GYM', NULL),
(91, 90, 'zira', 'zrria@gmail.com', '98354769', 'Female', 'Website', 'Converted', 63, NULL, '2026-07-22 10:41:27.000', '2026-07-22 10:41:27.000', 48, '2026-07-08 00:00:00.000', 'GYM', NULL),
(92, 90, 'zira roa', 'zrria2@gmail.com', '98354769', 'Female', 'Walk-in', 'Converted', 72, NULL, '2026-07-22 10:46:26.000', '2026-07-23 13:21:31.000', 48, '2026-07-08 00:00:00.000', 'GYM', NULL),
(93, 67, 'shilpa joshi', 'shilpa@gmail.com', '987654567', NULL, 'Start Free Trial', 'In Progress', NULL, 'Gym: power boost fitness | City: Indore', '2026-07-22 16:50:05.000', '2026-07-22 16:50:05.000', NULL, NULL, 'SAAS', '7-Day Free Trial'),
(94, 90, 'bot', NULL, '1234567890', 'Male', 'Walk-in', 'New', 68, 'DREFGFJHww\n\n', '2026-07-23 14:58:10.000', '2026-07-24 04:55:00.000', 48, '2026-07-23 00:00:00.000', 'GYM', NULL),
(95, 90, 'tanuja', 'tanuja@gmail.com', '1234567890', 'Female', 'Walk-in', 'New', 68, 'new lead', '2026-07-24 04:58:02.000', '2026-07-24 04:58:02.000', 48, '2026-06-25 00:00:00.000', 'GYM', NULL),
(96, NULL, 'Gym1 Owner', 'abc@gmail.com', '91191999', NULL, 'Start Free Trial', 'Converted', NULL, 'GST Number: N/A', '2026-07-24 06:58:37.000', '2026-07-24 06:58:37.000', NULL, NULL, 'SAAS', '7-Day Free Trial'),
(97, NULL, 'maxwell gym Owner', 'maxwell@gmail.com', '43535262627', NULL, 'Complete Purchase', 'New', NULL, 'GST Number: N/A', '2026-07-24 07:42:19.000', '2026-07-24 07:42:19.000', NULL, NULL, 'SAAS', '7 day freee package'),
(98, NULL, 'ABC Pvt Ltd Owner', 'abcd@gmail.com', '2232323232', NULL, 'Complete Purchase', 'Converted', NULL, 'GST Number: 98765432QWSDF', '2026-07-24 08:42:35.000', '2026-07-24 08:42:35.000', NULL, NULL, 'SAAS', '7 day freee package'),
(99, NULL, 'testing gym  Owner', 'testing@gmail.com', '5555555555', NULL, 'Complete Purchase', 'Converted', NULL, 'GST Number: N/A', '2026-07-24 09:01:21.000', '2026-07-24 09:01:21.000', NULL, NULL, 'SAAS', '7 day freee package'),
(100, NULL, 'gymsoft  Owner', 'gymsoft@gmail.com', '4564738383', NULL, 'Complete Purchase', 'Converted', NULL, 'GST Number: 07ABCDE1234F1ZV', '2026-07-24 10:47:13.000', '2026-07-24 10:47:13.000', NULL, NULL, 'SAAS', '7 day freee package'),
(101, 302, 'Member1', NULL, '1222', 'Male', 'Walk-in', 'New', NULL, NULL, '2026-07-24 11:49:23.000', '2026-07-24 11:49:23.000', NULL, '2026-07-24 00:00:00.000', 'GYM', NULL),
(102, NULL, 'fithit gym  Owner', 'fithit@gmail.com', '75757575757', NULL, 'Complete Purchase', 'Converted', NULL, 'GST Number: N/A', '2026-07-24 12:39:39.000', '2026-07-24 12:39:39.000', NULL, NULL, 'SAAS', '7 day freee package'),
(103, NULL, 'icon Owner', 'aa@123', '12345678', NULL, 'Start Free Trial', 'Converted', NULL, 'GST Number: 123456', '2026-07-25 06:09:08.000', '2026-07-25 06:09:08.000', NULL, NULL, 'SAAS', '7-Day Free Trial'),
(104, NULL, 'qqq', 'as@123', '23456', NULL, 'Schedule Demo', 'New', NULL, NULL, '2026-07-25 06:09:46.000', '2026-07-25 06:09:46.000', NULL, NULL, 'SAAS', '7 day freee package'),
(105, NULL, 'gym  soft go Owner', 'gymsoftgo@gmail.com', '3232232323', NULL, 'Complete Purchase', 'Converted', NULL, 'GST Number: N/A', '2026-07-25 06:17:14.000', '2026-07-25 06:17:14.000', NULL, NULL, 'SAAS', '7 day freee package'),
(106, 314, 'rrr', 'rr@123', '12345', 'Male', 'Referral', 'Converted', NULL, 'asdfghjkl', '2026-07-25 06:24:36.000', '2026-07-25 06:26:05.000', NULL, '2026-07-25 00:00:00.000', 'GYM', NULL),
(107, 314, 'rrr', 'rr@123', '12345', NULL, 'Phone', 'In Progress', NULL, 'werty', '2026-07-25 06:31:21.000', '2026-07-25 06:31:21.000', NULL, '2026-07-25 00:00:00.000', 'GYM', NULL),
(108, NULL, 'first fitness gym Owner', 'fitness@gmail.com', '4321123454', NULL, 'Start Free Trial', 'Converted', NULL, 'GST Number: mnbvryjiwo', '2026-07-25 06:44:57.000', '2026-07-25 06:44:57.000', NULL, NULL, 'SAAS', '7-Day Free Trial'),
(109, NULL, 'fresh up Owner', 'fresh@gmail.com', '4345324522', NULL, 'Complete Purchase', 'Converted', NULL, 'GST Number: msmlmkmk', '2026-07-25 07:13:21.000', '2026-07-25 07:13:21.000', NULL, NULL, 'SAAS', 'bronz'),
(110, 67, 'fgh', 'aa@123', '23456', NULL, 'Walk-in', 'Converted', NULL, 'Gym: FGYM | City: noida', '2026-07-25 07:33:29.000', '2026-07-25 07:33:29.000', NULL, NULL, 'SAAS', 'Basic Plan'),
(111, NULL, 'sarah', 'sarah123@gmail.com', '101010101010', NULL, 'Schedule Demo', 'New', NULL, NULL, '2026-07-27 11:05:36.000', '2026-07-27 11:05:36.000', NULL, NULL, 'SAAS', '7 day freee package'),
(112, NULL, 'house of gain Owner', 'shrikantsullere@gmail.com', '08853713957', NULL, 'Complete Purchase', 'Converted', NULL, 'GST Number: 98765432QWSDF', '2026-07-31 09:36:32.000', '2026-07-31 09:36:32.000', NULL, NULL, 'SAAS', 'bronz'),
(113, NULL, 'house of gain Owner', 'shrikantsullere@gmail.com', '08853713957', NULL, 'Complete Purchase', 'Converted', NULL, 'GST Number: N/A', '2026-08-01 07:24:03.000', '2026-08-01 07:24:03.000', NULL, NULL, 'SAAS', 'testing plan');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaigns`
--

CREATE TABLE `marketing_campaigns` (
  `id` int NOT NULL,
  `adminId` int NOT NULL,
  `campaignName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `templateMessage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipientCount` int NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `scheduledAt` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int NOT NULL,
  `userId` int DEFAULT NULL,
  `adminId` int NOT NULL,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joinDate` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `branchId` int DEFAULT NULL,
  `membershipFrom` datetime(3) DEFAULT NULL,
  `membershipTo` datetime(3) DEFAULT NULL,
  `paymentMode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interestedIn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amountPaid` double DEFAULT NULL,
  `dateOfBirth` datetime(3) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `planId` int DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT '0.00',
  `goal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profileImage` text COLLATE utf8mb4_unicode_ci,
  `trainerId` int DEFAULT NULL,
  `trainerType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `userId`, `adminId`, `fullName`, `email`, `phone`, `gender`, `address`, `joinDate`, `branchId`, `membershipFrom`, `membershipTo`, `paymentMode`, `interestedIn`, `amountPaid`, `dateOfBirth`, `password`, `status`, `planId`, `discount`, `goal`, `profileImage`, `trainerId`, `trainerType`) VALUES
(152, 224, 90, 'demo boy', 'demoboy@gmail.com', '7894561234', 'Male', 'demo street, demo city ', '2026-06-15 14:21:59.007', NULL, '2026-06-15 00:00:00.000', '2026-08-14 00:00:00.000', 'Cash', 'Personal Training', 1500, '1998-12-28 05:30:00.000', '$2b$10$xMgLjnERgs3JU4toOTxGV.W9l0L1bUE39v5/Pi7fTJ24EqhNoRDYK', 'Active', 22, 0.00, 'Weight Loss', NULL, 279, 'personal'),
(153, 225, 90, 'Demo girl', 'demogirl@gmail.com', '457869123', 'Female', 'demo street', '2026-06-15 15:11:44.762', NULL, '2026-06-15 05:30:00.000', '2026-07-15 05:30:00.000', 'Cash', 'General Trainer', 0, '1999-08-21 05:30:00.000', '$2b$10$oQ/0HcuOdFAY/.NkIooRee2HS.XGtlw7.6DI3xwi3AGeN1T6Gsdjq', 'Inactive', 39, 0.00, 'Weight Gain', NULL, NULL, NULL),
(154, 227, 90, 'Demo Aayush', 'demoaayu@gmail.com', '1234567890', 'Male', 'demo street', '2026-06-17 13:28:37.726', NULL, '2026-06-17 05:30:00.000', '2026-07-17 05:30:00.000', 'Cash', 'General Trainer', 0, '2002-01-01 05:30:00.000', '$2b$10$/qC8JqA2Yq6IxtKKEGJey.btosdudsAV5IQCuoRnb05v0nUyFXd.q', 'Inactive', 39, 0.00, 'Weight Gain', NULL, NULL, NULL),
(155, 228, 90, 'Dummy Lead 1', 'dummy.lead1@example.com', '9000000001', 'Male', 'xyz', '2026-06-17 14:33:22.872', NULL, '2026-06-17 05:30:00.000', '2026-07-17 05:30:00.000', 'Cash', 'General Trainer', 0, '2000-08-07 05:30:00.000', '$2b$10$XOroeua9HURQPyWvfQx9ROfv/x.MSxuEGc4ySVMZh0IiNSpreELbG', 'Reject', 39, 0.00, 'Weight Loss', NULL, NULL, NULL),
(156, 163, 90, 'Mamber', 'member@gmail.com', '1234567890', 'Male', NULL, '2025-01-01 00:00:00.000', 48, '2026-08-03 11:52:23.587', '2026-08-04 11:52:23.587', 'UPI', NULL, 1, '1990-01-01 00:00:00.000', '123456', 'Active', 71, 0.00, NULL, NULL, 70, NULL),
(157, 230, 90, 'pia b', 'pia@gmail.com', '78945455421', 'Female', 'null', '2026-06-26 15:29:00.425', NULL, '2026-06-26 05:30:00.000', '2026-08-25 05:30:00.000', 'Cash', 'Personal Training', 0, '1997-02-28 05:30:00.000', '$2b$10$XM0CxnvFkK3w5zRHZbiw6enP8NceBqljEJr1JLwP2h5whr4b7i.T.', 'Active', 22, 0.00, 'Weight Gain', NULL, NULL, NULL),
(158, 231, 90, 'riya ', 'riya@gmail.com', '7849615654', 'Female', 'null', '2026-06-26 16:06:29.393', NULL, '2026-06-26 05:30:00.000', '2026-08-25 05:30:00.000', 'Cash', 'Personal Training', 0, '0000-00-00 00:00:00.000', '$2b$10$ZQdCgNH7I//MSIeXYyDz2OvdI.wChFkj0IHFksLeDkrdSNYpV2.Ne', 'Active', 22, 0.00, 'Weight Loss', NULL, NULL, NULL),
(159, 254, 252, 'sarah', 'sarahh@gmail.com', '7067955583', 'Female', 'greater indore', '2026-07-08 17:18:13.811', NULL, '2026-07-08 05:30:00.000', NULL, 'Cash', 'Personal Training', 513, '2003-02-12 05:30:00.000', '$2b$10$cnQm.vPQgyYu3QAAl6FcN.oZwXSYtGWpbMtodbvVfppsUm9NOVHZ.', 'Active', NULL, 0.00, 'Weight Loss', NULL, NULL, NULL),
(160, 255, 90, 'sanni', 'sanni@gmail.com', '582548666', 'Female', 'greater indore', '2026-07-08 17:43:25.620', NULL, '2026-07-08 05:30:00.000', '2026-09-06 05:30:00.000', 'Cash', 'Personal Training', 200, '2003-02-05 05:30:00.000', '$2b$10$DccN17.PS57wQCRIMIHXAuUwhe4a4GMj61C2fl3G3Ubp1pUYFxwUm', 'Active', 22, 0.00, 'Weight Gain', NULL, NULL, NULL),
(161, 275, 90, 'barodjia', 'barodjia@gmail.com', '456563365', 'Female', 'greater indore', '2026-07-13 13:07:51.842', 48, '2026-07-13 05:30:00.000', '2026-09-11 05:30:00.000', 'Cash', 'Personal Training', 0, '2002-05-02 05:30:00.000', '$2b$10$pBoeBCXkBtpOzAXg3PfoyOA0e5Vqw0RujdkOD.QAdsmsZMlnVkf16', 'Active', 22, 0.00, 'Weight Gain', NULL, NULL, NULL),
(162, 285, 90, 'rahshekar2', 'rajshekkar12@gmai.com', '545656656', 'Male', 'greater indore', '2026-07-14 16:38:52.203', NULL, '2026-07-14 05:30:00.000', '2026-09-12 05:30:00.000', 'Cash', 'Personal Training', 200, '2000-01-02 05:30:00.000', '$2b$10$wcBrPIxJ3L.OPiH2C4b5Yeb5Azsil/sXqdyiMOPvhgM3MVycd9b96', 'Active', 22, 0.00, 'Weight Loss', NULL, NULL, NULL),
(163, 286, 90, 'john', 'johne@gmail.com', 'smith', 'Male', 'john , mira , dolly', '2026-07-20 11:13:59.750', NULL, '2026-07-20 05:30:00.000', '2026-09-18 05:30:00.000', 'Cash', 'Group Classes', 25000, '2026-07-03 05:30:00.000', '$2b$10$Fb6cOPtg6ohLQHYr8AbXXe1EyEb9VCOHsQyIyxs9GO6/HT3QCeqdW', 'Active', 46, 0.00, 'Weight Gain', NULL, NULL, NULL),
(164, 287, 90, 'xyz', 'xyz@gmail.com', '98765432345', 'Male', NULL, '2026-07-20 12:54:32.651', NULL, '2026-07-20 05:30:00.000', '2026-08-19 05:30:00.000', 'Cash', 'General Trainer', 34000, '2026-07-09 05:30:00.000', '$2b$10$JQY0afoa2hwzT3UJyGkwsuHVCCLz/pt2Y0kntJAIl6MNg5/9v9ojq', 'Active', 39, 0.00, 'Body Building', NULL, NULL, NULL),
(165, 288, 90, 'taasi', 'tasi@gmail.com', '9876543224', 'Female', NULL, '2026-07-20 16:20:25.943', NULL, '2026-07-20 05:30:00.000', '2026-09-18 05:30:00.000', 'Cash', 'Personal Training', 1500, '2026-07-31 05:30:00.000', '$2b$10$SUZoDqQCyEF2LRbVmNFufuYjewAVCkJCvrrqZjsTR19KEp5ivWaW.', 'Active', 22, 0.00, 'Weight Gain', NULL, NULL, NULL),
(166, 289, 90, 'Auto Email Test Member', 'autoemailtestmember17845482845829758@gym.com', '9988776655', NULL, NULL, '2026-07-20 17:21:24.591', NULL, '2026-07-20 17:21:24.586', NULL, NULL, NULL, 0, NULL, '$2b$10$YUI.l8mlWxgtFlMnEs9yJupzT.jh9Rtptd3jfwO/31py2TnCWuSQO', 'Active', NULL, 0.00, NULL, NULL, NULL, NULL),
(167, 290, 90, 'Auto Email Member', 'autoemailmember17845483294424494@gym.com', '9988771122', NULL, NULL, '2026-07-20 17:22:09.450', NULL, '2026-07-20 17:22:09.445', NULL, NULL, NULL, 0, NULL, '$2b$10$lowu4PK3JazxJZTlEp.0AeWGyEyZ80T79SGYWfQ0parNnjVZ4twMe', 'Active', NULL, 0.00, NULL, NULL, NULL, NULL),
(168, 291, 90, 'sarah', 'sarah13@gmail.com', '1010101010', 'Male', NULL, '2026-07-20 17:23:51.241', NULL, '2026-07-20 05:30:00.000', '2026-09-18 05:30:00.000', 'Cash', 'Personal Training', 0, '2026-07-04 05:30:00.000', '$2b$10$aO/QX7EnSIVXxkXh4AalmOoD.WLgnAdH371vBDZlKl9N2UZR57AVq', 'Active', 22, 0.00, 'Weight Loss', NULL, NULL, NULL),
(170, 294, 90, 'sam', 'sam@gmail.com', '984576324', 'Female', '12dctyuk', '2026-07-23 10:37:21.294', NULL, '2026-07-23 05:30:00.000', '2026-09-21 05:30:00.000', 'Cash', 'Personal Training', 5999, '2026-07-02 05:30:00.000', '$2b$10$c2r8pUm8cRZ4AqcNuM/R8ugS.FQVjIKYTLzr1aykKlHgmoMQtEt8O', 'Active', 14, 0.00, 'Weight Gain', NULL, 279, 'personal'),
(171, 295, 90, 'Diya Jain', 'jaindiya258@gmail.com', '07518824806', 'Female', 'kerhgayhd ', '2026-07-23 10:44:16.127', NULL, '2026-07-23 05:30:00.000', '2026-09-21 05:30:00.000', 'Cash', 'Personal Training', 1500, '2005-03-18 05:30:00.000', '$2b$10$kmDfeAJvvl.kSVr4wfgss.LD1VVXSl7lBhZ1ycPUHoEHT13ZjUsGe', 'Active', 22, 0.00, 'Weight Gain', NULL, 279, 'personal'),
(172, 296, 90, 'user user', 'user@gmail.com', '222222222', 'Male', 'was', '2026-07-23 14:32:22.062', NULL, '2026-07-23 05:30:00.000', '2026-09-21 05:30:00.000', 'Upi', 'Personal Training', 1500, '2026-06-30 05:30:00.000', '$2b$10$TofncNHiQx7OJFR01CHI7OzZQlFXKcmVVufcjVi4F5CTSffrKu5c.', 'Active', 22, 0.00, 'Weight Gain', NULL, 279, 'personal'),
(173, 297, 90, 'test', 'asdfghjk@gmail.com', '4444444444', 'Male', 'h', '2026-07-23 14:49:02.269', NULL, '2026-07-23 05:30:00.000', '2026-09-21 05:30:00.000', 'Cash', 'Personal Training', 0, '2026-07-01 05:30:00.000', '$2b$10$ckPxJFV0E4KfNcHqgS/27ukOcey7N6iYcFO3qwrcyOk9yaLNipBLq', 'Active', 22, 0.00, 'Weight Gain', NULL, 279, 'personal'),
(174, 298, 90, 'tanuja', 'tanuja@gmail.com', '1234567809', 'Female', 'delhi', '2026-07-24 05:03:09.263', NULL, '2026-07-24 00:00:00.000', '2026-10-22 00:00:00.000', 'Cash', 'Group Classes', 1200, '2000-06-13 00:00:00.000', '$2b$10$U8bK6rJnmqGKlyhFfU3pBuBtHJF1wAzHU11oklhfrRwn9S1zWzWtO', 'Active', 24, 0.00, 'Body Building', NULL, NULL, NULL),
(175, 299, 90, 'sdf', 'scxz@gmail.com', '7652345633', 'Male', NULL, '2026-07-24 05:53:40.011', NULL, '2026-07-24 05:53:39.930', '2026-07-29 05:53:39.930', NULL, NULL, NULL, NULL, '$2b$10$PiFDP/PHLkMO0.I6OvlcvO1WyVl/okfxE8bopDvtZBBt/h6SA81/O', 'Inactive', 50, 0.00, NULL, NULL, NULL, NULL),
(176, 300, 90, 'bot user', 'botuser@gmail.com', '3232125532', 'Male', 'rs', '2026-07-24 06:52:21.576', NULL, '2026-07-24 00:00:00.000', '2026-08-23 00:00:00.000', 'Cash', 'General Trainer', 5000, '2026-07-16 00:00:00.000', '$2b$10$qw/oMSJtpCo912tyo7rbDukmWBiFKu07E6fJINPvGA5KfJvBae7ZG', 'Active', 39, 0.00, 'Weight Gain', NULL, NULL, NULL),
(177, 301, 90, 'safari', 'safari@gmail.com', '0112343233', 'Male', 'dwsvfed', '2026-07-24 07:00:07.439', NULL, '2026-07-24 00:00:00.000', '2026-09-22 00:00:00.000', 'Cash', 'Personal Training', 1500, '2026-07-09 00:00:00.000', '$2b$10$e.B1ylNIOI5nD.SEA/TdO.PSqByFV8n/HZPN35/FaoKy4Zn/syoXG', 'Active', 22, 0.00, 'Weight Gain', NULL, NULL, NULL),
(178, 311, 302, 'member1', 'jjsssj@gmail.com', '9888888', 'Male', NULL, '2026-07-24 12:09:14.046', NULL, '2026-07-24 00:00:00.000', '2026-08-23 00:00:00.000', 'Cash', 'General Trainer', 3500, '2010-07-14 00:00:00.000', '$2b$10$N5l6cvhfsG1r68P6/Lk87uYM7vHUVwu1enPWU6/c8mBQJhlI0N9QS', 'Active', 53, 0.00, 'Weight Loss', NULL, NULL, NULL),
(179, 316, 314, 'bbb', 'raj23@gmail.com', '12345', 'Male', 'sudama nagar mp', '2026-07-25 06:23:34.840', NULL, '2026-07-25 00:00:00.000', NULL, 'Cash', 'General Trainer', 500, '2026-07-25 00:00:00.000', '$2b$10$pygxSScY3I.BCZaayC1c2.kTVe7XBMbc/6F2sfQw4P7kq2U5J8K0q', 'Active', NULL, 0.00, 'Weight Loss', NULL, NULL, NULL),
(180, 317, 314, 'rrr', 'rr@123', '123456', 'Male', NULL, '2026-07-25 06:26:04.416', NULL, '2026-07-25 00:00:00.000', NULL, 'Cash', 'Personal Training', 300, NULL, '$2b$10$SjVKtGIHVRP2lZawOomBH.gtwoZoB9A05/gxbieFwwk52c8b0xYXu', 'Active', NULL, 0.00, NULL, NULL, NULL, NULL),
(181, 342, 320, 'safari', 'safarione@gmail.com', '12345654387', 'Male', 'india', '2026-07-25 07:59:38.633', NULL, '2026-07-25 00:00:00.000', '2026-09-08 00:00:00.000', 'Cash', 'Personal Training', 999, '2000-07-19 00:00:00.000', '$2b$10$N3wme0Sm01eUW9kN9hDQkuCBBucwC756/Ulud0yW8KrWbAq6iZfgq', 'Active', 63, 0.00, 'Fat Loss', NULL, 322, 'personal'),
(182, 346, 320, 'safari two ', 'safaritwo@gmail.com', '123487654', 'Male', 'hff', '2026-07-25 08:38:45.391', NULL, '2026-07-25 00:00:00.000', '2026-09-08 00:00:00.000', 'Cash', 'Personal Training', 999, '2012-07-05 00:00:00.000', '$2b$10$3L8ZDwW7YMAxfu1Mt2GVL.0A8BQZ4P45LUXEHX4HrSwXdv03uq26u', 'Active', 63, 0.00, 'Muscle Gain', NULL, 322, 'personal'),
(183, 347, 320, 'pgx ', 'pgx@gmail.com', '737483847', 'Male', 'edws', '2026-07-25 08:40:47.996', NULL, '2026-07-25 00:00:00.000', '2026-09-08 00:00:00.000', 'Cash', 'Personal Training', 999, '2011-07-13 00:00:00.000', '$2b$10$ZkJBaaId7fUAuwEFviqXueJ3dkq8CVEfqlMF1lDa/ctxTO.VAioze', 'Active', 63, 0.00, 'Maintenance', NULL, 327, 'personal'),
(184, 348, 320, 'pgx two ', 'pgxtqo@gmail.com', '634763483', 'Male', 'ewfdsw', '2026-07-25 08:41:52.776', NULL, '2026-07-25 00:00:00.000', '2026-08-24 00:00:00.000', 'Cash', 'Personal Training', 1598, '2013-07-04 00:00:00.000', '$2b$10$fgWI.HudtR/lxLgfmb2G6ev6vmBIphWdKqzq8g/17adkCJh/qJV6O', 'Active', 62, 0.00, 'Body Builder', NULL, 327, 'personal'),
(185, 349, 320, 'kt', 'kt@gmail.com', '232321312', 'Male', 'sa', '2026-07-25 08:45:00.601', NULL, '2026-07-25 00:00:00.000', '2026-07-29 00:00:00.000', 'Cash', 'General Trainer', 599, '2011-07-18 00:00:00.000', '$2b$10$YMGkvBZo6uXm2DHXWKYdDOPSWltGNv0UjwuAnAH1Aw5w1JenvOdrm', 'Inactive', 65, 0.00, 'Muscle Gain', NULL, 330, 'general'),
(186, 350, 314, 'zzz', 'zz@123', '1234532', 'Male', 'sudama nagar indore ', '2026-07-25 08:45:53.403', NULL, '2026-07-25 00:00:00.000', '2027-07-25 00:00:00.000', 'Cash', 'Personal Training', 5000, '2010-07-08 00:00:00.000', '$2b$10$tNAsZ7LiJSK64WLv6KHU8.D9T7I41EqJZ/BwdNkbgljS61z79ixre', 'Inactive', 57, 0.00, 'Fat Loss', NULL, 340, 'personal'),
(187, 351, 320, 'kt two', 'kttwo@gmail.com', '234234323', 'Male', 'qwas', '2026-07-25 08:46:04.970', NULL, '2026-07-25 00:00:00.000', '2026-08-08 00:00:00.000', 'Cash', 'General Trainer', 899, '1987-07-02 00:00:00.000', '$2b$10$7EZZgnvp.2BFLPSFoX3q/O7RHbTSYBf4r6B7lv0F/zAu3jMTt94NK', 'Active', 64, 0.00, 'Fat Loss', NULL, 331, 'general'),
(188, 352, 314, 'yyy', 'yy@123', '6543654', 'Male', 'asdfghjkjhgfd', '2026-07-25 08:49:04.537', NULL, '2026-07-25 00:00:00.000', '2026-09-23 00:00:00.000', 'Cash', 'General Trainer', 2500, '2014-07-08 00:00:00.000', '$2b$10$MSNqJVZMojMMGljBRB3dZ.90ajZ0vcQqwOLRelAPuhYsOQxKnkNOe', 'Active', 67, 0.00, 'Muscle Gain', NULL, 318, 'general'),
(189, 353, 314, 'www', 'ww@123', '876543', 'Male', 'sdfghjk', '2026-07-25 08:51:30.938', NULL, '2026-07-25 00:00:00.000', '2026-09-23 00:00:00.000', 'Cash', 'General Trainer', 2500, '2011-07-10 00:00:00.000', '$2b$10$rHyZcBKSVT2zT5A8C6KM6uTF7KafsI.9fyvn5lZIRxFbRT9h2Wi0i', 'Active', 67, 0.00, 'Body Builder', NULL, 318, 'general'),
(190, 354, 314, 'rrr', 'rrr@123', '12345679876', 'Male', 'asdfghj', '2026-07-25 08:55:49.830', NULL, '2026-07-25 00:00:00.000', '2027-07-25 00:00:00.000', 'Cash', 'Personal Training', 5000, '2004-07-05 00:00:00.000', '$2b$10$sFLTTeUtK90g5G0QwtcYLOJjJfx4YcRVRJ1CAgwrt/YreBnhF6IPe', 'Active', 57, 0.00, 'Body Builder', NULL, 339, 'personal'),
(191, 355, 314, 'sss', 'sss@123', '9876544', 'Male', NULL, '2026-07-25 08:57:30.377', NULL, '2026-07-25 00:00:00.000', '2026-09-23 00:00:00.000', 'Cash', 'General Trainer', 2500, '2011-11-11 00:00:00.000', '$2b$10$H3JpkUDmmKjJz2L25W6kPO5woiiAfIb0MENI8LRRSCZwkxFATZicC', 'Active', 59, 0.00, 'Maintenance', NULL, 338, 'general'),
(192, 356, 314, 'jjj', 'jj@123', '65434554', 'Male', 'kjhgfx', '2026-07-25 09:01:23.071', NULL, '2026-07-25 00:00:00.000', '2026-10-23 00:00:00.000', 'Cash', 'Group Classes', 3000, '2001-01-01 00:00:00.000', '$2b$10$DmBZvaeyj0rL09D0L2JONeJCjOxsd1bro.c/eOynEoDRZ6snJN1JG', 'Active', 66, 0.00, 'Muscle Gain', NULL, 338, 'personal'),
(193, 357, 314, 'kkk', 'kk@123', '6543456', 'Female', 'asdfghjk', '2026-07-25 09:03:54.765', NULL, '2026-07-25 00:00:00.000', '2026-08-24 00:00:00.000', 'Cash', 'Group Classes', 500, '2020-07-14 00:00:00.000', '$2b$10$sFibjRt/R0XlE1Krx5YA1OuLYGmXytXRpymiifO3C41I44PVRxVQu', 'Active', 58, 0.00, 'Maintenance', NULL, 343, 'personal'),
(194, 358, 320, 'r4ewf', 'abcde@gmail.com', 'ds', 'Male', 'hh', '2026-07-25 09:22:01.241', NULL, '2026-07-25 00:00:00.000', '2026-09-08 00:00:00.000', 'Cash', 'Personal Training', 999, '2011-06-29 00:00:00.000', '$2b$10$PT7OXRDMM9vWIpJ0RjJ04OruKAiZnydMz0flEFMcNuV1.QJMaYmte', 'Active', 63, 0.00, 'Fat Loss', NULL, 327, 'personal'),
(195, 359, 320, 'asd', 'asd@gmail.com', '43576432', 'Male', 'was', '2026-07-25 09:42:56.389', NULL, '2026-07-25 00:00:00.000', '2026-09-08 00:00:00.000', 'Cash', 'Personal Training', 999, '2012-07-12 00:00:00.000', '$2b$10$V2aIiigcA7PS/F/MiI6vSuc7EkUw/93eZNlT50xIIuI3gyc/Asrt.', 'Active', 63, 0.00, 'Muscle Gain', NULL, 327, 'personal'),
(196, 360, 90, 'wdsasxssxxss', 'pgxgame@gmail.com', '1234654322', 'Male', 'ws', '2026-07-25 10:06:34.276', NULL, '2026-07-25 00:00:00.000', '2026-09-23 00:00:00.000', 'Cash', 'Personal Training', 1500, '2012-07-24 00:00:00.000', '$2b$10$O6YQOlCB0dTywpmRZ7RRNOu2yEtQ60.N3lU/s0xB17CHsQeU8VlYa', 'Active', 22, 0.00, 'Muscle Gain', NULL, 325, 'personal'),
(200, 364, 90, 'wqads', 'aaaabb@gmail.com', '234567878', 'Male', 'xz', '2026-07-31 11:25:12.708', NULL, '2026-07-31 00:00:00.000', '2026-09-29 00:00:00.000', 'Cash', 'Personal Training', 1500, NULL, '$2b$10$gQH1cnj7ksZuM8UCLzp4POWHlewMhpmuU0vnRJVNXu/xgp5tCcpp6', 'Active', 22, 0.00, 'Maintenance', NULL, 279, 'personal'),
(204, 368, 320, 'sdfgh', 'asdfghjkl@gmail.com', '7463923710', 'Male', 'wedsadsds', '2026-07-31 12:12:54.796', NULL, '2026-07-31 00:00:00.000', '2026-09-14 00:00:00.000', 'Cash', 'Personal Training', 999, '2026-06-29 00:00:00.000', '$2b$10$7/tjo5EmZ0JYHCzia9IIWepld1IYSvo954bc2mvR5eLf63SAhhb1O', 'Active', 63, 0.00, 'Muscle Gain', NULL, 327, 'personal'),
(205, 369, 320, 'was', 'zxc@gmail.com', '2446536343', 'Male', 's', '2026-07-31 12:22:13.183', NULL, '2026-07-31 00:00:00.000', '2026-08-30 00:00:00.000', 'Cash', 'Personal Training', 1598, NULL, '$2b$10$tLddj8qjrNgCxPQy3E6f5.tj/GKcRRs3q4qfwWtbapC/r6F/HHiOW', 'Active', 62, 0.00, 'Muscle Gain', NULL, 327, 'personal'),
(206, 370, 320, 'amul', 'amul@gmail.com', '2345678901', 'Male', 'ASDXZA', '2026-07-31 12:35:34.284', NULL, '2026-07-31 00:00:00.000', '2026-09-14 00:00:00.000', 'Cash', 'Personal Training', 999, '2026-06-29 00:00:00.000', '$2b$10$mSYuBFYes.pTzjletDJRNeVWrJVaquKnWn3h8CXWjTjU4ScIhdt66', 'Active', 63, 0.00, 'Muscle Gain', NULL, 327, 'personal'),
(210, 375, 90, 'Arjun', 'dfhh@gmail.com', '92051186312', 'Male', 'Ashram, New delhi ', '2026-08-01 09:35:10.664', NULL, '2026-08-01 00:00:00.000', '2026-08-31 00:00:00.000', 'Cash', 'General Trainer', 5000, '2004-08-11 00:00:00.000', '$2b$10$usC.Cd14tCqhtV.zoiiUL.O/2u2/KHYZkGZj.MhHQYDixi.tcEFKG', 'Active', 39, 0.00, 'Fat Loss', NULL, 280, 'general'),
(211, 376, 90, 'sdf', 'dgsj@gmail.com', '2143567689', 'Male', 'xs', '2026-08-03 10:53:44.252', NULL, '2026-08-03 00:00:00.000', '2026-10-02 00:00:00.000', 'Upi', 'Personal Training', 0, NULL, '$2b$10$IxepHEjF1nXSZuo9Xf0uluBzw2bYB5XgZTfQYwvqVxmMQraope/.S', 'Active', 22, 0.00, 'Weight Gain', NULL, NULL, NULL),
(212, 377, 90, 'wgsx', 'gdfchg@gmail.com', '3653456554', 'Male', 'zsdx', '2026-08-03 10:57:06.684', NULL, '2026-08-03 00:00:00.000', '2026-08-08 00:00:00.000', 'Upi', 'Group Classes', 1000, NULL, '$2b$10$U6UkdbYDzw.hw4Xvz8/sBe8/3n7Ce914eOcDbdsxO45hkIcsOhHMO', 'Active', 50, 0.00, 'Muscle Gain', NULL, 280, 'personal'),
(217, 385, 90, 'fg', 'sd@gmail.com', '3455555555', 'Male', NULL, '2026-08-04 07:11:45.267', NULL, '2026-08-04 00:00:00.000', '2026-08-09 00:00:00.000', 'Cash', 'Group Classes', 1000, NULL, '$2b$10$7t2ndS3TzMNdn8YXMT97Xe5b2lykgHNN/I9w0fzGy5bqlByBKoPsi', 'Active', 50, 0.00, 'Muscle Gain', NULL, NULL, NULL),
(219, 388, 387, 'shrikant sullere', 'JGDJS@gmail.com', '08853713957', 'Male', 'Chhatarpur', '2026-08-04 09:04:48.918', NULL, '2026-08-04 00:00:00.000', '2026-08-06 00:00:00.000', 'Cash', 'Personal Training', 1233, NULL, '$2b$10$fZQ6QrsQhigCXG4teUKyGuMuUMn56NvGUq422BgLSoYPWb79hooaq', 'Active', 72, 0.00, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `memberattendance`
--

CREATE TABLE `memberattendance` (
  `id` int NOT NULL,
  `staffId` int DEFAULT NULL,
  `memberId` int DEFAULT NULL,
  `branchId` int DEFAULT NULL,
  `checkIn` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `checkOut` datetime(3) DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `notes` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shiftId` int DEFAULT NULL,
  `deviceId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memberattendance`
--

INSERT INTO `memberattendance` (`id`, `staffId`, `memberId`, `branchId`, `checkIn`, `checkOut`, `createdAt`, `notes`, `status`, `mode`, `shiftId`, `deviceId`, `ipAddress`, `latitude`, `longitude`) VALUES
(35, NULL, 76, 33, '2025-12-15 00:58:41.822', '2025-12-15 04:17:54.914', '2025-12-15 00:58:41.824', 'QR Code Check-in', 'Present', 'Manual', NULL, NULL, NULL, NULL, NULL),
(38, NULL, 76, 33, '2025-12-15 04:24:33.906', NULL, '2025-12-15 04:24:33.908', 'QR Code Check-in', 'Present', 'Manual', NULL, NULL, NULL, NULL, NULL),
(50, 27, NULL, NULL, '2025-12-16 16:31:00.000', '2025-12-16 17:31:00.000', '2025-12-16 16:31:01.380', 'late', 'Late', 'Manual', 1, NULL, NULL, NULL, NULL),
(78, NULL, 101, 48, '2025-12-19 17:07:39.294', '2025-12-19 17:07:48.376', '2025-12-19 17:07:39.296', 'Manual Check-in', 'Present', 'Manual', NULL, NULL, NULL, NULL, NULL),
(81, NULL, 168, 33, '2025-12-29 17:07:31.313', '2025-12-30 13:07:05.667', '2025-12-29 17:07:31.317', 'Manual Check-in', 'Present', 'Manual', NULL, NULL, NULL, NULL, NULL),
(82, NULL, 167, 33, '2025-12-29 17:07:59.437', NULL, '2025-12-29 17:07:59.441', 'Manual Check-in', 'In Gym', 'Manual', NULL, NULL, NULL, NULL, NULL),
(83, NULL, 165, 33, '2025-12-29 18:26:35.907', NULL, '2025-12-29 18:26:35.914', 'Manual Check-in', 'In Gym', 'Manual', NULL, NULL, NULL, NULL, NULL),
(84, NULL, 166, 33, '2025-12-30 13:20:18.520', NULL, '2025-12-30 13:20:18.523', 'Manual Check-in', 'In Gym', 'Manual', NULL, NULL, NULL, NULL, NULL),
(85, NULL, 68, 45, '2025-12-05 08:00:00.000', NULL, '2025-12-30 14:15:14.981', 'Member attended with father', 'In Gym', 'manual', NULL, NULL, NULL, NULL, NULL),
(87, NULL, 101, 1, '2025-12-30 16:42:07.000', '2026-01-06 18:12:44.527', '2025-12-30 16:42:07.976', NULL, 'Present', NULL, NULL, NULL, NULL, NULL, NULL),
(88, NULL, 116, NULL, '2025-12-05 08:00:00.000', NULL, '2025-12-30 16:53:10.886', 'Member attended with father', 'In Gym', 'manual', NULL, NULL, NULL, NULL, NULL),
(90, NULL, 161, 1, '2026-01-01 17:43:22.666', '2026-01-01 17:45:19.557', '2026-01-01 17:43:22.670', 'Scanned Global QR Code - Admin: John Admin', 'Present', 'QR Code', NULL, NULL, NULL, NULL, NULL),
(91, NULL, 184, 1, '2026-01-01 18:37:24.345', '2026-01-01 18:39:41.153', '2026-01-01 18:37:24.352', 'Manual Check-in', 'Present', 'Manual', NULL, NULL, NULL, NULL, NULL),
(92, NULL, 104, 48, '2026-01-03 17:00:09.855', '2026-01-03 17:01:45.438', '2026-01-03 17:00:09.942', 'Manual Check-in', 'Present', 'Manual', NULL, NULL, NULL, NULL, NULL),
(93, NULL, 184, 1, '2026-01-05 14:53:47.882', '2026-01-05 14:54:09.107', '2026-01-05 14:53:47.891', 'Manual Check-in', 'Present', 'Manual', NULL, NULL, NULL, NULL, NULL),
(98, NULL, 102, 48, '2026-01-06 18:09:52.981', '2026-01-06 18:10:21.251', '2026-01-06 18:09:52.989', 'Manual Check-in', 'Present', 'Manual', NULL, NULL, NULL, NULL, NULL),
(99, NULL, 101, 48, '2026-01-06 18:12:47.925', '2026-01-06 18:40:20.658', '2026-01-06 18:12:47.928', 'Manual Check-in', 'Present', 'Manual', NULL, NULL, NULL, NULL, NULL),
(100, 27, 104, 48, '2026-01-06 18:47:13.142', '2026-01-06 18:48:54.237', '2026-01-06 18:47:13.150', 'Manual Check-in', 'Present', 'Manual', NULL, NULL, NULL, NULL, NULL),
(101, NULL, 102, 48, '2026-01-07 13:13:43.962', '2026-01-07 14:14:15.413', '2026-01-07 13:13:43.968', 'Manual Check-in', 'Present', 'Manual', NULL, NULL, NULL, NULL, NULL),
(105, NULL, 101, 48, '2026-06-05 15:26:01.119', NULL, '2026-06-05 15:26:01.132', 'Manual Check-in', 'In Gym', 'Manual', NULL, 'dev_1780653120782_wa7vjrwlh', '::1', NULL, NULL),
(106, NULL, 152, 1, '2026-06-15 14:22:31.168', NULL, '2026-06-15 14:22:31.171', 'Manual Check-in', 'In Gym', 'Manual', NULL, 'dev_1781513551162_t50kp7u8w', '::1', NULL, NULL),
(107, NULL, 93, 48, '2026-06-22 17:14:59.824', NULL, '2026-06-22 17:14:59.826', 'Manual Check-in', 'In Gym', 'Manual', NULL, 'dev_1781513551162_t50kp7u8w', '::1', NULL, NULL),
(108, NULL, 156, 48, '2026-07-20 10:43:53.359', NULL, '2026-07-20 10:43:53.369', 'Manual Check-in', 'In Gym', 'Manual', NULL, 'dev_1784524433290_31btfbpr2', '::1', NULL, NULL),
(109, NULL, 277, 48, '2026-07-20 17:35:04.514', '2026-07-23 14:53:50.924', '2026-07-20 17:35:04.521', 'Manual Check-in', 'Present', 'Manual', NULL, 'dev_1784524433290_31btfbpr2', '::1', NULL, NULL),
(110, NULL, 161, 1, '2026-07-21 08:30:00.000', '2026-07-21 10:00:00.000', '2026-07-21 11:18:12.914', 'Test Manual Attendance', 'Present', 'Manual', NULL, NULL, NULL, NULL, NULL),
(111, NULL, 279, 48, '2026-07-21 11:29:23.680', NULL, '2026-07-21 11:29:23.686', 'Manual Check-in', 'In Gym', 'Manual', NULL, 'dev_1784524433290_31btfbpr2', '::1', NULL, NULL),
(112, NULL, 156, 48, '2026-07-23 13:10:19.434', NULL, '2026-07-23 13:10:19.439', 'Manual Check-in', 'In Gym', 'Manual', NULL, 'dev_1784538966607_zgix5z1gf', '::1', 22.69035793, 75.82865372),
(113, NULL, 277, 48, '2026-07-23 13:23:32.301', NULL, '2026-07-23 13:23:32.315', 'Manual Check-in', 'In Gym', 'Manual', NULL, 'dev_1784812491367_w5sg0t03c', '116.75.242.78', NULL, NULL),
(114, NULL, 156, 48, '2026-07-24 04:51:47.268', NULL, '2026-07-24 04:51:47.595', 'Manual Check-in', 'In Gym', 'Manual', NULL, 'dev_1784812491367_w5sg0t03c', '27.5.0.191', NULL, NULL),
(115, NULL, 338, 1, '2026-07-25 11:12:46.867', '2026-07-25 11:13:57.285', '2026-07-25 11:12:47.325', 'Manual Check-in', 'Present', 'Manual', NULL, 'dev_1784977966369_vo0kodu6p', '116.75.193.247', NULL, NULL),
(116, NULL, 338, 1, '2026-07-25 11:14:25.999', '2026-07-25 11:14:44.267', '2026-07-25 11:14:26.456', 'Manual Check-in', 'Present', 'Manual', NULL, 'dev_1784977966369_vo0kodu6p', '116.75.193.247', 22.69032330, 75.82866412),
(117, NULL, 185, 1, '2026-07-25 11:15:54.156', NULL, '2026-07-25 11:15:54.481', 'Manual Check-in', 'In Gym', 'Manual', NULL, 'dev_1784538966607_zgix5z1gf', '116.75.193.247', 22.69035079, 75.82866790),
(118, NULL, 330, 1, '2026-07-25 11:16:54.292', '2026-07-25 11:17:00.565', '2026-07-25 11:16:54.750', 'Manual Check-in', 'Present', 'Manual', NULL, 'dev_1784538966607_zgix5z1gf', '116.75.193.247', 22.69035023, 75.82865340),
(119, NULL, 190, 1, '2026-07-25 12:54:05.173', '2026-07-25 12:54:12.254', '2026-07-25 12:54:05.184', 'Manual Check-in', 'Present', 'Manual', NULL, 'dev_1784984044746_4k4z8kzfv', '116.75.193.247', 22.69037659, 75.82869262),
(120, NULL, 178, 1, '2026-07-25 18:08:56.724', '2026-07-25 18:10:08.639', '2026-07-25 18:08:57.050', 'Manual Check-in', 'Present', 'Manual', NULL, 'dev_1785002935851_sweye3u5f', '106.219.156.200', NULL, NULL),
(121, NULL, 195, 1, '2026-07-26 10:03:59.655', '2026-07-26 10:04:06.383', '2026-07-26 10:03:59.983', 'Manual Check-in', 'Present', 'Manual', NULL, 'dev_1784538966607_zgix5z1gf', '27.5.2.223', 22.68307500, 75.86192300),
(122, NULL, 156, 48, '2026-07-28 09:31:14.090', NULL, '2026-07-28 09:31:14.109', 'Manual Check-in', 'In Gym', 'Manual', NULL, 'dev_1784538966607_zgix5z1gf', '116.75.198.212', NULL, NULL),
(123, NULL, 200, 1, '2026-07-31 11:26:04.801', NULL, '2026-07-31 11:26:04.811', 'Manual Check-in', 'In Gym', 'Manual', NULL, 'dev_1784538966607_zgix5z1gf', '27.6.224.147', 22.69037753, 75.82866880),
(124, NULL, 204, 1, '2026-07-31 12:14:52.704', NULL, '2026-07-31 12:14:53.033', 'Manual Check-in', 'In Gym', 'Manual', NULL, 'dev_1784538966607_zgix5z1gf', '27.6.224.147', 22.69060714, 75.82898113),
(126, NULL, 156, 48, '2026-08-03 08:50:04.240', '2026-08-03 08:57:18.127', '2026-08-03 08:50:04.574', 'Manual Check-in', 'Present', 'Manual', NULL, 'dev_1784538966607_zgix5z1gf', '27.5.43.51', NULL, NULL),
(127, NULL, 211, 48, '2026-08-04 05:04:47.728', NULL, '2026-08-04 05:04:47.737', NULL, 'In Gym', 'QR', NULL, NULL, '27.6.225.169', NULL, NULL),
(128, NULL, 177, 48, '2026-08-04 05:06:16.412', NULL, '2026-08-04 05:06:16.420', NULL, 'In Gym', 'QR', NULL, NULL, '27.6.225.169', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `memberplan`
--

CREATE TABLE `memberplan` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sessions` int NOT NULL,
  `validityDays` int NOT NULL,
  `price` double NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'GROUP',
  `adminId` int NOT NULL,
  `branchId` int DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `trainerId` int DEFAULT NULL,
  `trainerType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxRate` decimal(5,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memberplan`
--

INSERT INTO `memberplan` (`id`, `name`, `sessions`, `validityDays`, `price`, `type`, `adminId`, `branchId`, `createdAt`, `updatedAt`, `trainerId`, `trainerType`, `status`, `taxRate`) VALUES
(13, 'Basic', 12, 30, 12000, 'PERSONAL', 68, 33, '2025-12-10 03:25:18.278', '2025-12-15 01:13:56.955', NULL, NULL, NULL, 0.00),
(14, 'Golden', 12, 60, 5999, 'GROUP', 90, 33, '2025-12-10 03:25:40.750', '2025-12-18 15:47:45.557', NULL, NULL, 'Active', 0.00),
(22, 'Pre', 12, 60, 1500, 'PERSONAL', 90, NULL, '2025-12-12 22:10:39.629', '2025-12-18 15:47:48.999', NULL, NULL, 'Active', 0.00),
(24, 'Basic', 24, 90, 1200, 'GROUP', 90, NULL, '2025-12-13 01:45:45.516', '2026-01-06 14:42:49.698', NULL, NULL, 'Active', 10.00),
(31, 'Basic', 12, 90, 1200, 'MEMBER', 90, NULL, '2025-12-16 17:53:38.853', '2025-12-19 12:13:53.716', 101, 'general', 'Active', 0.00),
(39, 'general', 12, 30, 5000, 'MEMBER', 90, NULL, '2026-01-06 14:27:45.193', '2026-01-06 14:27:45.193', 139, 'general', 'Active', 5.00),
(42, 'test', 1, 30, 5999, 'MEMBER', 90, NULL, '2026-01-07 16:44:15.201', '2026-01-07 16:44:15.201', 181, 'personal', 'Active', 0.00),
(43, 'prmium pack', 13, 31, 5499, 'PERSONAL', 216, NULL, '2026-06-13 15:29:18.669', '2026-06-13 15:29:18.669', NULL, NULL, 'Active', 0.00),
(46, 'Diwali Bonus', 12, 60, 59999, 'GROUP', 90, NULL, '2026-06-17 14:14:50.816', '2026-06-17 14:25:56.297', NULL, NULL, 'Active', 0.00),
(47, 'gold ', 1, 30, 499, 'PERSONAL', 260, NULL, '2026-07-09 14:50:05.994', '2026-07-09 14:50:05.994', NULL, NULL, 'Active', 0.00),
(48, 'premium plan pack', 13, 90, 79999, 'GROUP', 260, NULL, '2026-07-09 14:55:23.877', '2026-07-09 14:55:23.877', NULL, NULL, 'Active', 0.00),
(49, 'premium memnber', 14, 60, 9999, 'MEMBER', 260, NULL, '2026-07-09 14:57:07.851', '2026-07-09 14:57:07.851', 262, 'personal', 'Active', 0.00),
(50, 'new plan ', 10, 5, 1000, 'GROUP', 90, NULL, '2026-07-24 05:13:32.586', '2026-07-24 05:13:32.586', NULL, NULL, 'Active', 0.00),
(51, 'Class1', 10, 30, 2000, 'GROUP', 302, NULL, '2026-07-24 11:58:15.917', '2026-07-24 11:58:15.917', NULL, NULL, 'Active', 0.00),
(52, 'Personal training', 25, 30, 5000, 'PERSONAL', 302, NULL, '2026-07-24 11:59:08.922', '2026-07-24 11:59:08.922', NULL, NULL, 'Active', 0.00),
(53, 'General Membership', 20, 30, 3500, 'MEMBER', 302, NULL, '2026-07-24 12:06:25.462', '2026-07-24 12:06:25.462', 308, 'general', 'Active', 0.00),
(54, 'personss', 12, 180, 12000, 'MEMBER', 302, NULL, '2026-07-24 12:10:24.752', '2026-07-24 12:16:36.104', 309, 'personal', 'Active', 0.00),
(55, 'rwe', 23, 34, 32435, 'GENERAL', 90, NULL, '2026-07-25 05:33:34.753', '2026-07-25 05:33:34.753', NULL, NULL, 'Active', 0.00),
(56, 'asdfg', 1, 365, 5000, 'PERSONAL', 314, NULL, '2026-07-25 06:30:20.231', '2026-07-25 06:30:20.231', NULL, NULL, 'Active', 0.00),
(57, 'prasnal', 1, 365, 5000, 'PERSONAL', 314, NULL, '2026-07-25 06:36:18.281', '2026-07-25 06:36:18.281', NULL, NULL, 'Active', 0.00),
(58, 'group', 1, 30, 500, 'GROUP', 314, NULL, '2026-07-25 06:37:44.024', '2026-07-25 06:37:44.024', NULL, NULL, 'Active', 0.00),
(59, 'membr', 1, 60, 2500, 'MEMBER', 314, NULL, '2026-07-25 06:38:51.688', '2026-07-25 06:38:51.688', 318, 'general', 'Active', 0.00),
(60, 'group plan', 10, 29, 1299, 'GROUP', 320, NULL, '2026-07-25 07:36:20.234', '2026-07-25 07:36:20.234', NULL, NULL, 'Active', 0.00),
(61, 'group plan two', 12, 30, 1599, 'GROUP', 320, NULL, '2026-07-25 07:36:49.057', '2026-07-25 07:36:49.057', NULL, NULL, 'Active', 0.00),
(62, 'personal one', 9, 30, 1598, 'PERSONAL', 320, NULL, '2026-07-25 07:37:15.138', '2026-07-25 07:37:15.138', NULL, NULL, 'Active', 0.00),
(63, 'personal two ', 5, 45, 999, 'PERSONAL', 320, NULL, '2026-07-25 07:38:05.221', '2026-07-25 07:38:05.221', NULL, NULL, 'Active', 0.00),
(64, 'general one', 3, 14, 899, 'GENERAL', 320, NULL, '2026-07-25 07:38:31.109', '2026-07-25 07:38:31.109', NULL, NULL, 'Active', 0.00),
(65, 'group two ', 2, 4, 599, 'GENERAL', 320, NULL, '2026-07-25 07:39:16.597', '2026-07-25 07:39:16.597', NULL, NULL, 'Active', 0.00),
(66, 'gain', 1, 90, 3000, 'GROUP', 314, NULL, '2026-07-25 08:38:57.711', '2026-07-25 08:38:57.711', NULL, NULL, 'Active', 0.00),
(67, 'fitt', 1, 60, 2500, 'GENERAL', 314, NULL, '2026-07-25 08:39:44.476', '2026-07-25 08:39:44.476', NULL, NULL, 'Active', 0.00),
(68, 'wait loss', 1, 45, 1500, 'GENERAL', 314, NULL, '2026-07-25 08:40:22.094', '2026-07-25 08:40:22.094', NULL, NULL, 'Active', 0.00),
(69, 'wait gain', 1, 200, 4500, 'MEMBER', 314, NULL, '2026-07-25 08:41:43.983', '2026-07-25 08:41:43.983', 339, 'personal', 'Active', 0.00),
(70, 'Yoga Evening ', 20, 30, 3200, 'GROUP', 90, NULL, '2026-07-31 20:51:23.542', '2026-07-31 20:51:42.671', NULL, NULL, 'Active', 0.00),
(71, 'sq', 1, 1, 1, 'MEMBER', 90, NULL, '2026-08-03 11:16:14.703', '2026-08-03 11:16:14.703', 279, 'personal', 'Active', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `membership_renewal_requests`
--

CREATE TABLE `membership_renewal_requests` (
  `id` int NOT NULL,
  `memberId` int NOT NULL,
  `assignmentId` int NOT NULL COMMENT 'ID from member_plan_assignment table',
  `planId` int NOT NULL,
  `paymentMode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amountPaid` double DEFAULT NULL,
  `requestedBy` int NOT NULL COMMENT 'User ID who requested (admin/receptionist)',
  `requestedByRole` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Role: admin, receptionist',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending' COMMENT 'pending, approved, rejected',
  `approvedBy` int DEFAULT NULL COMMENT 'Admin ID who approved',
  `approvedAt` datetime(3) DEFAULT NULL,
  `rejectedAt` datetime(3) DEFAULT NULL,
  `rejectionReason` text COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_assessments`
--

CREATE TABLE `member_assessments` (
  `id` int NOT NULL,
  `memberId` int NOT NULL,
  `assessment_date` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `engine_version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1.0.0',
  `config_snapshot` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `createdBy` int NOT NULL,
  `age_at_assessment` int NOT NULL,
  `gender_at_assessment` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight_kg` decimal(5,2) NOT NULL,
  `height_cm` decimal(5,2) NOT NULL,
  `neck_cm` decimal(4,1) NOT NULL,
  `waist_cm` decimal(4,1) NOT NULL,
  `hip_cm` decimal(4,1) DEFAULT NULL,
  `resting_hr` int NOT NULL,
  `activity_level` enum('sedentary','light','moderate','active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fitness_goal` enum('fat_loss','maintenance','muscle_gain') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bmi` decimal(5,2) NOT NULL,
  `body_fat_percentage` decimal(5,2) NOT NULL,
  `lean_body_mass` decimal(5,2) NOT NULL,
  `ideal_body_weight` decimal(5,2) NOT NULL,
  `waist_to_hip_ratio` decimal(4,2) DEFAULT NULL,
  `bmr` decimal(6,2) NOT NULL,
  `tdee` decimal(6,2) NOT NULL,
  `target_calories` int NOT NULL,
  `protein_grams` int NOT NULL,
  `fat_grams` int NOT NULL,
  `carb_grams` int NOT NULL,
  `metrics_output` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `is_baseline` tinyint(1) DEFAULT '0',
  `baseline_bf_percent` decimal(5,2) DEFAULT NULL,
  `baseline_lbm` decimal(5,2) DEFAULT NULL,
  `demographic_multiplier` decimal(3,2) DEFAULT NULL,
  `final_leaderboard_score` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_assessments`
--

INSERT INTO `member_assessments` (`id`, `memberId`, `assessment_date`, `engine_version`, `config_snapshot`, `createdBy`, `age_at_assessment`, `gender_at_assessment`, `weight_kg`, `height_cm`, `neck_cm`, `waist_cm`, `hip_cm`, `resting_hr`, `activity_level`, `fitness_goal`, `bmi`, `body_fat_percentage`, `lean_body_mass`, `ideal_body_weight`, `waist_to_hip_ratio`, `bmr`, `tdee`, `target_calories`, `protein_grams`, `fat_grams`, `carb_grams`, `metrics_output`, `createdAt`, `is_baseline`, `baseline_bf_percent`, `baseline_lbm`, `demographic_multiplier`, `final_leaderboard_score`) VALUES
(4, 152, '2026-06-15 09:09:33.016', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 1, 28, 'male', 80.00, 200.00, 40.0, 85.0, NULL, 80, 'moderate', 'fat_loss', 20.00, 11.47, 70.83, 93.10, NULL, 1915.00, 2968.25, 2468, 156, 69, 307, '{\"bmi_risk_label\":\"Normal\",\"cardio_zones\":{\"fat_burn_low\":147,\"fat_burn_high\":158,\"cardio_low\":158,\"cardio_high\":170}}', '2026-06-15 09:09:33.016', 0, NULL, NULL, NULL, NULL),
(5, 152, '2026-06-15 09:34:49.053', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 1, 28, 'male', 78.00, 200.00, 38.0, 75.0, NULL, 75, 'moderate', 'fat_loss', 19.50, 4.59, 74.42, 93.10, NULL, 1895.00, 2937.25, 2437, 164, 68, 293, '{\"bmi_risk_label\":\"Normal\",\"cardio_zones\":{\"fat_burn_low\":145,\"fat_burn_high\":157,\"cardio_low\":157,\"cardio_high\":169}}', '2026-06-15 09:34:49.053', 0, NULL, NULL, NULL, NULL),
(6, 153, '2026-06-15 10:14:54.185', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 1, 35, 'female', 75.00, 160.00, 35.0, 80.0, 100.0, 68, 'moderate', 'maintenance', 29.30, 32.30, 50.78, 52.38, 0.80, 1414.00, 2191.70, 2192, 112, 61, 299, '{\"bmi_risk_label\":\"Overweight\",\"cardio_zones\":{\"fat_burn_low\":138,\"fat_burn_high\":150,\"cardio_low\":150,\"cardio_high\":162}}', '2026-06-15 10:14:54.185', 0, NULL, NULL, NULL, NULL),
(7, 161, '2026-07-13 08:44:23.609', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 272, 24, 'female', 50.00, 165.50, 44.5, 60.9, 190.0, 30, 'moderate', 'fat_loss', 18.25, 60.00, 20.00, 57.36, 0.32, 1253.38, 1942.73, 1443, 44, 40, 227, '{\"bmi_risk_label\":\"Underweight\",\"cardio_zones\":{\"fat_burn_low\":130,\"fat_burn_high\":146,\"cardio_low\":146,\"cardio_high\":163}}', '2026-07-13 08:44:23.609', 1, 60.00, 20.00, 1.12, 0.00),
(8, 161, '2026-07-20 05:53:50.195', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 279, 24, 'female', 56.00, 150.00, 20.0, 76.2, 126.5, 200, 'light', 'maintenance', 24.89, 60.00, 22.40, 45.50, 0.60, 1216.50, 1672.69, 1673, 49, 46, 265, '{\"bmi_risk_label\":\"Normal\",\"cardio_zones\":{\"fat_burn_low\":198,\"fat_burn_high\":197,\"cardio_low\":197,\"cardio_high\":197}}', '2026-07-20 05:53:50.195', 0, 60.00, 20.00, 1.12, 97.89),
(9, 154, '2026-07-20 06:00:30.432', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 279, 24, 'male', 55.00, 158.00, 24.0, 75.4, NULL, 75, 'moderate', 'muscle_gain', 22.03, 29.92, 38.54, 55.07, NULL, 1422.50, 2204.88, 2555, 85, 71, 394, '{\"bmi_risk_label\":\"Normal\",\"cardio_zones\":{\"fat_burn_low\":148,\"fat_burn_high\":160,\"cardio_low\":160,\"cardio_high\":172}}', '2026-07-20 06:00:30.432', 1, 29.92, 38.54, 1.00, 0.00),
(10, 160, '2026-07-20 09:31:40.801', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 279, 23, 'female', 54.90, 150.00, 26.0, 114.3, 56.0, 45, 'moderate', 'muscle_gain', 24.40, 60.00, 21.96, 45.50, 2.04, 1210.50, 1876.28, 2226, 48, 62, 369, '{\"bmi_risk_label\":\"Normal\",\"cardio_zones\":{\"fat_burn_low\":136,\"fat_burn_high\":151,\"cardio_low\":151,\"cardio_high\":167}}', '2026-07-20 09:31:40.801', 1, 60.00, 21.96, 1.12, 0.00),
(11, 153, '2026-07-20 09:32:51.050', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 279, 26, 'female', 67.00, 158.00, 54.0, 65.0, 87.0, 78, 'moderate', 'muscle_gain', 26.84, 31.82, 45.68, 50.57, 0.75, 1366.50, 2118.08, 2468, 101, 69, 362, '{\"bmi_risk_label\":\"Overweight\",\"cardio_zones\":{\"fat_burn_low\":148,\"fat_burn_high\":159,\"cardio_low\":159,\"cardio_high\":171}}', '2026-07-20 09:32:51.050', 1, 31.82, 45.68, 1.12, 0.00),
(12, 153, '2026-07-20 09:35:25.784', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 279, 26, 'female', 69.00, 249.80, 78.0, 56.0, 88.9, 98, 'moderate', 'muscle_gain', 11.06, 2.00, 67.62, 133.70, 0.63, 1960.25, 3038.39, 3388, 149, 94, 486, '{\"bmi_risk_label\":\"Underweight\",\"cardio_zones\":{\"fat_burn_low\":156,\"fat_burn_high\":165,\"cardio_low\":165,\"cardio_high\":175}}', '2026-07-20 09:35:25.784', 0, 31.82, 45.68, 1.12, 53.79),
(13, 155, '2026-07-20 10:45:39.482', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 279, 25, 'male', 76.00, 170.00, 45.0, 55.8, 90.0, 70, 'moderate', 'fat_loss', 26.30, 2.00, 74.48, 65.94, 0.62, 1702.50, 2638.88, 2139, 164, 59, 237, '{\"bmi_risk_label\":\"Overweight\",\"cardio_zones\":{\"fat_burn_low\":145,\"fat_burn_high\":158,\"cardio_low\":158,\"cardio_high\":170}}', '2026-07-20 10:45:39.482', 1, 2.00, 74.48, 1.00, 0.00),
(14, 155, '2026-07-20 10:47:17.214', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 279, 25, 'male', 76.00, 170.00, 45.0, 55.8, NULL, 70, 'moderate', 'fat_loss', 26.30, 2.00, 74.48, 65.94, NULL, 1702.50, 2638.88, 2139, 164, 59, 237, '{\"bmi_risk_label\":\"Overweight\",\"cardio_zones\":{\"fat_burn_low\":145,\"fat_burn_high\":158,\"cardio_low\":158,\"cardio_high\":170}}', '2026-07-20 10:47:17.214', 0, 2.00, 74.48, 1.00, 0.00),
(18, 160, '2026-07-21 11:20:40.694', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 279, 23, 'female', 45.00, 170.00, 23.0, 75.9, 55.9, 78, 'moderate', 'muscle_gain', 15.57, 36.12, 28.75, 61.44, 1.36, 1236.50, 1916.58, 2267, 63, 63, 362, '{\"bmi_risk_label\":\"Underweight\",\"cardio_zones\":{\"fat_burn_low\":149,\"fat_burn_high\":161,\"cardio_low\":161,\"cardio_high\":173}}', '2026-07-21 11:20:40.694', 0, 60.00, 21.96, 1.12, 30.92),
(19, 166, '2026-07-21 11:22:01.997', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 279, 28, 'male', 99.00, 170.00, 45.0, 70.6, NULL, 78, 'sedentary', 'muscle_gain', 34.26, 2.00, 97.02, 65.94, NULL, 1917.50, 2301.00, 2651, 213, 74, 284, '{\"bmi_risk_label\":\"Obese\",\"cardio_zones\":{\"fat_burn_low\":146,\"fat_burn_high\":158,\"cardio_low\":158,\"cardio_high\":169}}', '2026-07-21 11:22:01.997', 1, 2.00, 97.02, 1.00, 0.00),
(20, 158, '2026-07-21 11:25:23.839', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 279, 24, 'female', 98.00, 170.00, 45.0, 124.5, 112.3, 67, 'moderate', 'fat_loss', 33.91, 60.00, 39.20, 61.44, 1.11, 1761.50, 2730.33, 2230, 86, 62, 332, '{\"bmi_risk_label\":\"Obese\",\"cardio_zones\":{\"fat_burn_low\":144,\"fat_burn_high\":157,\"cardio_low\":157,\"cardio_high\":170}}', '2026-07-21 11:25:23.839', 1, 60.00, 39.20, 1.12, 0.00),
(21, 167, '2026-07-21 13:14:31.678', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 279, 24, 'male', 34.00, 150.00, 45.0, 86.1, NULL, 78, 'light', 'fat_loss', 15.11, 23.15, 26.13, 50.00, NULL, 1162.50, 1598.44, 1098, 57, 31, 149, '{\"bmi_risk_label\":\"Underweight\",\"cardio_zones\":{\"fat_burn_low\":149,\"fat_burn_high\":161,\"cardio_low\":161,\"cardio_high\":172}}', '2026-07-21 13:14:31.678', 1, 23.15, 26.13, 1.00, 0.00),
(22, 155, '2026-07-22 10:54:39.174', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 280, 25, 'male', 23.00, 150.00, 23.0, 75.9, NULL, 72, 'moderate', 'fat_loss', 10.22, 32.58, 15.51, 50.00, NULL, 1047.50, 1623.63, 1124, 34, 31, 177, '{\"bmi_risk_label\":\"Underweight\",\"cardio_zones\":{\"fat_burn_low\":146,\"fat_burn_high\":158,\"cardio_low\":158,\"cardio_high\":170}}', '2026-07-22 10:54:39.174', 0, 2.00, 74.48, 1.00, -1529.00),
(23, 155, '2026-07-22 10:56:10.268', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 280, 25, 'male', 23.00, 150.00, 23.0, 75.9, NULL, 72, 'moderate', 'fat_loss', 10.22, 32.58, 15.51, 50.00, NULL, 1047.50, 1623.63, 1124, 34, 31, 177, '{\"bmi_risk_label\":\"Underweight\",\"cardio_zones\":{\"fat_burn_low\":146,\"fat_burn_high\":158,\"cardio_low\":158,\"cardio_high\":170}}', '2026-07-22 10:56:10.268', 0, 2.00, 74.48, 1.00, -1529.00),
(24, 174, '2026-07-24 05:06:09.690', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 90, 27, 'female', 56.00, 34.00, 45.0, 85.1, 86.4, 72, 'moderate', 'muscle_gain', 484.43, 60.00, 22.40, 45.50, 0.98, 476.50, 738.58, 1089, 49, 30, 155, '{\"bmi_risk_label\":\"Obese\",\"cardio_zones\":{\"fat_burn_low\":145,\"fat_burn_high\":157,\"cardio_low\":157,\"cardio_high\":169}}', '2026-07-24 05:06:09.690', 1, 60.00, 22.40, 1.12, 0.00),
(25, 178, '2026-07-25 17:45:24.854', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 309, 16, 'male', 80.00, 172.00, 30.5, 76.2, NULL, 72, 'moderate', 'fat_loss', 27.04, 22.95, 61.64, 67.75, NULL, 1800.00, 2790.00, 2290, 136, 64, 293, '{\"bmi_risk_label\":\"Overweight\",\"cardio_zones\":{\"fat_burn_low\":151,\"fat_burn_high\":164,\"cardio_low\":164,\"cardio_high\":178}}', '2026-07-25 17:45:24.854', 1, 22.95, 61.64, 0.95, 0.00),
(26, 152, '2026-07-31 05:21:24.227', '1.0.0', '{\"ENGINE_VERSION\":\"1.0.0\",\"ACTIVITY_MULTIPLIERS\":{\"sedentary\":1.2,\"light\":1.375,\"moderate\":1.55,\"active\":1.725},\"GOAL_ADJUSTMENTS\":{\"fat_loss\":-500,\"maintenance\":0,\"muscle_gain\":350},\"MACRO_RATIOS\":{\"protein_per_kg_lbm\":2.2,\"fat_percentage\":0.25},\"HEART_RATE_ZONES\":{\"fat_burn_low\":0.6,\"fat_burn_high\":0.7,\"cardio_low\":0.7,\"cardio_high\":0.8}}', 279, 27, 'male', 100.00, 172.00, 20.0, 91.4, NULL, 72, 'moderate', 'fat_loss', 33.80, 39.62, 60.38, 67.75, NULL, 1945.00, 3014.75, 2515, 133, 70, 339, '{\"bmi_risk_label\":\"Obese\",\"cardio_zones\":{\"fat_burn_low\":145,\"fat_burn_high\":157,\"cardio_low\":157,\"cardio_high\":169}}', '2026-07-31 05:21:24.227', 1, 39.62, 60.38, 1.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `member_bodybuilding_logs`
--

CREATE TABLE `member_bodybuilding_logs` (
  `id` int NOT NULL,
  `memberId` int NOT NULL,
  `log_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `weight_kg` decimal(5,2) DEFAULT NULL,
  `chest_cm` decimal(5,2) DEFAULT NULL,
  `shoulders_cm` decimal(5,2) DEFAULT NULL,
  `left_arm_cm` decimal(5,2) DEFAULT NULL,
  `right_arm_cm` decimal(5,2) DEFAULT NULL,
  `left_forearm_cm` decimal(5,2) DEFAULT NULL,
  `right_forearm_cm` decimal(5,2) DEFAULT NULL,
  `waist_cm` decimal(5,2) DEFAULT NULL,
  `thighs_cm` decimal(5,2) DEFAULT NULL,
  `calves_cm` decimal(5,2) DEFAULT NULL,
  `front_photo_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `back_photo_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `side_photo_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_general_ci,
  `gender` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `height_cm` decimal(5,2) DEFAULT NULL,
  `neck_cm` decimal(4,1) DEFAULT NULL,
  `hip_cm` decimal(5,2) DEFAULT NULL,
  `activity_level` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fitness_goal` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `biceps_cm` decimal(5,2) DEFAULT NULL,
  `forearms_cm` decimal(5,2) DEFAULT NULL,
  `assessment_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `resting_hr` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_bodybuilding_logs`
--

INSERT INTO `member_bodybuilding_logs` (`id`, `memberId`, `log_date`, `weight_kg`, `chest_cm`, `shoulders_cm`, `left_arm_cm`, `right_arm_cm`, `left_forearm_cm`, `right_forearm_cm`, `waist_cm`, `thighs_cm`, `calves_cm`, `front_photo_url`, `back_photo_url`, `side_photo_url`, `notes`, `gender`, `age`, `height_cm`, `neck_cm`, `hip_cm`, `activity_level`, `fitness_goal`, `biceps_cm`, `forearms_cm`, `assessment_date`, `resting_hr`) VALUES
(1, 164, '2026-07-20 11:01:10', 34.00, 28.00, 45.00, 45.00, 45.00, 34.00, 34.00, 45.00, 56.00, 67.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-22 13:08:08', NULL),
(2, 160, '2026-07-21 11:20:40', 45.00, 49.00, 45.00, 45.00, 45.00, 45.00, 45.00, 29.90, 34.00, 45.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-22 13:08:08', NULL),
(3, 166, '2026-07-21 11:22:02', 99.00, 56.00, 67.00, 45.00, 45.00, 45.00, 45.00, 27.80, 56.00, 34.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-22 13:08:08', NULL),
(4, 158, '2026-07-21 11:25:23', 98.00, 45.00, 56.00, 34.00, 34.00, 67.00, 67.00, 49.00, 78.00, 45.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-22 13:08:08', NULL),
(5, 167, '2026-07-21 13:14:31', 34.00, 45.00, 45.00, 56.00, 56.00, 45.00, 45.00, 33.90, 67.00, 87.00, NULL, NULL, NULL, 'dfvgbnjfdsadssAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-22 13:08:08', NULL),
(6, 156, '2026-07-22 15:50:29', 53.00, NULL, NULL, NULL, NULL, NULL, NULL, 56.00, NULL, NULL, NULL, NULL, NULL, NULL, 'male', 36, 160.00, 23.0, NULL, 'Active', 'Muscle Gain', NULL, NULL, '2026-07-22 05:30:00', NULL),
(7, 155, '2026-07-22 16:30:52', 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', 25, 175.00, NULL, NULL, 'active', 'Muscle Gain', NULL, NULL, '2026-07-22 05:30:00', NULL),
(8, 154, '2026-07-22 16:31:28', 55.00, NULL, NULL, NULL, NULL, NULL, NULL, 56.00, NULL, NULL, NULL, NULL, NULL, NULL, 'male', 24, 158.00, 23.0, NULL, 'Active', 'Muscle Gain', NULL, NULL, '2026-07-22 05:30:00', NULL),
(9, 174, '2026-07-24 05:06:10', 56.00, NULL, NULL, NULL, NULL, NULL, NULL, 33.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-24 05:06:11', NULL),
(10, 180, '2026-07-25 12:48:53', 59.00, 46.00, 56.00, 15.00, 15.00, 13.00, 13.00, 54.00, 12.00, 11.00, NULL, NULL, NULL, 'asdfghjkjhgf', 'male', 22, 168.00, 55.0, 21.00, 'Moderate', 'Muscle Gain', 15.00, 13.00, '2026-07-25 00:00:00', NULL),
(11, 178, '2026-07-25 17:45:25', 80.00, NULL, NULL, NULL, NULL, NULL, NULL, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-25 17:45:26', NULL),
(12, 177, '2026-08-03 12:53:10', 85.00, NULL, NULL, NULL, NULL, NULL, NULL, 65.00, NULL, NULL, NULL, NULL, NULL, 'Fat loss', 'male', 25, 172.00, 20.0, NULL, 'Active', 'Fat Loss', NULL, NULL, '2026-08-03 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_health_log`
--

CREATE TABLE `member_health_log` (
  `id` int NOT NULL,
  `memberId` int NOT NULL,
  `height` decimal(5,2) NOT NULL,
  `weight` decimal(5,2) NOT NULL,
  `bmi` decimal(5,2) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recordedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `trainerId` int DEFAULT NULL,
  `neck_cm` decimal(4,1) DEFAULT NULL,
  `waist_cm` decimal(4,1) DEFAULT NULL,
  `hip_cm` decimal(4,1) DEFAULT NULL,
  `resting_hr` int DEFAULT NULL,
  `activity_level` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fitness_goal` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `dietChart` text COLLATE utf8mb4_unicode_ci,
  `bmiStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_health_log`
--

INSERT INTO `member_health_log` (`id`, `memberId`, `height`, `weight`, `bmi`, `status`, `recordedAt`, `trainerId`, `neck_cm`, `waist_cm`, `hip_cm`, `resting_hr`, `activity_level`, `fitness_goal`, `notes`, `dietChart`, `bmiStatus`) VALUES
(2, 152, 200.00, 80.00, 20.00, 'Normal', '2026-06-15 14:27:45.000', 102, NULL, NULL, NULL, NULL, NULL, NULL, '3 Golden Rules:Hydration: Drink at least 3 to 4 liters of water daily.Avoid: Junk food, deep-fried items, and sugary drinks.Supplement: Creatine (5g) and a daily multivitamin help optimize your workouts.', 'Daily Meal Chart:Meal 1 (Breakfast): 1 bowl of Oats (with milk) OR 4-5 Egg Whites (or 1 whole egg) + 2 slices of brown bread.Meal 2 (Mid-Morning): 1 banana + handful of soaked almonds/walnuts.Meal 3 (Lunch): 150g Grilled Chicken, Fish, or Paneer + 1 cup Brown Rice or Quinoa + Veggie Salad.Meal 4 (Pre/Post-Workout): 1 scoop Whey Protein + 1 Apple or Banana + Black Coffee.Meal 5 (Dinner): 150g Grilled Chicken/Fish OR Soya/Tofu + Veggies + 1 Multigrain Roti.Meal 6 (Bedtime - Optional): 1 glass of Skim Milk or 1 scoop protein', 'Normal'),
(3, 152, 200.00, 78.00, 19.50, '', '2026-06-15 15:15:23.000', 102, NULL, NULL, NULL, NULL, NULL, NULL, 'Water Intake: Din bhar me kam se kam 3-4 litres pani zaroor piyein.\n\nAvoid: Zyada tel (oil), sugar, junk food aur cold drinks se bachein.\n\nConsistency: Isko testing ke liye baseline maan kar 2-3 weeks follow karein aur apne body response ke hisab se quantities adjust karein.', '🏋️‍♂️ Daily Routine & Diet Plan\n🌅 Morning (Pre-Workout / Empty Stomach)\n\n1 glass gunguna pani + 1 baadam/akhrot (optional).\n\nPre-Workout (30 min pehle): 1-2 kele (bananas) ya 1 cup black coffee / oats.\n\n🍳 Breakfast (Post-Workout - High Protein)\n\n4-5 egg whites (boiled/omelette) + 2 brown bread slices.\n\nVeg option: 100g Paneer bhurji ya 1 bowl Oats/Dalia (boiled with skimmed milk) + 1 scoop whey protein.\n\n🍱 Lunch (Balanced Meal)\n\n150g Chicken breast ya 150g Paneer/Tofu.\n\n1 bada bowl dal ya rajma/chole.\n\n1-2 chapati (roti) ya 1 bowl brown/white rice.\n\nSath me green salad zaroor lein.\n\n☕ Evening Snack (Energy Boost)\n\n1 cup green tea ya coffee.\n\nEk mutthi bhune chane (roasted chana) ya roasted makhane / mix nuts.\n\n1-2 boiled eggs ya 50g paneer.\n\n🍽️ Dinner (Light & High Protein)\n\n150g Fish, Chicken, ya Tofu/Paneer (grilled/boiled).\n\n1 bowl mix veg stir-fry ya sabzi.\n\n1 choti roti ya thoda sa rice (dinner me carbs thoda kam rakhein).\n\n🥛 Before Bed (Recovery)\n\n1 glass gunguna doodh (milk) thodi si haldi ke sath (muscle soreness kam karne ke liye).', 'Normal'),
(4, 153, 160.00, 76.00, 29.69, '', '2026-06-15 15:49:32.000', 102, NULL, NULL, NULL, NULL, NULL, NULL, 'Water: Drink 3–4 liters of water daily.\n\nAvoid Whites: Strictly cut out white sugar, maida (refined flour), deep-fried food, and packaged snacks.\n\nMove: Walk briskly for 30–45 minutes or complete 8,000–10,000 steps daily.\n\nSleep: Aim for 7–8 hours of sound sleep to manage stress hormones that stall weight loss.', '🌅 1. Early Morning (7:00 AM)\nDrink: 1-2 glasses of warm water (optional: add 1/2 lemon or cumin seeds).\n\nNuts: 5 soaked almonds (peeled) + 1 walnut.\n\n🍳 2. Breakfast (8:30 AM)\nVeg Option: 1 cup of Oats porridge (with low-fat milk, no sugar, add 1/2 apple) OR 1 Besan/Oats Cheela with veggies.\n\nNon-Veg Option: 3 Egg White omelet/scramble + 1 slice of whole-wheat bread.\n\nDrink: 1 cup of Green Tea or black coffee (sugar-free).\n\n🍏 3. Mid-Morning (11:00 AM)\n1 medium fruit (Apple, Papaya, Guava, or Orange) OR 1 glass of buttermilk with a pinch of cumin powder.\n\n🥗 4. Lunch (1:30 PM)\nStarter: 1 large plate of raw salad (Cucumber, Tomato, Carrot) — Eat this first to control portions.\n\nCarbs: 1 or max 2 Multigrain Rotis (no ghee) OR 1 small bowl of boiled rice.\n\nProtein: 1 big bowl of Dal OR 100g Paneer/Tofu OR 120g Grilled Chicken.\n\nSide: 1 small bowl of low-fat curd.\n\n☕ 5. Evening Snack (5:30 PM)\n1 cup of Green Tea or Milk Tea (without sugar).\n\nWith: 1 small bowl of roasted Makhana (Fox nuts) OR roasted Chana.\n\n🍲 6. Dinner (8:00 PM) — Keep it light & early\nOption A: 1 large bowl of mixed Vegetable Soup with added paneer cubes or shredded chicken.\n\nOption B: 1 bowl of Vegetable Dalia or Oats Khichdi.\n\nOption C: 100g stir-fried veggies (Broccoli, Bell peppers, Mushrooms) with Paneer/Tofu.\n\n🥛 7. Before Bed (9:30 PM)\n1 small cup of warm turmeric milk (low-fat, no sugar).', 'Overweight'),
(5, 161, 5.90, 50.00, 15.46, '', '2026-07-13 13:14:03.000', 272, NULL, NULL, NULL, NULL, NULL, NULL, ' hiii this is ur diet chart', 'dal roti chaval egg', 'Underweight'),
(6, 153, 150.00, 55.00, 24.44, '', '2026-07-20 11:41:10.000', 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 boiled eggs in evening \ngreen vegetables daily in morning or evening too', 'Normal'),
(8, 161, 45.00, 23.00, 113.58, '', '2026-07-20 18:00:41.000', 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdfg', 'Obese'),
(9, 157, 150.00, 50.00, 22.22, '', '2026-07-21 17:24:45.000', 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 boiled eggs ', 'Normal'),
(10, 165, 150.00, 59.00, 26.22, '', '2026-07-21 17:34:54.000', 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 boiled eggs\napple', 'Overweight'),
(11, 156, 160.00, 53.00, 20.70, '', '2026-07-22 11:32:22.000', 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Morning:\n\n1 glass milk\n1 banana\n5–6 almonds / 2 dates\n\nBreakfast:\n\n3–4 eggs or paneer/tofu\n2–3 parathas / oats / poha\n1 glass milk\n\nMid-Morning Snack:\n\nBanana shake with peanut butter\nor\nDry fruits + fruit', 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `member_plan_assignment`
--

CREATE TABLE `member_plan_assignment` (
  `id` int NOT NULL,
  `memberId` int NOT NULL,
  `planId` int NOT NULL,
  `membershipFrom` datetime(3) NOT NULL,
  `membershipTo` datetime(3) NOT NULL,
  `paymentMode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amountPaid` double DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `assignedBy` int DEFAULT NULL COMMENT 'Admin/Receptionist who assigned this plan',
  `assignedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_plan_assignment`
--

INSERT INTO `member_plan_assignment` (`id`, `memberId`, `planId`, `membershipFrom`, `membershipTo`, `paymentMode`, `amountPaid`, `status`, `assignedBy`, `assignedAt`, `createdAt`, `updatedAt`) VALUES
(60, 152, 22, '2026-06-15 05:30:00.000', '2026-08-14 05:30:00.000', 'Cash', 1000, 'Active', 90, '2026-06-15 14:21:59.000', '2026-06-15 14:21:59.011', '2026-06-15 14:21:59.011'),
(61, 153, 39, '2026-06-15 05:30:00.000', '2026-07-15 05:30:00.000', 'Cash', 1000, 'Active', 90, '2026-06-15 15:11:44.000', '2026-06-15 15:11:44.769', '2026-06-15 15:11:44.769'),
(62, 154, 39, '2026-06-17 05:30:00.000', '2026-07-17 05:30:00.000', 'Cash', 1000, 'Active', 90, '2026-06-17 13:28:37.000', '2026-06-17 13:28:37.731', '2026-06-17 13:28:37.731'),
(63, 155, 39, '2026-06-17 05:30:00.000', '2026-07-17 05:30:00.000', 'Cash', 5000, 'Active', 90, '2026-06-17 14:33:22.000', '2026-06-17 14:33:22.876', '2026-06-17 14:33:22.876'),
(64, 157, 22, '2026-06-26 05:30:00.000', '2026-08-25 05:30:00.000', 'Cash', 1000, 'Active', 90, '2026-06-26 15:29:00.000', '2026-06-26 15:29:00.430', '2026-06-26 15:29:00.430'),
(65, 158, 22, '2026-06-26 05:30:00.000', '2026-08-25 05:30:00.000', 'Cash', 1000, 'Active', 90, '2026-06-26 16:06:29.000', '2026-06-26 16:06:29.408', '2026-06-26 16:06:29.408'),
(66, 160, 22, '2026-07-08 05:30:00.000', '2026-09-06 05:30:00.000', 'Cash', 200, 'Active', 90, '2026-07-08 17:43:25.000', '2026-07-08 17:43:25.629', '2026-07-08 17:43:25.629'),
(67, 161, 22, '2026-07-13 05:30:00.000', '2026-09-11 05:30:00.000', 'Cash', 1500, 'Active', 90, '2026-07-13 13:07:51.000', '2026-07-13 13:07:51.853', '2026-07-13 13:07:51.853'),
(69, 156, 24, '2026-07-14 00:00:00.000', '2027-07-14 00:00:00.000', 'CASH', 8999, 'Active', NULL, '2026-07-14 14:55:50.000', '2026-07-14 14:55:50.000', '2026-07-14 14:55:50.187'),
(70, 162, 22, '2026-07-14 05:30:00.000', '2026-09-12 05:30:00.000', 'Cash', 200, 'Active', 90, '2026-07-14 16:38:52.000', '2026-07-14 16:38:52.211', '2026-07-14 16:38:52.211'),
(71, 156, 46, '2026-07-20 05:30:00.000', '2026-09-18 05:30:00.000', 'Cash', 59999, 'Active', 90, '2026-07-20 10:48:04.000', '2026-07-20 10:48:04.264', '2026-07-20 10:48:04.264'),
(73, 163, 46, '2026-07-20 05:30:00.000', '2026-09-18 05:30:00.000', 'Cash', 25000, 'Active', 279, '2026-07-20 11:13:59.000', '2026-07-20 11:13:59.757', '2026-07-20 11:13:59.757'),
(74, 164, 39, '2026-07-20 05:30:00.000', '2026-08-19 05:30:00.000', 'Cash', 34000, 'Active', 90, '2026-07-20 12:54:32.000', '2026-07-20 12:54:32.660', '2026-07-20 12:54:32.660'),
(75, 154, 24, '2026-07-20 05:30:00.000', '2026-10-18 05:30:00.000', 'Card', 1200, 'Active', 90, '2026-07-20 13:15:53.000', '2026-07-20 13:15:53.460', '2026-07-20 13:15:53.460'),
(76, 163, 31, '2026-07-20 05:30:00.000', '2026-10-18 05:30:00.000', 'Cash', 1200, 'Active', 90, '2026-07-20 14:22:06.000', '2026-07-20 14:22:06.650', '2026-07-20 14:22:06.650'),
(77, 165, 22, '2026-07-20 05:30:00.000', '2026-09-18 05:30:00.000', 'Cash', 1500, 'Active', 90, '2026-07-20 16:20:25.000', '2026-07-20 16:20:25.950', '2026-07-20 16:20:25.950'),
(78, 168, 22, '2026-07-20 05:30:00.000', '2026-09-18 05:30:00.000', 'Cash', 1500, 'Active', 90, '2026-07-20 17:23:51.000', '2026-07-20 17:23:51.247', '2026-07-20 17:23:51.247'),
(80, 162, 22, '2026-07-20 05:30:00.000', '2026-09-18 05:30:00.000', 'Cash', 1500, 'Active', 90, '2026-07-20 17:35:33.000', '2026-07-20 17:35:33.552', '2026-07-20 17:35:33.552'),
(81, 156, 31, '2026-07-22 05:30:00.000', '2026-10-20 05:30:00.000', 'UPI', 1200, 'Active', 90, '2026-07-22 10:57:40.000', '2026-07-22 10:57:40.043', '2026-07-22 10:57:40.043'),
(85, 170, 14, '2026-07-23 05:30:00.000', '2026-09-21 05:30:00.000', 'Cash', 5999, 'Active', 90, '2026-07-23 10:37:21.000', '2026-07-23 10:37:21.297', '2026-07-23 10:37:21.297'),
(86, 171, 22, '2026-07-23 05:30:00.000', '2026-09-21 05:30:00.000', 'Cash', 1500, 'Active', 90, '2026-07-23 10:44:16.000', '2026-07-23 10:44:16.131', '2026-07-23 10:44:16.131'),
(87, 172, 22, '2026-07-23 05:30:00.000', '2026-09-21 05:30:00.000', 'Upi', 1500, 'Active', 90, '2026-07-23 14:32:22.000', '2026-07-23 14:32:22.112', '2026-07-23 14:32:22.112'),
(88, 173, 22, '2026-07-23 05:30:00.000', '2026-09-21 05:30:00.000', 'Cash', 1500, 'Active', 90, '2026-07-23 14:49:02.000', '2026-07-23 14:49:02.299', '2026-07-23 14:49:02.299'),
(89, 174, 24, '2026-07-24 00:00:00.000', '2026-10-22 00:00:00.000', 'Cash', 1200, 'Active', 90, '2026-07-24 05:03:09.000', '2026-07-24 05:03:09.526', '2026-07-24 05:03:09.526'),
(90, 175, 50, '2026-07-24 05:53:39.930', '2026-07-29 05:53:39.930', 'UPI', 1000, 'Active', 90, '2026-07-24 05:53:40.000', '2026-07-24 05:53:40.021', '2026-07-24 05:53:40.021'),
(91, 176, 39, '2026-07-24 00:00:00.000', '2026-08-23 00:00:00.000', 'Cash', 5000, 'Active', 90, '2026-07-24 06:52:21.000', '2026-07-24 06:52:21.841', '2026-07-24 06:52:21.841'),
(92, 177, 22, '2026-07-24 00:00:00.000', '2026-09-22 00:00:00.000', 'Cash', 1500, 'Active', 90, '2026-07-24 07:00:07.000', '2026-07-24 07:00:07.705', '2026-07-24 07:00:07.705'),
(93, 178, 53, '2026-07-24 00:00:00.000', '2026-08-23 00:00:00.000', 'Cash', 3500, 'Active', 302, '2026-07-24 12:09:14.000', '2026-07-24 12:09:14.055', '2026-07-24 12:09:14.055'),
(94, 181, 63, '2026-07-25 00:00:00.000', '2026-09-08 00:00:00.000', 'Cash', 999, 'Active', 320, '2026-07-25 07:59:38.000', '2026-07-25 07:59:38.895', '2026-07-25 07:59:38.895'),
(95, 182, 63, '2026-07-25 00:00:00.000', '2026-09-08 00:00:00.000', 'Cash', 999, 'Active', 320, '2026-07-25 08:38:45.000', '2026-07-25 08:38:45.652', '2026-07-25 08:38:45.652'),
(96, 183, 63, '2026-07-25 00:00:00.000', '2026-09-08 00:00:00.000', 'Cash', 999, 'Active', 320, '2026-07-25 08:40:48.000', '2026-07-25 08:40:48.262', '2026-07-25 08:40:48.262'),
(97, 184, 62, '2026-07-25 00:00:00.000', '2026-08-24 00:00:00.000', 'Cash', 1598, 'Active', 320, '2026-07-25 08:41:53.000', '2026-07-25 08:41:53.039', '2026-07-25 08:41:53.039'),
(98, 185, 65, '2026-07-25 00:00:00.000', '2026-07-29 00:00:00.000', 'Cash', 599, 'Active', 320, '2026-07-25 08:45:00.000', '2026-07-25 08:45:00.862', '2026-07-25 08:45:00.862'),
(99, 187, 64, '2026-07-25 00:00:00.000', '2026-08-08 00:00:00.000', 'Cash', 899, 'Active', 320, '2026-07-25 08:46:05.000', '2026-07-25 08:46:05.237', '2026-07-25 08:46:05.237'),
(100, 186, 57, '2026-07-25 00:00:00.000', '2027-07-25 00:00:00.000', 'Cash', 5000, 'Active', 314, '2026-07-25 08:47:29.000', '2026-07-25 08:47:29.216', '2026-07-25 08:47:29.216'),
(101, 188, 67, '2026-07-25 00:00:00.000', '2026-09-23 00:00:00.000', 'Cash', 2500, 'Active', 314, '2026-07-25 08:49:04.000', '2026-07-25 08:49:04.801', '2026-07-25 08:49:04.801'),
(102, 189, 67, '2026-07-25 00:00:00.000', '2026-09-23 00:00:00.000', 'Cash', 2500, 'Active', 314, '2026-07-25 08:51:31.000', '2026-07-25 08:51:31.199', '2026-07-25 08:51:31.199'),
(103, 190, 57, '2026-07-25 00:00:00.000', '2027-07-25 00:00:00.000', 'Cash', 5000, 'Active', 314, '2026-07-25 08:55:50.000', '2026-07-25 08:55:50.094', '2026-07-25 08:55:50.094'),
(104, 191, 59, '2026-07-25 00:00:00.000', '2026-09-23 00:00:00.000', 'Cash', 2500, 'Active', 314, '2026-07-25 08:57:30.000', '2026-07-25 08:57:30.639', '2026-07-25 08:57:30.639'),
(105, 192, 66, '2026-07-25 00:00:00.000', '2026-10-23 00:00:00.000', 'Cash', 3000, 'Active', 314, '2026-07-25 09:01:23.000', '2026-07-25 09:01:23.340', '2026-07-25 09:01:23.340'),
(106, 193, 58, '2026-07-25 00:00:00.000', '2026-08-24 00:00:00.000', 'Cash', 500, 'Active', 314, '2026-07-25 09:03:55.000', '2026-07-25 09:03:55.026', '2026-07-25 09:03:55.026'),
(107, 194, 63, '2026-07-25 00:00:00.000', '2026-09-08 00:00:00.000', 'Cash', 999, 'Active', 320, '2026-07-25 09:22:01.000', '2026-07-25 09:22:01.248', '2026-07-25 09:22:01.248'),
(108, 195, 63, '2026-07-25 00:00:00.000', '2026-09-08 00:00:00.000', 'Cash', 999, 'Active', 320, '2026-07-25 09:42:56.000', '2026-07-25 09:42:56.653', '2026-07-25 09:42:56.653'),
(109, 196, 22, '2026-07-25 00:00:00.000', '2026-09-23 00:00:00.000', 'Cash', 1500, 'Active', 90, '2026-07-25 10:06:34.000', '2026-07-25 10:06:34.288', '2026-07-25 10:06:34.288'),
(113, 200, 22, '2026-07-31 00:00:00.000', '2026-09-29 00:00:00.000', 'Cash', 1500, 'Active', 90, '2026-07-31 11:25:12.000', '2026-07-31 11:25:12.720', '2026-07-31 11:25:12.720'),
(117, 204, 63, '2026-07-31 00:00:00.000', '2026-09-14 00:00:00.000', 'Cash', 999, 'Active', 320, '2026-07-31 12:12:55.000', '2026-07-31 12:12:55.073', '2026-07-31 12:12:55.073'),
(118, 205, 62, '2026-07-31 00:00:00.000', '2026-08-30 00:00:00.000', 'Cash', 1598, 'Active', 320, '2026-07-31 12:22:13.000', '2026-07-31 12:22:13.192', '2026-07-31 12:22:13.192'),
(119, 206, 63, '2026-07-31 00:00:00.000', '2026-09-14 00:00:00.000', 'Cash', 999, 'Active', 320, '2026-07-31 12:35:34.000', '2026-07-31 12:35:34.293', '2026-07-31 12:35:34.293'),
(120, 206, 61, '2026-07-31 00:00:00.000', '2026-08-30 00:00:00.000', 'Razorpay', 1599, 'Active', 320, '2026-07-31 12:42:05.000', '2026-07-31 12:42:05.249', '2026-07-31 12:42:05.249'),
(121, 206, 60, '2026-07-31 00:00:00.000', '2026-08-29 00:00:00.000', 'Razorpay', 1299, 'Active', 320, '2026-07-31 12:42:49.000', '2026-07-31 12:42:49.629', '2026-07-31 12:42:49.629'),
(124, 156, 46, '2026-07-31 20:43:50.606', '2026-09-29 20:43:50.606', 'UPI', 59999, 'Active', 90, '2026-07-31 20:43:50.000', '2026-07-31 20:43:50.627', '2026-07-31 20:43:50.627'),
(129, 210, 39, '2026-08-01 00:00:00.000', '2026-08-31 00:00:00.000', 'Cash', 5000, 'Active', 90, '2026-08-01 09:35:10.000', '2026-08-01 09:35:10.679', '2026-08-01 09:35:10.679'),
(130, 156, 14, '2026-08-03 00:00:00.000', '2026-10-02 00:00:00.000', 'Razorpay', 5999, 'Active', 90, '2026-08-03 06:32:39.000', '2026-08-03 06:32:39.823', '2026-08-03 06:32:39.823'),
(131, 211, 22, '2026-08-03 00:00:00.000', '2026-10-02 00:00:00.000', 'Upi', 1500, 'Active', 90, '2026-08-03 10:53:44.000', '2026-08-03 10:53:44.520', '2026-08-03 10:53:44.520'),
(132, 212, 22, '2026-08-03 00:00:00.000', '2026-10-02 00:00:00.000', 'Upi', 1500, 'Active', 90, '2026-08-03 10:57:06.000', '2026-08-03 10:57:06.946', '2026-08-03 10:57:06.946'),
(133, 212, 31, '2026-08-03 00:00:00.000', '2026-11-01 00:00:00.000', 'Upi', 1350, 'Active', 90, '2026-08-03 11:07:49.000', '2026-08-03 11:07:49.928', '2026-08-03 11:07:49.928'),
(134, 156, 71, '2026-08-03 11:52:23.587', '2026-08-04 11:52:23.587', 'UPI', 1, 'Active', 90, '2026-08-03 11:52:24.000', '2026-08-03 11:52:24.047', '2026-08-03 11:52:24.047'),
(139, 212, 50, '2026-08-03 00:00:00.000', '2026-08-08 00:00:00.000', 'Upi', 1000, 'Active', 90, '2026-08-04 07:10:57.000', '2026-08-04 07:10:57.710', '2026-08-04 07:10:57.710'),
(140, 217, 50, '2026-08-04 00:00:00.000', '2026-08-09 00:00:00.000', 'Cash', 1000, 'Active', 90, '2026-08-04 07:11:45.000', '2026-08-04 07:11:45.277', '2026-08-04 07:11:45.277');

-- --------------------------------------------------------

--
-- Table structure for table `message_templates`
--

CREATE TABLE `message_templates` (
  `id` int NOT NULL,
  `eventKey` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `channel` varchar(100) DEFAULT 'EMAIL',
  `isActive` tinyint(1) DEFAULT '1',
  `variables` json DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `message_templates`
--

INSERT INTO `message_templates` (`id`, `eventKey`, `name`, `subject`, `message`, `channel`, `isActive`, `variables`, `createdAt`, `updatedAt`) VALUES
(1, 'WELCOME_TRIAL', 'Welcome Trial', 'Welcome to our Gym!', 'Hi {Name}, your trial has started.', 'EMAIL', 1, '[\"Name\"]', '2026-07-24 10:14:18', '2026-07-24 10:14:18'),
(2, 'EXPIRY_REMINDER_DAILY', 'Expiry Reminder', 'Plan Expiring Soon', 'Hi {Name}, your plan {PlanName} expires in {Days} days.', 'EMAIL', 1, '[\"Name\", \"PlanName\", \"Days\"]', '2026-07-24 10:14:18', '2026-07-24 10:14:18'),
(3, 'TRIAL_EXPIRED_FINAL', 'Trial Expired', 'Trial Expired', 'Hi {Name}, your trial has expired.', 'EMAIL', 1, '[\"Name\"]', '2026-07-24 10:14:18', '2026-07-24 10:14:18'),
(4, 'SUBSCRIPTION_ACTIVATED', 'Subscription Activated', 'Subscription Activated', 'Hi {Name}, your subscription for {PlanName} has been successfully activated. Amount Paid: {Amount}', 'EMAIL,IN_APP', 1, '[\"Name\", \"PlanName\", \"Amount\"]', '2026-07-24 10:14:18', '2026-07-25 07:11:32'),
(5, 'PLAN_PURCHASED', 'Plan Purchased', 'Plan Purchased', 'Hi {Name}, you purchased {PlanName}.', 'EMAIL,IN_APP', 1, '[\"Name\", \"PlanName\"]', '2026-07-24 10:14:18', '2026-07-24 12:23:25'),
(6, 'PLAN_UPGRADE_REQUEST', 'Plan Upgrade Request', 'New Plan Upgrade Request', 'Admin: {AdminName}\\nGym: {GymName}\\nCurrent Plan: {CurrentPlan}\\nRequested Plan: {RequestedPlan}\\nBilling: Monthly / Yearly\\nRequested At: {DateTime}\\nStatus: Pending', 'EMAIL,IN_APP', 1, '[\"AdminName\", \"GymName\", \"CurrentPlan\", \"RequestedPlan\", \"DateTime\"]', '2026-07-24 10:14:18', '2026-07-24 11:47:44'),
(7, 'PLAN_UPGRADED', 'Plan Upgraded', 'Plan Upgraded', 'Hi {Name}, your plan has been successfully upgraded to {PlanName}.', 'EMAIL,IN_APP', 1, '[\"Name\", \"PlanName\"]', '2026-07-24 10:14:18', '2026-07-24 13:09:46'),
(8, 'MEMBER_CREATED', 'Member Created', 'Welcome to {GymName}!', 'Hi {Name},\n\nYour account has been successfully created at {GymName}.\n\nLogin Details:\nEmail: {Email}\nPassword: {Password}\n\nPlease login and change your password for security.\n\nThank you!', 'EMAIL,IN_APP', 1, '[\"Name\", \"GymName\", \"Email\", \"Password\"]', '2026-07-24 10:14:18', '2026-08-01 06:35:12'),
(9, 'MEMBER_PLAN_ASSIGNED', 'Plan Assigned', 'Plan Assigned - {GymName}', 'Hi {Name},\n\n{PlanName} has been assigned to you at {GymName}.\n\nPlan Details:\nValid till: {Validity}\nDate/Time: {DateTime}\n\nThank you!', 'EMAIL,IN_APP', 1, '[\"Name\", \"PlanName\", \"GymName\", \"Validity\", \"DateTime\"]', '2026-07-24 10:14:18', '2026-08-01 06:35:12'),
(10, 'PAYMENT_SUCCESS', 'Payment Success', 'Payment Successful', 'Hi {Name}, your payment of {Amount} was successful.', 'EMAIL', 1, '[\"Name\", \"Amount\"]', '2026-07-24 10:14:18', '2026-07-24 10:14:18'),
(11, 'PAYMENT_FAILED', 'Payment Failed', 'Payment Failed', 'Hi {Name}, your payment of {Amount} failed.', 'EMAIL', 1, '[\"Name\", \"Amount\"]', '2026-07-24 10:14:18', '2026-07-24 10:14:18'),
(12, 'ANNOUNCEMENT', 'Announcement', 'Gym Announcement', 'Dear {Name}, {Message}', 'EMAIL,IN_APP', 1, '[\"Name\", \"Message\"]', '2026-07-24 10:14:18', '2026-07-24 12:58:47'),
(13, 'MEMBER_EXPIRED', 'Member Expired', 'Membership Expired', 'Hi {Name}, your membership has expired.', 'EMAIL', 1, '[\"Name\"]', '2026-07-24 10:14:18', '2026-07-24 10:14:18'),
(14, 'MEMBER_RENEWED', 'Member Renewed', 'Membership Renewed', 'Hi {Name}, your membership is renewed.', 'EMAIL', 1, '[\"Name\"]', '2026-07-24 10:14:18', '2026-07-24 10:14:18'),
(15, 'PASSWORD_RESET', 'Password Reset', 'Password Reset', 'Hi {Name}, your password reset link is {Link}', 'EMAIL', 1, '[\"Name\", \"Link\"]', '2026-07-24 10:14:18', '2026-07-24 10:14:18'),
(16, 'LOGIN_ALERT', 'Login Alert', 'New Login', 'Hi {Name}, a new login was detected from {IP}.', 'EMAIL', 1, '[\"Name\", \"IP\"]', '2026-07-24 10:14:18', '2026-07-24 10:14:18'),
(17, 'EMAIL_VERIFICATION', 'Email Verification', 'Verify Email', 'Hi {Name}, please verify your email: {Link}', 'EMAIL', 1, '[\"Name\", \"Link\"]', '2026-07-24 10:14:18', '2026-07-24 10:14:18'),
(189, 'CLASS_CREATED', 'Class Created', 'New Class Schedule', 'Hi {Name}, a new class {ClassName} has been scheduled for {Date}.', 'EMAIL,IN_APP', 1, '[\"Name\", \"ClassName\", \"Date\"]', '2026-07-24 11:37:18', '2026-07-31 12:34:01'),
(190, 'CLASS_UPDATED', 'Class Updated', 'Class Schedule Updated', 'Hi {Name}, the class {ClassName} schedule has been updated.', 'EMAIL', 1, '[\"Name\", \"ClassName\"]', '2026-07-24 11:37:18', '2026-07-24 11:37:18'),
(191, 'CLASS_CANCELLED', 'Class Cancelled', 'Class Cancelled', 'Hi {Name}, the class {ClassName} has been cancelled.', 'EMAIL', 1, '[\"Name\", \"ClassName\"]', '2026-07-24 11:37:18', '2026-07-24 11:37:18'),
(192, 'SESSION_CREATED', 'Session Created', 'New Session Booked', 'Hi {Name}, a new session {SessionName} has been booked.', 'EMAIL,IN_APP', 1, '[\"Name\", \"SessionName\"]', '2026-07-24 11:37:18', '2026-07-31 12:34:01'),
(193, 'SESSION_UPDATED', 'Session Updated', 'Session Updated', 'Hi {Name}, the session {SessionName} has been updated.', 'EMAIL', 1, '[\"Name\", \"SessionName\"]', '2026-07-24 11:37:18', '2026-07-24 11:37:18'),
(194, 'SESSION_CANCELLED', 'Session Cancelled', 'Session Cancelled', 'Hi {Name}, the session {SessionName} has been cancelled.', 'EMAIL', 1, '[\"Name\", \"SessionName\"]', '2026-07-24 11:37:18', '2026-07-24 11:37:18'),
(264, 'FORGOT_PASSWORD_OTP', 'Forgot Password OTP', 'Password Reset OTP', 'Hi {Name},\\n\\nYour OTP is\\n{OTP}\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'EMAIL,IN_APP', 1, '[\"Name\", \"OTP\", \"CompanyName\"]', '2026-07-24 12:07:17', '2026-07-24 12:07:17'),
(265, 'PASSWORD_CHANGED', 'Password Changed', 'Password Changed Successfully', 'Your account password has been changed successfully.\\n\\nIf this was not you, please contact your administrator immediately.', 'EMAIL,IN_APP', 1, '[]', '2026-07-24 12:07:17', '2026-07-24 12:07:17'),
(1453, 'NEW_ADMIN_REQUEST', 'New Admin Request', 'New SaaS Plan Request', 'Hi Superadmin, {AdminName} has requested or purchased the {PlanName} plan.', 'EMAIL,IN_APP', 1, '[\"AdminName\", \"PlanName\"]', '2026-07-31 10:21:43', '2026-07-31 10:21:43'),
(1454, 'ADMIN_REQUEST_APPROVED', 'Admin Request Approved', 'SaaS Plan Approved', 'Hi {Name}, your request for the {PlanName} plan has been approved and activated.', 'EMAIL,IN_APP', 1, '[\"Name\", \"PlanName\"]', '2026-07-31 10:21:43', '2026-07-31 10:21:43'),
(1455, 'MEMBER_ADDED', 'Member Added Alert', 'New Member Added', 'Hi Admin, a new member {Name} has been added to your gym.', 'EMAIL,IN_APP', 1, '[\"Name\"]', '2026-07-31 10:21:43', '2026-07-31 10:21:43'),
(1456, 'MEMBER_ATTENDANCE', 'Member Attendance', 'Attendance Marked - {GymName}', 'Hi {Name},\\n\\nYour attendance at {GymName} has been marked as {Status}.\\n\\nDate: {Date}\\nTime: {Time}\\n\\nThank you!', 'EMAIL,IN_APP', 1, '[\"Name\", \"Date\", \"Status\", \"GymName\", \"Time\"]', '2026-07-31 10:21:43', '2026-08-01 06:43:47'),
(1457, 'DIET_PLAN_ASSIGNED', 'Diet Plan Assigned', 'New Diet Plan - {GymName}', 'Hi {Name},\\n\\nA new diet plan has been assigned to you at {GymName}.\\n\\nDiet Details:\\n{DietDetails}\\n\\nTrainer: {TrainerName}\\n\\nPlease check your dashboard for more details.', 'EMAIL,IN_APP', 1, '[\"Name\", \"GymName\", \"DietDetails\", \"TrainerName\"]', '2026-07-31 10:21:43', '2026-08-01 06:43:47'),
(1458, 'WORKOUT_PLAN_ASSIGNED', 'Workout Plan Assigned', 'New Workout Plan - {GymName}', 'Hi {Name},\\n\\nA new workout plan has been assigned to you at {GymName}.\\n\\nWorkout Details:\\n{WorkoutDetails}\\n\\nTrainer: {TrainerName}\\n\\nPlease check your dashboard for more details.', 'EMAIL,IN_APP', 1, '[\"Name\", \"GymName\", \"WorkoutDetails\", \"TrainerName\"]', '2026-07-31 10:21:43', '2026-08-01 06:43:47'),
(1459, 'HEALTH_LOG_ADDED', 'Health Log Added', 'Health Log Updated', 'Hi {Name}, a new health log entry has been added to your profile.', 'EMAIL,IN_APP', 1, '[\"Name\"]', '2026-07-31 10:21:43', '2026-07-31 10:21:43'),
(1460, 'CLASS_BOOKED', 'Class Booked', 'Class Booking Confirmed', 'Hi {Name}, your booking for the class {ClassName} is confirmed for {Date}.', 'EMAIL,IN_APP', 1, '[\"Name\", \"ClassName\", \"Date\"]', '2026-07-31 10:21:43', '2026-07-31 10:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `notificationlog`
--

CREATE TABLE `notificationlog` (
  `id` int NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `memberId` int DEFAULT NULL,
  `error` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notificationlog`
--

INSERT INTO `notificationlog` (`id`, `type`, `to`, `message`, `status`, `createdAt`, `memberId`, `error`, `title`, `receiver_role`, `sender_id`, `sender_role`, `reference_type`, `reference_id`, `is_read`) VALUES
(1, 'EMAIL', 'test-recipient@example.com', 'This is a mock welcome note text message.', 'FAILED', '2026-06-13 15:57:27.939', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 'EMAIL', 'vamika@gmail.com', 'Hi vamika,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: vamika@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'FAILED', '2026-06-13 16:11:39.279', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 'EMAIL', 'maddii@gmail.com', 'Hi maddii,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: maddii@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'FAILED', '2026-06-13 16:26:07.652', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 'WHATSAPP', '101010101010', 'Hi maddii,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: maddii@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'SENT', '2026-06-13 16:26:07.657', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 'IN-APP', '222', 'Hi maddii,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: maddii@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'UNREAD', '2026-06-13 16:26:07.660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 'EMAIL', 'maddii@gmail.com', 'Hi maddii,\n\nThank you for your payment of Rs.5000 for the test plan.\n\nYour membership has been successfully renewed. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-06-13 16:41:43.454', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 'WHATSAPP', '101010101010', 'Hi maddii,\n\nThank you for your payment of Rs.5000 for the test plan.\n\nYour membership has been successfully renewed. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'SENT', '2026-06-13 16:41:43.462', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 'IN-APP', '222', 'Hi maddii,\n\nThank you for your payment of Rs.5000 for the test plan.\n\nYour membership has been successfully renewed. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-06-13 16:41:43.480', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 'EMAIL', 'jem@gmail.com', 'Hello owners, this is a system-wide test broadcast for notices and offers!', 'FAILED', '2026-06-13 16:54:40.062', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 'WHATSAPP', '101010101010', 'Hello owners, this is a system-wide test broadcast for notices and offers!', 'SENT', '2026-06-13 16:54:40.075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 'IN-APP', '215', 'Hello owners, this is a system-wide test broadcast for notices and offers!', 'UNREAD', '2026-06-13 16:54:40.080', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 'EMAIL', 'sara@gmail.com', 'Hello owners, this is a system-wide test broadcast for notices and offers!', 'FAILED', '2026-06-13 16:54:40.096', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 'WHATSAPP', '101010101010', 'Hello owners, this is a system-wide test broadcast for notices and offers!', 'SENT', '2026-06-13 16:54:40.124', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 'EMAIL', 'admin@gmail.com', 'Hello owners, this is a system-wide test broadcast for notices and offers!', 'FAILED', '2026-06-13 16:54:40.098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 'IN-APP', '216', 'Hello owners, this is a system-wide test broadcast for notices and offers!', 'UNREAD', '2026-06-13 16:54:40.130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 'EMAIL', 'john@gmail.com', 'Hello owners, this is a system-wide test broadcast for notices and offers!', 'FAILED', '2026-06-13 16:54:40.125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 'WHATSAPP', '9876543210', 'Hello owners, this is a system-wide test broadcast for notices and offers!', 'SENT', '2026-06-13 16:54:40.138', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 'WHATSAPP', '0770090987', 'Hello owners, this is a system-wide test broadcast for notices and offers!', 'SENT', '2026-06-13 16:54:40.141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 'IN-APP', '90', 'Hello owners, this is a system-wide test broadcast for notices and offers!', 'READ', '2026-06-13 16:54:40.145', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, 'IN-APP', '89', 'Hello owners, this is a system-wide test broadcast for notices and offers!', 'UNREAD', '2026-06-13 16:54:40.148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 'EMAIL', 'demoboy@gmail.com', 'Hi demo boy,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: demoboy@gmail.com\nPassword: 123\n\nRegards,\nGym Management', 'FAILED', '2026-06-15 14:21:59.091', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(22, 'EMAIL', 'demoboy@gmail.com', 'Hi demo boy,\n\nThank you for your payment of Rs.1000 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-06-15 14:21:59.092', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(23, 'WHATSAPP', '7894561234', 'Hi demo boy,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: demoboy@gmail.com\nPassword: 123\n\nRegards,\nGym Management', 'SENT', '2026-06-15 14:21:59.095', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(24, 'WHATSAPP', '7894561234', 'Hi demo boy,\n\nThank you for your payment of Rs.1000 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'SENT', '2026-06-15 14:21:59.097', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(25, 'IN-APP', '224', 'Hi demo boy,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: demoboy@gmail.com\nPassword: 123\n\nRegards,\nGym Management', 'UNREAD', '2026-06-15 14:21:59.098', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(26, 'IN-APP', '224', 'Hi demo boy,\n\nThank you for your payment of Rs.1000 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-06-15 14:21:59.100', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, 'EMAIL', 'demogirl@gmail.com', 'Hi Demo girl,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: demogirl@gmail.com\nPassword: 123\n\nRegards,\nGym Management', 'FAILED', '2026-06-15 15:11:44.839', 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(28, 'EMAIL', 'demogirl@gmail.com', 'Hi Demo girl,\n\nThank you for your payment of Rs.1000 for the general plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-06-15 15:11:44.840', 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(29, 'WHATSAPP', '457869123', 'Hi Demo girl,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: demogirl@gmail.com\nPassword: 123\n\nRegards,\nGym Management', 'SENT', '2026-06-15 15:11:44.842', 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(30, 'WHATSAPP', '457869123', 'Hi Demo girl,\n\nThank you for your payment of Rs.1000 for the general plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'SENT', '2026-06-15 15:11:44.843', 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(31, 'IN-APP', '225', 'Hi Demo girl,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: demogirl@gmail.com\nPassword: 123\n\nRegards,\nGym Management', 'UNREAD', '2026-06-15 15:11:44.844', 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(32, 'IN-APP', '225', 'Hi Demo girl,\n\nThank you for your payment of Rs.1000 for the general plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-06-15 15:11:44.844', 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(33, 'EMAIL', 'demoaayu@gmail.com', 'Hi Demo Aayush,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: demoaayu@gmail.com\nPassword: 123\n\nRegards,\nGym Management', 'FAILED', '2026-06-17 13:28:37.800', 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(34, 'EMAIL', 'demoaayu@gmail.com', 'Hi Demo Aayush,\n\nThank you for your payment of Rs.1000 for the general plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-06-17 13:28:37.801', 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(35, 'WHATSAPP', '1234567890', 'Hi Demo Aayush,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: demoaayu@gmail.com\nPassword: 123\n\nRegards,\nGym Management', 'SENT', '2026-06-17 13:28:37.804', 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(36, 'WHATSAPP', '1234567890', 'Hi Demo Aayush,\n\nThank you for your payment of Rs.1000 for the general plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'SENT', '2026-06-17 13:28:37.805', 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(37, 'IN-APP', '227', 'Hi Demo Aayush,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: demoaayu@gmail.com\nPassword: 123\n\nRegards,\nGym Management', 'UNREAD', '2026-06-17 13:28:37.808', 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(38, 'IN-APP', '227', 'Hi Demo Aayush,\n\nThank you for your payment of Rs.1000 for the general plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-06-17 13:28:37.808', 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(39, 'EMAIL', 'dummy.lead1@example.com', 'Hi Dummy Lead 1,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: dummy.lead1@example.com\nPassword: 123456\n\nRegards,\nGym Management', 'FAILED', '2026-06-17 14:33:22.976', 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(40, 'WHATSAPP', '9000000001', 'Hi Dummy Lead 1,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: dummy.lead1@example.com\nPassword: 123456\n\nRegards,\nGym Management', 'SENT', '2026-06-17 14:33:22.979', 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(41, 'IN-APP', '228', 'Hi Dummy Lead 1,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: dummy.lead1@example.com\nPassword: 123456\n\nRegards,\nGym Management', 'UNREAD', '2026-06-17 14:33:22.981', 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(42, 'IN-APP', '90', 'New inventory request: 10x Yoga Mats (High Density) by generaltrainer (ID: 93)', 'READ', '2026-06-22 14:42:37.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(43, 'EMAIL', 'pia@gmail.com', 'Hi pia b,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: pia@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'FAILED', '2026-06-26 15:29:00.550', 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(44, 'EMAIL', 'pia@gmail.com', 'Hi pia b,\n\nThank you for your payment of Rs.1000 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-06-26 15:29:00.557', 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(45, 'WHATSAPP', '78945455421', 'Hi pia b,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: pia@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'SENT', '2026-06-26 15:29:00.600', 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(46, 'WHATSAPP', '78945455421', 'Hi pia b,\n\nThank you for your payment of Rs.1000 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'SENT', '2026-06-26 15:29:00.606', 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(47, 'IN-APP', '230', 'Hi pia b,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: pia@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'UNREAD', '2026-06-26 15:29:00.609', 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(48, 'IN-APP', '230', 'Hi pia b,\n\nThank you for your payment of Rs.1000 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-06-26 15:29:00.611', 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(49, 'EMAIL', 'riya@gmail.com', 'Hi riya ,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: riya@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'FAILED', '2026-06-26 16:06:29.597', 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(50, 'EMAIL', 'riya@gmail.com', 'Hi riya ,\n\nThank you for your payment of Rs.1000 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-06-26 16:06:29.614', 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(51, 'WHATSAPP', '7849615654', 'Hi riya ,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: riya@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'SENT', '2026-06-26 16:06:29.625', 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(52, 'WHATSAPP', '7849615654', 'Hi riya ,\n\nThank you for your payment of Rs.1000 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'SENT', '2026-06-26 16:06:29.639', 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(53, 'IN-APP', '231', 'Hi riya ,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: riya@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'UNREAD', '2026-06-26 16:06:29.639', 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(54, 'IN-APP', '231', 'Hi riya ,\n\nThank you for your payment of Rs.1000 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-06-26 16:06:29.641', 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(56, 'IN-APP', '232', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created successfully.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: verify_1783080059363@test.com\nTemporary Pas', 'UNREAD', '2026-07-03 17:30:59.769', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(57, 'EMAIL', 'superadmin@gmail.com', '🔔 New Free Trial Registration Alert!\nGym Name: fitgym\nEmail: fitgym@gmail.com\nPlan: 7-Day Free Trial\nBilling Duration: Monthly\nStart Date: 10/07/2026', 'FAILED', '2026-07-03 18:03:27.198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(58, 'IN-APP', '67', '🔔 New Free Trial Registration Alert!\nGym Name: fitgym\nEmail: fitgym@gmail.com\nPlan: 7-Day Free Trial\nBilling Duration: Monthly\nStart Date: 10/07/2026', 'READ', '2026-07-03 18:03:27.210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(59, 'EMAIL', 'superadmin@gmail.com', '🔔 New Free Trial Registration Alert!\nGym Name: rajss gym\nEmail: rajss@gmail.com\nPlan: 7-Day Free Trial\nBilling Duration: Monthly\nStart Date: 10/07/2026', 'FAILED', '2026-07-03 18:13:26.102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(60, 'IN-APP', '67', '🔔 New Free Trial Registration Alert!\nGym Name: rajss gym\nEmail: rajss@gmail.com\nPlan: 7-Day Free Trial\nBilling Duration: Monthly\nStart Date: 10/07/2026', 'READ', '2026-07-03 18:13:26.109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(61, 'EMAIL', 'rajss@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created successfully.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: rajss@gmail.com\nTemporary Password: Gym@443', 'FAILED', '2026-07-03 18:25:09.816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(62, 'IN-APP', '233', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created successfully.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: rajss@gmail.com\nTemporary Password: Gym@443', 'UNREAD', '2026-07-03 18:25:09.821', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(63, 'EMAIL', 'onboard_1783144295371@test.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created successfully.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: onboard_1783144295371@test.com\nTemporary Pa', 'FAILED', '2026-07-04 11:21:35.884', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(64, 'IN-APP', '234', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created successfully.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: onboard_1783144295371@test.com\nTemporary Pa', 'UNREAD', '2026-07-04 11:21:35.893', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(65, 'EMAIL', 'onboard_1783144352701@test.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created successfully.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: onboard_1783144352701@test.com\nTemporary Pa', 'FAILED', '2026-07-04 11:22:33.357', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(66, 'IN-APP', '235', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created successfully.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: onboard_1783144352701@test.com\nTemporary Pa', 'UNREAD', '2026-07-04 11:22:33.370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(68, 'IN-APP', '236', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created successfully.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: onboard_1783144416151@test.com\nTemporary Pa', 'UNREAD', '2026-07-04 11:23:36.498', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(69, 'EMAIL', 'fitgym@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created successfully.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: fitgym@gmail.com\nTemporary Password: 123456', 'FAILED', '2026-07-04 11:28:16.106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(70, 'IN-APP', '237', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created successfully.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: fitgym@gmail.com\nTemporary Password: 123456', 'UNREAD', '2026-07-04 11:28:16.109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(71, 'EMAIL', 'fitnessgym@gmil.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: fitnessgym@gmil.com\nPassword', 'FAILED', '2026-07-06 12:08:49.089', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(72, 'IN-APP', '238', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: fitnessgym@gmil.com\nPassword', 'READ', '2026-07-06 12:08:49.094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(73, 'EMAIL', 'glowupgym@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: glowupgym@gmail.com\nPassword', 'FAILED', '2026-07-06 12:36:16.952', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(74, 'IN-APP', '239', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: glowupgym@gmail.com\nPassword', 'READ', '2026-07-06 12:36:16.980', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(75, 'EMAIL', 'superadmin@gmail.com', '🔔 New Free Trial Registration Alert!\nGym Name: glowupgym\nEmail: glowupgym@gmail.com\nPlan: Basic\nBilling Duration: Yearly\nStart Date: 06/07/2026', 'FAILED', '2026-07-06 13:13:33.654', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(76, 'IN-APP', '67', '🔔 New Free Trial Registration Alert!\nGym Name: glowupgym\nEmail: glowupgym@gmail.com\nPlan: Basic\nBilling Duration: Yearly\nStart Date: 06/07/2026', 'READ', '2026-07-06 13:13:33.661', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(77, 'EMAIL', 'glowupgym@gmail.com', '🎉 Subscription Approved!\nYour request to renew/upgrade your gym plan to \"Basic\" has been approved.\n\nNew Expiry Date: 14/07/2027\nThank you for staying with us!', 'FAILED', '2026-07-06 13:14:25.889', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(78, 'IN-APP', '239', '🎉 Subscription Approved!\nYour request to renew/upgrade your gym plan to \"Basic\" has been approved.\n\nNew Expiry Date: 14/07/2027\nThank you for staying with us!', 'READ', '2026-07-06 13:14:25.903', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(79, 'EMAIL', 'piabgym@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: piabgym@gmail.com\nPassword: ', 'FAILED', '2026-07-06 16:09:34.885', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(80, 'IN-APP', '240', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: piabgym@gmail.com\nPassword: ', 'READ', '2026-07-06 16:09:34.898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(81, 'EMAIL', '7daysfreetrialgym@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: 7daysfreetrialgym@gmail.com\n', 'FAILED', '2026-07-07 16:22:58.437', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(82, 'IN-APP', '244', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: 7daysfreetrialgym@gmail.com\n', 'UNREAD', '2026-07-07 16:22:58.449', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(83, 'EMAIL', '7dayssecondfree@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: 7dayssecondfree@gmail.com\nPa', 'FAILED', '2026-07-07 16:51:03.468', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(84, 'IN-APP', '245', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: 7dayssecondfree@gmail.com\nPa', 'UNREAD', '2026-07-07 16:51:03.479', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(85, 'EMAIL', 'aaagym@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: aaagym@gmail.com\nPassword: 1', 'FAILED', '2026-07-07 17:17:19.079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(86, 'IN-APP', '246', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: aaagym@gmail.com\nPassword: 1', 'READ', '2026-07-07 17:17:19.105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(87, 'EMAIL', 'superadmin@gmail.com', '🔔 New Free Trial Registration Alert!\nGym Name: zzgym\nEmail: zzgym@gmail.com\nPlan: Pro\nBilling Duration: Yearly\nStart Date: 11/07/2026', 'FAILED', '2026-07-07 18:23:16.089', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(88, 'IN-APP', '67', '🔔 New Free Trial Registration Alert!\nGym Name: zzgym\nEmail: zzgym@gmail.com\nPlan: Pro\nBilling Duration: Yearly\nStart Date: 11/07/2026', 'READ', '2026-07-07 18:23:16.099', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(89, 'EMAIL', 'zzgym@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created successfully.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: zzgym@gmail.com\nTemporary Password: 123456\n', 'FAILED', '2026-07-07 18:33:04.603', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(90, 'IN-APP', '247', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created successfully.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: zzgym@gmail.com\nTemporary Password: 123456\n', 'UNREAD', '2026-07-07 18:33:04.613', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(91, 'EMAIL', 'plangym@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated successfully (Paid Plan).\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: plangym@gmail.com', 'FAILED', '2026-07-08 11:01:57.284', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(92, 'IN-APP', '248', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated successfully (Paid Plan).\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: plangym@gmail.com', 'UNREAD', '2026-07-08 11:01:57.305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(93, 'EMAIL', 'planbgym@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated successfully (Paid Plan).\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: planbgym@gmail.co', 'FAILED', '2026-07-08 11:11:47.530', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(94, 'IN-APP', '249', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated successfully (Paid Plan).\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: planbgym@gmail.co', 'UNREAD', '2026-07-08 11:11:47.536', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(95, 'EMAIL', 'john@gmail.com', 'hello every one we want to announce somethimg\n', 'FAILED', '2026-07-08 11:14:06.937', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(96, 'EMAIL', 'admin@gmail.com', 'hello every one we want to announce somethimg\n', 'FAILED', '2026-07-08 11:14:06.939', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(97, 'EMAIL', '7daysfreetrialgym@gmail.com', 'hello every one we want to announce somethimg\n', 'FAILED', '2026-07-08 11:14:06.943', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(98, 'EMAIL', '7dayssecondfree@gmail.com', 'hello every one we want to announce somethimg\n', 'FAILED', '2026-07-08 11:14:06.945', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(99, 'IN-APP', '89', 'hello every one we want to announce somethimg\n', 'UNREAD', '2026-07-08 11:14:07.020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(100, 'IN-APP', '244', 'hello every one we want to announce somethimg\n', 'UNREAD', '2026-07-08 11:14:07.030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(101, 'IN-APP', '245', 'hello every one we want to announce somethimg\n', 'UNREAD', '2026-07-08 11:14:07.033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(102, 'EMAIL', 'aaagym@gmail.com', 'hello every one we want to announce somethimg\n', 'FAILED', '2026-07-08 11:14:07.034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(103, 'EMAIL', 'zzgym@gmail.com', 'hello every one we want to announce somethimg\n', 'FAILED', '2026-07-08 11:14:07.035', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(104, 'EMAIL', 'plangym@gmail.com', 'hello every one we want to announce somethimg\n', 'FAILED', '2026-07-08 11:14:07.035', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(105, 'EMAIL', 'planbgym@gmail.com', 'hello every one we want to announce somethimg\n', 'FAILED', '2026-07-08 11:14:07.036', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(106, 'WHATSAPP', '9876543210', 'hello every one we want to announce somethimg\n', 'SENT', '2026-07-08 11:14:07.065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(107, 'IN-APP', '248', 'hello every one we want to announce somethimg\n', 'UNREAD', '2026-07-08 11:14:07.066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(108, 'IN-APP', '249', 'hello every one we want to announce somethimg\n', 'UNREAD', '2026-07-08 11:14:07.068', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(109, 'IN-APP', '246', 'hello every one we want to announce somethimg\n', 'UNREAD', '2026-07-08 11:14:07.073', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(110, 'IN-APP', '247', 'hello every one we want to announce somethimg\n', 'UNREAD', '2026-07-08 11:14:07.076', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(111, 'IN-APP', '90', 'hello every one we want to announce somethimg\n', 'READ', '2026-07-08 11:14:07.079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(112, 'EMAIL', 'plancgym@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated successfully (Paid Plan).\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: plancgym@gmail.co', 'FAILED', '2026-07-08 11:27:21.261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(113, 'IN-APP', '250', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated successfully (Paid Plan).\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: plancgym@gmail.co', 'UNREAD', '2026-07-08 11:27:21.269', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(114, 'EMAIL', 'planaagym@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated successfully (Paid Plan).\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: planaagym@gmail.c', 'FAILED', '2026-07-08 11:40:08.160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(115, 'IN-APP', '251', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated successfully (Paid Plan).\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: planaagym@gmail.c', 'UNREAD', '2026-07-08 11:40:08.171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(116, 'EMAIL', 'planaagym@gmail.com', 'Hi palnaagym, \n\nThank you for purchasing the Pro plan. We have received your payment of Rs.11999.\n\nYour Gym Owner account is active.\n\nTransaction ID: PAY-20260708-0010\n\nRegards,\nSpeed Fitness', 'FAILED', '2026-07-08 11:40:08.187', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(117, 'IN-APP', '251', 'Hi palnaagym, \n\nThank you for purchasing the Pro plan. We have received your payment of Rs.11999.\n\nYour Gym Owner account is active.\n\nTransaction ID: PAY-20260708-0010\n\nRegards,\nSpeed Fitness', 'UNREAD', '2026-07-08 11:40:08.194', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(118, 'EMAIL', 'admin@gmail.com', ' hii everyone happy holi', 'FAILED', '2026-07-08 12:43:45.600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(119, 'EMAIL', '7daysfreetrialgym@gmail.com', ' hii everyone happy holi', 'FAILED', '2026-07-08 12:43:45.603', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(120, 'EMAIL', 'john@gmail.com', ' hii everyone happy holi', 'FAILED', '2026-07-08 12:43:45.606', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(121, 'IN-APP', '244', ' hii everyone happy holi', 'UNREAD', '2026-07-08 12:43:45.672', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(122, 'IN-APP', '89', ' hii everyone happy holi', 'UNREAD', '2026-07-08 12:43:45.703', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(123, 'EMAIL', 'planaagym@gmail.com', ' hii everyone happy holi', 'FAILED', '2026-07-08 12:43:45.709', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(124, 'EMAIL', 'zzgym@gmail.com', ' hii everyone happy holi', 'FAILED', '2026-07-08 12:43:45.723', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(125, 'EMAIL', 'aaagym@gmail.com', ' hii everyone happy holi', 'FAILED', '2026-07-08 12:43:45.725', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(126, 'EMAIL', '7dayssecondfree@gmail.com', ' hii everyone happy holi', 'FAILED', '2026-07-08 12:43:45.727', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(127, 'EMAIL', 'planbgym@gmail.com', ' hii everyone happy holi', 'FAILED', '2026-07-08 12:43:45.728', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(128, 'EMAIL', 'plangym@gmail.com', ' hii everyone happy holi', 'FAILED', '2026-07-08 12:43:45.729', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(129, 'EMAIL', 'plancgym@gmail.com', ' hii everyone happy holi', 'FAILED', '2026-07-08 12:43:45.732', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(130, 'IN-APP', '251', ' hii everyone happy holi', 'UNREAD', '2026-07-08 12:43:45.743', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(131, 'WHATSAPP', '9876543210', ' hii everyone happy holi', 'SENT', '2026-07-08 12:43:45.745', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(132, 'IN-APP', '247', ' hii everyone happy holi', 'UNREAD', '2026-07-08 12:43:45.754', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(133, 'IN-APP', '90', ' hii everyone happy holi', 'READ', '2026-07-08 12:43:45.757', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(134, 'IN-APP', '246', ' hii everyone happy holi', 'UNREAD', '2026-07-08 12:43:45.758', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(135, 'IN-APP', '245', ' hii everyone happy holi', 'UNREAD', '2026-07-08 12:43:45.760', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(136, 'IN-APP', '249', ' hii everyone happy holi', 'UNREAD', '2026-07-08 12:43:45.764', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(137, 'IN-APP', '250', ' hii everyone happy holi', 'UNREAD', '2026-07-08 12:43:45.766', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(138, 'IN-APP', '248', ' hii everyone happy holi', 'UNREAD', '2026-07-08 12:43:45.772', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(139, 'EMAIL', 'john@gmail.com', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'FAILED', '2026-07-08 12:57:04.260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(140, 'EMAIL', 'admin@gmail.com', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'FAILED', '2026-07-08 12:57:04.264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(141, 'EMAIL', '7daysfreetrialgym@gmail.com', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'FAILED', '2026-07-08 12:57:04.344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(142, 'IN-APP', '89', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'UNREAD', '2026-07-08 12:57:04.348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(143, 'EMAIL', '7dayssecondfree@gmail.com', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'FAILED', '2026-07-08 12:57:04.354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(144, 'EMAIL', 'zzgym@gmail.com', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'FAILED', '2026-07-08 12:57:04.355', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(145, 'EMAIL', 'aaagym@gmail.com', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'FAILED', '2026-07-08 12:57:04.358', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(146, 'EMAIL', 'plangym@gmail.com', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'FAILED', '2026-07-08 12:57:04.397', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(147, 'IN-APP', '244', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'UNREAD', '2026-07-08 12:57:04.408', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(148, 'IN-APP', '245', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'UNREAD', '2026-07-08 12:57:04.410', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(149, 'IN-APP', '247', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'UNREAD', '2026-07-08 12:57:04.413', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(150, 'IN-APP', '246', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'UNREAD', '2026-07-08 12:57:04.417', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(151, 'EMAIL', 'planbgym@gmail.com', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'FAILED', '2026-07-08 12:57:04.417', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(152, 'EMAIL', 'plancgym@gmail.com', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'FAILED', '2026-07-08 12:57:04.418', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(153, 'EMAIL', 'planaagym@gmail.com', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'FAILED', '2026-07-08 12:57:04.419', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(154, 'WHATSAPP', '9876543210', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'SENT', '2026-07-08 12:57:04.426', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(155, 'IN-APP', '248', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'UNREAD', '2026-07-08 12:57:04.432', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(156, 'IN-APP', '90', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'READ', '2026-07-08 12:57:04.435', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(157, 'IN-APP', '249', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'UNREAD', '2026-07-08 12:57:04.439', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(158, 'IN-APP', '250', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'UNREAD', '2026-07-08 12:57:04.442', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(159, 'IN-APP', '251', 'hello holi notification\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783495623/announcements/kz4szghg2grkildcjfgy.png', 'UNREAD', '2026-07-08 12:57:04.444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(160, 'EMAIL', 'john@gmail.com', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'FAILED', '2026-07-08 12:58:25.260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(161, 'EMAIL', 'admin@gmail.com', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'FAILED', '2026-07-08 12:58:25.264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(162, 'EMAIL', '7daysfreetrialgym@gmail.com', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'FAILED', '2026-07-08 12:58:25.267', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(163, 'EMAIL', '7dayssecondfree@gmail.com', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'FAILED', '2026-07-08 12:58:25.270', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(164, 'EMAIL', 'aaagym@gmail.com', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'FAILED', '2026-07-08 12:58:25.274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(165, 'EMAIL', 'zzgym@gmail.com', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'FAILED', '2026-07-08 12:58:25.277', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(166, 'EMAIL', 'plangym@gmail.com', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'FAILED', '2026-07-08 12:58:25.281', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(167, 'EMAIL', 'planbgym@gmail.com', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'FAILED', '2026-07-08 12:58:25.283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(168, 'EMAIL', 'plancgym@gmail.com', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'FAILED', '2026-07-08 12:58:25.286', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(169, 'EMAIL', 'planaagym@gmail.com', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'FAILED', '2026-07-08 12:58:25.300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(170, 'IN-APP', '246', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'UNREAD', '2026-07-08 12:58:25.377', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(171, 'IN-APP', '250', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'UNREAD', '2026-07-08 12:58:25.468', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(172, 'IN-APP', '245', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'UNREAD', '2026-07-08 12:58:25.498', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(173, 'IN-APP', '244', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'UNREAD', '2026-07-08 12:58:25.519', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(174, 'IN-APP', '89', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'UNREAD', '2026-07-08 12:58:25.526', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(175, 'IN-APP', '247', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'UNREAD', '2026-07-08 12:58:25.532', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(176, 'IN-APP', '248', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'UNREAD', '2026-07-08 12:58:25.538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(177, 'IN-APP', '249', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'UNREAD', '2026-07-08 12:58:25.549', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(178, 'IN-APP', '251', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'UNREAD', '2026-07-08 12:58:25.575', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(179, 'WHATSAPP', '9876543210', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'SENT', '2026-07-08 12:58:25.617', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(180, 'IN-APP', '90', 'poiuytgrfsdz\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/raw/upload/v1783495704/announcements/bgonhcwxlwyvenfl0dhy', 'READ', '2026-07-08 12:58:25.620', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(181, 'EMAIL', 'john@gmail.com', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'FAILED', '2026-07-08 13:05:21.561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(182, 'EMAIL', 'admin@gmail.com', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'FAILED', '2026-07-08 13:05:21.563', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(183, 'EMAIL', '7dayssecondfree@gmail.com', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'FAILED', '2026-07-08 13:05:21.566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(184, 'IN-APP', '89', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'UNREAD', '2026-07-08 13:05:21.640', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(185, 'IN-APP', '245', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'UNREAD', '2026-07-08 13:05:21.645', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(186, 'EMAIL', '7daysfreetrialgym@gmail.com', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'FAILED', '2026-07-08 13:05:21.646', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(187, 'EMAIL', 'aaagym@gmail.com', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'FAILED', '2026-07-08 13:05:21.647', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(188, 'EMAIL', 'planbgym@gmail.com', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'FAILED', '2026-07-08 13:05:21.648', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(189, 'EMAIL', 'zzgym@gmail.com', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'FAILED', '2026-07-08 13:05:21.648', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(190, 'EMAIL', 'plangym@gmail.com', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'FAILED', '2026-07-08 13:05:21.649', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(191, 'IN-APP', '244', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'UNREAD', '2026-07-08 13:05:21.681', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(192, 'IN-APP', '246', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'UNREAD', '2026-07-08 13:05:21.683', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(193, 'IN-APP', '247', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'UNREAD', '2026-07-08 13:05:21.687', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(194, 'IN-APP', '249', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'UNREAD', '2026-07-08 13:05:21.689', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(195, 'EMAIL', 'planaagym@gmail.com', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'FAILED', '2026-07-08 13:05:21.691', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(196, 'EMAIL', 'plancgym@gmail.com', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'FAILED', '2026-07-08 13:05:21.693', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(197, 'WHATSAPP', '9876543210', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'SENT', '2026-07-08 13:05:21.697', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(198, 'IN-APP', '248', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'UNREAD', '2026-07-08 13:05:21.699', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(199, 'IN-APP', '90', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'READ', '2026-07-08 13:05:21.713', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(200, 'IN-APP', '251', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'UNREAD', '2026-07-08 13:05:21.731', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(201, 'IN-APP', '250', 'jhxffuikm\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783496120/announcements/khvu12vsztlxmiheutek.pdf', 'UNREAD', '2026-07-08 13:05:21.734', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `notificationlog` (`id`, `type`, `to`, `message`, `status`, `createdAt`, `memberId`, `error`, `title`, `receiver_role`, `sender_id`, `sender_role`, `reference_type`, `reference_id`, `is_read`) VALUES
(202, 'EMAIL', 'Chikkuyadav125@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated successfully (Paid Plan).\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: Chikkuyadav125@gm', 'FAILED', '2026-07-08 15:51:22.550', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(203, 'IN-APP', '252', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated successfully (Paid Plan).\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: Chikkuyadav125@gm', 'READ', '2026-07-08 15:51:22.563', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(204, 'EMAIL', 'Chikkuyadav125@gmail.com', 'Hi chikkugym, \n\nThank you for purchasing the Pro plan. We have received your payment of Rs.11999.\n\nYour Gym Owner account is active.\n\nTransaction ID: PAY-20260708-0011\n\nRegards,\nSpeed Fitness', 'FAILED', '2026-07-08 15:51:22.578', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(205, 'IN-APP', '252', 'Hi chikkugym, \n\nThank you for purchasing the Pro plan. We have received your payment of Rs.11999.\n\nYour Gym Owner account is active.\n\nTransaction ID: PAY-20260708-0011\n\nRegards,\nSpeed Fitness', 'READ', '2026-07-08 15:51:22.590', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(206, 'EMAIL', 'plancgym@gmail.com', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'SENT', '2026-07-08 15:57:40.839', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(207, 'IN-APP', '250', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'UNREAD', '2026-07-08 15:57:40.848', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(208, 'EMAIL', 'admin@gmail.com', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'SENT', '2026-07-08 15:57:40.892', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(209, 'EMAIL', 'planaagym@gmail.com', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'SENT', '2026-07-08 15:57:40.941', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(210, 'WHATSAPP', '9876543210', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'SENT', '2026-07-08 15:57:40.966', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(211, 'IN-APP', '90', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'READ', '2026-07-08 15:57:40.978', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(212, 'IN-APP', '251', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'UNREAD', '2026-07-08 15:57:40.991', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(213, 'EMAIL', 'plangym@gmail.com', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'SENT', '2026-07-08 15:57:40.994', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(214, 'EMAIL', 'zzgym@gmail.com', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'SENT', '2026-07-08 15:57:41.006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(215, 'EMAIL', 'aaagym@gmail.com', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'SENT', '2026-07-08 15:57:41.038', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(216, 'IN-APP', '248', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'UNREAD', '2026-07-08 15:57:41.049', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(217, 'IN-APP', '247', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'UNREAD', '2026-07-08 15:57:41.061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(218, 'IN-APP', '246', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'UNREAD', '2026-07-08 15:57:41.075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(219, 'EMAIL', '7dayssecondfree@gmail.com', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'SENT', '2026-07-08 15:57:41.125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(220, 'IN-APP', '245', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'UNREAD', '2026-07-08 15:57:41.130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(221, 'EMAIL', '7daysfreetrialgym@gmail.com', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'SENT', '2026-07-08 15:57:41.164', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(222, 'IN-APP', '244', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'UNREAD', '2026-07-08 15:57:41.181', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(223, 'EMAIL', 'john@gmail.com', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'SENT', '2026-07-08 15:57:41.183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(224, 'IN-APP', '89', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'UNREAD', '2026-07-08 15:57:41.192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(225, 'EMAIL', 'planbgym@gmail.com', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'SENT', '2026-07-08 15:57:41.258', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(226, 'IN-APP', '249', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'UNREAD', '2026-07-08 15:57:41.262', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(227, 'EMAIL', 'Chikkuyadav125@gmail.com', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'SENT', '2026-07-08 15:57:41.298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(228, 'IN-APP', '252', 'nbdsjhdjasdknam\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783506458/announcements/iqupsrzh1ikkxqy9xtoi.jpg', 'READ', '2026-07-08 15:57:41.303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(229, 'EMAIL', 'yadavbhakti287@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated successfully (Paid Plan).\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: yadavbhakti287@gm', 'SENT', '2026-07-08 17:11:51.098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(230, 'IN-APP', '253', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated successfully (Paid Plan).\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: yadavbhakti287@gm', 'UNREAD', '2026-07-08 17:11:51.114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(231, 'EMAIL', 'yadavbhakti287@gmail.com', 'Hi bhaktigym, \n\nThank you for purchasing the Basic plan. We have received your payment of Rs.8999.\n\nYour Gym Owner account is active.\n\nTransaction ID: PAY-20260708-0012\n\nRegards,\nSpeed Fitnes', 'SENT', '2026-07-08 17:11:52.445', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(232, 'IN-APP', '253', 'Hi bhaktigym, \n\nThank you for purchasing the Basic plan. We have received your payment of Rs.8999.\n\nYour Gym Owner account is active.\n\nTransaction ID: PAY-20260708-0012\n\nRegards,\nSpeed Fitnes', 'UNREAD', '2026-07-08 17:11:52.451', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(233, 'EMAIL', 'sarahh@gmail.com', 'Hi sarah,\n\nThank you for your payment of Rs.513 for the Gym Plan plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'SENT', '2026-07-08 17:18:16.169', 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(234, 'EMAIL', 'sarahh@gmail.com', 'Hi sarah,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: sarahh@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'SENT', '2026-07-08 17:18:16.232', 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(235, 'WHATSAPP', '7067955583', 'Hi sarah,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: sarahh@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'FAILED', '2026-07-08 17:18:17.098', 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(236, 'WHATSAPP', '7067955583', 'Hi sarah,\n\nThank you for your payment of Rs.513 for the Gym Plan plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-08 17:18:17.099', 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(237, 'IN-APP', '254', 'Hi sarah,\n\nThank you for your payment of Rs.513 for the Gym Plan plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-07-08 17:18:17.102', 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(238, 'IN-APP', '254', 'Hi sarah,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: sarahh@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'UNREAD', '2026-07-08 17:18:17.100', 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(239, 'EMAIL', 'sanni@gmail.com', 'Hi sanni,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: sanni@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'SENT', '2026-07-08 17:43:27.528', 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(240, 'EMAIL', 'sanni@gmail.com', 'Hi sanni,\n\nThank you for your payment of Rs.200 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'SENT', '2026-07-08 17:43:27.842', 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(241, 'WHATSAPP', '582548666', 'Hi sanni,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: sanni@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'FAILED', '2026-07-08 17:43:27.966', 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(242, 'IN-APP', '255', 'Hi sanni,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: sanni@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'UNREAD', '2026-07-08 17:43:27.969', 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(243, 'WHATSAPP', '582548666', 'Hi sanni,\n\nThank you for your payment of Rs.200 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-08 17:43:28.261', 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(244, 'IN-APP', '255', 'Hi sanni,\n\nThank you for your payment of Rs.200 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-07-08 17:43:28.265', 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(245, 'EMAIL', 'sanni@gmail.com', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'SENT', '2026-07-08 17:49:42.345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(246, 'IN-APP', '160', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'UNREAD', '2026-07-08 17:49:42.355', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(247, 'EMAIL', 'riya@gmail.com', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'SENT', '2026-07-08 17:49:42.377', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(248, 'IN-APP', '158', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'UNREAD', '2026-07-08 17:49:42.380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(249, 'EMAIL', 'dummy.lead1@example.com', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'SENT', '2026-07-08 17:49:42.468', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(250, 'IN-APP', '155', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'UNREAD', '2026-07-08 17:49:42.471', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(251, 'EMAIL', 'pia@gmail.com', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'SENT', '2026-07-08 17:49:42.521', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(252, 'IN-APP', '157', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'UNREAD', '2026-07-08 17:49:42.528', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(253, 'EMAIL', 'demogirl@gmail.com', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'SENT', '2026-07-08 17:49:42.543', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(254, 'EMAIL', 'demoboy@gmail.com', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'SENT', '2026-07-08 17:49:42.546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(255, 'IN-APP', '153', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'UNREAD', '2026-07-08 17:49:42.550', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(256, 'IN-APP', '152', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'UNREAD', '2026-07-08 17:49:42.554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(257, 'EMAIL', 'demoaayu@gmail.com', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'SENT', '2026-07-08 17:49:42.560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(258, 'IN-APP', '154', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'UNREAD', '2026-07-08 17:49:42.569', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(259, 'EMAIL', 'member@gmail.com', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'SENT', '2026-07-08 17:49:42.597', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(260, 'IN-APP', '156', 'nbhdfubhhddiaa\n\n📎 Attachment: https://res.cloudinary.com/dw48hcxi5/image/upload/v1783513179/announcements/n2sfy6jibyjdnwhxyuyb.png', 'UNREAD', '2026-07-08 17:49:42.600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(261, 'EMAIL', 'admin@gmail.com', 'Hi John Admin, \n\nThank you for upgrading to the Basic plan. We have received your payment of Rs.8999.\n\nYour new subscription is active.\n\nTransaction ID: PAY-20260708-0013\n\nRegards,\nSpeed Fitn', 'SENT', '2026-07-08 23:32:49.647', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(262, 'WHATSAPP', '9876543210', 'Hi John Admin, \n\nThank you for upgrading to the Basic plan. We have received your payment of Rs.8999.\n\nYour new subscription is active.\n\nTransaction ID: PAY-20260708-0013\n\nRegards,\nSpeed Fitn', 'FAILED', '2026-07-08 23:32:50.926', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(263, 'IN-APP', '90', 'Hi John Admin, \n\nThank you for upgrading to the Basic plan. We have received your payment of Rs.8999.\n\nYour new subscription is active.\n\nTransaction ID: PAY-20260708-0013\n\nRegards,\nSpeed Fitn', 'READ', '2026-07-08 23:32:50.930', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(264, 'IN-APP', '90', 'Checkup Due: 15 days have passed since demo boy\'s last BMI checkup.', 'READ', '2026-07-09 00:00:00.165', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(265, 'IN-APP', '90', 'Checkup Due: 15 days have passed since Demo girl\'s last BMI checkup.', 'READ', '2026-07-09 00:00:00.182', 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(266, 'EMAIL', 'Chikkuyadav125@gmail.com', 'Hi chikkugym, your trial expires on 9/7/2026. Please purchase a subscription to keep access.', 'SENT', '2026-07-09 00:12:23.239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(267, 'EMAIL', 'bhagyashreeyadav1001@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: bhagyashreeyadav1001@gmail.c', 'SENT', '2026-07-09 11:25:34.769', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(268, 'IN-APP', '256', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: bhagyashreeyadav1001@gmail.c', 'UNREAD', '2026-07-09 11:25:34.778', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(269, 'EMAIL', 'bhagyashreeyadav1001@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: bhagyashreeyadav1001@gmail.c', 'SENT', '2026-07-09 11:30:48.643', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(270, 'IN-APP', '259', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: bhagyashreeyadav1001@gmail.c', 'UNREAD', '2026-07-09 11:30:48.648', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(271, 'EMAIL', 'bhagyashreeyadav1001@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: bhagyashreeyadav1001@gmail.c', 'SENT', '2026-07-09 11:33:53.562', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(272, 'IN-APP', '260', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: bhagyashreeyadav1001@gmail.c', 'READ', '2026-07-09 11:33:53.567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(273, 'EMAIL', 'bhagyashreeyadav1001@gmail.com', 'Hi bhgaygym, \n\nThank you for upgrading to the Basic plan. We have received your payment of Rs.91790.\n\nYour new subscription is active.\n\nTransaction ID: PAY-20260709-0019\n\nRegards,\nSpeed Fitne', 'SENT', '2026-07-09 11:42:40.175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(274, 'IN-APP', '260', 'Hi bhgaygym, \n\nThank you for upgrading to the Basic plan. We have received your payment of Rs.91790.\n\nYour new subscription is active.\n\nTransaction ID: PAY-20260709-0019\n\nRegards,\nSpeed Fitne', 'READ', '2026-07-09 11:42:40.180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(275, 'EMAIL', 'barodjia@gmail.com', 'Hi barodjia,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: barodjia@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'FAILED', '2026-07-13 13:07:53.712', 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(276, 'WHATSAPP', '456563365', 'Hi barodjia,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: barodjia@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'FAILED', '2026-07-13 13:07:54.670', 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(277, 'IN-APP', '275', 'Hi barodjia,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: barodjia@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'READ', '2026-07-13 13:07:54.673', 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(278, 'EMAIL', 'barodjia@gmail.com', 'Hi barodjia,\n\nYour new fitness assessment is ready!\n\nMetrics:\nBMI: 18.25\nBody Fat: 60%\nLean Body Mass: 20 kg\nTarget Calories: 1443 kcal\n\nKeep up the great work!', 'FAILED', '2026-07-13 14:14:24.671', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(279, 'EMAIL', 'barodjia@gmail.com', 'hello everyone ', 'FAILED', '2026-07-13 16:04:24.334', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(280, 'IN-APP', '275', 'hello everyone ', 'READ', '2026-07-13 16:04:24.340', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(281, 'EMAIL', 'member@gmail.com', 'hello everyone ', 'FAILED', '2026-07-13 16:04:24.343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(282, 'IN-APP', '163', 'hello everyone ', 'READ', '2026-07-13 16:04:24.348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(283, 'EMAIL', 'demoboy@gmail.com', 'hello everyone ', 'FAILED', '2026-07-13 16:04:24.370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(284, 'EMAIL', 'demoaayu@gmail.com', 'hello everyone ', 'FAILED', '2026-07-13 16:04:24.374', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(285, 'IN-APP', '224', 'hello everyone ', 'UNREAD', '2026-07-13 16:04:24.376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(286, 'IN-APP', '227', 'hello everyone ', 'UNREAD', '2026-07-13 16:04:24.377', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(287, 'EMAIL', 'sanni@gmail.com', 'hello everyone ', 'FAILED', '2026-07-13 16:04:24.622', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(288, 'EMAIL', 'riya@gmail.com', 'hello everyone ', 'FAILED', '2026-07-13 16:04:24.625', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(289, 'IN-APP', '255', 'hello everyone ', 'UNREAD', '2026-07-13 16:04:24.632', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(290, 'IN-APP', '231', 'hello everyone ', 'UNREAD', '2026-07-13 16:04:24.634', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(291, 'EMAIL', 'pia@gmail.com', 'hello everyone ', 'FAILED', '2026-07-13 16:04:24.644', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(292, 'EMAIL', 'dummy.lead1@example.com', 'hello everyone ', 'FAILED', '2026-07-13 16:04:24.648', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(293, 'EMAIL', 'demogirl@gmail.com', 'hello everyone ', 'FAILED', '2026-07-13 16:04:24.651', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(294, 'IN-APP', '230', 'hello everyone ', 'UNREAD', '2026-07-13 16:04:24.653', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(295, 'IN-APP', '228', 'hello everyone ', 'UNREAD', '2026-07-13 16:04:24.654', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(296, 'IN-APP', '225', 'hello everyone ', 'UNREAD', '2026-07-13 16:04:24.655', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(297, 'EMAIL', 'demogirl@gmail.com', 'this is a big announcements  we have to do some celebrations', 'FAILED', '2026-07-13 16:13:46.853', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(298, 'IN-APP', '225', 'this is a big announcements  we have to do some celebrations', 'UNREAD', '2026-07-13 16:13:46.856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(299, 'EMAIL', 'sanni@gmail.com', 'this is a big announcements  we have to do some celebrations', 'FAILED', '2026-07-13 16:13:46.859', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(300, 'IN-APP', '255', 'this is a big announcements  we have to do some celebrations', 'UNREAD', '2026-07-13 16:13:46.861', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(301, 'EMAIL', 'riya@gmail.com', 'this is a big announcements  we have to do some celebrations', 'FAILED', '2026-07-13 16:13:47.205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(302, 'IN-APP', '231', 'this is a big announcements  we have to do some celebrations', 'UNREAD', '2026-07-13 16:13:47.207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(303, 'EMAIL', 'demoaayu@gmail.com', 'this is a big announcements  we have to do some celebrations', 'FAILED', '2026-07-13 16:13:47.233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(304, 'IN-APP', '227', 'this is a big announcements  we have to do some celebrations', 'UNREAD', '2026-07-13 16:13:47.236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(305, 'EMAIL', 'member@gmail.com', 'this is a big announcements  we have to do some celebrations', 'FAILED', '2026-07-13 16:13:47.243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(306, 'IN-APP', '163', 'this is a big announcements  we have to do some celebrations', 'READ', '2026-07-13 16:13:47.245', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(307, 'EMAIL', 'barodjia@gmail.com', 'this is a big announcements  we have to do some celebrations', 'FAILED', '2026-07-13 16:13:47.249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(308, 'IN-APP', '275', 'this is a big announcements  we have to do some celebrations', 'READ', '2026-07-13 16:13:47.251', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(309, 'EMAIL', 'pia@gmail.com', 'this is a big announcements  we have to do some celebrations', 'FAILED', '2026-07-13 16:13:47.263', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(310, 'IN-APP', '230', 'this is a big announcements  we have to do some celebrations', 'UNREAD', '2026-07-13 16:13:47.265', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(311, 'EMAIL', 'dummy.lead1@example.com', 'this is a big announcements  we have to do some celebrations', 'FAILED', '2026-07-13 16:13:47.271', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(312, 'IN-APP', '228', 'this is a big announcements  we have to do some celebrations', 'UNREAD', '2026-07-13 16:13:47.273', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(313, 'EMAIL', 'demoboy@gmail.com', 'this is a big announcements  we have to do some celebrations', 'FAILED', '2026-07-13 16:13:47.285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(314, 'IN-APP', '224', 'this is a big announcements  we have to do some celebrations', 'UNREAD', '2026-07-13 16:13:47.288', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(315, 'EMAIL', 'barodpia280897@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: barodpia280897@gmail.com\nPas', 'FAILED', '2026-07-14 11:13:49.571', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(316, 'IN-APP', '276', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: barodpia280897@gmail.com\nPas', 'UNREAD', '2026-07-14 11:13:49.595', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(317, 'EMAIL', 'barodpia280897@gmail.com', 'Hi piiigym, \n\nThank you for upgrading to the Basic plan. We have received your payment of Rs.91790.\n\nYour new subscription is active.\n\nDownload Tax Invoice PDF: http://localhost:5000/api/v1/p', 'SENT', '2026-07-14 12:16:43.741', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(318, 'IN-APP', '276', 'Hi piiigym, \n\nThank you for upgrading to the Basic plan. We have received your payment of Rs.91790.\n\nYour new subscription is active.\n\nDownload Tax Invoice PDF: http://localhost:5000/api/v1/p', 'UNREAD', '2026-07-14 12:16:43.758', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(319, 'EMAIL', 'plangym@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:11.163', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(320, 'IN-APP', '248', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:11.173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(321, 'EMAIL', 'aaagym@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:11.260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(322, 'IN-APP', '246', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:11.272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(323, 'EMAIL', 'barodgym@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:11.278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(324, 'IN-APP', '267', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:11.284', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(325, 'EMAIL', 'yadavbhakti287@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:11.293', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(326, 'IN-APP', '253', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:11.300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(327, 'EMAIL', 'planaagym@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:11.318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(328, 'IN-APP', '251', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:11.327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(329, 'EMAIL', 'singhgym@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:11.352', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(330, 'IN-APP', '268', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:11.360', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(331, 'EMAIL', '7dayssecondfree@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:11.368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(332, 'IN-APP', '245', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:11.375', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(333, 'EMAIL', '7daysfreetrialgym@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:11.493', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(334, 'EMAIL', 'admin@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:11.495', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(335, 'IN-APP', '244', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:11.500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(336, 'EMAIL', 'barodpia280897@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:11.767', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(337, 'IN-APP', '276', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:11.774', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(338, 'EMAIL', 'bhagyashreeyadav1001@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:11.776', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(339, 'IN-APP', '260', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:11.783', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(340, 'EMAIL', 'john@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:11.887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(341, 'IN-APP', '89', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:11.893', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(342, 'EMAIL', 'Chikkuyadav125@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:12.015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(343, 'EMAIL', 'planbgym@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:12.018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(344, 'IN-APP', '249', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:12.061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(345, 'WHATSAPP', '9876543210', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'FAILED', '2026-07-14 12:39:12.066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(346, 'IN-APP', '90', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'READ', '2026-07-14 12:39:12.071', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(347, 'EMAIL', 'zzgym@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:12.066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(348, 'IN-APP', '247', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:12.083', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(349, 'EMAIL', 'plancgym@gmail.com', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'SENT', '2026-07-14 12:39:12.093', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(350, 'IN-APP', '250', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:12.105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(351, 'WHATSAPP', '654789656', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'FAILED', '2026-07-14 12:39:12.303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(352, 'IN-APP', '252', 'hii everyone this is big annoucemets for u \n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784012951/announcements/pm9gjmuuugyoekhhlfba.png', 'UNREAD', '2026-07-14 12:39:12.306', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(353, 'EMAIL', 'planaagym@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:42.264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(354, 'EMAIL', 'barodgym@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:42.267', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(355, 'EMAIL', 'admin@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:42.287', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(356, 'IN-APP', '251', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:42.291', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(357, 'IN-APP', '267', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:42.298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(358, 'EMAIL', 'singhgym@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:42.314', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(359, 'EMAIL', 'barodpia280897@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:42.327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(360, 'IN-APP', '268', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:42.336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(361, 'IN-APP', '276', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:42.340', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(362, 'EMAIL', 'john@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:42.352', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(363, 'IN-APP', '89', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:42.361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(364, 'EMAIL', 'plancgym@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:42.422', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(365, 'IN-APP', '250', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:42.432', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(366, 'EMAIL', 'planbgym@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:42.518', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(367, 'IN-APP', '249', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:42.528', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(368, 'EMAIL', 'aaagym@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:42.549', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(369, 'IN-APP', '246', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:42.561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(370, 'EMAIL', 'yadavbhakti287@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:42.591', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(371, 'IN-APP', '253', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:42.601', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(372, 'EMAIL', 'bhagyashreeyadav1001@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:42.610', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(373, 'IN-APP', '260', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:42.620', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(374, 'WHATSAPP', '9876543210', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'FAILED', '2026-07-14 12:45:42.695', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(375, 'IN-APP', '90', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'READ', '2026-07-14 12:45:42.699', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(376, 'EMAIL', 'zzgym@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:42.970', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(377, 'EMAIL', 'plangym@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:42.976', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(378, 'IN-APP', '247', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:42.992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(379, 'IN-APP', '248', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:42.993', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(380, 'EMAIL', 'Chikkuyadav125@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:43.003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(381, 'EMAIL', '7daysfreetrialgym@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:43.272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(382, 'WHATSAPP', '654789656', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'FAILED', '2026-07-14 12:45:43.293', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(383, 'IN-APP', '244', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:43.297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(384, 'IN-APP', '252', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:43.301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(385, 'EMAIL', '7dayssecondfree@gmail.com', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'SENT', '2026-07-14 12:45:43.357', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(386, 'IN-APP', '245', ' hi hi hi hi\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784013343/announcements/qdxdxba0uvdjsndg1fd8.pdf', 'UNREAD', '2026-07-14 12:45:43.372', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(387, 'EMAIL', 'Chikkuyadav125@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:49:58.940', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(388, 'EMAIL', 'bhagyashreeyadav1001@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:49:58.943', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(389, 'IN-APP', '260', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:49:59.013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(390, 'EMAIL', 'barodpia280897@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:49:59.016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(391, 'IN-APP', '276', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:49:59.049', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(392, 'EMAIL', 'admin@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:49:59.104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(393, 'WHATSAPP', '654789656', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'FAILED', '2026-07-14 12:49:59.386', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(394, 'IN-APP', '252', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:49:59.390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(395, 'WHATSAPP', '9876543210', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'FAILED', '2026-07-14 12:49:59.450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(396, 'IN-APP', '90', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'READ', '2026-07-14 12:49:59.455', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(397, 'EMAIL', 'barodgym@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:49:59.746', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(398, 'IN-APP', '267', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:49:59.759', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(399, 'EMAIL', 'singhgym@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:49:59.768', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(400, 'IN-APP', '268', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:49:59.776', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `notificationlog` (`id`, `type`, `to`, `message`, `status`, `createdAt`, `memberId`, `error`, `title`, `receiver_role`, `sender_id`, `sender_role`, `reference_type`, `reference_id`, `is_read`) VALUES
(401, 'EMAIL', 'aaagym@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:49:59.857', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(402, 'IN-APP', '246', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:49:59.865', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(403, 'EMAIL', 'john@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:49:59.933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(404, 'IN-APP', '89', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:49:59.939', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(405, 'EMAIL', 'yadavbhakti287@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:50:00.140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(406, 'IN-APP', '253', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:50:00.148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(407, 'EMAIL', 'plancgym@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:50:06.531', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(408, 'IN-APP', '250', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:50:06.538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(409, 'EMAIL', '7dayssecondfree@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:50:06.837', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(410, 'IN-APP', '245', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:50:06.844', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(411, 'EMAIL', 'planaagym@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:50:07.101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(412, 'IN-APP', '251', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:50:07.110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(413, 'EMAIL', 'zzgym@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:50:07.451', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(414, 'IN-APP', '247', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:50:07.456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(415, 'EMAIL', 'plangym@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:50:07.725', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(416, 'IN-APP', '248', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:50:07.733', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(417, 'EMAIL', 'planbgym@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:50:08.070', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(418, 'IN-APP', '249', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:50:08.077', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(419, 'EMAIL', '7daysfreetrialgym@gmail.com', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'SENT', '2026-07-14 12:50:08.372', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(420, 'IN-APP', '244', 'heyy heeyy\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784013600/announcements/g1vyghkhbxrbf55lccwo', 'UNREAD', '2026-07-14 12:50:08.378', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(421, 'EMAIL', 'planaagym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:31.294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(422, 'IN-APP', '251', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:31.309', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(423, 'EMAIL', 'Chikkuyadav125@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:31.317', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(424, 'EMAIL', 'bhagyashreeyadav1001@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:31.379', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(425, 'EMAIL', 'zzgym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:31.380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(426, 'IN-APP', '260', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:31.422', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(427, 'EMAIL', 'john@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:31.424', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(428, 'EMAIL', 'singhgym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:31.426', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(429, 'EMAIL', 'plangym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:31.427', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(430, 'IN-APP', '247', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:31.430', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(431, 'IN-APP', '89', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:31.449', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(432, 'IN-APP', '268', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:31.452', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(433, 'IN-APP', '248', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:31.458', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(434, 'WHATSAPP', '654789656', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'FAILED', '2026-07-14 12:58:31.827', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(435, 'IN-APP', '252', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:31.830', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(436, 'EMAIL', '7dayssecondfree@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:38.751', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(437, 'IN-APP', '245', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:38.761', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(438, 'EMAIL', 'plancgym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:39.051', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(439, 'IN-APP', '250', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:39.058', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(440, 'EMAIL', '7daysfreetrialgym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:39.468', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(441, 'IN-APP', '244', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:39.480', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(442, 'EMAIL', 'aaagym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:39.872', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(443, 'IN-APP', '246', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:39.881', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(444, 'EMAIL', 'planbgym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:40.290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(445, 'IN-APP', '249', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:40.311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(446, 'EMAIL', 'yadavbhakti287@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:40.490', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(447, 'IN-APP', '253', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:40.494', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(448, 'EMAIL', 'barodgym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:40.573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(449, 'IN-APP', '267', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:40.578', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(450, 'EMAIL', 'barodpia280897@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:41.007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(451, 'IN-APP', '276', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'UNREAD', '2026-07-14 12:58:41.020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(452, 'EMAIL', 'admin@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'SENT', '2026-07-14 12:58:41.309', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(453, 'WHATSAPP', '9876543210', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'FAILED', '2026-07-14 12:58:42.044', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(454, 'IN-APP', '90', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784014111/announcements/d6xj05b2_1784014107025.pdf', 'READ', '2026-07-14 12:58:42.065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(455, 'EMAIL', 'naliniparas228@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated successfully (Paid Plan).\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: naliniparas228@gm', 'SENT', '2026-07-14 15:01:48.759', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(456, 'IN-APP', '282', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated successfully (Paid Plan).\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: naliniparas228@gm', 'UNREAD', '2026-07-14 15:01:48.769', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(457, 'EMAIL', 'naliniparas228@gmail.com', 'Hi nalinigym, \n\nThank you for purchasing the Pro plan. We have received your payment of Rs.2850.\n\nYour Gym Owner account is active.\n\nDownload Tax Invoice PDF: http://localhost:5000/api/v1/pur', 'SENT', '2026-07-14 15:01:50.784', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(458, 'IN-APP', '282', 'Hi nalinigym, \n\nThank you for purchasing the Pro plan. We have received your payment of Rs.2850.\n\nYour Gym Owner account is active.\n\nDownload Tax Invoice PDF: http://localhost:5000/api/v1/pur', 'UNREAD', '2026-07-14 15:01:50.790', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(459, 'EMAIL', 'rsld2012@gmail.com', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: rsld2012@gmail.com\nPassword:', 'SENT', '2026-07-14 15:45:45.992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(460, 'IN-APP', '283', '🎉 Welcome to Gym Management!\nYour Gym Owner account has been created and activated automatically.\n\nLogin Details:\nURL: http://localhost:5173/login\nUsername/Email: rsld2012@gmail.com\nPassword:', 'READ', '2026-07-14 15:45:46.001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(461, 'EMAIL', 'rsld2012@gmail.com', 'Hi raj_shekar sir, \n\nThank you for upgrading to the Pro plan. We have received your payment of Rs.10199.\n\nYour new subscription is active.\n\nDownload Tax Invoice PDF: http://localhost:5000/api', 'SENT', '2026-07-14 15:53:42.360', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(462, 'IN-APP', '283', 'Hi raj_shekar sir, \n\nThank you for upgrading to the Pro plan. We have received your payment of Rs.10199.\n\nYour new subscription is active.\n\nDownload Tax Invoice PDF: http://localhost:5000/api', 'UNREAD', '2026-07-14 15:53:42.371', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(463, 'EMAIL', 'planbgym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:30.901', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(464, 'IN-APP', '249', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:30.915', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(465, 'EMAIL', 'admin@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:30.961', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(466, 'EMAIL', 'naliniparas228@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.042', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(467, 'EMAIL', 'zzgym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.043', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(468, 'EMAIL', 'john@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.051', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(469, 'EMAIL', 'barodpia280897@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.057', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(470, 'IN-APP', '282', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.074', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(471, 'IN-APP', '247', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.077', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(472, 'IN-APP', '89', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(473, 'IN-APP', '276', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(474, 'EMAIL', 'aaagym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.088', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(475, 'EMAIL', 'singhgym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(476, 'IN-APP', '246', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.158', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(477, 'IN-APP', '268', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.179', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(478, 'EMAIL', 'barodgym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.353', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(479, 'IN-APP', '267', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.367', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(480, 'EMAIL', '7dayssecondfree@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.378', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(481, 'EMAIL', 'rsld2012@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.467', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(482, 'WHATSAPP', '9876543210', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'FAILED', '2026-07-14 16:05:31.488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(483, 'IN-APP', '245', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.491', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(484, 'IN-APP', '90', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'READ', '2026-07-14 16:05:31.496', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(485, 'IN-APP', '283', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.505', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(486, 'EMAIL', '7daysfreetrialgym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.507', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(487, 'IN-APP', '244', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.513', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(488, 'EMAIL', 'plancgym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.541', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(489, 'IN-APP', '250', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.552', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(490, 'EMAIL', 'yadavbhakti287@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.641', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(491, 'IN-APP', '253', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.664', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(492, 'EMAIL', 'bhagyashreeyadav1001@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.674', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(493, 'IN-APP', '260', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(494, 'EMAIL', 'Chikkuyadav125@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(495, 'EMAIL', 'planaagym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.798', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(496, 'IN-APP', '251', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.806', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(497, 'EMAIL', 'plangym@gmail.com', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'SENT', '2026-07-14 16:05:31.834', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(498, 'IN-APP', '248', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.846', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(499, 'WHATSAPP', '654789656', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'FAILED', '2026-07-14 16:05:31.960', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(500, 'IN-APP', '252', 'hello everyone\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/image/upload/v1784025332/announcements/635u0x2r_1784025327246.jpeg.jpg', 'UNREAD', '2026-07-14 16:05:31.962', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(501, 'EMAIL', 'Chikkuyadav125@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(502, 'EMAIL', 'singhgym@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.284', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(503, 'IN-APP', '268', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:33.294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(504, 'EMAIL', 'aaagym@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.350', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(505, 'EMAIL', 'plangym@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.351', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(506, 'EMAIL', 'yadavbhakti287@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.353', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(507, 'IN-APP', '246', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:33.371', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(508, 'IN-APP', '248', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:33.375', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(509, 'IN-APP', '253', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:33.377', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(510, 'EMAIL', 'bhagyashreeyadav1001@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.469', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(511, 'EMAIL', 'barodpia280897@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.472', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(512, 'IN-APP', '260', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:33.480', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(513, 'IN-APP', '276', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:33.482', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(514, 'EMAIL', '7daysfreetrialgym@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.731', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(515, 'IN-APP', '244', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:33.734', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(516, 'EMAIL', 'admin@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.793', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(517, 'EMAIL', 'plancgym@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.853', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(518, 'EMAIL', 'zzgym@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.855', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(519, 'EMAIL', '7dayssecondfree@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(520, 'IN-APP', '250', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:33.862', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(521, 'IN-APP', '247', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:33.863', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(522, 'IN-APP', '245', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:33.864', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(523, 'EMAIL', 'john@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.872', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(524, 'EMAIL', 'planaagym@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.874', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(525, 'EMAIL', 'planbgym@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(526, 'IN-APP', '89', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:33.883', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(527, 'IN-APP', '251', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:33.884', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(528, 'IN-APP', '249', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:33.885', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(529, 'WHATSAPP', '654789656', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'FAILED', '2026-07-14 16:06:33.963', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(530, 'IN-APP', '252', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:33.965', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(531, 'EMAIL', 'naliniparas228@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:33.999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(532, 'EMAIL', 'rsld2012@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:34.001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(533, 'EMAIL', 'barodgym@gmail.com', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'SENT', '2026-07-14 16:06:34.005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(534, 'IN-APP', '282', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:34.031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(535, 'IN-APP', '283', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:34.042', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(536, 'IN-APP', '267', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'UNREAD', '2026-07-14 16:06:34.051', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(537, 'WHATSAPP', '9876543210', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'FAILED', '2026-07-14 16:06:34.544', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(538, 'IN-APP', '90', 'hiii\n\n📎 Attachment: https://res.cloudinary.com/fosnfvnp/raw/upload/v1784025395/announcements/yqql5lyi_1784025389541.pdf', 'READ', '2026-07-14 16:06:34.546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(539, 'EMAIL', 'rajshekkar12@gmai.com', 'Hi rahshekar2,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: rajshekkar12@gmai.com\nPassword: 123456\n\nRegards,\nGym Management', 'SENT', '2026-07-14 16:38:54.216', 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(540, 'EMAIL', 'rajshekkar12@gmai.com', 'Hi rahshekar2,\n\nThank you for your payment of Rs.200 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'SENT', '2026-07-14 16:38:54.217', 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(541, 'WHATSAPP', '545656656', 'Hi rahshekar2,\n\nThank you for your payment of Rs.200 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-14 16:38:54.660', 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(542, 'IN-APP', '285', 'Hi rahshekar2,\n\nThank you for your payment of Rs.200 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'READ', '2026-07-14 16:38:54.664', 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(543, 'WHATSAPP', '545656656', 'Hi rahshekar2,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: rajshekkar12@gmai.com\nPassword: 123456\n\nRegards,\nGym Management', 'FAILED', '2026-07-14 16:38:54.968', 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(544, 'IN-APP', '285', 'Hi rahshekar2,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: rajshekkar12@gmai.com\nPassword: 123456\n\nRegards,\nGym Management', 'READ', '2026-07-14 16:38:54.975', 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(545, 'EMAIL', 'demoboy@gmail.com', 'Hi demo boy, consistency is key! Let us know if you need any help getting back on track.', 'SENT', '2026-07-14 16:54:39.220', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(546, 'IN_APP', 'demoboy@gmail.com', 'Hi demo boy, consistency is key! Let us know if you need any help getting back on track.', 'PENDING', '2026-07-14 16:54:41.214', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(547, 'EMAIL', 'demogirl@gmail.com', 'Hi Demo girl, consistency is key! Let us know if you need any help getting back on track.', 'SENT', '2026-07-14 16:54:41.253', 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(548, 'IN_APP', 'demogirl@gmail.com', 'Hi Demo girl, consistency is key! Let us know if you need any help getting back on track.', 'PENDING', '2026-07-14 16:54:43.020', 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(549, 'EMAIL', 'demoaayu@gmail.com', 'Hi Demo Aayush, consistency is key! Let us know if you need any help getting back on track.', 'SENT', '2026-07-14 16:54:43.038', 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(550, 'IN_APP', 'demoaayu@gmail.com', 'Hi Demo Aayush, consistency is key! Let us know if you need any help getting back on track.', 'PENDING', '2026-07-14 16:54:44.222', 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(551, 'EMAIL', 'dummy.lead1@example.com', 'Hi Dummy Lead 1, consistency is key! Let us know if you need any help getting back on track.', 'SENT', '2026-07-14 16:54:44.239', 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(552, 'IN_APP', 'dummy.lead1@example.com', 'Hi Dummy Lead 1, consistency is key! Let us know if you need any help getting back on track.', 'PENDING', '2026-07-14 16:54:45.166', 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(553, 'EMAIL', 'member@gmail.com', 'Hi Mamber, consistency is key! Let us know if you need any help getting back on track.', 'SENT', '2026-07-14 16:54:45.179', 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(554, 'IN_APP', 'member@gmail.com', 'Hi Mamber, consistency is key! Let us know if you need any help getting back on track.', 'PENDING', '2026-07-14 16:54:46.078', 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(555, 'EMAIL', 'pia@gmail.com', 'Hi pia b, consistency is key! Let us know if you need any help getting back on track.', 'SENT', '2026-07-14 16:54:46.110', 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(556, 'IN_APP', 'pia@gmail.com', 'Hi pia b, consistency is key! Let us know if you need any help getting back on track.', 'PENDING', '2026-07-14 16:54:47.060', 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(557, 'EMAIL', 'riya@gmail.com', 'Hi riya , consistency is key! Let us know if you need any help getting back on track.', 'SENT', '2026-07-14 16:54:47.081', 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(558, 'IN_APP', 'riya@gmail.com', 'Hi riya , consistency is key! Let us know if you need any help getting back on track.', 'PENDING', '2026-07-14 16:54:48.850', 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(559, 'EMAIL', 'sarahh@gmail.com', 'Hi sarah, consistency is key! Let us know if you need any help getting back on track.', 'SENT', '2026-07-14 16:54:48.862', 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(560, 'IN_APP', 'sarahh@gmail.com', 'Hi sarah, consistency is key! Let us know if you need any help getting back on track.', 'PENDING', '2026-07-14 16:54:50.548', 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(561, 'EMAIL', 'sanni@gmail.com', 'Hi sanni, consistency is key! Let us know if you need any help getting back on track.', 'SENT', '2026-07-14 16:54:50.560', 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(562, 'IN_APP', 'sanni@gmail.com', 'Hi sanni, consistency is key! Let us know if you need any help getting back on track.', 'PENDING', '2026-07-14 16:54:51.421', 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(563, 'EMAIL', 'barodjia@gmail.com', 'Hi barodjia, consistency is key! Let us know if you need any help getting back on track.', 'SENT', '2026-07-14 16:54:51.431', 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(564, 'IN_APP', 'barodjia@gmail.com', 'Hi barodjia, consistency is key! Let us know if you need any help getting back on track.', 'PENDING', '2026-07-14 16:54:52.318', 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(565, 'EMAIL', 'rajshekkar12@gmai.com', 'Hi rahshekar2, consistency is key! Let us know if you need any help getting back on track.', 'SENT', '2026-07-14 16:54:52.328', 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(566, 'IN_APP', 'rajshekkar12@gmai.com', 'Hi rahshekar2, consistency is key! Let us know if you need any help getting back on track.', 'PENDING', '2026-07-14 16:54:54.008', 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(567, 'IN-APP', '90', 'Checkup Due: 15 days have passed since demo boy\'s last BMI checkup.', 'READ', '2026-07-17 00:00:00.058', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(568, 'IN-APP', '90', 'Checkup Due: 15 days have passed since Demo girl\'s last BMI checkup.', 'READ', '2026-07-17 00:00:00.096', 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(569, 'EMAIL', 'johne@gmail.com', 'Hi john,\n\nThank you for your payment of Rs.25000 for the Diwali Bonus plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-20 11:14:00.052', 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(570, 'EMAIL', 'johne@gmail.com', 'Hi john,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: johne@gmail.com\nPassword: 123456789\n\nRegards,\nGym Management', 'FAILED', '2026-07-20 11:14:00.061', 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(571, 'IN-APP', '286', 'Hi john,\n\nThank you for your payment of Rs.25000 for the Diwali Bonus plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-07-20 11:14:00.072', 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(572, 'IN-APP', '286', 'Hi john,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: johne@gmail.com\nPassword: 123456789\n\nRegards,\nGym Management', 'UNREAD', '2026-07-20 11:14:00.077', 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(573, 'EMAIL', 'barodjia@gmail.com', 'Hi barodjia,\n\nYour new fitness assessment is ready!\n\nMetrics:\nBMI: 24.89\nBody Fat: 60%\nLean Body Mass: 22.4 kg\nTarget Calories: 1673 kcal\n\nKeep up the great work!', 'FAILED', '2026-07-20 11:23:50.243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(574, 'EMAIL', 'demoaayu@gmail.com', 'Hi Demo Aayush,\n\nYour new fitness assessment is ready!\n\nMetrics:\nBMI: 22.03\nBody Fat: 29.92%\nLean Body Mass: 38.54 kg\nTarget Calories: 2555 kcal\n\nKeep up the great work!', 'FAILED', '2026-07-20 11:30:30.473', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(575, 'EMAIL', 'xyz@gmail.com', 'Hi xyz,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: xyz@gmail.com\nPassword: 1234456798\n\nRegards,\nGym Management', 'FAILED', '2026-07-20 12:54:32.803', 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(576, 'EMAIL', 'xyz@gmail.com', 'Hi xyz,\n\nThank you for your payment of Rs.34000 for the general plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-20 12:54:32.804', 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(577, 'WHATSAPP', '98765432345', 'Hi xyz,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: xyz@gmail.com\nPassword: 1234456798\n\nRegards,\nGym Management', 'SENT', '2026-07-20 12:54:32.827', 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(578, 'WHATSAPP', '98765432345', 'Hi xyz,\n\nThank you for your payment of Rs.34000 for the general plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'SENT', '2026-07-20 12:54:32.831', 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(579, 'IN-APP', '287', 'Hi xyz,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: xyz@gmail.com\nPassword: 1234456798\n\nRegards,\nGym Management', 'UNREAD', '2026-07-20 12:54:32.832', 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(580, 'IN-APP', '287', 'Hi xyz,\n\nThank you for your payment of Rs.34000 for the general plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-07-20 12:54:32.834', 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(581, 'EMAIL', 'demoaayu@gmail.com', 'Hi Demo Aayush, \n\nThank you for your payment of Rs.1200 for the Basic plan. \n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-20 13:15:53.497', 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(582, 'WHATSAPP', '1234567890', 'Hi Demo Aayush, \n\nThank you for your payment of Rs.1200 for the Basic plan. \n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'SENT', '2026-07-20 13:15:53.524', 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(583, 'IN-APP', '227', 'Hi Demo Aayush, \n\nThank you for your payment of Rs.1200 for the Basic plan. \n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-07-20 13:15:53.529', 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(584, 'EMAIL', 'demoboy@gmail.com', 'Hi demo boy, \n\nThank you for your payment of Rs.1200 for the Golden plan. \n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-20 14:21:38.423', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(585, 'IN-APP', '224', 'Hi demo boy, \n\nThank you for your payment of Rs.1200 for the Golden plan. \n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-07-20 14:21:38.430', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(586, 'EMAIL', 'johne@gmail.com', 'Hi john, \n\nThank you for your payment of Rs.1200 for the Basic plan. \n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-20 14:22:06.665', 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(587, 'IN-APP', '286', 'Hi john, \n\nThank you for your payment of Rs.1200 for the Basic plan. \n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-07-20 14:22:06.671', 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(588, 'EMAIL', 'sanni@gmail.com', 'Hi sanni,\n\nYour new fitness assessment is ready!\n\nMetrics:\nBMI: 24.4\nBody Fat: 60%\nLean Body Mass: 21.96 kg\nTarget Calories: 2226 kcal\n\nKeep up the great work!', 'FAILED', '2026-07-20 15:01:40.841', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(589, 'EMAIL', 'demogirl@gmail.com', 'Hi Demo girl,\n\nYour new fitness assessment is ready!\n\nMetrics:\nBMI: 26.84\nBody Fat: 31.82%\nLean Body Mass: 45.68 kg\nTarget Calories: 2468 kcal\n\nKeep up the great work!', 'FAILED', '2026-07-20 15:02:51.067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(590, 'EMAIL', 'demogirl@gmail.com', 'Hi Demo girl,\n\nYour new fitness assessment is ready!\n\nMetrics:\nBMI: 11.06\nBody Fat: 2%\nLean Body Mass: 67.62 kg\nTarget Calories: 3388 kcal\n\nKeep up the great work!', 'FAILED', '2026-07-20 15:05:25.802', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(591, 'EMAIL', 'demogirl@gmail.com', 'Great work, Demo girl! You have gained 21.94kg of lean muscle mass since your baseline. Keep lifting heavy!', 'FAILED', '2026-07-20 15:05:25.803', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(592, 'EMAIL', 'tasi@gmail.com', 'Hi taasi,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: tasi@gmail.com\nPassword: 34567890\n\nRegards,\nGym Management', 'FAILED', '2026-07-20 16:20:26.105', 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(593, 'EMAIL', 'tasi@gmail.com', 'Hi taasi,\n\nThank you for your payment of Rs.1500 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-20 16:20:26.112', 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(594, 'IN-APP', '288', 'Hi taasi,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: tasi@gmail.com\nPassword: 34567890\n\nRegards,\nGym Management', 'UNREAD', '2026-07-20 16:20:26.121', 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(595, 'IN-APP', '288', 'Hi taasi,\n\nThank you for your payment of Rs.1500 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-07-20 16:20:26.128', 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(596, 'IN-APP', '90', 'New inventory request: 4x dumble by personaltrainer (ID: 279)', 'READ', '2026-07-20 16:43:01.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `notificationlog` (`id`, `type`, `to`, `message`, `status`, `createdAt`, `memberId`, `error`, `title`, `receiver_role`, `sender_id`, `sender_role`, `reference_type`, `reference_id`, `is_read`) VALUES
(597, 'EMAIL', 'johne@gmail.com', 'Hi john, your fitness journey is important to us. Hope to see you back soon!', 'PENDING', '2026-07-20 16:52:35.044', 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(598, 'IN_APP', 'johne@gmail.com', 'Hi john, your fitness journey is important to us. Hope to see you back soon!', 'PENDING', '2026-07-20 16:52:35.080', 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(599, 'EMAIL', 'sanni@gmail.com', 'Hi sanni, we noticed you\'ve been absent for 16 days. We miss you at the gym!', 'PENDING', '2026-07-20 16:53:05.081', 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(600, 'IN-APP', '289', 'Hi Auto Email Test Member,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: \nPassword: pass\n\nRegards,\nGym Management', 'UNREAD', '2026-07-20 17:21:24.604', 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(601, 'EMAIL', 'autoemailmember17845483294424494@gym.com', 'Hi Auto Email Member,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: autoemailmember17845483294424494@gym.com\nPassword: pass\n\nRegards,\nGym M', 'FAILED', '2026-07-20 17:22:09.566', 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(602, 'IN-APP', '290', 'Hi Auto Email Member,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: autoemailmember17845483294424494@gym.com\nPassword: pass\n\nRegards,\nGym M', 'UNREAD', '2026-07-20 17:22:09.571', 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(603, 'EMAIL', 'sarah13@gmail.com', 'Hi sarah,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: sarah13@gmail.com\nPassword: 6789-\n\nRegards,\nGym Management', 'FAILED', '2026-07-20 17:23:51.331', 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(604, 'IN-APP', '291', 'Hi sarah,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: sarah13@gmail.com\nPassword: 6789-\n\nRegards,\nGym Management', 'UNREAD', '2026-07-20 17:23:51.346', 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(605, 'EMAIL', 'vhd@gmail.com', 'Hi vfg,\n\nThank you for your payment of Rs.4500 for the Basic plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-20 17:33:24.935', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(606, 'EMAIL', 'vhd@gmail.com', 'Hi vfg,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: vhd@gmail.com\nPassword: 987654\n\nRegards,\nGym Management', 'FAILED', '2026-07-20 17:33:24.937', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(607, 'IN-APP', '292', 'Hi vfg,\n\nThank you for your payment of Rs.4500 for the Basic plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-07-20 17:33:24.944', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(608, 'IN-APP', '292', 'Hi vfg,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: vhd@gmail.com\nPassword: 987654\n\nRegards,\nGym Management', 'UNREAD', '2026-07-20 17:33:24.946', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(609, 'EMAIL', 'rajshekkar12@gmai.com', 'Hi rahshekar2, \n\nThank you for your payment of Rs.1500 for the Pre plan. \n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-20 17:35:33.550', 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(610, 'IN-APP', '285', 'Hi rahshekar2, \n\nThank you for your payment of Rs.1500 for the Pre plan. \n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-07-20 17:35:33.558', 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(611, 'IN-APP', '90', 'New inventory request: 5x leg machine by receptionist (ID: 277)', 'READ', '2026-07-20 17:39:08.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(612, 'EMAIL', 'sam@gmail.com', 'Hi sam,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: sam@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'FAILED', '2026-07-23 10:37:21.432', 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(613, 'EMAIL', 'sam@gmail.com', 'Hi sam,\n\nThank you for your payment of Rs.5999 for the Golden plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-23 10:37:21.434', 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(614, 'WHATSAPP', '984576324', 'Hi sam,\n\nThank you for your payment of Rs.5999 for the Golden plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'SENT', '2026-07-23 10:37:21.498', 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(615, 'WHATSAPP', '984576324', 'Hi sam,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: sam@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'SENT', '2026-07-23 10:37:21.498', 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(616, 'IN-APP', '294', 'Hi sam,\n\nThank you for your payment of Rs.5999 for the Golden plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-07-23 10:37:21.500', 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(617, 'IN-APP', '294', 'Hi sam,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: sam@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'UNREAD', '2026-07-23 10:37:21.500', 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(618, 'EMAIL', 'sam@gmail.com', 'Hi sam, we noticed you\'ve been absent for 16 days. We miss you at the gym!', 'FAILED', '2026-07-23 10:38:22.782', 170, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(619, 'IN_APP', 'sam@gmail.com', 'Hi sam, we noticed you\'ve been absent for 16 days. We miss you at the gym!', 'PENDING', '2026-07-23 10:38:22.851', 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(620, 'EMAIL', 'jaindiya258@gmail.com', 'Hi Diya Jain,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: jaindiya258@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'FAILED', '2026-07-23 10:44:16.170', 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(621, 'EMAIL', 'jaindiya258@gmail.com', 'Hi Diya Jain,\n\nThank you for your payment of Rs.1500 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-23 10:44:16.171', 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(622, 'WHATSAPP', '07518824806', 'Hi Diya Jain,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: jaindiya258@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'SENT', '2026-07-23 10:44:16.178', 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(623, 'WHATSAPP', '07518824806', 'Hi Diya Jain,\n\nThank you for your payment of Rs.1500 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'SENT', '2026-07-23 10:44:16.179', 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(624, 'IN-APP', '295', 'Hi Diya Jain,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: jaindiya258@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'UNREAD', '2026-07-23 10:44:16.180', 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(625, 'IN-APP', '295', 'Hi Diya Jain,\n\nThank you for your payment of Rs.1500 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-07-23 10:44:16.183', 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(626, 'EMAIL', 'jaindiya258@gmail.com', 'Hi Diya Jain, we noticed you\'ve been absent for 16 days. We miss you at the gym!', 'FAILED', '2026-07-23 10:44:56.974', 171, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(627, 'IN_APP', 'jaindiya258@gmail.com', 'Hi Diya Jain, we noticed you\'ve been absent for 16 days. We miss you at the gym!', 'PENDING', '2026-07-23 10:44:57.029', 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(628, 'EMAIL', 'member@gmail.com', 'Hi Mamber,\n\nYour booking for session \"Test Session\" on 25/7/2026 at 10:00:00 has been confirmed. See you there!', 'FAILED', '2026-07-23 11:11:19.711', 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(629, 'WHATSAPP', '1234567890', 'Hi Mamber,\n\nYour booking for session \"Test Session\" on 25/7/2026 at 10:00:00 has been confirmed. See you there!', 'SENT', '2026-07-23 11:11:19.730', 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(630, 'IN-APP', '280', 'You have been assigned to a new class: new mentor  | Date: 2026-07-24 | Time: 12:45 | Capacity: 20', 'UNREAD', '2026-07-23 12:18:59.191', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(631, 'IN-APP', 'all', 'New Class Available: new mentor  | Trainer: Default General Trainer | Date: 2026-07-24 | Time: 12:45', 'READ', '2026-07-23 12:18:59.198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(632, 'IN-APP', '163', 'Your booking has been confirmed for new mentor ', 'UNREAD', '2026-07-23 12:19:32.826', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(633, 'IN-APP', '280', 'New booking received for new mentor  by Mamber', 'READ', '2026-07-23 12:19:32.835', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(634, 'IN-APP', '90', 'New booking received for new mentor  by Mamber', 'READ', '2026-07-23 12:19:32.838', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(635, 'EMAIL', 'generaltrainer1@gym.com', 'Hello Default General Trainer,\n\nYou have been assigned a new task: \"this is urgent task \".\nDue Date: 2026-07-27\nPriority: High\nDescription: urgent \n\nPlease check your dashboard to review it.', 'FAILED', '2026-07-23 12:47:45.888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(636, 'IN-APP', '280', 'Hello Default General Trainer,\n\nYou have been assigned a new task: \"this is urgent task \".\nDue Date: 2026-07-27\nPriority: High\nDescription: urgent \n\nPlease check your dashboard to review it.', 'UNREAD', '2026-07-23 12:47:45.896', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(637, 'EMAIL', 'member@gmail.com', 'Hi Mamber,\n\nYour attendance has been successfully marked for today (23/7/2026) at 01:10 pm.\n\nHave a great workout!', 'FAILED', '2026-07-23 13:10:19.629', 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(638, 'WHATSAPP', '1234567890', 'Hi Mamber,\n\nYour attendance has been successfully marked for today (23/7/2026) at 01:10 pm.\n\nHave a great workout!', 'FAILED', '2026-07-23 13:10:19.635', 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(639, 'IN-APP', '279', 'You have been assigned to a new session: fnjdsnckjdn | Date: 2026-07-24 | Time: 00:30 | Capacity: 20', 'READ', '2026-07-23 13:26:06.028', NULL, NULL, 'New Session Assigned', 'Trainer', '90', 'Admin', 'SESSION', '49', 0),
(640, 'IN-APP', 'all', 'New Session Available: fnjdsnckjdn | Trainer: Default Personal Trainer | Date: 2026-07-24 | Time: 00:30', 'READ', '2026-07-23 13:26:06.064', NULL, NULL, 'New Session Available', 'Member', '90', 'Admin', 'SESSION', '49', 0),
(641, 'EMAIL', 'user@gmail.com', 'Hi user user,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: user@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'FAILED', '2026-07-23 14:32:22.390', 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(642, 'WHATSAPP', '222222222', 'Hi user user,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: user@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'FAILED', '2026-07-23 14:32:22.405', 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(643, 'EMAIL', 'user@gmail.com', 'Hi user user,\n\nThank you for your payment of Rs.1500 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-23 14:32:22.412', 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(644, 'IN-APP', '296', 'Hi user user,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: user@gmail.com\nPassword: 123456\n\nRegards,\nGym Management', 'UNREAD', '2026-07-23 14:32:22.414', 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(645, 'WHATSAPP', '222222222', 'Hi user user,\n\nThank you for your payment of Rs.1500 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'FAILED', '2026-07-23 14:32:22.425', 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(646, 'IN-APP', '296', 'Hi user user,\n\nThank you for your payment of Rs.1500 for the Pre plan(s).\n\nYour membership is now active. Enjoy your workout! 💪\n\nRegards,\nGym Management', 'UNREAD', '2026-07-23 14:32:22.448', 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(647, 'EMAIL', 'asdfghjk@gmail.com', 'Hi test,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: asdfghjk@gmail.com\nPassword: 1234567\n\nRegards,\nGym Management', 'FAILED', '2026-07-23 14:49:07.916', 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(648, 'WHATSAPP', '4444444444', 'Hi test,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: asdfghjk@gmail.com\nPassword: 1234567\n\nRegards,\nGym Management', 'FAILED', '2026-07-23 14:49:07.940', 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(649, 'IN-APP', '297', 'Hi test,\n\nWelcome to our gym! 🏋️‍♂️ Your membership is registered successfully.\n\nLogin credentials:\nEmail: asdfghjk@gmail.com\nPassword: 1234567\n\nRegards,\nGym Management', 'UNREAD', '2026-07-23 14:49:07.982', 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(650, 'EMAIL', '7daysfreetrialgym@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.454', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(651, 'EMAIL', 'john@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.455', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(652, 'EMAIL', 'yadavbhakti287@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(653, 'EMAIL', 'Chikkuyadav125@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.458', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(654, 'EMAIL', '7dayssecondfree@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.459', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(655, 'IN-APP', '244', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.472', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(656, 'IN-APP', '89', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.473', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(657, 'EMAIL', 'admin@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.473', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(658, 'EMAIL', 'bhagyashreeyadav1001@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.474', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(659, 'EMAIL', 'plancgym@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.475', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(660, 'EMAIL', 'planbgym@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.476', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(661, 'EMAIL', 'naliniparas228@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.477', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(662, 'WHATSAPP', '654789656', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.479', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(663, 'IN-APP', '245', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.480', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(664, 'IN-APP', '253', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.480', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(665, 'IN-APP', '252', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.497', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(666, 'EMAIL', 'barodpia280897@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.498', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(667, 'EMAIL', 'rsld2012@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.499', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(668, 'WHATSAPP', '9876543210', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.502', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(669, 'IN-APP', '260', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.503', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(670, 'IN-APP', '250', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.503', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(671, 'IN-APP', '249', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.504', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(672, 'IN-APP', '282', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.506', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(673, 'IN-APP', '90', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'READ', '2026-07-23 15:39:41.509', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(674, 'EMAIL', 'zzgym@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.512', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(675, 'EMAIL', 'aaagym@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.512', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(676, 'EMAIL', 'member1@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.515', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(677, 'EMAIL', 'plangym@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.515', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(678, 'IN-APP', '276', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.516', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(679, 'IN-APP', '283', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.517', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(680, 'IN-APP', '246', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.519', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(681, 'IN-APP', '247', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.520', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(682, 'IN-APP', '293', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.523', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(683, 'IN-APP', '248', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.523', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(684, 'EMAIL', 'planaagym@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:41.527', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(685, 'IN-APP', '251', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:41.530', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(686, 'EMAIL', 'singhgym@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:46.496', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(687, 'IN-APP', '268', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:46.501', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(688, 'EMAIL', 'barodgym@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'FAILED', '2026-07-23 15:39:46.567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(689, 'IN-APP', '267', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801380955_y8dq9h.png', 'UNREAD', '2026-07-23 15:39:46.572', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(690, 'EMAIL', 'barodjia@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.676', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(691, 'EMAIL', 'xyz@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(692, 'EMAIL', 'sanni@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.679', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(693, 'EMAIL', 'tasi@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.680', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(694, 'EMAIL', 'sam@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.682', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(695, 'EMAIL', 'jaindiya258@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.683', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(696, 'EMAIL', 'rohit@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.684', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(697, 'EMAIL', 'member@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.688', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(698, 'EMAIL', 'autoemailtestmember17845482845829758@gym.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.689', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(699, 'EMAIL', 'autoemailmember17845483294424494@gym.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.716', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(700, 'EMAIL', 'sarah13@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.718', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(701, 'EMAIL', 'vhd@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.719', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(702, 'EMAIL', 'user@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.719', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(703, 'EMAIL', 'asdfghjk@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(704, 'IN-APP', '275', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(705, 'IN-APP', '255', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.721', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(706, 'IN-APP', '287', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.721', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(707, 'IN-APP', '294', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.722', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(708, 'IN-APP', '288', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.721', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(709, 'IN-APP', '295', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.748', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(710, 'IN-APP', '161', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.748', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(711, 'IN-APP', '163', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.749', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(712, 'IN-APP', '289', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.749', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(713, 'EMAIL', 'smith1@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(714, 'EMAIL', 'rohit456@mail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.752', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(715, 'EMAIL', 'sam.member@example.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.754', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(716, 'EMAIL', 'demoboy@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.756', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(717, 'EMAIL', 'member@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.757', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(718, 'EMAIL', 'pia@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.759', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(719, 'EMAIL', 'riya@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.760', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(720, 'EMAIL', 'rajshekkar12@gmai.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.761', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(721, 'EMAIL', 'johne@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.762', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(722, 'EMAIL', 'aman@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.763', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(723, 'EMAIL', 'smith123@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.764', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(724, 'EMAIL', 'test456@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.764', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(725, 'EMAIL', 'jay9977@gmai.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.764', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(726, 'EMAIL', 'demo2345@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.765', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(727, 'EMAIL', 'test56789@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.765', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(728, 'EMAIL', 'demogirl@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.766', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(729, 'EMAIL', 'demoboy@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.766', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(730, 'EMAIL', 'demoaayu@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.767', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(731, 'EMAIL', 'housekeeping@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.768', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(732, 'EMAIL', 'dummy.lead1@example.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.769', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(733, 'EMAIL', 'pia@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(734, 'EMAIL', 'riya@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(735, 'EMAIL', 'sanni@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(736, 'EMAIL', 'barodjia@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(737, 'EMAIL', 'receptionist@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(738, 'EMAIL', 'generaltrainer1@gym.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.786', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(739, 'EMAIL', 'salesagent@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.787', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(740, 'EMAIL', 'personal@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.787', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(741, 'EMAIL', 'rajshekkar12@gmai.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.788', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(742, 'EMAIL', 'xyz@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.788', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(743, 'EMAIL', 'tasi@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.788', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(744, 'EMAIL', 'autoemailtestmember17845482845829758@gym.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.788', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(745, 'EMAIL', 'autoemailmember17845483294424494@gym.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(746, 'EMAIL', 'sarah13@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(747, 'EMAIL', 'vhd@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(748, 'EMAIL', 'sam@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(749, 'EMAIL', 'user@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.790', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(750, 'EMAIL', 'jaindiya258@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.790', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(751, 'EMAIL', 'asdfghjk@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.791', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(752, 'IN-APP', '290', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.791', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(753, 'IN-APP', '291', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.793', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(754, 'IN-APP', '292', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.793', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(755, 'IN-APP', '296', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.793', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(756, 'IN-APP', '297', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.794', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(757, 'EMAIL', 'asdf@gmail.com', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'FAILED', '2026-07-23 15:41:39.794', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(758, 'IN-APP', '91', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.794', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(759, 'IN-APP', '134', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.795', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(760, 'IN-APP', '151', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.795', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(761, 'IN-APP', '224', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.796', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(762, 'IN-APP', '163', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.797', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(763, 'IN-APP', '230', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.799', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(764, 'IN-APP', '231', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(765, 'IN-APP', '285', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.802', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(766, 'IN-APP', '286', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.802', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(767, 'IN-APP', '184', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.803', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(768, 'IN-APP', '186', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.804', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(769, 'IN-APP', '191', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(770, 'IN-APP', '206', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.806', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(771, 'IN-APP', '180', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.806', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(772, 'IN-APP', '207', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.807', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(773, 'IN-APP', '224', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.808', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(774, 'IN-APP', '225', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.809', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(775, 'IN-APP', '227', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.810', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(776, 'IN-APP', '230', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.810', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(777, 'IN-APP', '275', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.811', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(778, 'IN-APP', '231', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.812', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(779, 'IN-APP', '278', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.812', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(780, 'IN-APP', '228', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.813', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(781, 'IN-APP', '255', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.814', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(782, 'IN-APP', '277', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'READ', '2026-07-23 15:41:39.815', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(783, 'IN-APP', '280', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.815', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(784, 'IN-APP', '281', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'READ', '2026-07-23 15:41:39.816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(785, 'IN-APP', '289', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.826', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(786, 'IN-APP', '287', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.829', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(787, 'IN-APP', '279', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.833', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(788, 'IN-APP', '290', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.837', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(789, 'IN-APP', '292', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.839', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(790, 'IN-APP', '294', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.841', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(791, 'IN-APP', '295', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.842', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(792, 'IN-APP', '285', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.843', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(793, 'IN-APP', '288', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.846', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794, 'IN-APP', '297', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.848', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(795, 'IN-APP', '291', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.850', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(796, 'IN-APP', '188', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.851', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(797, 'IN-APP', '296', 'today is the big day of our admin and sub admin \n\n📎 Attachment: http://localhost:4000/uploads/1784801499354_naa0j1.png', 'UNREAD', '2026-07-23 15:41:39.854', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `notificationlog` (`id`, `type`, `to`, `message`, `status`, `createdAt`, `memberId`, `error`, `title`, `receiver_role`, `sender_id`, `sender_role`, `reference_type`, `reference_id`, `is_read`) VALUES
(798, 'IN-APP', '90', 'New inventory request: 30x dumble by sales_agent (ID: 281)', 'READ', '2026-07-23 13:19:37.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(799, 'IN-APP', '90', 'Checkup Due: 15 days have passed since demo boy\'s last BMI checkup.', 'UNREAD', '2026-07-24 00:00:00.358', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(800, 'IN-APP', '280', 'You have been assigned to a new class: group class | Date: 2026-07-25 | Time: 16:30 | Capacity: 20', 'UNREAD', '2026-07-24 05:19:12.172', NULL, NULL, 'New Class Assigned', 'Trainer', '90', 'Admin', 'CLASS', '37', 0),
(801, 'IN-APP', 'all', 'New Class Available: group class | Trainer: Default General Trainer | Date: 2026-07-25 | Time: 16:30', 'READ', '2026-07-24 05:19:12.433', NULL, NULL, 'New Class Available', 'Member', '90', 'Admin', 'CLASS', '37', 0),
(802, 'IN-APP', '280', 'Class Updated: group class', 'UNREAD', '2026-07-24 05:20:40.945', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(803, 'IN-APP', '280', 'Assigned class cancelled: new mentor ', 'UNREAD', '2026-07-24 05:21:03.976', NULL, NULL, 'Class Cancelled', 'Trainer', '90', 'Admin', 'CLASS', '36', 0),
(804, 'IN-APP', '279', 'You have been assigned to a new session: group session | Date: 2026-07-25 | Time: 05:30 | Capacity: 20', 'READ', '2026-07-24 05:28:24.023', NULL, NULL, 'New Session Assigned', 'Trainer', '90', 'Admin', 'SESSION', '50', 0),
(805, 'IN-APP', 'all', 'New Session Available: group session | Trainer: Default Personal Trainer | Date: 2026-07-25 | Time: 05:30', 'READ', '2026-07-24 05:28:24.285', NULL, NULL, 'New Session Available', 'Member', '90', 'Admin', 'SESSION', '50', 0),
(806, 'IN-APP', '90', 'New inventory request: 2x Test equipment request by receptionist (ID: 277)', 'READ', '2026-07-25 10:43:41.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(807, 'IN-APP', '314', 'New inventory request: 2x first request by receptionist (ID: 343)', 'UNREAD', '2026-07-25 10:45:08.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(808, 'EMAIL', 'member@gmail.com', 'Hi Mamber,\n\nYour attendance has been successfully marked for today (28/7/2026) at 03:01 pm.\n\nHave a great workout!', 'FAILED', '2026-07-28 09:31:14.165', 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(809, 'WHATSAPP', '1234567890', 'Hi Mamber,\n\nYour attendance has been successfully marked for today (28/7/2026) at 03:01 pm.\n\nHave a great workout!', 'FAILED', '2026-07-28 09:31:14.173', 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(810, 'EMAIL', 'member@gmail.com', 'Hi {name}, we noticed you\'ve been absent for {daysAbsent} days. We miss you at the gym!', 'FAILED', '2026-07-28 09:39:40.039', 156, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(811, 'IN_APP', '163', 'Hi {name}, we noticed you\'ve been absent for {daysAbsent} days. We miss you at the gym!', 'UNREAD', '2026-07-28 09:39:40.475', 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(812, 'EMAIL', 'demoboy@gmail.com', 'Hi demo boy, we noticed you\'ve been absent for 43 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:15.913', 152, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(813, 'IN_APP', '224', 'Hi demo boy, we noticed you\'ve been absent for 43 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:16.316', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(814, 'EMAIL', 'member@gmail.com', 'Hi Mamber, we noticed you\'ve been absent for 1 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:16.693', 156, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(815, 'IN_APP', '163', 'Hi Mamber, we noticed you\'ve been absent for 1 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:17.054', 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(816, 'EMAIL', 'pia@gmail.com', 'Hi pia b, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:17.410', 157, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(817, 'IN_APP', '230', 'Hi pia b, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:17.869', 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(818, 'EMAIL', 'riya@gmail.com', 'Hi riya , we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:18.286', 158, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(819, 'IN_APP', '231', 'Hi riya , we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:18.695', 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(820, 'EMAIL', 'sarahh@gmail.com', 'Hi sarah, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:19.108', 159, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(821, 'EMAIL', 'sanni@gmail.com', 'Hi sanni, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:20.051', 160, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(822, 'IN_APP', '255', 'Hi sanni, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:20.451', 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(823, 'EMAIL', 'barodjia@gmail.com', 'Hi barodjia, we noticed you\'ve been absent for 8 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:20.845', 161, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(824, 'IN_APP', '275', 'Hi barodjia, we noticed you\'ve been absent for 8 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:21.756', 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(825, 'EMAIL', 'rajshekkar12@gmai.com', 'Hi rahshekar2, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:22.120', 162, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(826, 'IN_APP', '285', 'Hi rahshekar2, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:22.489', 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(827, 'EMAIL', 'johne@gmail.com', 'Hi john, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:22.853', 163, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(828, 'IN_APP', '286', 'Hi john, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:23.196', 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(829, 'EMAIL', 'xyz@gmail.com', 'Hi xyz, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:23.710', 164, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(830, 'IN_APP', '287', 'Hi xyz, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:24.120', 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(831, 'EMAIL', 'tasi@gmail.com', 'Hi taasi, we noticed you\'ve been absent for 211 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:24.491', 165, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(832, 'IN_APP', '288', 'Hi taasi, we noticed you\'ve been absent for 211 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:24.833', 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(833, 'EMAIL', 'autoemailtestmember17845482845829758@gym.com', 'Hi Auto Email Test Member, we noticed you\'ve been absent for 210 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:25.351', 166, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(834, 'IN_APP', '289', 'Hi Auto Email Test Member, we noticed you\'ve been absent for 210 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:25.947', 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(835, 'EMAIL', 'autoemailmember17845483294424494@gym.com', 'Hi Auto Email Member, we noticed you\'ve been absent for 211 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:26.480', 167, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(836, 'IN_APP', '290', 'Hi Auto Email Member, we noticed you\'ve been absent for 211 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:27.286', 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(837, 'EMAIL', 'sarah13@gmail.com', 'Hi sarah, we noticed you\'ve been absent for 211 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:27.924', 168, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(838, 'IN_APP', '291', 'Hi sarah, we noticed you\'ve been absent for 211 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:28.316', 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(839, 'EMAIL', 'sam@gmail.com', 'Hi sam, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:28.743', 170, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(840, 'IN_APP', '294', 'Hi sam, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:29.337', 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(841, 'EMAIL', 'jaindiya258@gmail.com', 'Hi Diya Jain, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:29.863', 171, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(842, 'IN_APP', '295', 'Hi Diya Jain, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:30.357', 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(843, 'EMAIL', 'user@gmail.com', 'Hi user user, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:30.785', 172, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(844, 'IN_APP', '296', 'Hi user user, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:31.180', 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(845, 'EMAIL', 'asdfghjk@gmail.com', 'Hi test, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:31.540', 173, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(846, 'IN_APP', '297', 'Hi test, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:31.905', 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(847, 'EMAIL', 'tanuja@gmail.com', 'Hi tanuja, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:32.810', 174, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(848, 'IN_APP', '298', 'Hi tanuja, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:33.229', 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(849, 'EMAIL', 'scxz@gmail.com', 'Hi sdf, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:33.652', 175, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(850, 'IN_APP', '299', 'Hi sdf, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:34.009', 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(851, 'EMAIL', 'botuser@gmail.com', 'Hi bot user, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:34.376', 176, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(852, 'IN_APP', '300', 'Hi bot user, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:34.725', 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(853, 'EMAIL', 'safari@gmail.com', 'Hi safari, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:35.176', 177, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(854, 'IN_APP', '301', 'Hi safari, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:35.597', 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(855, 'EMAIL', 'jjsssj@gmail.com', 'Hi member1, we noticed you\'ve been absent for 3 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:36.026', 178, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(856, 'EMAIL', 'raj23@gmail.com', 'Hi bbb, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:36.820', 179, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(857, 'EMAIL', 'rr@123', 'Hi rrr, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:37.740', 180, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(858, 'EMAIL', 'safarione@gmail.com', 'Hi safari, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:38.951', 181, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(859, 'EMAIL', 'safaritwo@gmail.com', 'Hi safari two , we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:39.658', 182, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(860, 'EMAIL', 'pgx@gmail.com', 'Hi pgx , we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:40.508', 183, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(861, 'EMAIL', 'pgxtqo@gmail.com', 'Hi pgx two , we noticed you\'ve been absent for 204 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:41.322', 184, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(862, 'EMAIL', 'kt@gmail.com', 'Hi kt, we noticed you\'ve been absent for 3 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:42.067', 185, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(863, 'EMAIL', 'kttwo@gmail.com', 'Hi kt two, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:42.871', 187, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(864, 'EMAIL', 'yy@123', 'Hi yyy, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:44.001', 188, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(865, 'EMAIL', 'ww@123', 'Hi www, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:44.669', 189, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(866, 'EMAIL', 'rrr@123', 'Hi rrr, we noticed you\'ve been absent for 3 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:45.516', 190, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(867, 'EMAIL', 'sss@123', 'Hi sss, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:46.268', 191, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(868, 'EMAIL', 'jj@123', 'Hi jjj, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:47.041', 192, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(869, 'EMAIL', 'kk@123', 'Hi kkk, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:47.701', 193, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(870, 'EMAIL', 'abcde@gmail.com', 'Hi r4ewf, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:48.581', 194, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(871, 'EMAIL', 'asd@gmail.com', 'Hi asd, we noticed you\'ve been absent for 2 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:49.667', 195, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(872, 'EMAIL', 'pgxgame@gmail.com', 'Hi wdsasxssxxss, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'FAILED', '2026-07-28 09:58:50.374', 196, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(873, 'IN_APP', '360', 'Hi wdsasxssxxss, we noticed you\'ve been absent for 16 days. We miss you at the gym!neajsndkjnaksnkndakjnlnadnasm\\', 'UNREAD', '2026-07-28 09:58:50.760', 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(874, 'EMAIL', 'demogirl@gmail.com', 'Hi Demo girl, your membership expires soon.', 'FAILED', '2026-07-28 10:00:00.026', 153, 'connect ECONNREFUSED ::1:587', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(875, 'EMAIL', 'tasi@gmail.com', 'Hi {name}, we noticed you\'ve been absent for {daysAbsent} days. We miss you at the gym!', 'SKIPPED', '2026-07-28 10:29:34.683', 165, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(876, 'IN_APP', '288', 'Hi {name}, we noticed you\'ve been absent for {daysAbsent} days. We miss you at the gym!', 'UNREAD', '2026-07-28 10:29:35.834', 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(877, 'EMAIL', 'demogirl@gmail.com', 'Hi Demo girl, your membership expires soon.', 'SKIPPED', '2026-07-29 10:00:00.337', 153, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(878, 'EMAIL', 'demoaayu@gmail.com', 'Hi Demo Aayush, your membership expires soon.', 'SKIPPED', '2026-07-29 10:00:00.736', 154, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(879, 'EMAIL', 'dummy.lead1@example.com', 'Hi Dummy Lead 1, your membership expires soon.', 'SKIPPED', '2026-07-29 10:00:01.132', 155, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(880, 'EMAIL', 'scxz@gmail.com', 'Hi sdf, your membership expires soon.', 'SKIPPED', '2026-07-29 10:00:01.536', 175, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(881, 'EMAIL', 'kt@gmail.com', 'Hi kt, your membership expires soon.', 'SKIPPED', '2026-07-29 10:00:01.931', 185, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(882, 'EMAIL', 'demogirl@gmail.com', 'Hi Demo girl, your membership expires soon.', 'SKIPPED', '2026-07-30 10:00:00.025', 153, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(883, 'EMAIL', 'demoaayu@gmail.com', 'Hi Demo Aayush, your membership expires soon.', 'SKIPPED', '2026-07-30 10:00:00.044', 154, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(884, 'EMAIL', 'dummy.lead1@example.com', 'Hi Dummy Lead 1, your membership expires soon.', 'SKIPPED', '2026-07-30 10:00:00.061', 155, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(885, 'EMAIL', 'scxz@gmail.com', 'Hi sdf, your membership expires soon.', 'SKIPPED', '2026-07-30 10:00:00.080', 175, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(886, 'EMAIL', 'kt@gmail.com', 'Hi kt, your membership expires soon.', 'SKIPPED', '2026-07-30 10:00:00.095', 185, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(887, 'EMAIL', 'demoboy@gmail.com', 'Hi demo boy,\n\nYour new fitness assessment is ready!\n\nMetrics:\nBMI: 33.8\nBody Fat: 39.62%\nLean Body Mass: 60.38 kg\nTarget Calories: 2515 kcal\n\nKeep up the great work!', 'FAILED', '2026-07-31 05:21:25.074', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(888, 'WHATSAPP', '7894561234', 'Hi demo boy,\n\nYour new fitness assessment is ready!\n\nMetrics:\nBMI: 33.8\nBody Fat: 39.62%\nLean Body Mass: 60.38 kg\nTarget Calories: 2515 kcal\n\nKeep up the great work!', 'FAILED', '2026-07-31 05:21:25.085', 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(889, 'EMAIL', 'superadmin@gmail.com', 'Hi house of gain, you purchased bronz.', 'FAILED', '2026-07-31 09:36:31.469', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(890, 'EMAIL', 'demogirl@gmail.com', 'Hi Demo girl, your membership expires soon.', 'SKIPPED', '2026-07-31 10:00:00.027', 153, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(891, 'EMAIL', 'demoaayu@gmail.com', 'Hi Demo Aayush, your membership expires soon.', 'SKIPPED', '2026-07-31 10:00:00.047', 154, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(892, 'EMAIL', 'dummy.lead1@example.com', 'Hi Dummy Lead 1, your membership expires soon.', 'SKIPPED', '2026-07-31 10:00:00.062', 155, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(893, 'EMAIL', 'scxz@gmail.com', 'Hi sdf, your membership expires soon.', 'SKIPPED', '2026-07-31 10:00:00.075', 175, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(894, 'EMAIL', 'kt@gmail.com', 'Hi kt, your membership expires soon.', 'SKIPPED', '2026-07-31 10:00:00.091', 185, 'SMTP not configured on server (SMTP_HOST/SMTP_USER/SMTP_PASS missing)', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(895, 'EMAIL', 'superadmin@gmail.com', 'Hi Super Admin,\\n\\nYour OTP is\\n564953\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-07-31 10:49:58.476', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(896, 'EMAIL', 'superadmin@gmail.com', 'Hi Super Admin,\\n\\nYour OTP is\\n711791\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-07-31 10:59:43.925', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(897, 'EMAIL', 'superadmin@gmail.com', 'Hi Super Admin,\\n\\nYour OTP is\\n183541\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-07-31 11:02:43.177', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(898, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere, your account is created.', 'FAILED', '2026-07-31 11:13:08.726', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(899, 'EMAIL', 'admin@gmail.com', 'Hi Admin, a new member shrikant sullere has been added to your gym.', 'FAILED', '2026-07-31 11:13:08.727', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(900, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere, Pre has been assigned to you.', 'FAILED', '2026-07-31 11:13:08.749', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(901, 'EMAIL', 'jatin74154@gmail.com', 'Hi rwedfrw, your account is created.', 'FAILED', '2026-07-31 11:15:10.224', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(902, 'EMAIL', 'jatin74154@gmail.com', 'Hi rwedfrw, Pre has been assigned to you.', 'FAILED', '2026-07-31 11:15:10.226', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(903, 'EMAIL', 'admin@gmail.com', 'Hi Admin, a new member rwedfrw has been added to your gym.', 'FAILED', '2026-07-31 11:15:10.228', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(904, 'EMAIL', 'aaaabb@gmail.com', 'Hi wqads, your account is created.', 'FAILED', '2026-07-31 11:27:12.775', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(905, 'EMAIL', 'aaaabb@gmail.com', 'Hi wqads, Pre has been assigned to you.', 'FAILED', '2026-07-31 11:27:12.775', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(906, 'EMAIL', 'admin@gmail.com', 'Hi Admin, a new member wqads has been added to your gym.', 'FAILED', '2026-07-31 11:27:12.776', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(907, 'EMAIL', 'aaaabb@gmail.com', 'Hi wqads, your attendance for 31/7/2026 has been marked as Checked In.', 'FAILED', '2026-07-31 11:28:04.821', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(908, 'EMAIL', 'qwerty@gmail.com', 'Hi qwedsa, your account is created.', 'FAILED', '2026-07-31 11:32:32.381', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(909, 'EMAIL', 'admin@gmail.com', 'Hi Admin, a new member qwedsa has been added to your gym.', 'FAILED', '2026-07-31 11:32:32.381', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(910, 'EMAIL', 'qwerty@gmail.com', 'Hi qwedsa, Pre has been assigned to you.', 'FAILED', '2026-07-31 11:32:32.381', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(911, 'EMAIL', 'admin@gmail.com', 'Hi Admin, a new member shrikant has been added to your gym.', 'FAILED', '2026-07-31 11:43:47.620', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(912, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant, Pre has been assigned to you.', 'FAILED', '2026-07-31 11:43:47.620', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(913, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant, your account is created.', 'FAILED', '2026-07-31 11:43:47.620', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(914, 'EMAIL', 'admin@gmail.com', 'Hi Admin, a new member shrikant sullere has been added to your gym.', 'FAILED', '2026-07-31 12:11:07.755', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(915, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere, your account is created.', 'FAILED', '2026-07-31 12:11:07.817', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(916, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere, Pre has been assigned to you.', 'FAILED', '2026-07-31 12:11:08.598', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(917, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere,\\n\\nYour OTP is\\n565371\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-07-31 12:11:53.510', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(918, 'EMAIL', 'asdfghjkl@gmail.com', 'Hi sdfgh, personal two  has been assigned to you.', 'FAILED', '2026-07-31 12:14:55.298', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(919, 'EMAIL', 'fresh@gmail.com', 'Hi Admin, a new member sdfgh has been added to your gym.', 'FAILED', '2026-07-31 12:14:55.358', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(920, 'EMAIL', 'asdfghjkl@gmail.com', 'Hi sdfgh, your account is created.', 'FAILED', '2026-07-31 12:14:55.605', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(921, 'EMAIL', 'asdfghjkl@gmail.com', 'Hi sdfgh, your attendance for 31/7/2026 has been marked as Checked In.', 'FAILED', '2026-07-31 12:16:53.329', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(922, 'EMAIL', 'rsld2012@gmail.com', 'Hi raj_shekar sir,\\n\\nYour OTP is\\n678954\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-07-31 12:22:57.919', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(923, 'EMAIL', 'zxc@gmail.com', 'Hi was, your account is created.', 'FAILED', '2026-07-31 12:24:13.219', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(924, 'EMAIL', 'fresh@gmail.com', 'Hi Admin, a new member was has been added to your gym.', 'FAILED', '2026-07-31 12:24:13.232', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(925, 'EMAIL', 'zxc@gmail.com', 'Hi was, personal one has been assigned to you.', 'FAILED', '2026-07-31 12:24:13.249', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(926, 'EMAIL', 'fresh@gmail.com', 'Hi Admin, a new member amul has been added to your gym.', 'FAILED', '2026-07-31 12:37:34.345', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(927, 'EMAIL', 'amul@gmail.com', 'Hi amul, your account is created.', 'FAILED', '2026-07-31 12:37:34.346', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(928, 'EMAIL', 'amul@gmail.com', 'Hi amul, personal two  has been assigned to you.', 'FAILED', '2026-07-31 12:37:34.369', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(929, 'EMAIL', 'amul@gmail.com', 'Hi amul, your payment of 1599 was successful.', 'FAILED', '2026-07-31 12:44:05.270', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(930, 'EMAIL', 'amul@gmail.com', 'Hi amul, your payment of 1299 was successful.', 'FAILED', '2026-07-31 12:44:49.640', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(931, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant, your account is created.', 'FAILED', '2026-07-31 12:58:47.068', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(932, 'EMAIL', 'admin@gmail.com', 'Hi Admin, a new member shrikant has been added to your gym.', 'FAILED', '2026-07-31 12:58:47.068', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(933, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant, Pre has been assigned to you.', 'FAILED', '2026-07-31 12:58:47.106', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(934, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant, your payment of 1000 was successful.', 'FAILED', '2026-07-31 12:59:45.240', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(935, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant,\\n\\nYour OTP is\\n469964\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-07-31 13:00:21.436', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(936, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant,\\n\\nYour OTP is\\n144468\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-07-31 13:06:15.124', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(937, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant,\\n\\nYour OTP is\\n691876\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-07-31 13:16:14.362', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(938, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant,\\n\\nYour OTP is\\n543017\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-07-31 13:19:59.210', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(939, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant,\\n\\nYour OTP is\\n380970\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-07-31 13:24:43.374', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(940, 'EMAIL', 'rsld2012@gmail.com', 'Hi raj_shekar sir,\\n\\nYour OTP is\\n897289\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-07-31 21:22:28.153', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(941, 'EMAIL', 'rrr@123', 'Hi rrr, it\'s been a week since your last workout. Come back soon to keep your momentum going!', 'FAILED', '2026-08-01 03:02:00.110', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(942, 'EMAIL', 'jjsssj@gmail.com', 'Hi member1, it\'s been a week since your last workout. Come back soon to keep your momentum going!', 'FAILED', '2026-08-01 03:02:00.114', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(943, 'IN-APP', '190', 'Hi rrr, it\'s been a week since your last workout. Come back soon to keep your momentum going!', 'UNREAD', '2026-08-01 03:02:00.117', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(944, 'IN-APP', '178', 'Hi member1, it\'s been a week since your last workout. Come back soon to keep your momentum going!', 'UNREAD', '2026-08-01 03:02:00.126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(945, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant, your payment of 3200 was successful.', 'FAILED', '2026-08-01 05:11:10.317', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(946, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant,\\n\\nYour OTP is\\n376291\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-08-01 05:17:53.803', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(947, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant,\\n\\nYour OTP is\\n426258\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-08-01 05:32:42.525', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(948, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant,\\n\\nYour OTP is\\n603567\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-08-01 05:38:22.013', NULL, 'Connection timeout', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(949, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant,\\n\\nYour OTP is\\n490012\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'FAILED', '2026-08-01 05:51:30.184', NULL, 'BREVO_API_KEY is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(950, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant,\\n\\nYour OTP is\\n934867\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'SENT', '2026-08-01 05:52:58.202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(951, 'EMAIL', 'admin@gmail.com', 'Hi Admin, a new member yash has been added to your gym.', 'SENT', '2026-08-01 06:17:25.640', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(952, 'EMAIL', 'yashsonwane1392002@gmail.com', 'Hi yash, your account is created.', 'SENT', '2026-08-01 06:17:25.649', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(953, 'EMAIL', 'yashsonwane1392002@gmail.com', 'Hi yash, Pre has been assigned to you.', 'SENT', '2026-08-01 06:17:25.662', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(954, 'EMAIL', 'yashsonwane1392002@gmail.com', 'Hi yash,\\n\\nYour OTP is\\n478832\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'SENT', '2026-08-01 06:18:22.396', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(955, 'EMAIL', 'yashsonwane1392002@gmail.com', 'Your account password has been changed successfully.\\n\\nIf this was not you, please contact your administrator immediately.', 'SENT', '2026-08-01 06:18:55.689', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(956, 'EMAIL', 'yashsonwane1392002@gmail.com', 'Hi yash, your attendance for 1/8/2026 has been marked as Checked In.', 'SENT', '2026-08-01 06:21:00.144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(957, 'EMAIL', 'yashsonwane1392002@gmail.com', 'Hi yash, a new diet plan has been assigned to you. Please check your dashboard.', 'SENT', '2026-08-01 06:22:34.964', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(958, 'EMAIL', 'yashsonwane1392002@gmail.com', 'Hi yash, your payment of 1000 was successful.', 'SENT', '2026-08-01 06:24:20.436', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(959, 'EMAIL', 'yashsonwane1392002@gmail.com', 'Hi yash,\\n\\nA new diet plan has been assigned to you at gymsoft.\\n\\nDiet Details:\\n- Breakfast: 4 Egg whites, 1 whole egg + Spinach\\n- Lunch: Grilled Chicken Breast with Steamed Broccoli\\n- Pre-Workout: One Apple or 100g Berries\\n- Post-Workout: Whey Protein Shake + 1 Rice Cake\\n- Dinner: Baked White Fish (Tilapia/Cod) with Asparagus\\n\\nTrainer: Your Trainer\\n\\nPlease check your dashboard for more details.', 'SENT', '2026-08-01 06:37:27.140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(960, 'EMAIL', 'yashsonwane1392002@gmail.com', 'Hi yash,\\n\\nA new workout plan has been assigned to you at {GymName}.\\n\\nTrainer: {TrainerName}\\n\\nPlease check your dashboard for more details.', 'SENT', '2026-08-01 06:38:20.627', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(961, 'EMAIL', 'admin@gmail.com', 'Hi Admin, a new member shri has been added to your gym.', 'SENT', '2026-08-01 07:20:38.093', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(962, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shri,\n\nPre has been assigned to you at gymsoft.\n\nPlan Details:\nValid till: 2026-09-30\nDate/Time: 1/8/2026, 12:50:37 pm\n\nThank you!', 'SENT', '2026-08-01 07:20:38.102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(963, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shri,\n\nYour account has been successfully created at gymsoft.\n\nLogin Details:\nEmail: shrikantsullere@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'SENT', '2026-08-01 07:20:38.102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(964, 'EMAIL', 'superadmin@gmail.com', 'Hi house of gain, you purchased testing plan.', 'SENT', '2026-08-01 07:24:03.684', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(965, 'EMAIL', 'superadmin@gmail.com', 'Admin: John Admin\\nGym: John Admin\\nCurrent Plan: bronz\\nRequested Plan: bronz\\nBilling: Monthly / Yearly\\nRequested At: 01/08/2026\\nStatus: Pending', 'SENT', '2026-08-01 07:24:45.650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(966, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi house of gain, your subscription for testing plan has been successfully activated. Amount Paid: 1.00', 'SENT', '2026-08-01 07:51:14.930', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(967, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi house of gain,\\n\\nYour OTP is\\n315737\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'SENT', '2026-08-01 07:52:46.186', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(968, 'EMAIL', 'shrikantsullere@gmail.com', 'Your account password has been changed successfully.\\n\\nIf this was not you, please contact your administrator immediately.', 'SENT', '2026-08-01 07:53:12.148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(969, 'EMAIL', 'rsld2012@gmail.com', 'Hi raj_shekar sir,\\n\\nYour OTP is\\n566585\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'SENT', '2026-08-01 09:08:52.040', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(970, 'EMAIL', 'dfhh@gmail.com', 'Hi Arjun,\n\nYour account has been successfully created at gymsoft.\n\nLogin Details:\nEmail: dfhh@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'SENT', '2026-08-01 09:35:11.278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(971, 'EMAIL', 'dfhh@gmail.com', 'Hi Arjun,\n\ngeneral has been assigned to you at gymsoft.\n\nPlan Details:\nValid till: 2026-08-31\nDate/Time: 1/8/2026, 3:05:10 pm\n\nThank you!', 'SENT', '2026-08-01 09:35:11.297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(972, 'EMAIL', 'admin@gmail.com', 'Hi Admin, a new member Arjun has been added to your gym.', 'SENT', '2026-08-01 09:35:11.300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(973, 'EMAIL', 'demogirl@gmail.com', 'Hi Demo girl, your membership expires soon.', 'SENT', '2026-08-01 10:00:00.036', 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(974, 'EMAIL', 'demoaayu@gmail.com', 'Hi Demo Aayush, your membership expires soon.', 'SENT', '2026-08-01 10:00:00.628', 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(975, 'EMAIL', 'dummy.lead1@example.com', 'Hi Dummy Lead 1, your membership expires soon.', 'SENT', '2026-08-01 10:00:00.871', 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(976, 'EMAIL', 'scxz@gmail.com', 'Hi sdf, your membership expires soon.', 'SENT', '2026-08-01 10:00:01.107', 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(977, 'EMAIL', 'kt@gmail.com', 'Hi kt, your membership expires soon.', 'SENT', '2026-08-01 10:00:01.355', 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(978, 'EMAIL', 'asd@gmail.com', 'Hi asd, it\'s been a week since your last workout. Come back soon to keep your momentum going!', 'SENT', '2026-08-02 03:00:00.714', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(979, 'IN-APP', '195', 'Hi asd, it\'s been a week since your last workout. Come back soon to keep your momentum going!', 'UNREAD', '2026-08-02 03:00:00.719', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(980, 'EMAIL', 'demogirl@gmail.com', 'Hi Demo girl, your membership expires soon.', 'SENT', '2026-08-02 10:00:00.036', 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(981, 'EMAIL', 'demoaayu@gmail.com', 'Hi Demo Aayush, your membership expires soon.', 'SENT', '2026-08-02 10:00:00.615', 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(982, 'EMAIL', 'dummy.lead1@example.com', 'Hi Dummy Lead 1, your membership expires soon.', 'SENT', '2026-08-02 10:00:00.849', 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(983, 'EMAIL', 'scxz@gmail.com', 'Hi sdf, your membership expires soon.', 'SENT', '2026-08-02 10:00:01.108', 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(984, 'EMAIL', 'kt@gmail.com', 'Hi kt, your membership expires soon.', 'SENT', '2026-08-02 10:00:01.328', 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(985, 'EMAIL', 'member@gmail.com', 'Hi Mamber, your payment of 5999 was successful.', 'FAILED', '2026-08-03 06:32:39.818', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(986, 'EMAIL', 'member@gmail.com', 'Hi Mamber,\\n\\nYour attendance at gymsoft has been marked as Checked In.\\n\\nDate: 3/8/2026\\nTime: 02:20 pm\\n\\nThank you!', 'FAILED', '2026-08-03 08:50:05.260', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(987, 'EMAIL', 'dgsj@gmail.com', 'Hi sdf,\n\nYour account has been successfully created at gymsoft.\n\nLogin Details:\nEmail: dgsj@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'FAILED', '2026-08-03 10:53:45.010', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(988, 'EMAIL', 'dgsj@gmail.com', 'Hi sdf,\n\nPre has been assigned to you at gymsoft.\n\nPlan Details:\nValid till: 2026-10-02\nDate/Time: 3/8/2026, 4:23:44 pm\n\nThank you!', 'FAILED', '2026-08-03 10:53:45.135', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(989, 'EMAIL', 'admin@gmail.com', 'Hi Admin, a new member sdf has been added to your gym.', 'FAILED', '2026-08-03 10:53:45.143', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(990, 'EMAIL', 'gdfchg@gmail.com', 'Hi wgsx,\n\nPre has been assigned to you at gymsoft.\n\nPlan Details:\nValid till: 2026-10-02\nDate/Time: 3/8/2026, 4:27:07 pm\n\nThank you!', 'FAILED', '2026-08-03 10:57:07.287', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(991, 'EMAIL', 'admin@gmail.com', 'Hi Admin, a new member wgsx has been added to your gym.', 'FAILED', '2026-08-03 10:57:07.292', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(992, 'EMAIL', 'gdfchg@gmail.com', 'Hi wgsx,\n\nYour account has been successfully created at gymsoft.\n\nLogin Details:\nEmail: gdfchg@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'FAILED', '2026-08-03 10:57:07.296', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(993, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi house of gain,\\n\\nYour OTP is\\n850642\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'SENT', '2026-08-03 12:02:03.623', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(994, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere,\n\nYour gym admin account has been created successfully.\n\nLogin Details:\nEmail: shrikantsullere@gmail.com\nPassword: 123456\n\nGym: adxc\n\nRegards,\nGymSoft Team', 'FAILED', '2026-08-03 12:10:16.089', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(995, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi dsfd,\n\nYour gym admin account has been created successfully.\n\nLogin Details:\nEmail: shrikantsullere@gmail.com\nPassword: 123456\n\nGym: dsf\n\nRegards,\nGymSoft Team', 'FAILED', '2026-08-03 12:28:02.007', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(996, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi dsfd,\\n\\nYour OTP is\\n977153\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'SENT', '2026-08-03 12:33:00.134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(997, 'EMAIL', 'fresh@gmail.com', 'Hi Admin, a new member shrikant sullere has been added to your gym.', 'FAILED', '2026-08-03 12:35:35.261', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(998, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere,\n\nYour account has been successfully created at fresh up.\n\nLogin Details:\nEmail: shrikantsullere@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'FAILED', '2026-08-03 12:35:35.262', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(999, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere,\n\npersonal two  has been assigned to you at fresh up.\n\nPlan Details:\nValid till: 2026-09-17\nDate/Time: 3/8/2026, 6:05:35 pm\n\nThank you!', 'FAILED', '2026-08-03 12:35:35.307', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1000, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere,\\n\\nYour OTP is\\n750410\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'SENT', '2026-08-03 12:36:24.555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1001, 'EMAIL', 'fresh@gmail.com', 'Hi Admin, a new member ritik has been added to your gym.', 'FAILED', '2026-08-03 12:43:31.852', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1002, 'EMAIL', 'ritiksen2333@gmail.com', 'Hi ritik,\n\npersonal one has been assigned to you at fresh up.\n\nPlan Details:\nValid till: 2026-09-02\nDate/Time: 3/8/2026, 6:13:31 pm\n\nThank you!', 'FAILED', '2026-08-03 12:43:31.853', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1003, 'EMAIL', 'ritiksen2333@gmail.com', 'Hi ritik,\n\nYour account has been successfully created at fresh up.\n\nLogin Details:\nEmail: ritiksen2333@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'FAILED', '2026-08-03 12:43:32.169', NULL, 'Gym Owner Email service is not configured.', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1004, 'EMAIL', 'ritiksen2333@gmail.com', 'Hi ritik,\\n\\nYour OTP is\\n801835\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'SENT', '2026-08-03 12:47:08.320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1005, 'EMAIL', 'fresh@gmail.com', 'Hi Admin, a new member shrikant sullere has been added to your gym.', 'SENT', '2026-08-03 13:00:22.951', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1006, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere,\n\nYour account has been successfully created at fresh up.\n\nLogin Details:\nEmail: shrikantsullere@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'SENT', '2026-08-03 13:00:22.984', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `notificationlog` (`id`, `type`, `to`, `message`, `status`, `createdAt`, `memberId`, `error`, `title`, `receiver_role`, `sender_id`, `sender_role`, `reference_type`, `reference_id`, `is_read`) VALUES
(1007, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere,\n\npersonal two  has been assigned to you at fresh up.\n\nPlan Details:\nValid till: 2026-09-17\nDate/Time: 3/8/2026, 6:30:22 pm\n\nThank you!', 'SENT', '2026-08-03 13:00:23.195', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1008, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere,\\n\\nYour OTP is\\n155536\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'SENT', '2026-08-03 13:01:24.202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1009, 'EMAIL', 'fresh@gmail.com', 'Hi Admin, a new member shrikant sullere has been added to your gym.', 'SENT', '2026-08-03 13:05:35.036', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1010, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere,\n\nYour account has been successfully created at fresh up.\n\nLogin Details:\nEmail: shrikantsullere@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'SENT', '2026-08-03 13:05:35.084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1011, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere,\n\npersonal two  has been assigned to you at fresh up.\n\nPlan Details:\nValid till: 2026-09-17\nDate/Time: 3/8/2026, 6:35:34 pm\n\nThank you!', 'SENT', '2026-08-03 13:05:35.582', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1012, 'IN-APP', '90', 'Checkup Due: 15 days have passed since barodjia\'s last BMI checkup.', 'UNREAD', '2026-08-04 00:00:00.097', 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1013, 'EMAIL', 'dgsj@gmail.com', 'Hi sdf,\\n\\nYour attendance at gymsoft has been marked as Checked In.\\n\\nDate: 4/8/2026\\nTime: 10:34 am\\n\\nThank you!', 'SENT', '2026-08-04 05:04:48.318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1014, 'EMAIL', 'john@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:48.365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1015, 'EMAIL', 'admin@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:48.584', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1016, 'EMAIL', '123@gym.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:48.821', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1017, 'EMAIL', '234@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:49.061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1018, 'EMAIL', 'r234@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:49.295', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1019, 'EMAIL', 'rrre234@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:49.553', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1020, 'EMAIL', 'snu@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:49.833', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1021, 'EMAIL', 'mannu@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:50.054', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1022, 'EMAIL', 'perstrainer1@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:50.266', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1023, 'EMAIL', 'personaltra2@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:50.478', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1024, 'EMAIL', 'gentrainer1@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:50.728', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1025, 'EMAIL', 'gannu@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:50.954', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1026, 'EMAIL', 'receptionist@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:51.162', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1027, 'EMAIL', 'housekeeping@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:51.384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1028, 'EMAIL', 'personal@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:51.602', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1029, 'EMAIL', 'generaltrainer1@gym.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:51.818', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1030, 'EMAIL', 'salesagent@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:52.047', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1031, 'EMAIL', 'raja23@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:52.260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1032, 'EMAIL', 'raaj23@gmail.com', 'sdf has checked in at 10:34 am.', 'SENT', '2026-08-04 05:04:52.486', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1033, 'EMAIL', 'cc@123', 'sdf has checked in at 10:34 am.', 'FAILED', '2026-08-04 05:04:52.690', NULL, 'Brevo API Error: {\"code\":\"invalid_parameter\",\"message\":\"email is not valid in to\"}', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1034, 'EMAIL', 'dd@123', 'sdf has checked in at 10:34 am.', 'FAILED', '2026-08-04 05:04:52.896', NULL, 'Brevo API Error: {\"code\":\"invalid_parameter\",\"message\":\"email is not valid in to\"}', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1035, 'EMAIL', 'ee@12', 'sdf has checked in at 10:34 am.', 'FAILED', '2026-08-04 05:04:53.106', NULL, 'Brevo API Error: {\"code\":\"invalid_parameter\",\"message\":\"email is not valid in to\"}', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1036, 'EMAIL', 'ff@123', 'sdf has checked in at 10:34 am.', 'FAILED', '2026-08-04 05:04:53.328', NULL, 'Brevo API Error: {\"code\":\"invalid_parameter\",\"message\":\"email is not valid in to\"}', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1037, 'EMAIL', 'gg@12', 'sdf has checked in at 10:34 am.', 'FAILED', '2026-08-04 05:04:53.536', NULL, 'Brevo API Error: {\"code\":\"invalid_parameter\",\"message\":\"email is not valid in to\"}', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1038, 'EMAIL', 'hh@12', 'sdf has checked in at 10:34 am.', 'FAILED', '2026-08-04 05:04:53.738', NULL, 'Brevo API Error: {\"code\":\"invalid_parameter\",\"message\":\"email is not valid in to\"}', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1039, 'EMAIL', 'john@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:16.913', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1040, 'EMAIL', 'safari@gmail.com', 'Hi safari,\\n\\nYour attendance at gymsoft has been marked as Checked In.\\n\\nDate: 4/8/2026\\nTime: 10:36 am\\n\\nThank you!', 'SENT', '2026-08-04 05:06:16.930', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1041, 'EMAIL', 'admin@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:17.142', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1042, 'EMAIL', '123@gym.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:17.362', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1043, 'EMAIL', '234@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:17.579', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1044, 'EMAIL', 'r234@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:17.874', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1045, 'EMAIL', 'rrre234@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:18.111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1046, 'EMAIL', 'snu@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:18.330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1047, 'EMAIL', 'mannu@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:18.538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1048, 'EMAIL', 'perstrainer1@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:18.750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1049, 'EMAIL', 'personaltra2@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:18.964', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1050, 'EMAIL', 'gentrainer1@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:19.176', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1051, 'EMAIL', 'gannu@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:19.397', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1052, 'EMAIL', 'receptionist@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:19.607', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1053, 'EMAIL', 'housekeeping@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:19.822', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1054, 'EMAIL', 'personal@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:20.041', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1055, 'EMAIL', 'generaltrainer1@gym.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:20.268', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1056, 'EMAIL', 'salesagent@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:20.495', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1057, 'EMAIL', 'raja23@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:20.715', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1058, 'EMAIL', 'raaj23@gmail.com', 'safari has checked in at 10:36 am.', 'SENT', '2026-08-04 05:06:20.920', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1059, 'EMAIL', 'cc@123', 'safari has checked in at 10:36 am.', 'FAILED', '2026-08-04 05:06:21.120', NULL, 'Brevo API Error: {\"code\":\"invalid_parameter\",\"message\":\"email is not valid in to\"}', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1060, 'EMAIL', 'dd@123', 'safari has checked in at 10:36 am.', 'FAILED', '2026-08-04 05:06:21.311', NULL, 'Brevo API Error: {\"code\":\"invalid_parameter\",\"message\":\"email is not valid in to\"}', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1061, 'EMAIL', 'ee@12', 'safari has checked in at 10:36 am.', 'FAILED', '2026-08-04 05:06:21.505', NULL, 'Brevo API Error: {\"code\":\"invalid_parameter\",\"message\":\"email is not valid in to\"}', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1062, 'EMAIL', 'ff@123', 'safari has checked in at 10:36 am.', 'FAILED', '2026-08-04 05:06:21.705', NULL, 'Brevo API Error: {\"code\":\"invalid_parameter\",\"message\":\"email is not valid in to\"}', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1063, 'EMAIL', 'gg@12', 'safari has checked in at 10:36 am.', 'FAILED', '2026-08-04 05:06:21.904', NULL, 'Brevo API Error: {\"code\":\"invalid_parameter\",\"message\":\"email is not valid in to\"}', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1064, 'EMAIL', 'hh@12', 'safari has checked in at 10:36 am.', 'FAILED', '2026-08-04 05:06:22.106', NULL, 'Brevo API Error: {\"code\":\"invalid_parameter\",\"message\":\"email is not valid in to\"}', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1065, 'EMAIL', 'personal@gmail.com', 'Your completed task has been approved: start train 5 person from today ', 'SENT', '2026-08-04 05:14:29.973', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1066, 'EMAIL', 'rsld2012@gmail.com', 'Hi Super Admin,\\n\\nYour OTP is\\n572917\\n\\nIt will expire in\\n10 Minutes.\\n\\nIf you did not request this,\\nplease ignore this email.', 'SENT', '2026-08-04 06:22:13.312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1067, 'EMAIL', 'rsld2012@gmail.com', 'Your account password has been changed successfully.\\n\\nIf this was not you, please contact your administrator immediately.', 'SENT', '2026-08-04 06:23:20.536', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1068, 'EMAIL', 'aug@gmail.com', 'Hi new aug, your subscription for testing plan has been successfully activated. Amount Paid: 1.00', 'SENT', '2026-08-04 06:36:22.514', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1069, 'EMAIL', 'sd@gmail.com', 'Hi fg,\n\nYour account has been successfully created at gymsoft.\n\nLogin Details:\nEmail: sd@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'SENT', '2026-08-04 07:11:45.829', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1070, 'EMAIL', 'sd@gmail.com', 'Hi fg,\n\nnew plan  has been assigned to you at gymsoft.\n\nPlan Details:\nValid till: 2026-08-09\nDate/Time: 4/8/2026, 12:41:45 pm\n\nThank you!', 'SENT', '2026-08-04 07:11:45.861', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1071, 'EMAIL', 'admin@gmail.com', 'Hi Admin, a new member fg has been added to your gym.', 'SENT', '2026-08-04 07:11:45.912', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1072, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi bhdbaj,\n\nYour account has been successfully created at gymsoft.\n\nLogin Details:\nEmail: shrikantsullere@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'SENT', '2026-08-04 08:54:43.683', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1073, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi bhdbaj,\n\nrwe has been assigned to you at gymsoft.\n\nPlan Details:\nValid till: 2026-09-07\nDate/Time: 4/8/2026, 2:24:43 pm\n\nThank you!', 'SENT', '2026-08-04 08:54:43.696', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1074, 'EMAIL', 'admin@gmail.com', 'Hi Admin, a new member bhdbaj has been added to your gym.', 'SENT', '2026-08-04 08:54:43.709', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1075, 'EMAIL', 'rsld2012@gmail.com', 'Hello Super Admin,\n\nA new admin has registered and taken a plan.\n\nAdmin Details:\nName: shrikant sullere\nEmail: shrikantsullere@gmail.com\nPhone: 278368323\nGym Name: shri\n\nPlan Details:\nPlan Name: testing plan\nPrice: ₹1\nDuration: 7 Days\n\nPlease check the dashboard for more details.\n\nRegards,\nGymSoft Team', 'SENT', '2026-08-04 09:00:43.909', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1076, 'IN-APP', '67', 'Hello Super Admin,\n\nA new admin has registered and taken a plan.\n\nAdmin Details:\nName: shrikant sullere\nEmail: shrikantsullere@gmail.com\nPhone: 278368323\nGym Name: shri\n\nPlan Details:\nPlan Name: testing plan\nPrice: ₹1\nDuration: 7 Days\n\nPlease check the dashboard for more details.\n\nRegards,\nGymSoft Team', 'UNREAD', '2026-08-04 09:00:43.916', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1077, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi shrikant sullere,\n\nYour gym admin account has been created successfully.\n\nLogin Details:\nEmail: shrikantsullere@gmail.com\nPassword: 123456\n\nGym: shri\n\nRegards,\nGymSoft Team', 'SENT', '2026-08-04 09:00:43.947', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1078, 'IN-APP', '387', 'Hi shrikant sullere,\n\nYour gym admin account has been created successfully.\n\nLogin Details:\nEmail: shrikantsullere@gmail.com\nPassword: 123456\n\nGym: shri\n\nRegards,\nGymSoft Team', 'UNREAD', '2026-08-04 09:00:43.952', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1079, 'EMAIL', 'JGDJS@gmail.com', 'Hi shrikant sullere,\n\n23WESD has been assigned to you at shri.\n\nPlan Details:\nValid till: 2026-08-06\nDate/Time: 4/8/2026, 2:34:48 pm\n\nThank you!', 'SENT', '2026-08-04 09:04:49.492', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1080, 'EMAIL', 'shrikantsullere@gmail.com', 'Hi Admin, a new member shrikant sullere has been added to your gym.', 'SENT', '2026-08-04 09:04:49.512', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1081, 'EMAIL', 'JGDJS@gmail.com', 'Hi shrikant sullere,\n\nYour account has been successfully created at shri.\n\nLogin Details:\nEmail: JGDJS@gmail.com\nPassword: 123456\n\nPlease login and change your password for security.\n\nThank you!', 'SENT', '2026-08-04 09:04:49.513', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1082, 'EMAIL', 'demogirl@gmail.com', 'Hi Demo girl, your membership expires soon.', 'SENT', '2026-08-04 10:00:00.039', 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1083, 'EMAIL', 'demoaayu@gmail.com', 'Hi Demo Aayush, your membership expires soon.', 'SENT', '2026-08-04 10:00:00.590', 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1084, 'EMAIL', 'dummy.lead1@example.com', 'Hi Dummy Lead 1, your membership expires soon.', 'SENT', '2026-08-04 10:00:00.799', 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1085, 'EMAIL', 'member@gmail.com', 'Hi Mamber, your membership expires soon.', 'SENT', '2026-08-04 10:00:01.018', 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1086, 'EMAIL', 'scxz@gmail.com', 'Hi sdf, your membership expires soon.', 'SENT', '2026-08-04 10:00:01.235', 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1087, 'EMAIL', 'kt@gmail.com', 'Hi kt, your membership expires soon.', 'SENT', '2026-08-04 10:00:01.455', 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1088, 'EMAIL', 'JGDJS@gmail.com', 'Hi shrikant sullere, your membership expires soon.', 'SENT', '2026-08-04 10:00:01.664', 219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notification_delivery_log`
--

CREATE TABLE `notification_delivery_log` (
  `id` int NOT NULL,
  `notificationId` int DEFAULT NULL,
  `tenantId` int DEFAULT NULL,
  `receiverId` int DEFAULT NULL,
  `status` varchar(50) DEFAULT 'CREATED',
  `errorReason` text,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notification_delivery_log`
--

INSERT INTO `notification_delivery_log` (`id`, `notificationId`, `tenantId`, `receiverId`, `status`, `errorReason`, `createdAt`, `updatedAt`) VALUES
(1, 4, 67, 67, 'SOCKET_SENT', NULL, '2026-07-24 12:09:40', '2026-07-24 12:09:40'),
(2, 5, 67, 67, 'SOCKET_SENT', NULL, '2026-07-24 12:29:01', '2026-07-24 12:29:01'),
(3, 6, 67, 67, 'SOCKET_SENT', NULL, '2026-07-24 12:39:38', '2026-07-24 12:39:38'),
(4, 7, 313, 313, 'SOCKET_SENT', NULL, '2026-07-24 12:40:13', '2026-07-24 12:40:13'),
(5, 8, 67, 67, 'SOCKET_SENT', NULL, '2026-07-24 12:41:15', '2026-07-24 12:41:15'),
(6, 9, 90, 89, 'SOCKET_SENT', NULL, '2026-07-24 13:00:08', '2026-07-24 13:00:09'),
(7, 10, 244, 244, 'SOCKET_SENT', NULL, '2026-07-24 13:00:08', '2026-07-24 13:00:08'),
(8, 11, 247, 247, 'SOCKET_SENT', NULL, '2026-07-24 13:00:08', '2026-07-24 13:00:09'),
(9, 12, 245, 245, 'SOCKET_SENT', NULL, '2026-07-24 13:00:08', '2026-07-24 13:00:09'),
(10, 13, 246, 246, 'SOCKET_SENT', NULL, '2026-07-24 13:00:08', '2026-07-24 13:00:09'),
(11, 14, 90, 90, 'SOCKET_SENT', NULL, '2026-07-24 13:00:08', '2026-07-24 13:00:09'),
(12, 15, 248, 248, 'SOCKET_SENT', NULL, '2026-07-24 13:00:08', '2026-07-24 13:00:09'),
(13, 16, 249, 249, 'CREATED', NULL, '2026-07-24 13:00:08', '2026-07-24 13:00:08'),
(14, 17, 250, 250, 'CREATED', NULL, '2026-07-24 13:00:08', '2026-07-24 13:00:08'),
(15, 18, 251, 251, 'CREATED', NULL, '2026-07-24 13:00:09', '2026-07-24 13:00:09'),
(16, 19, 253, 253, 'CREATED', NULL, '2026-07-24 13:00:09', '2026-07-24 13:00:09'),
(17, 20, 260, 260, 'CREATED', NULL, '2026-07-24 13:00:09', '2026-07-24 13:00:09'),
(18, 21, 267, 267, 'CREATED', NULL, '2026-07-24 13:00:09', '2026-07-24 13:00:09'),
(19, 22, 268, 268, 'CREATED', NULL, '2026-07-24 13:00:09', '2026-07-24 13:00:09'),
(20, 23, 276, 276, 'CREATED', NULL, '2026-07-24 13:00:09', '2026-07-24 13:00:09'),
(21, 24, 252, 252, 'CREATED', NULL, '2026-07-24 13:00:10', '2026-07-24 13:00:10'),
(22, 25, 282, 282, 'CREATED', NULL, '2026-07-24 13:00:10', '2026-07-24 13:00:10'),
(23, 26, 67, 67, 'SOCKET_SENT', NULL, '2026-07-25 06:09:08', '2026-07-25 06:09:08'),
(24, 27, 314, 314, 'SOCKET_SENT', NULL, '2026-07-25 06:11:04', '2026-07-25 06:11:04'),
(25, 28, 67, 67, 'SOCKET_SENT', NULL, '2026-07-25 06:17:14', '2026-07-25 06:17:14'),
(26, 29, 315, 315, 'SOCKET_SENT', NULL, '2026-07-25 06:19:12', '2026-07-25 06:19:12'),
(27, 30, 67, 67, 'SOCKET_SENT', NULL, '2026-07-25 06:44:56', '2026-07-25 06:44:56'),
(28, 31, 319, 319, 'SOCKET_SENT', NULL, '2026-07-25 06:49:07', '2026-07-25 06:49:07'),
(29, 32, 67, 67, 'SOCKET_SENT', NULL, '2026-07-25 07:13:21', '2026-07-25 07:13:21'),
(30, 33, 320, 320, 'SOCKET_SENT', NULL, '2026-07-25 07:13:44', '2026-07-25 07:13:44'),
(31, 34, 90, 90, 'SOCKET_SENT', NULL, '2026-07-25 07:36:32', '2026-07-25 07:36:32'),
(32, 35, 90, 90, 'SOCKET_SENT', NULL, '2026-07-25 07:46:43', '2026-07-25 07:46:43'),
(33, 36, 244, 244, 'SOCKET_SENT', NULL, '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(34, 37, 245, 245, 'SOCKET_SENT', NULL, '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(35, 39, 246, 246, 'SOCKET_SENT', NULL, '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(36, 38, 90, 89, 'SOCKET_SENT', NULL, '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(37, 40, 247, 247, 'SOCKET_SENT', NULL, '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(38, 41, 249, 249, 'SOCKET_SENT', NULL, '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(39, 42, 250, 250, 'SOCKET_SENT', NULL, '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(40, 43, 251, 251, 'SOCKET_SENT', NULL, '2026-07-25 07:46:44', '2026-07-25 07:46:44'),
(41, 45, 252, 252, 'SOCKET_SENT', NULL, '2026-07-25 07:46:45', '2026-07-25 07:46:45'),
(42, 44, 248, 248, 'SOCKET_SENT', NULL, '2026-07-25 07:46:45', '2026-07-25 07:46:45'),
(43, 46, 253, 253, 'SOCKET_SENT', NULL, '2026-07-25 07:46:45', '2026-07-25 07:46:45'),
(44, 47, 267, 267, 'SOCKET_SENT', NULL, '2026-07-25 07:46:45', '2026-07-25 07:46:45'),
(45, 48, 268, 268, 'SOCKET_SENT', NULL, '2026-07-25 07:46:45', '2026-07-25 07:46:45'),
(46, 49, 276, 276, 'SOCKET_SENT', NULL, '2026-07-25 07:46:45', '2026-07-25 07:46:45'),
(47, 51, 282, 282, 'SOCKET_SENT', NULL, '2026-07-25 07:46:45', '2026-07-25 07:46:45'),
(48, 50, 260, 260, 'SOCKET_SENT', NULL, '2026-07-25 07:46:45', '2026-07-25 07:46:46'),
(49, 52, 283, 283, 'SOCKET_SENT', NULL, '2026-07-25 07:46:46', '2026-07-25 07:46:46'),
(50, 53, 302, 302, 'SOCKET_SENT', NULL, '2026-07-25 07:46:46', '2026-07-25 07:46:46'),
(51, 54, 304, 304, 'SOCKET_SENT', NULL, '2026-07-25 07:46:46', '2026-07-25 07:46:46'),
(52, 55, 305, 305, 'SOCKET_SENT', NULL, '2026-07-25 07:46:46', '2026-07-25 07:46:46'),
(53, 57, 306, 306, 'SOCKET_SENT', NULL, '2026-07-25 07:46:46', '2026-07-25 07:46:46'),
(54, 56, 293, 293, 'SOCKET_SENT', NULL, '2026-07-25 07:46:46', '2026-07-25 07:46:46'),
(55, 58, 307, 307, 'SOCKET_SENT', NULL, '2026-07-25 07:46:46', '2026-07-25 07:46:46'),
(56, 59, 314, 314, 'SOCKET_SENT', NULL, '2026-07-25 07:46:47', '2026-07-25 07:46:47'),
(57, 60, 315, 315, 'SOCKET_SENT', NULL, '2026-07-25 07:46:47', '2026-07-25 07:46:47'),
(58, 61, 319, 319, 'SOCKET_SENT', NULL, '2026-07-25 07:46:47', '2026-07-25 07:46:47'),
(59, 63, 320, 320, 'SOCKET_SENT', NULL, '2026-07-25 07:46:47', '2026-07-25 07:46:47'),
(60, 62, 313, 313, 'SOCKET_SENT', NULL, '2026-07-25 07:46:47', '2026-07-25 07:46:47'),
(61, 64, 90, 360, 'SOCKET_SENT', NULL, '2026-07-25 10:06:34', '2026-07-25 10:06:34'),
(62, 65, 90, 360, 'SOCKET_SENT', NULL, '2026-07-25 10:06:34', '2026-07-25 10:06:34'),
(63, 66, 314, 345, 'SOCKET_SENT', NULL, '2026-07-25 10:17:27', '2026-07-25 10:17:27'),
(64, 67, 314, 345, 'SOCKET_SENT', NULL, '2026-07-25 10:17:28', '2026-07-25 10:17:28'),
(65, 68, 314, 345, 'SOCKET_SENT', NULL, '2026-07-25 10:17:28', '2026-07-25 10:17:28'),
(66, 69, 314, 345, 'SOCKET_SENT', NULL, '2026-07-25 10:17:28', '2026-07-25 10:17:28'),
(67, 70, 314, 345, 'SOCKET_SENT', NULL, '2026-07-25 10:17:29', '2026-07-25 10:17:29'),
(68, 71, 314, 345, 'SOCKET_SENT', NULL, '2026-07-25 10:17:29', '2026-07-25 10:17:29'),
(69, 72, 314, 345, 'SOCKET_SENT', NULL, '2026-07-25 10:17:30', '2026-07-25 10:17:30'),
(70, 73, 314, 345, 'SOCKET_SENT', NULL, '2026-07-25 10:17:30', '2026-07-25 10:17:30'),
(71, 74, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:15', '2026-07-25 10:21:15'),
(72, 75, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:16', '2026-07-25 10:21:16'),
(73, 76, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:16', '2026-07-25 10:21:16'),
(74, 77, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:16', '2026-07-25 10:21:16'),
(75, 78, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:17', '2026-07-25 10:21:17'),
(76, 79, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:17', '2026-07-25 10:21:17'),
(77, 80, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:17', '2026-07-25 10:21:17'),
(78, 81, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:18', '2026-07-25 10:21:18'),
(79, 82, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:18', '2026-07-25 10:21:18'),
(80, 83, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:19', '2026-07-25 10:21:19'),
(81, 84, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:19', '2026-07-25 10:21:19'),
(82, 85, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:19', '2026-07-25 10:21:19'),
(83, 86, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:19', '2026-07-25 10:21:19'),
(84, 87, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:20', '2026-07-25 10:21:20'),
(85, 88, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:20', '2026-07-25 10:21:20'),
(86, 89, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:20', '2026-07-25 10:21:20'),
(87, 90, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:21', '2026-07-25 10:21:21'),
(88, 91, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:21', '2026-07-25 10:21:21'),
(89, 92, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:21', '2026-07-25 10:21:21'),
(90, 93, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:21', '2026-07-25 10:21:21'),
(91, 94, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:21', '2026-07-25 10:21:21'),
(92, 95, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:21', '2026-07-25 10:21:21'),
(93, 96, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:22', '2026-07-25 10:21:22'),
(94, 97, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:22', '2026-07-25 10:21:22'),
(95, 98, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:22', '2026-07-25 10:21:22'),
(96, 99, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:22', '2026-07-25 10:21:22'),
(97, 100, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:23', '2026-07-25 10:21:23'),
(98, 101, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:23', '2026-07-25 10:21:23'),
(99, 102, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:23', '2026-07-25 10:21:23'),
(100, 103, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:23', '2026-07-25 10:21:23'),
(101, 104, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:23', '2026-07-25 10:21:23'),
(102, 105, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:23', '2026-07-25 10:21:23'),
(103, 106, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:24', '2026-07-25 10:21:24'),
(104, 107, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:24', '2026-07-25 10:21:24'),
(105, 108, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:24', '2026-07-25 10:21:24'),
(106, 109, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:24', '2026-07-25 10:21:24'),
(107, 110, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:24', '2026-07-25 10:21:24'),
(108, 111, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:25', '2026-07-25 10:21:25'),
(109, 112, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:25', '2026-07-25 10:21:25'),
(110, 113, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:25', '2026-07-25 10:21:25'),
(111, 114, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:25', '2026-07-25 10:21:25'),
(112, 115, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:25', '2026-07-25 10:21:25'),
(113, 116, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:26', '2026-07-25 10:21:26'),
(114, 117, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:26', '2026-07-25 10:21:26'),
(115, 118, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:26', '2026-07-25 10:21:26'),
(116, 119, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:26', '2026-07-25 10:21:26'),
(117, 120, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:27', '2026-07-25 10:21:27'),
(118, 121, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:27', '2026-07-25 10:21:27'),
(119, 122, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:27', '2026-07-25 10:21:27'),
(120, 123, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:27', '2026-07-25 10:21:27'),
(121, 124, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:28', '2026-07-25 10:21:28'),
(122, 125, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:28', '2026-07-25 10:21:28'),
(123, 126, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:29', '2026-07-25 10:21:29'),
(124, 127, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:29', '2026-07-25 10:21:29'),
(125, 128, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:33', '2026-07-25 10:21:33'),
(126, 129, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:34', '2026-07-25 10:21:34'),
(127, 130, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:34', '2026-07-25 10:21:34'),
(128, 131, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:35', '2026-07-25 10:21:35'),
(129, 132, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:35', '2026-07-25 10:21:35'),
(130, 133, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:35', '2026-07-25 10:21:35'),
(131, 134, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:36', '2026-07-25 10:21:36'),
(132, 135, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:36', '2026-07-25 10:21:36'),
(133, 136, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:37', '2026-07-25 10:21:37'),
(134, 137, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:21:37', '2026-07-25 10:21:37'),
(135, 138, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:45', '2026-07-25 10:23:45'),
(136, 139, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:46', '2026-07-25 10:23:46'),
(137, 140, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:46', '2026-07-25 10:23:46'),
(138, 141, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:46', '2026-07-25 10:23:46'),
(139, 142, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:47', '2026-07-25 10:23:47'),
(140, 143, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:47', '2026-07-25 10:23:47'),
(141, 144, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:48', '2026-07-25 10:23:48'),
(142, 145, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:48', '2026-07-25 10:23:48'),
(143, 146, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:48', '2026-07-25 10:23:48'),
(144, 147, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:49', '2026-07-25 10:23:49'),
(145, 148, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:49', '2026-07-25 10:23:49'),
(146, 149, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:49', '2026-07-25 10:23:49'),
(147, 150, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:50', '2026-07-25 10:23:50'),
(148, 151, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:50', '2026-07-25 10:23:50'),
(149, 152, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:51', '2026-07-25 10:23:51'),
(150, 153, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:51', '2026-07-25 10:23:51'),
(151, 154, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:52', '2026-07-25 10:23:52'),
(152, 155, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:52', '2026-07-25 10:23:52'),
(153, 156, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:52', '2026-07-25 10:23:52'),
(154, 157, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:53', '2026-07-25 10:23:53'),
(155, 158, 90, 321, 'SOCKET_SENT', NULL, '2026-07-25 10:23:53', '2026-07-25 10:23:53'),
(156, 159, 314, 318, 'SOCKET_SENT', NULL, '2026-07-25 10:29:09', '2026-07-25 10:29:10'),
(157, 160, 314, 340, 'SOCKET_SENT', NULL, '2026-07-25 10:29:49', '2026-07-25 10:29:49'),
(158, 161, 314, 344, 'SOCKET_SENT', NULL, '2026-07-25 10:30:24', '2026-07-25 10:30:24'),
(159, 162, 314, 339, 'SOCKET_SENT', NULL, '2026-07-25 10:31:09', '2026-07-25 10:31:10'),
(160, 163, 314, 340, 'SOCKET_SENT', NULL, '2026-07-25 11:54:31', '2026-07-25 11:54:32'),
(161, 164, 320, 330, 'SOCKET_SENT', NULL, '2026-07-25 11:55:48', '2026-07-25 11:55:48'),
(162, 165, 314, 340, 'SOCKET_SENT', NULL, '2026-07-25 11:55:53', '2026-07-25 11:55:53'),
(163, 166, 320, 331, 'SOCKET_SENT', NULL, '2026-07-25 11:58:08', '2026-07-25 11:58:09'),
(164, 167, 320, 331, 'SOCKET_SENT', NULL, '2026-07-25 11:58:45', '2026-07-25 11:58:45'),
(165, 168, 320, 330, 'SOCKET_SENT', NULL, '2026-07-25 11:58:56', '2026-07-25 11:58:57'),
(166, 169, 320, 322, 'SOCKET_SENT', NULL, '2026-07-25 12:06:04', '2026-07-25 12:06:04'),
(167, 170, 320, 327, 'SOCKET_SENT', NULL, '2026-07-25 12:06:29', '2026-07-25 12:06:29'),
(168, 171, 314, 339, 'SOCKET_SENT', NULL, '2026-07-25 12:10:39', '2026-07-25 12:10:39'),
(169, 172, 314, 318, 'SOCKET_SENT', NULL, '2026-07-25 12:12:03', '2026-07-25 12:12:03'),
(170, 173, 314, 338, 'SOCKET_SENT', NULL, '2026-07-25 12:13:33', '2026-07-25 12:13:33'),
(171, 174, 320, 327, 'SOCKET_SENT', NULL, '2026-07-25 12:19:01', '2026-07-25 12:19:01'),
(172, 175, 90, 324, 'SOCKET_SENT', NULL, '2026-07-25 12:30:14', '2026-07-25 12:30:14'),
(173, 176, 320, 359, 'SOCKET_SENT', NULL, '2026-07-25 12:41:28', '2026-07-25 12:41:28'),
(174, 177, 320, 327, 'SOCKET_SENT', NULL, '2026-07-25 12:41:28', '2026-07-25 12:41:28'),
(175, 178, 320, 320, 'SOCKET_SENT', NULL, '2026-07-25 12:41:28', '2026-07-25 12:41:28'),
(176, 179, 314, 357, 'SOCKET_SENT', NULL, '2026-07-25 12:42:09', '2026-07-25 12:42:09'),
(177, 180, 314, 338, 'SOCKET_SENT', NULL, '2026-07-25 12:42:09', '2026-07-25 12:42:09'),
(178, 181, 314, 314, 'SOCKET_SENT', NULL, '2026-07-25 12:42:09', '2026-07-25 12:42:09'),
(179, 182, 314, 354, 'SOCKET_SENT', NULL, '2026-07-25 13:18:45', '2026-07-25 13:18:45'),
(180, 183, 302, 302, 'SOCKET_SENT', NULL, '2026-07-25 18:08:57', '2026-07-25 18:08:57'),
(181, 184, 302, 303, 'SOCKET_SENT', NULL, '2026-07-25 18:08:57', '2026-07-25 18:08:57'),
(182, 185, 302, 308, 'SOCKET_SENT', NULL, '2026-07-25 18:08:57', '2026-07-25 18:08:57'),
(183, 186, 302, 309, 'SOCKET_SENT', NULL, '2026-07-25 18:08:57', '2026-07-25 18:08:57'),
(184, 187, 302, 310, 'SOCKET_SENT', NULL, '2026-07-25 18:08:57', '2026-07-25 18:08:57'),
(185, 188, 302, 311, 'SOCKET_SENT', NULL, '2026-07-25 18:32:37', '2026-07-25 18:32:37'),
(186, 189, 302, 311, 'SOCKET_SENT', NULL, '2026-07-25 18:34:04', '2026-07-25 18:34:04'),
(187, 190, 313, 313, 'SOCKET_SENT', NULL, '2026-07-25 22:21:49', '2026-07-25 22:21:50'),
(188, 191, 320, 327, 'SOCKET_SENT', NULL, '2026-07-26 10:01:36', '2026-07-26 10:01:36'),
(189, 192, 320, 359, 'SOCKET_SENT', NULL, '2026-07-26 10:02:42', '2026-07-26 10:02:42'),
(190, 193, 320, 359, 'SOCKET_SENT', NULL, '2026-07-26 10:03:01', '2026-07-26 10:03:01'),
(191, 194, 320, 320, 'SOCKET_SENT', NULL, '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(192, 195, 320, 322, 'SOCKET_SENT', NULL, '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(193, 196, 320, 327, 'SOCKET_SENT', NULL, '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(194, 197, 320, 330, 'SOCKET_SENT', NULL, '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(195, 198, 320, 331, 'SOCKET_SENT', NULL, '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(196, 199, 320, 333, 'SOCKET_SENT', NULL, '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(197, 200, 320, 334, 'SOCKET_SENT', NULL, '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(198, 201, 320, 335, 'SOCKET_SENT', NULL, '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(199, 202, 320, 336, 'SOCKET_SENT', NULL, '2026-07-26 10:04:00', '2026-07-26 10:04:00'),
(200, 203, 320, 342, 'SOCKET_SENT', NULL, '2026-07-26 10:08:04', '2026-07-26 10:08:04'),
(201, 204, 320, 346, 'SOCKET_SENT', NULL, '2026-07-26 10:08:04', '2026-07-26 10:08:04'),
(202, 205, 320, 347, 'SOCKET_SENT', NULL, '2026-07-26 10:08:04', '2026-07-26 10:08:04'),
(203, 206, 320, 348, 'SOCKET_SENT', NULL, '2026-07-26 10:08:04', '2026-07-26 10:08:04'),
(204, 207, 320, 349, 'SOCKET_SENT', NULL, '2026-07-26 10:08:05', '2026-07-26 10:08:05'),
(205, 208, 320, 351, 'SOCKET_SENT', NULL, '2026-07-26 10:08:05', '2026-07-26 10:08:05'),
(206, 209, 320, 358, 'SOCKET_SENT', NULL, '2026-07-26 10:08:05', '2026-07-26 10:08:05'),
(207, 210, 320, 359, 'SOCKET_SENT', NULL, '2026-07-26 10:08:05', '2026-07-26 10:08:05'),
(208, 211, 320, 322, 'SOCKET_SENT', NULL, '2026-07-26 10:08:05', '2026-07-26 10:08:05'),
(209, 212, 320, 327, 'SOCKET_SENT', NULL, '2026-07-26 10:08:05', '2026-07-26 10:08:05'),
(210, 213, 320, 330, 'SOCKET_SENT', NULL, '2026-07-26 10:08:05', '2026-07-26 10:08:05'),
(211, 214, 320, 331, 'SOCKET_SENT', NULL, '2026-07-26 10:08:06', '2026-07-26 10:08:06'),
(212, 215, 320, 333, 'SOCKET_SENT', NULL, '2026-07-26 10:08:06', '2026-07-26 10:08:06'),
(213, 216, 320, 334, 'SOCKET_SENT', NULL, '2026-07-26 10:08:06', '2026-07-26 10:08:06'),
(214, 217, 320, 335, 'SOCKET_SENT', NULL, '2026-07-26 10:08:06', '2026-07-26 10:08:06'),
(215, 218, 320, 336, 'SOCKET_SENT', NULL, '2026-07-26 10:08:06', '2026-07-26 10:08:06'),
(216, 219, 90, 89, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(217, 220, 90, 90, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(218, 221, 90, 127, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(219, 222, 90, 129, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(220, 223, 90, 130, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(221, 224, 90, 131, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(222, 225, 90, 132, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(223, 226, 90, 269, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(224, 227, 90, 270, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(225, 228, 90, 271, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(226, 229, 90, 272, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(227, 230, 90, 273, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(228, 231, 90, 274, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(229, 232, 90, 277, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(230, 233, 90, 278, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(231, 234, 90, 279, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(232, 235, 90, 280, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(233, 236, 90, 281, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(234, 237, 90, 321, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(235, 238, 90, 323, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(236, 239, 90, 324, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(237, 240, 90, 325, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(238, 241, 90, 326, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(239, 242, 90, 328, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(240, 243, 90, 329, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(241, 244, 90, 332, 'SOCKET_SENT', NULL, '2026-07-28 09:31:14', '2026-07-28 09:31:14'),
(242, 245, 90, 163, 'SOCKET_SENT', NULL, '2026-07-28 09:39:40', '2026-07-28 09:39:40'),
(243, 246, 90, 224, 'SOCKET_SENT', NULL, '2026-07-28 09:58:16', '2026-07-28 09:58:16'),
(244, 247, 90, 163, 'SOCKET_SENT', NULL, '2026-07-28 09:58:17', '2026-07-28 09:58:17'),
(245, 248, 90, 230, 'SOCKET_SENT', NULL, '2026-07-28 09:58:17', '2026-07-28 09:58:17'),
(246, 249, 90, 231, 'SOCKET_SENT', NULL, '2026-07-28 09:58:18', '2026-07-28 09:58:18'),
(247, 250, 90, 255, 'SOCKET_SENT', NULL, '2026-07-28 09:58:20', '2026-07-28 09:58:20'),
(248, 251, 90, 275, 'SOCKET_SENT', NULL, '2026-07-28 09:58:21', '2026-07-28 09:58:21'),
(249, 252, 90, 285, 'SOCKET_SENT', NULL, '2026-07-28 09:58:22', '2026-07-28 09:58:22'),
(250, 253, 90, 287, 'SOCKET_SENT', NULL, '2026-07-28 09:58:24', '2026-07-28 09:58:24'),
(251, 254, 90, 288, 'SOCKET_SENT', NULL, '2026-07-28 09:58:24', '2026-07-28 09:58:24'),
(252, 255, 90, 289, 'SOCKET_SENT', NULL, '2026-07-28 09:58:25', '2026-07-28 09:58:25'),
(253, 256, 90, 290, 'SOCKET_SENT', NULL, '2026-07-28 09:58:27', '2026-07-28 09:58:27'),
(254, 257, 90, 291, 'SOCKET_SENT', NULL, '2026-07-28 09:58:28', '2026-07-28 09:58:28'),
(255, 258, 90, 294, 'SOCKET_SENT', NULL, '2026-07-28 09:58:29', '2026-07-28 09:58:29'),
(256, 259, 90, 295, 'SOCKET_SENT', NULL, '2026-07-28 09:58:30', '2026-07-28 09:58:30'),
(257, 260, 90, 296, 'SOCKET_SENT', NULL, '2026-07-28 09:58:31', '2026-07-28 09:58:31'),
(258, 261, 90, 297, 'SOCKET_SENT', NULL, '2026-07-28 09:58:31', '2026-07-28 09:58:31'),
(259, 262, 90, 298, 'SOCKET_SENT', NULL, '2026-07-28 09:58:33', '2026-07-28 09:58:33'),
(260, 263, 90, 299, 'SOCKET_SENT', NULL, '2026-07-28 09:58:34', '2026-07-28 09:58:34'),
(261, 264, 90, 300, 'SOCKET_SENT', NULL, '2026-07-28 09:58:34', '2026-07-28 09:58:34'),
(262, 265, 90, 301, 'SOCKET_SENT', NULL, '2026-07-28 09:58:35', '2026-07-28 09:58:35'),
(263, 266, 90, 360, 'SOCKET_SENT', NULL, '2026-07-28 09:58:50', '2026-07-28 09:58:50'),
(264, 267, 90, 288, 'SOCKET_SENT', NULL, '2026-07-28 10:29:36', '2026-07-28 10:29:36'),
(265, 268, 67, 67, 'SOCKET_SENT', NULL, '2026-07-31 09:36:31', '2026-07-31 09:36:31'),
(266, 269, 90, 361, 'SOCKET_SENT', NULL, '2026-07-31 09:46:20', '2026-07-31 09:46:20'),
(267, 270, 90, 361, 'SOCKET_SENT', NULL, '2026-07-31 09:46:20', '2026-07-31 09:46:20'),
(268, 271, 67, 67, 'SOCKET_SENT', NULL, '2026-07-31 10:47:58', '2026-07-31 10:47:58'),
(269, 272, 67, 67, 'SOCKET_SENT', NULL, '2026-07-31 10:57:43', '2026-07-31 10:57:43'),
(270, 273, 90, 89, 'SOCKET_SENT', NULL, '2026-07-31 11:26:04', '2026-07-31 11:26:04'),
(271, 274, 90, 90, 'SOCKET_SENT', NULL, '2026-07-31 11:26:04', '2026-07-31 11:26:04'),
(272, 275, 90, 127, 'SOCKET_SENT', NULL, '2026-07-31 11:26:04', '2026-07-31 11:26:04'),
(273, 276, 90, 129, 'SOCKET_SENT', NULL, '2026-07-31 11:26:04', '2026-07-31 11:26:04'),
(274, 277, 90, 130, 'SOCKET_SENT', NULL, '2026-07-31 11:26:04', '2026-07-31 11:26:04'),
(275, 278, 90, 131, 'SOCKET_SENT', NULL, '2026-07-31 11:26:04', '2026-07-31 11:26:04'),
(276, 279, 90, 132, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(277, 280, 90, 269, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(278, 281, 90, 270, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(279, 282, 90, 271, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(280, 283, 90, 272, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(281, 284, 90, 273, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(282, 285, 90, 274, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(283, 286, 90, 277, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(284, 287, 90, 278, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(285, 288, 90, 279, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(286, 289, 90, 280, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(287, 290, 90, 281, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(288, 291, 90, 321, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(289, 292, 90, 323, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(290, 293, 90, 324, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(291, 294, 90, 325, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(292, 295, 90, 326, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(293, 296, 90, 328, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(294, 297, 90, 329, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(295, 298, 90, 332, 'SOCKET_SENT', NULL, '2026-07-31 11:26:05', '2026-07-31 11:26:05'),
(296, 299, 90, 366, 'SOCKET_SENT', NULL, '2026-07-31 11:42:17', '2026-07-31 11:42:17'),
(297, 300, 90, 367, 'SOCKET_SENT', NULL, '2026-07-31 12:09:54', '2026-07-31 12:09:54'),
(298, 301, 320, 320, 'SOCKET_SENT', NULL, '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(299, 302, 320, 322, 'SOCKET_SENT', NULL, '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(300, 303, 320, 327, 'SOCKET_SENT', NULL, '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(301, 304, 320, 330, 'SOCKET_SENT', NULL, '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(302, 305, 320, 331, 'SOCKET_SENT', NULL, '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(303, 306, 320, 333, 'SOCKET_SENT', NULL, '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(304, 307, 320, 334, 'SOCKET_SENT', NULL, '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(305, 308, 320, 335, 'SOCKET_SENT', NULL, '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(306, 309, 320, 336, 'SOCKET_SENT', NULL, '2026-07-31 12:14:53', '2026-07-31 12:14:53'),
(307, 310, 283, 283, 'SOCKET_SENT', NULL, '2026-07-31 12:20:57', '2026-07-31 12:20:57'),
(308, 311, 320, 320, 'SOCKET_SENT', NULL, '2026-07-31 12:22:13', '2026-07-31 12:22:13'),
(309, 312, 320, 370, 'SOCKET_SENT', NULL, '2026-07-31 12:35:34', '2026-07-31 12:35:34'),
(310, 313, 320, 320, 'SOCKET_SENT', NULL, '2026-07-31 12:35:34', '2026-07-31 12:35:34'),
(311, 314, 320, 370, 'SOCKET_SENT', NULL, '2026-07-31 12:35:34', '2026-07-31 12:35:34'),
(312, 315, 320, 370, 'SOCKET_SENT', NULL, '2026-07-31 12:42:05', '2026-07-31 12:42:05'),
(313, 316, 320, 370, 'SOCKET_SENT', NULL, '2026-07-31 12:42:49', '2026-07-31 12:42:49'),
(314, 317, 90, 371, 'SOCKET_SENT', NULL, '2026-07-31 12:56:47', '2026-07-31 12:56:47'),
(315, 318, 90, 90, 'SOCKET_SENT', NULL, '2026-07-31 12:56:47', '2026-07-31 12:56:47'),
(316, 319, 90, 371, 'SOCKET_SENT', NULL, '2026-07-31 12:56:47', '2026-07-31 12:56:47'),
(317, 320, 90, 371, 'SOCKET_SENT', NULL, '2026-07-31 12:57:45', '2026-07-31 12:57:45'),
(318, 321, 90, 371, 'SOCKET_SENT', NULL, '2026-07-31 12:58:21', '2026-07-31 12:58:21'),
(319, 322, 90, 371, 'SOCKET_SENT', NULL, '2026-07-31 13:04:15', '2026-07-31 13:04:15'),
(320, 323, 90, 371, 'SOCKET_SENT', NULL, '2026-07-31 13:14:14', '2026-07-31 13:14:15'),
(321, 324, 90, 371, 'SOCKET_SENT', NULL, '2026-07-31 13:22:43', '2026-07-31 13:22:43'),
(322, 325, 279, 286, 'SOCKET_SENT', NULL, '2026-07-31 20:28:06', '2026-07-31 20:28:06'),
(323, 326, 90, 279, 'SOCKET_SENT', NULL, '2026-07-31 20:28:06', '2026-07-31 20:28:06'),
(324, 327, 90, 90, 'SOCKET_SENT', NULL, '2026-07-31 20:28:06', '2026-07-31 20:28:06'),
(325, 328, 279, 286, 'SOCKET_SENT', NULL, '2026-07-31 20:29:51', '2026-07-31 20:29:51'),
(326, 329, 90, 280, 'SOCKET_SENT', NULL, '2026-07-31 20:29:51', '2026-07-31 20:29:51'),
(327, 330, 90, 90, 'SOCKET_SENT', NULL, '2026-07-31 20:29:51', '2026-07-31 20:29:51'),
(328, 331, 279, 286, 'SOCKET_SENT', NULL, '2026-07-31 20:46:46', '2026-07-31 20:46:46'),
(329, 332, 90, 280, 'SOCKET_SENT', NULL, '2026-07-31 20:46:47', '2026-07-31 20:46:47'),
(330, 333, 90, 90, 'SOCKET_SENT', NULL, '2026-07-31 20:46:48', '2026-07-31 20:46:48'),
(331, 334, 90, 280, 'SOCKET_SENT', NULL, '2026-07-31 21:00:31', '2026-07-31 21:00:31'),
(332, 335, 279, 286, 'SOCKET_SENT', NULL, '2026-07-31 21:03:08', '2026-07-31 21:03:08'),
(333, 336, 90, 280, 'SOCKET_SENT', NULL, '2026-07-31 21:03:09', '2026-07-31 21:03:09'),
(334, 337, 90, 90, 'SOCKET_SENT', NULL, '2026-07-31 21:03:10', '2026-07-31 21:03:10'),
(335, 338, 279, 286, 'SOCKET_SENT', NULL, '2026-07-31 21:03:56', '2026-07-31 21:03:57'),
(336, 339, 90, 280, 'SOCKET_SENT', NULL, '2026-07-31 21:03:57', '2026-07-31 21:03:58'),
(337, 340, 90, 90, 'SOCKET_SENT', NULL, '2026-07-31 21:03:58', '2026-07-31 21:03:59'),
(338, 341, 283, 283, 'SOCKET_SENT', NULL, '2026-07-31 21:20:28', '2026-07-31 21:20:28'),
(339, 342, 90, 371, 'SOCKET_SENT', NULL, '2026-08-01 05:09:10', '2026-08-01 05:09:10'),
(340, 343, 90, 371, 'SOCKET_SENT', NULL, '2026-08-01 05:15:54', '2026-08-01 05:15:54'),
(341, 344, 90, 371, 'SOCKET_SENT', NULL, '2026-08-01 05:30:43', '2026-08-01 05:30:43'),
(342, 345, 90, 371, 'SOCKET_SENT', NULL, '2026-08-01 05:36:22', '2026-08-01 05:36:22'),
(343, 346, 90, 371, 'SOCKET_SENT', NULL, '2026-08-01 05:51:30', '2026-08-01 05:51:30'),
(344, 347, 90, 90, 'SOCKET_SENT', NULL, '2026-08-01 06:17:25', '2026-08-01 06:17:25'),
(345, 348, 90, 372, 'SOCKET_SENT', NULL, '2026-08-01 06:17:25', '2026-08-01 06:17:25'),
(346, 349, 90, 372, 'SOCKET_SENT', NULL, '2026-08-01 06:17:25', '2026-08-01 06:17:25'),
(347, 350, 90, 372, 'SOCKET_SENT', NULL, '2026-08-01 06:18:22', '2026-08-01 06:18:22'),
(348, 351, 90, 372, 'SOCKET_SENT', NULL, '2026-08-01 06:18:55', '2026-08-01 06:18:55'),
(349, 352, 90, 89, 'SOCKET_SENT', NULL, '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(350, 353, 90, 90, 'SOCKET_SENT', NULL, '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(351, 354, 90, 127, 'SOCKET_SENT', NULL, '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(352, 355, 90, 129, 'SOCKET_SENT', NULL, '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(353, 356, 90, 130, 'SOCKET_SENT', NULL, '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(354, 357, 90, 131, 'SOCKET_SENT', NULL, '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(355, 358, 90, 132, 'SOCKET_SENT', NULL, '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(356, 359, 90, 269, 'SOCKET_SENT', NULL, '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(357, 360, 90, 270, 'SOCKET_SENT', NULL, '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(358, 361, 90, 271, 'SOCKET_SENT', NULL, '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(359, 362, 90, 272, 'SOCKET_SENT', NULL, '2026-08-01 06:20:59', '2026-08-01 06:20:59'),
(360, 363, 90, 273, 'SOCKET_SENT', NULL, '2026-08-01 06:20:59', '2026-08-01 06:21:00'),
(361, 364, 90, 274, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(362, 365, 90, 277, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(363, 367, 90, 278, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(364, 368, 90, 279, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(365, 369, 90, 280, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(366, 370, 90, 281, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(367, 366, 90, 372, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(368, 371, 90, 321, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(369, 372, 90, 323, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(370, 373, 90, 324, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(371, 374, 90, 325, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(372, 375, 90, 326, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(373, 376, 90, 328, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(374, 377, 90, 329, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(375, 378, 90, 332, 'SOCKET_SENT', NULL, '2026-08-01 06:21:00', '2026-08-01 06:21:00'),
(376, 379, 90, 372, 'SOCKET_SENT', NULL, '2026-08-01 06:22:35', '2026-08-01 06:22:35'),
(377, 380, 90, 372, 'SOCKET_SENT', NULL, '2026-08-01 06:24:19', '2026-08-01 06:24:19'),
(378, 381, 90, 372, 'SOCKET_SENT', NULL, '2026-08-01 06:37:26', '2026-08-01 06:37:26'),
(379, 382, 90, 372, 'SOCKET_SENT', NULL, '2026-08-01 06:38:20', '2026-08-01 06:38:20'),
(380, 383, 90, 372, 'SOCKET_SENT', NULL, '2026-08-01 06:45:37', '2026-08-01 06:45:37'),
(381, 384, 90, 280, 'SOCKET_SENT', NULL, '2026-08-01 06:45:37', '2026-08-01 06:45:37'),
(382, 385, 90, 90, 'SOCKET_SENT', NULL, '2026-08-01 06:45:37', '2026-08-01 06:45:37'),
(383, 386, 90, 373, 'SOCKET_SENT', NULL, '2026-08-01 07:20:37', '2026-08-01 07:20:37'),
(384, 387, 90, 373, 'SOCKET_SENT', NULL, '2026-08-01 07:20:37', '2026-08-01 07:20:37'),
(385, 388, 90, 90, 'SOCKET_SENT', NULL, '2026-08-01 07:20:37', '2026-08-01 07:20:37'),
(386, 389, 67, 67, 'SOCKET_SENT', NULL, '2026-08-01 07:24:03', '2026-08-01 07:24:03'),
(387, 390, 67, 67, 'SOCKET_SENT', NULL, '2026-08-01 07:24:45', '2026-08-01 07:24:45'),
(388, 391, 374, 374, 'SOCKET_SENT', NULL, '2026-08-01 07:51:14', '2026-08-01 07:51:14'),
(389, 392, 374, 374, 'SOCKET_SENT', NULL, '2026-08-01 07:52:45', '2026-08-01 07:52:45'),
(390, 393, 374, 374, 'SOCKET_SENT', NULL, '2026-08-01 07:53:11', '2026-08-01 07:53:11'),
(391, 394, 283, 283, 'SOCKET_SENT', NULL, '2026-08-01 09:08:51', '2026-08-01 09:08:51'),
(392, 395, 90, 90, 'SOCKET_SENT', NULL, '2026-08-01 09:35:10', '2026-08-01 09:35:10'),
(393, 396, 90, 375, 'SOCKET_SENT', NULL, '2026-08-01 09:35:10', '2026-08-01 09:35:10'),
(394, 397, 90, 375, 'SOCKET_SENT', NULL, '2026-08-01 09:35:10', '2026-08-01 09:35:10'),
(395, 398, 90, 163, 'SOCKET_SENT', NULL, '2026-08-03 06:32:39', '2026-08-03 06:32:39'),
(396, 399, 90, 163, 'SOCKET_SENT', NULL, '2026-08-03 08:50:05', '2026-08-03 08:50:05'),
(397, 400, 90, 89, 'SOCKET_SENT', NULL, '2026-08-03 08:50:05', '2026-08-03 08:50:05'),
(398, 401, 90, 90, 'SOCKET_SENT', NULL, '2026-08-03 08:50:06', '2026-08-03 08:50:06'),
(399, 402, 90, 127, 'SOCKET_SENT', NULL, '2026-08-03 08:50:07', '2026-08-03 08:50:07'),
(400, 403, 90, 129, 'SOCKET_SENT', NULL, '2026-08-03 08:50:08', '2026-08-03 08:50:08'),
(401, 404, 90, 130, 'SOCKET_SENT', NULL, '2026-08-03 08:50:08', '2026-08-03 08:50:09'),
(402, 405, 90, 131, 'SOCKET_SENT', NULL, '2026-08-03 08:50:09', '2026-08-03 08:50:09'),
(403, 406, 90, 132, 'SOCKET_SENT', NULL, '2026-08-03 08:50:10', '2026-08-03 08:50:10'),
(404, 407, 90, 269, 'SOCKET_SENT', NULL, '2026-08-03 08:50:11', '2026-08-03 08:50:11'),
(405, 408, 90, 270, 'SOCKET_SENT', NULL, '2026-08-03 08:50:12', '2026-08-03 08:50:12'),
(406, 409, 90, 271, 'SOCKET_SENT', NULL, '2026-08-03 08:50:12', '2026-08-03 08:50:13'),
(407, 410, 90, 272, 'SOCKET_SENT', NULL, '2026-08-03 08:50:13', '2026-08-03 08:50:13'),
(408, 411, 90, 273, 'SOCKET_SENT', NULL, '2026-08-03 08:50:14', '2026-08-03 08:50:14'),
(409, 412, 90, 274, 'SOCKET_SENT', NULL, '2026-08-03 08:50:15', '2026-08-03 08:50:15'),
(410, 413, 90, 277, 'SOCKET_SENT', NULL, '2026-08-03 08:50:16', '2026-08-03 08:50:16'),
(411, 414, 90, 278, 'SOCKET_SENT', NULL, '2026-08-03 08:50:16', '2026-08-03 08:50:17'),
(412, 415, 90, 279, 'SOCKET_SENT', NULL, '2026-08-03 08:50:17', '2026-08-03 08:50:17'),
(413, 416, 90, 280, 'SOCKET_SENT', NULL, '2026-08-03 08:50:18', '2026-08-03 08:50:18'),
(414, 417, 90, 281, 'SOCKET_SENT', NULL, '2026-08-03 08:50:19', '2026-08-03 08:50:19'),
(415, 418, 90, 321, 'SOCKET_SENT', NULL, '2026-08-03 08:50:19', '2026-08-03 08:50:20'),
(416, 419, 90, 323, 'SOCKET_SENT', NULL, '2026-08-03 08:50:20', '2026-08-03 08:50:20'),
(417, 420, 90, 324, 'SOCKET_SENT', NULL, '2026-08-03 08:50:21', '2026-08-03 08:50:21'),
(418, 421, 90, 325, 'SOCKET_SENT', NULL, '2026-08-03 08:50:22', '2026-08-03 08:50:22'),
(419, 422, 90, 326, 'SOCKET_SENT', NULL, '2026-08-03 08:50:23', '2026-08-03 08:50:23'),
(420, 423, 90, 328, 'SOCKET_SENT', NULL, '2026-08-03 08:50:23', '2026-08-03 08:50:24'),
(421, 424, 90, 329, 'SOCKET_SENT', NULL, '2026-08-03 08:50:24', '2026-08-03 08:50:24'),
(422, 425, 90, 332, 'SOCKET_SENT', NULL, '2026-08-03 08:50:25', '2026-08-03 08:50:25'),
(423, 426, 90, 376, 'SOCKET_SENT', NULL, '2026-08-03 10:53:45', '2026-08-03 10:53:45'),
(424, 427, 90, 90, 'SOCKET_SENT', NULL, '2026-08-03 10:53:45', '2026-08-03 10:53:45'),
(425, 428, 90, 376, 'SOCKET_SENT', NULL, '2026-08-03 10:53:45', '2026-08-03 10:53:45'),
(426, 429, 90, 90, 'SOCKET_SENT', NULL, '2026-08-03 10:57:07', '2026-08-03 10:57:07'),
(427, 430, 90, 377, 'SOCKET_SENT', NULL, '2026-08-03 10:57:07', '2026-08-03 10:57:07'),
(428, 431, 90, 377, 'SOCKET_SENT', NULL, '2026-08-03 10:57:07', '2026-08-03 10:57:08'),
(429, 432, 374, 374, 'SOCKET_SENT', NULL, '2026-08-03 12:02:03', '2026-08-03 12:02:03'),
(430, 435, 379, 379, 'SOCKET_SENT', NULL, '2026-08-03 12:33:00', '2026-08-03 12:33:00'),
(431, 436, 320, 320, 'SOCKET_SENT', NULL, '2026-08-03 12:35:35', '2026-08-03 12:35:35'),
(432, 437, 320, 380, 'SOCKET_SENT', NULL, '2026-08-03 12:35:35', '2026-08-03 12:35:36'),
(433, 438, 320, 380, 'SOCKET_SENT', NULL, '2026-08-03 12:35:36', '2026-08-03 12:35:36'),
(434, 439, 320, 380, 'SOCKET_SENT', NULL, '2026-08-03 12:36:24', '2026-08-03 12:36:24'),
(435, 440, 320, 381, 'SOCKET_SENT', NULL, '2026-08-03 12:43:31', '2026-08-03 12:43:31'),
(436, 441, 320, 320, 'SOCKET_SENT', NULL, '2026-08-03 12:43:31', '2026-08-03 12:43:31'),
(437, 442, 320, 381, 'SOCKET_SENT', NULL, '2026-08-03 12:43:32', '2026-08-03 12:43:32'),
(438, 443, 320, 381, 'SOCKET_SENT', NULL, '2026-08-03 12:47:07', '2026-08-03 12:47:07'),
(439, 444, 320, 320, 'SOCKET_SENT', NULL, '2026-08-03 13:00:22', '2026-08-03 13:00:22'),
(440, 445, 320, 382, 'SOCKET_SENT', NULL, '2026-08-03 13:00:22', '2026-08-03 13:00:23'),
(441, 446, 320, 382, 'SOCKET_SENT', NULL, '2026-08-03 13:00:23', '2026-08-03 13:00:23'),
(442, 447, 320, 382, 'SOCKET_SENT', NULL, '2026-08-03 13:01:24', '2026-08-03 13:01:24'),
(443, 448, 320, 383, 'SOCKET_SENT', NULL, '2026-08-03 13:05:34', '2026-08-03 13:05:34'),
(444, 449, 320, 320, 'SOCKET_SENT', NULL, '2026-08-03 13:05:34', '2026-08-03 13:05:34'),
(445, 450, 320, 383, 'SOCKET_SENT', NULL, '2026-08-03 13:05:34', '2026-08-03 13:05:34'),
(446, 452, 90, 89, 'SOCKET_SENT', NULL, '2026-08-04 05:04:47', '2026-08-04 05:04:47'),
(447, 451, 90, 376, 'SOCKET_SENT', NULL, '2026-08-04 05:04:47', '2026-08-04 05:04:47'),
(448, 453, 90, 90, 'SOCKET_SENT', NULL, '2026-08-04 05:04:48', '2026-08-04 05:04:48'),
(449, 454, 90, 127, 'SOCKET_SENT', NULL, '2026-08-04 05:04:48', '2026-08-04 05:04:48'),
(450, 455, 90, 129, 'SOCKET_SENT', NULL, '2026-08-04 05:04:48', '2026-08-04 05:04:48'),
(451, 456, 90, 130, 'SOCKET_SENT', NULL, '2026-08-04 05:04:49', '2026-08-04 05:04:49'),
(452, 457, 90, 131, 'SOCKET_SENT', NULL, '2026-08-04 05:04:49', '2026-08-04 05:04:49'),
(453, 458, 90, 132, 'SOCKET_SENT', NULL, '2026-08-04 05:04:49', '2026-08-04 05:04:49'),
(454, 459, 90, 269, 'SOCKET_SENT', NULL, '2026-08-04 05:04:49', '2026-08-04 05:04:49'),
(455, 460, 90, 270, 'SOCKET_SENT', NULL, '2026-08-04 05:04:49', '2026-08-04 05:04:49'),
(456, 461, 90, 271, 'SOCKET_SENT', NULL, '2026-08-04 05:04:50', '2026-08-04 05:04:50'),
(457, 462, 90, 272, 'SOCKET_SENT', NULL, '2026-08-04 05:04:50', '2026-08-04 05:04:50'),
(458, 463, 90, 273, 'SOCKET_SENT', NULL, '2026-08-04 05:04:50', '2026-08-04 05:04:50'),
(459, 464, 90, 274, 'SOCKET_SENT', NULL, '2026-08-04 05:04:50', '2026-08-04 05:04:50'),
(460, 465, 90, 277, 'SOCKET_SENT', NULL, '2026-08-04 05:04:50', '2026-08-04 05:04:50'),
(461, 466, 90, 278, 'SOCKET_SENT', NULL, '2026-08-04 05:04:51', '2026-08-04 05:04:51'),
(462, 467, 90, 279, 'SOCKET_SENT', NULL, '2026-08-04 05:04:51', '2026-08-04 05:04:51'),
(463, 468, 90, 280, 'SOCKET_SENT', NULL, '2026-08-04 05:04:51', '2026-08-04 05:04:51'),
(464, 469, 90, 281, 'SOCKET_SENT', NULL, '2026-08-04 05:04:51', '2026-08-04 05:04:51'),
(465, 470, 90, 321, 'SOCKET_SENT', NULL, '2026-08-04 05:04:52', '2026-08-04 05:04:52'),
(466, 471, 90, 323, 'SOCKET_SENT', NULL, '2026-08-04 05:04:52', '2026-08-04 05:04:52'),
(467, 472, 90, 324, 'SOCKET_SENT', NULL, '2026-08-04 05:04:52', '2026-08-04 05:04:52'),
(468, 473, 90, 325, 'SOCKET_SENT', NULL, '2026-08-04 05:04:52', '2026-08-04 05:04:52'),
(469, 474, 90, 326, 'SOCKET_SENT', NULL, '2026-08-04 05:04:52', '2026-08-04 05:04:52'),
(470, 475, 90, 328, 'SOCKET_SENT', NULL, '2026-08-04 05:04:53', '2026-08-04 05:04:53'),
(471, 476, 90, 329, 'SOCKET_SENT', NULL, '2026-08-04 05:04:53', '2026-08-04 05:04:53'),
(472, 477, 90, 332, 'SOCKET_SENT', NULL, '2026-08-04 05:04:53', '2026-08-04 05:04:53'),
(473, 478, 90, 301, 'SOCKET_SENT', NULL, '2026-08-04 05:06:16', '2026-08-04 05:06:16'),
(474, 479, 90, 279, 'SOCKET_SENT', NULL, '2026-08-04 05:14:29', '2026-08-04 05:14:29'),
(475, 480, 67, 67, 'SOCKET_SENT', NULL, '2026-08-04 06:22:12', '2026-08-04 06:22:12'),
(476, 481, 67, 67, 'SOCKET_SENT', NULL, '2026-08-04 06:23:20', '2026-08-04 06:23:20'),
(477, 482, 384, 384, 'SOCKET_SENT', NULL, '2026-08-04 06:36:22', '2026-08-04 06:36:22'),
(478, 484, 90, 90, 'SOCKET_SENT', NULL, '2026-08-04 07:11:45', '2026-08-04 07:11:45'),
(479, 483, 90, 385, 'SOCKET_SENT', NULL, '2026-08-04 07:11:45', '2026-08-04 07:11:45'),
(480, 485, 90, 385, 'SOCKET_SENT', NULL, '2026-08-04 07:11:45', '2026-08-04 07:11:45'),
(481, 486, 90, 90, 'SOCKET_SENT', NULL, '2026-08-04 08:54:43', '2026-08-04 08:54:43'),
(482, 487, 90, 386, 'SOCKET_SENT', NULL, '2026-08-04 08:54:43', '2026-08-04 08:54:43'),
(483, 488, 90, 386, 'SOCKET_SENT', NULL, '2026-08-04 08:54:43', '2026-08-04 08:54:43'),
(484, 490, 387, 387, 'SOCKET_SENT', NULL, '2026-08-04 09:04:48', '2026-08-04 09:04:48'),
(485, 491, 387, 388, 'SOCKET_SENT', NULL, '2026-08-04 09:04:48', '2026-08-04 09:04:49'),
(486, 492, 387, 388, 'SOCKET_SENT', NULL, '2026-08-04 09:04:49', '2026-08-04 09:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `notification_queue`
--

CREATE TABLE `notification_queue` (
  `id` int NOT NULL,
  `tenantId` int DEFAULT NULL,
  `receiverId` int NOT NULL,
  `receiverRole` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text,
  `referenceType` varchar(100) DEFAULT NULL,
  `referenceId` varchar(100) DEFAULT NULL,
  `actionUrl` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'PENDING',
  `retryCount` int DEFAULT '0',
  `processAfter` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_otp`
--

CREATE TABLE `password_reset_otp` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `userType` enum('USER','MEMBER') NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `resetToken` varchar(255) DEFAULT NULL,
  `purpose` varchar(50) DEFAULT 'PASSWORD_RESET',
  `expiresAt` datetime NOT NULL,
  `tokenExpiresAt` datetime DEFAULT NULL,
  `attempts` int DEFAULT '0',
  `isVerified` tinyint(1) DEFAULT '0',
  `isUsed` tinyint(1) DEFAULT '0',
  `lastSentAt` datetime DEFAULT NULL,
  `createdByIP` varchar(45) DEFAULT NULL,
  `userAgent` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `password_reset_otp`
--

INSERT INTO `password_reset_otp` (`id`, `userId`, `userType`, `email`, `otp`, `resetToken`, `purpose`, `expiresAt`, `tokenExpiresAt`, `attempts`, `isVerified`, `isUsed`, `lastSentAt`, `createdByIP`, `userAgent`, `createdAt`, `updatedAt`) VALUES
(1, 67, 'USER', 'superadmin@gmail.com', '$2b$10$VSjhLCvPr6tmwNQuOHTQzuD/a6fuhFP3cJpBNHn0B//wXckcUuX3O', NULL, 'PASSWORD_RESET', '2026-07-31 10:57:58', NULL, 0, 0, 0, NULL, '::ffff:100.64.0.2', 'node', '2026-07-31 10:47:58', '2026-07-31 10:47:58'),
(2, 67, 'USER', 'superadmin@gmail.com', '$2b$10$Vz2sKffwog9EGVBo8UEEHu254gBFUjbxtCc.z/jPl0nD3HBS7r38a', NULL, 'PASSWORD_RESET', '2026-07-31 11:07:44', NULL, 0, 0, 0, NULL, '::ffff:100.64.0.2', 'node', '2026-07-31 10:57:43', '2026-07-31 10:57:43'),
(3, 67, 'USER', 'superadmin@gmail.com', '$2b$10$VNg/0U.KUPdCIFw5cvVJl.bs.OzQLNFC7ssZPHmyjLpeTCwgPAhxG', NULL, 'PASSWORD_RESET', '2026-07-31 11:10:43', NULL, 0, 0, 0, NULL, '::ffff:100.64.0.13', 'node', '2026-07-31 11:00:43', '2026-07-31 11:00:43'),
(6, 283, 'USER', 'rsld2012@gmail.com', '$2b$10$s4QzMzY42Do5QsiNsXTFruOLr0QtsFPIjoCwAaA7vLbFGe9mHezea', NULL, 'PASSWORD_RESET', '2026-07-31 12:30:58', NULL, 0, 0, 0, NULL, '::ffff:100.64.0.14', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', '2026-07-31 12:20:57', '2026-07-31 12:20:57'),
(12, 283, 'USER', 'rsld2012@gmail.com', '$2b$10$o.ruf2EJHers3q1kpGB.feV4/BfFhLHENJ.zlXm8HfzvEA6.yqSAS', NULL, 'PASSWORD_RESET', '2026-07-31 21:30:28', NULL, 0, 0, 0, NULL, '::ffff:100.64.0.14', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', '2026-07-31 21:20:27', '2026-07-31 21:20:27'),
(18, 372, 'USER', 'yashsonwane1392002@gmail.com', '$2b$10$MYXdfE7/LFR7UI8JPe70jeX5nhqtKnOUSWJ5kFsR5aP2drf7ezOfO', '$2b$10$6Ku/hOY9UelMZUvhZZffO.6Q1RdcdccNUwgC7XUe560Srlfvyaoc.', 'PASSWORD_RESET', '2026-08-01 06:28:22', '2026-08-01 06:28:40', 1, 1, 1, NULL, '::ffff:100.64.0.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-08-01 06:18:21', '2026-08-01 06:18:54'),
(19, 374, 'USER', 'shrikantsullere@gmail.com', '$2b$10$Xb8PSdd.qaris86SRWk1LewlDapNbj4KeRWFekrVYpkt5DhAFACHS', '$2b$10$MvoQftKTpdIeexkhIymhT.ZvmVR3jquXbafIgCs62irdWfXKLmYcy', 'PASSWORD_RESET', '2026-08-01 08:02:46', '2026-08-01 08:03:01', 1, 1, 1, NULL, '::ffff:100.64.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-08-01 07:52:45', '2026-08-01 07:53:11'),
(20, 283, 'USER', 'rsld2012@gmail.com', '$2b$10$0svBb/V0k16EDRuMM4YRH.X7vaJMRjLjRorM.iaQ2k4cMY49umhe2', NULL, 'PASSWORD_RESET', '2026-08-01 09:18:51', NULL, 0, 0, 0, NULL, '::ffff:100.64.0.3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', '2026-08-01 09:08:51', '2026-08-01 09:08:51'),
(21, 374, 'USER', 'shrikantsullere@gmail.com', '$2b$10$0k9vFgLkpiBmZCiCbYDt.e5v3HmigF/Huou3h0HCSdmBd/jprRwHy', NULL, 'PASSWORD_RESET', '2026-08-03 12:12:03', NULL, 0, 0, 0, NULL, '::ffff:100.64.0.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-08-03 12:02:02', '2026-08-03 12:02:02'),
(22, 379, 'USER', 'shrikantsullere@gmail.com', '$2b$10$O4pUwwy4C1dwsc2weUAmN.M2QzUjqLQ2HX55b0gTTswjAVjYdkk5i', NULL, 'PASSWORD_RESET', '2026-08-03 12:42:59', NULL, 0, 0, 0, NULL, '::ffff:100.64.0.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-08-03 12:32:59', '2026-08-03 12:32:59'),
(23, 380, 'USER', 'shrikantsullere@gmail.com', '$2b$10$cb9o4qaZ6n8eAXw6cNyyxOmaOEyD2NbR2Tc6BBQOTH33ReYGW68UK', NULL, 'PASSWORD_RESET', '2026-08-03 12:46:24', NULL, 0, 0, 0, NULL, '::ffff:100.64.0.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-08-03 12:36:23', '2026-08-03 12:36:23'),
(24, 381, 'USER', 'ritiksen2333@gmail.com', '$2b$10$oYkNZt/zGyEV7QSDVvs3UO3wx.ZmMUB3rR3O79CGK7GLH9taodcF6', NULL, 'PASSWORD_RESET', '2026-08-03 12:57:08', NULL, 0, 0, 0, NULL, '::ffff:100.64.0.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-08-03 12:47:07', '2026-08-03 12:47:07'),
(25, 382, 'USER', 'shrikantsullere@gmail.com', '$2b$10$EmVUC8abfax/NoNwuTM9wePK8xEjbTdHiI.5SksBO1BmEwVccncOq', NULL, 'PASSWORD_RESET', '2026-08-03 13:11:23', NULL, 0, 0, 0, NULL, '::ffff:100.64.0.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-08-03 13:01:23', '2026-08-03 13:01:23'),
(26, 67, 'USER', 'rsld2012@gmail.com', '$2b$10$DydJ4qhvjdw725CBcnlX2epxnF7ZuN.w5fy3/SCyb2NM5hpBx93Gi', '$2b$10$MOAw5LbxGjufuY/HjRispeamp1PTbG8N2BwxJzyZL6TXcyic9v.wO', 'PASSWORD_RESET', '2026-08-04 06:32:13', '2026-08-04 06:32:34', 1, 1, 1, NULL, '::ffff:100.64.0.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-08-04 06:22:12', '2026-08-04 06:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int NOT NULL,
  `memberId` int NOT NULL,
  `planId` int DEFAULT NULL,
  `amount` double NOT NULL,
  `paymentDate` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `invoiceNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gstAmount` double DEFAULT NULL,
  `gstPercent` double DEFAULT NULL,
  `collectedByName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collectedByRole` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memberplanId` int DEFAULT NULL,
  `paymentMode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Cash',
  `transactionId` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentProofImage` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Approved',
  `rejectionRemarks` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `memberId`, `planId`, `amount`, `paymentDate`, `invoiceNo`, `gstAmount`, `gstPercent`, `collectedByName`, `collectedByRole`, `memberplanId`, `paymentMode`, `transactionId`, `paymentProofImage`, `status`, `rejectionRemarks`) VALUES
(4, 154, 0, 1200, '2026-07-20 13:15:53.404', 'INV-1784533553403-334', NULL, NULL, NULL, NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(6, 152, 0, 1200, '2026-07-20 14:21:38.401', 'INV-1784537498400-728', NULL, NULL, NULL, NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(7, 163, 0, 1200, '2026-07-20 14:22:06.621', 'INV-1784537526621-507', NULL, NULL, NULL, NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(8, 162, 22, 1500, '2026-07-20 17:35:33.543', 'INV-1784549133543-783', NULL, NULL, NULL, NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(9, 178, 53, 3500, '2026-07-24 12:09:14.000', 'INV-1784894954057-148', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(10, 181, 63, 999, '2026-07-25 07:59:39.000', 'INV-1784966378960-282', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(11, 182, 63, 999, '2026-07-25 08:38:45.000', 'INV-1784968725719-278', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(12, 183, 63, 999, '2026-07-25 08:40:48.000', 'INV-1784968848330-282', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(13, 184, 62, 1598, '2026-07-25 08:41:53.000', 'INV-1784968913107-339', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(14, 185, 65, 599, '2026-07-25 08:45:00.000', 'INV-1784969100929-797', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(15, 187, 64, 899, '2026-07-25 08:46:05.000', 'INV-1784969165305-967', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(16, 188, 67, 2500, '2026-07-25 08:49:04.000', 'INV-1784969344869-326', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(17, 189, 67, 2500, '2026-07-25 08:51:31.000', 'INV-1784969491266-593', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(18, 190, 57, 5000, '2026-07-25 08:55:50.000', 'INV-1784969750160-598', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(19, 191, 59, 2500, '2026-07-25 08:57:30.000', 'INV-1784969850705-164', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(20, 192, 66, 3000, '2026-07-25 09:01:23.000', 'INV-1784970083407-764', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(21, 193, 58, 500, '2026-07-25 09:03:55.000', 'INV-1784970235094-0', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(22, 194, 63, 999, '2026-07-25 09:22:01.000', 'INV-1784971321251-483', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(23, 195, 63, 999, '2026-07-25 09:42:56.000', 'INV-1784972576720-524', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(24, 196, 22, 1500, '2026-07-25 10:06:34.000', 'INV-1784973994294-924', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(28, 200, 22, 1500, '2026-07-31 11:25:12.000', 'INV-1785497112724-725', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(32, 204, 63, 999, '2026-07-31 12:12:55.000', 'INV-1785499975141-152', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(33, 205, 62, 1598, '2026-07-31 12:22:13.000', 'INV-1785500533194-754', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(34, 206, 63, 999, '2026-07-31 12:35:34.000', 'INV-1785501334296-431', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(35, 206, 61, 1599, '2026-07-31 12:42:05.229', 'INV-1785501725226-37', NULL, NULL, NULL, NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(36, 206, 60, 1299, '2026-07-31 12:42:49.615', 'INV-1785501769611-597', NULL, NULL, NULL, NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(43, 210, 39, 5000, '2026-08-01 09:35:10.000', 'INV-1785576910690-2', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(44, 156, 14, 5999, '2026-08-03 06:32:39.799', 'INV-1785738759799-542', NULL, NULL, NULL, NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(45, 211, 22, 1500, '2026-08-03 10:53:44.000', 'INV-1785754424574-687', NULL, NULL, 'Admin', NULL, NULL, 'Upi', NULL, NULL, 'Approved', NULL),
(46, 212, 22, 1500, '2026-08-03 10:57:07.000', 'INV-1785754627002-490', NULL, NULL, 'Admin', NULL, NULL, 'Upi', NULL, NULL, 'Approved', NULL),
(47, 156, 71, 1, '2026-08-03 11:52:24.000', 'INV-1785757944112-107', NULL, NULL, 'Admin', NULL, NULL, 'UPI', '658196543501', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1785755932/gym/payment-proofs/pmhr04a3_1785755932113.jpeg.jpg', 'Completed', NULL),
(52, 217, 50, 1000, '2026-08-04 07:11:45.000', 'INV-1785827505281-193', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL),
(54, 219, 72, 1233, '2026-08-04 09:04:48.000', 'INV-1785834288930-305', NULL, NULL, 'Admin', NULL, NULL, 'Cash', NULL, NULL, 'Approved', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_notification`
--

CREATE TABLE `personal_notification` (
  `id` int NOT NULL,
  `memberId` int NOT NULL,
  `category` varchar(100) DEFAULT 'General',
  `message` text NOT NULL,
  `sentBy` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` enum('Monthly','Yearly','7 Days') COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `branchId` int DEFAULT NULL,
  `sessions` int NOT NULL DEFAULT '0',
  `validityDays` int NOT NULL DEFAULT '0',
  `taxRate` decimal(5,2) DEFAULT '0.00',
  `discountPercent` decimal(5,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `name`, `duration`, `price`, `createdAt`, `category`, `description`, `status`, `branchId`, `sessions`, `validityDays`, `taxRate`, `discountPercent`) VALUES
(16, 'Gold', 'Yearly', 4998, '2025-12-10 03:23:46.781', 'BASIC', 'test tsting', 'ACTIVE', NULL, 0, 0, 0.00, 0.00),
(17, 'Basic', 'Monthly', 8999, '2025-12-10 03:26:29.134', 'BASIC', 'demo', 'ACTIVE', NULL, 0, 0, 0.00, 0.00),
(18, 'Pro', 'Yearly', 11999, '2025-12-10 03:26:56.723', 'PRO', 'Life Time', 'ACTIVE', NULL, 0, 0, 0.00, 0.00),
(19, 'bronz', 'Monthly', 2000, '2026-07-14 16:17:47.470', 'BASIC', '', 'ACTIVE', NULL, 0, 0, 0.00, 0.00),
(20, '7 day freee package', '7 Days', 0, '2026-07-23 13:03:59.788', 'Trial', 'wes', 'ACTIVE', NULL, 0, 0, 0.00, 0.00),
(21, 'testing plan', '7 Days', 1, '2026-08-01 07:23:05.759', 'Trial', 'only for testing ', 'ACTIVE', NULL, 0, 0, 0.00, 0.00),
(22, 'sdd', '7 Days', 0.1, '2026-08-01 07:58:10.051', 'GYM', 's', 'ACTIVE', NULL, 0, 0, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sellingPrice` double NOT NULL,
  `costPrice` double DEFAULT NULL,
  `currentStock` int NOT NULL DEFAULT '0',
  `branchId` int NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pt_bookings`
--

CREATE TABLE `pt_bookings` (
  `id` int NOT NULL,
  `memberId` int NOT NULL,
  `trainerId` int NOT NULL,
  `sessionId` int DEFAULT NULL,
  `date` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `bookingStatus` varchar(20) COLLATE utf8mb4_general_ci DEFAULT 'Booked',
  `paymentStatus` varchar(20) COLLATE utf8mb4_general_ci DEFAULT 'Pending',
  `notes` text COLLATE utf8mb4_general_ci,
  `branchId` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int NOT NULL,
  `selectedPlan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billingDuration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startDate` datetime(3) NOT NULL,
  `purchaseDate` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(10,2) DEFAULT '0.00',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gstNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profileImage` text COLLATE utf8mb4_unicode_ci,
  `transactionId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visiblePassword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentMethod` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentDetails` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `selectedPlan`, `companyName`, `email`, `billingDuration`, `startDate`, `purchaseDate`, `status`, `amount`, `phone`, `adminName`, `branchName`, `gstNumber`, `city`, `profileImage`, `transactionId`, `password`, `visiblePassword`, `paymentMethod`, `paymentDetails`) VALUES
(1, '7-Day Free Trial', '7daysfreetrialgym', '7daysfreetrialgym@gmail.com', 'Monthly', '2026-07-10 05:30:00.000', '2026-07-07 16:22:58.160', 'approved', 0.00, '4561237899', '', '', NULL, NULL, NULL, 'PAY-20260707-0001', NULL, NULL, NULL, NULL),
(2, '7-Day Free Trial', '7dayssecondfree', '7dayssecondfree@gmail.com', 'Yearly', '2026-07-10 05:30:00.000', '2026-07-07 16:51:03.115', 'approved', 0.00, '554545545', '', '', '52698323', NULL, NULL, 'PAY-20260707-0002', NULL, NULL, NULL, NULL),
(3, 'Pro', '7dayssecondfree', '7dayssecondfree@gmail.com', 'Yearly', '2026-07-07 16:53:19.287', '2026-07-07 16:53:19.294', 'approved', 11999.00, '554545545', '7dayssecondfree', '', NULL, NULL, NULL, 'PAY-20260707-0003', NULL, NULL, NULL, NULL),
(4, '7-Day Free Trial', 'aaagym', 'aaagym@gmail.com', 'Yearly', '2026-07-10 05:30:00.000', '2026-07-07 17:17:18.563', 'approved', 0.00, '6565362545', '', '', '5869746565', 'noida', 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783424837/users/profile/djb6cg5qtj3jc2urps8z.png', 'PAY-20260707-0004', NULL, NULL, NULL, NULL),
(5, 'Pro', 'aaagym', 'aaagym@gmail.com', 'Yearly', '2026-07-07 18:17:48.746', '2026-07-07 18:17:48.897', 'approved', 11999.00, '6565362545', 'aaagym', '', NULL, NULL, NULL, 'PAY-20260707-0005', NULL, NULL, NULL, NULL),
(6, 'Pro', 'zzgym', 'zzgym@gmail.com', 'Yearly', '2026-07-11 05:30:00.000', '2026-07-07 18:23:15.705', 'approved', 0.00, '456789965', '', '', '5689565965', 'indore', NULL, 'PAY-20260707-0006', NULL, NULL, NULL, NULL),
(7, 'Pro', 'plangym', 'plangym@gmail.com', 'Yearly', '2026-07-10 05:30:00.000', '2026-07-08 11:01:56.929', 'approved', 0.00, '5522336984', '', '', '325698596536', 'gujrat', 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783488716/users/profile/fl4aezlflkfctqxhcuzn.png', 'PAY-20260708-0007', '123456', '123456', 'UPI', 'bhhshhas@256'),
(8, 'Basic', 'planbgym', 'planbgym@gmail.com', 'Yearly', '2026-07-10 05:30:00.000', '2026-07-08 11:11:47.300', 'approved', 8999.00, '5689565656', '', '', '3569563259', 'suart', 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783489307/users/profile/znhmejtrynlh9uvknhnb.png', 'PAY-20260708-0008', '123456', '123456', 'UPI', 'planbgym@xml'),
(9, 'Gold', 'plancgym', 'plancgym@gmail.com', 'Yearly', '2026-07-11 05:30:00.000', '2026-07-08 11:27:20.945', 'approved', 4998.00, '456136554', '', '', '658659856', 'ahemdabad', NULL, 'PAY-20260708-0009', '123456', '123456', 'UPI', 'jsdsk@123'),
(10, 'Pro', 'palnaagym', 'planaagym@gmail.com', 'Yearly', '2026-07-15 05:30:00.000', '2026-07-08 11:40:07.853', 'approved', 11999.00, '455656565', '', '', '565565965', 'ranchi', NULL, 'PAY-20260708-0010', '123456', '123456', 'UPI', 'planaagym@123'),
(11, 'Pro', 'chikkugym', 'Chikkuyadav125@gmail.com', 'Yearly', '2026-07-10 05:30:00.000', '2026-07-08 15:51:22.195', 'approved', 11999.00, '654789656', '', '', '659898656598', 'indore', NULL, 'PAY-20260708-0011', '123456', '123456', 'UPI', 'chikkuydv@8wj'),
(12, 'Basic', 'bhaktigym', 'yadavbhakti287@gmail.com', 'Yearly', '2026-07-08 05:30:00.000', '2026-07-08 17:11:48.897', 'approved', 8999.00, '9713391164', '', '', '598568965', 'indore', NULL, 'PAY-20260708-0012', '123456', '123456', 'UPI', '69869@sdsd'),
(13, 'Basic', 'John Admin', 'admin@gmail.com', 'Yearly', '2026-07-08 23:32:45.388', '2026-07-08 23:32:45.538', 'approved', 8999.00, '9876543210', 'John Admin', 'Fitness', NULL, NULL, NULL, 'PAY-20260708-0013', NULL, NULL, NULL, NULL),
(14, '7-Day Free Trial', 'bhagyashreegym', 'bhagyashreeyadav1001@gmail.com', 'Yearly', '2026-07-09 05:30:00.000', '2026-07-09 11:25:30.549', 'approved', 0.00, '101010101010', '', '', '9768563455', 'noida', 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783576529/users/profile/zrcfq6yuelm03mzvwgko.jpg', 'PAY-20260709-0014', '123456', '123456', NULL, NULL),
(15, '7-Day Free Trial', 'bhagyashreegym', 'bhagyashreeyadav1001@gmail.com', 'Yearly', '2026-07-09 05:30:00.000', '2026-07-09 11:25:31.097', 'approved', 0.00, '101010101010', '', '', '9768563455', 'noida', 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783576530/users/profile/ezxbhvwrgek8dhf09y0r.jpg', 'PAY-20260709-0015', '123456', '123456', NULL, NULL),
(16, '7-Day Free Trial', 'bhagyashreegym', 'bhagyashreeyadav1001@gmail.com', 'Yearly', '2026-07-09 05:30:00.000', '2026-07-09 11:25:33.526', 'approved', 0.00, '101010101010', '', '', '9768563455', 'noida', 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783576532/users/profile/dvxjezwinwomwuizstyh.jpg', 'PAY-20260709-0016', '123456', '123456', NULL, NULL),
(17, '7-Day Free Trial', 'bhgayshreegym', 'bhagyashreeyadav1001@gmail.com', 'Yearly', '2026-07-09 05:30:00.000', '2026-07-09 11:30:42.926', 'approved', 0.00, '5588996648', '', '', '5885695656', 'noida', NULL, 'PAY-20260709-0017', '123456', '123456', NULL, NULL),
(18, '7-Day Free Trial', 'bhgaygym', 'bhagyashreeyadav1001@gmail.com', 'Yearly', '2026-07-09 05:30:00.000', '2026-07-09 11:33:49.344', 'approved', 0.00, '101010101019', '', '', '65898563265', 'noida', NULL, 'PAY-20260709-0018', '123456', '123456', NULL, NULL),
(19, 'Basic', 'bhgaygym', 'bhagyashreeyadav1001@gmail.com', 'Yearly', '2026-07-09 11:42:36.695', '2026-07-09 11:42:36.751', 'approved', 91790.00, '101010101019', 'bhgaygym', '', NULL, NULL, NULL, 'PAY-20260709-0019', NULL, NULL, NULL, NULL),
(20, '7-Day Free Trial', 'piiigym', 'barodpia280897@gmail.com', 'Yearly', '2026-07-14 05:30:00.000', '2026-07-14 11:13:48.390', 'approved', 0.00, '1234567890', '', '', '74AS741851526', 'noida', NULL, 'PAY-20260714-0020', '123456', '123456', NULL, NULL),
(21, 'Basic', 'piiigym', 'barodpia280897@gmail.com', 'Yearly', '2026-07-14 12:16:41.741', '2026-07-14 12:16:41.776', 'approved', 91790.00, '1234567890', 'piiigym', '', NULL, NULL, NULL, 'PAY-20260714-0021', NULL, NULL, 'UPI', 'piabbb@123'),
(22, 'Pro', 'nalinigym', 'naliniparas228@gmail.com', 'Quarterly', '2026-07-14 05:30:00.000', '2026-07-14 15:01:47.188', 'approved', 2850.00, '5566223148', '', '', '74AS741851528', 'pipli', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784021510/users/profile/q9lscukx_1784021504204.png.png', 'PAY-20260714-0022', '123456', '123456', 'UPI', 'naliniparas@888'),
(23, '7-Day Free Trial', 'raj_shekar sir', 'rsld2012@gmail.com', 'Quarterly', '2026-07-14 05:30:00.000', '2026-07-14 15:45:43.569', 'approved', 0.00, '5566442563', '', '', '74AS741851527', 'delhi', NULL, 'PAY-20260714-0023', '123456', '123456', NULL, NULL),
(24, 'Pro', 'raj_shekar sir', 'rsld2012@gmail.com', 'Yearly', '2026-07-14 15:53:40.549', '2026-07-14 15:53:40.640', 'approved', 10199.00, '5566442563', 'raj_shekar sir', '', NULL, NULL, NULL, 'PAY-20260714-0024', NULL, NULL, 'UPI', 'rajshear@567'),
(25, '7-Day Free Trial', 'Gym1', 'abc@gmail.com', 'Yearly', '2026-07-24 00:00:00.000', '2026-07-24 06:58:36.000', 'approved', 0.00, '91191999', '', '', NULL, 'New Delhi', NULL, 'PAY-20260724-0025', '123456', '123456', NULL, NULL),
(26, 'bronz', 'Gym1', 'abc@gmail.com', 'Yearly', '2026-07-24 07:12:03.196', '2026-07-24 07:12:03.879', 'approved', 20400.00, '91191999', 'Gym1', '', NULL, NULL, NULL, 'PAY-20260724-0026', NULL, NULL, 'UPI', '9205118617@paytm'),
(27, '7 day freee package', 'maxwell gym', 'maxwell@gmail.com', 'Yearly', '2026-07-24 00:00:00.000', '2026-07-24 07:42:15.635', 'approved', 0.00, '43535262627', '', '', NULL, 'india', NULL, 'PAY-20260724-0027', '123456', '123456', 'UPI', '83838833@upi'),
(28, '7 day freee package', 'ABC Pvt Ltd', 'abcd@gmail.com', '7 Days', '2026-07-24 00:00:00.000', '2026-07-24 08:42:34.523', 'approved', 0.00, '2232323232', '', '', '98765432QWSDF', 'india', NULL, 'PAY-20260724-0028', '123456', '123456', 'UPI', '2233322@upi'),
(29, '7 day freee package', 'testing gym ', 'testing@gmail.com', 'Yearly', '2026-07-24 00:00:00.000', '2026-07-24 09:01:20.815', 'approved', 0.00, '5555555555', '', '', NULL, 'india', NULL, 'PAY-20260724-0029', '123456', '123456', 'UPI', '4555775@upi'),
(30, 'bronz', 'testing gym ', 'testing@gmail.com', 'Monthly', '2026-07-24 09:14:06.068', '2026-07-24 09:14:06.664', 'approved', 2000.00, '5555555555', 'testing gym ', '', NULL, NULL, NULL, 'PAY-20260724-0030', NULL, NULL, 'UPI', '333@upi'),
(31, '7 day freee package', 'gymsoft ', 'gymsoft@gmail.com', '7 Days', '2026-07-24 00:00:00.000', '2026-07-24 10:47:12.268', 'approved', 0.00, '4564738383', '', '', '07ABCDE1234F1ZV', 'india', NULL, 'PAY-20260724-0031', '123456', '123456', 'UPI', '234567@upi'),
(32, 'bronz', 'gymsoft ', 'gymsoft@gmail.com', 'Monthly', '2026-07-24 10:50:01.495', '2026-07-24 10:50:02.198', 'pending', 2000.00, '4564738383', 'gymsoft ', '', NULL, NULL, NULL, 'PAY-20260724-0032', NULL, NULL, 'UPI', '23456@upi'),
(33, 'bronz', 'John Admin', 'admin@gmail.com', 'Yearly', '2026-07-24 11:39:17.539', '2026-07-24 11:39:18.150', 'approved', 20400.00, '9876543210', 'John Admin', 'Fitness', NULL, NULL, NULL, 'PAY-20260724-0033', NULL, NULL, 'UPI', '12345@iul'),
(34, 'Basic', 'John Admin', 'admin@gmail.com', 'Yearly', '2026-07-24 12:09:38.578', '2026-07-24 12:09:40.073', 'approved', 91790.00, '9876543210', 'John Admin', 'Fitness', NULL, NULL, NULL, 'PAY-20260724-0034', NULL, NULL, 'UPI', 'dxc@upi'),
(35, 'bronz', 'shrikant sullere', 'shrikantsullere@gmail.com', 'Yearly', '2026-07-24 12:28:59.488', '2026-07-24 12:29:00.114', 'approved', 20400.00, '08853713957', 'shrikant sullere', '', NULL, NULL, NULL, 'PAY-20260724-0035', NULL, NULL, 'UPI', 'sdfc@yui'),
(36, '7 day freee package', 'fithit gym ', 'fithit@gmail.com', '7 Days', '2026-07-24 00:00:00.000', '2026-07-24 12:39:38.907', 'approved', 0.00, '75757575757', '', '', NULL, 'indonesia', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784896778/users/profile/pv4bmlp8_1784896777454.png.png', 'PAY-20260724-0036', '123456', '123456', 'UPI', 'vhgv@upi'),
(37, 'Pro', 'fithit gym ', 'fithit@gmail.com', 'Yearly', '2026-07-24 12:41:14.553', '2026-07-24 12:41:15.109', 'approved', 10199.00, '75757575757', 'fithit gym ', '', NULL, NULL, NULL, 'PAY-20260724-0037', NULL, NULL, 'UPI', '2eq@uip'),
(38, '7-Day Free Trial', 'icon', 'aa@123', 'Quarterly', '2026-07-25 00:00:00.000', '2026-07-25 06:09:08.074', 'approved', 0.00, '12345678', '', '', '123456', 'indore', NULL, 'PAY-20260725-0038', '12345', '12345', NULL, NULL),
(39, '7 day freee package', 'gym  soft go', 'gymsoftgo@gmail.com', '7 Days', '2026-07-25 00:00:00.000', '2026-07-25 06:17:14.193', 'approved', 0.00, '3232232323', '', '', NULL, 'india', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784960233/users/profile/9azwsq02_1784960233157.jpeg.jpg', 'PAY-20260725-0039', '123456', '123456', 'UPI', 'few@upi'),
(40, '7-Day Free Trial', 'first fitness gym', 'fitness@gmail.com', 'Monthly', '2026-07-25 00:00:00.000', '2026-07-25 06:44:56.419', 'approved', 0.00, '4321123454', '', '', 'mnbvryjiwo', 'australia', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784961895/users/profile/zsxecswz_1784961895409.png.png', 'PAY-20260725-0040', '123456', '123456', NULL, NULL),
(41, 'bronz', 'fresh up', 'fresh@gmail.com', 'Monthly', '2026-07-25 00:00:00.000', '2026-07-25 07:13:20.978', 'approved', 2000.00, '4345324522', '', '', 'msmlmkmk', 'india', 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784963600/users/profile/uah1vg5u_1784963600106.png.png', 'PAY-20260725-0041', '123456', '123456', 'UPI', 'knvc@upi'),
(42, 'bronz', 'house of gain', 'shrikantsullere@gmail.com', 'Monthly', '2026-07-31 00:00:00.000', '2026-07-31 09:36:31.391', 'rejected', 2000.00, '08853713957', '', '', '98765432QWSDF', 'Indore', NULL, 'PAY-20260731-0042', '123456', '123456', 'UPI', '8853@ybl'),
(43, 'testing plan', 'house of gain', 'shrikantsullere@gmail.com', '7 Days', '2026-08-01 00:00:00.000', '2026-08-01 07:24:03.160', 'approved', 1.00, '08853713957', '', '', NULL, 'Indore', NULL, 'PAY-20260801-0043', '123456', '123456', 'UPI', 'yf@ybl'),
(44, 'bronz', 'John Admin', 'admin@gmail.com', 'Monthly', '2026-08-01 07:24:44.516', '2026-08-01 07:24:45.119', 'pending', 2000.00, '9876543210', 'John Admin', 'Fitness', NULL, NULL, NULL, 'PAY-20260801-0044', NULL, NULL, 'UPI', 'ghvb@ybl'),
(45, 'testing plan', 'new aug', 'aug@gmail.com', 'Not Specified', '2026-08-04 00:00:00.000', '2026-08-04 06:36:20.809', 'APPROVED', 1.00, '3245678901', '', '', NULL, 'india', NULL, 'PAY-20260804-0045', '123456', '123456', 'Razorpay', NULL),
(46, 'testing plan', 'shri', 'shrikantsullere@gmail.com', '7 Days', '2026-08-04 09:00:43.342', '2026-08-04 09:00:43.343', 'APPROVED', 1.00, '278368323', 'shrikant sullere', 'Head Branch', NULL, NULL, NULL, 'CASH-1785834042490', NULL, NULL, 'Cash', 'CASH-1785834042490');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `createdAt`) VALUES
(1, 'Superadmin', '2025-12-03 06:06:52.620'),
(2, 'Admin', '2025-12-03 06:06:52.627'),
(3, 'trainer', '2025-12-03 06:06:52.631'),
(4, 'member', '2025-12-03 06:06:52.634'),
(5, 'personaltrainer', '2025-12-04 15:15:26.000'),
(6, 'generaltrainer', '2025-12-04 15:15:26.000'),
(7, 'receptionist', '2025-12-04 15:15:26.000'),
(8, 'housekeeping', '2025-12-04 15:15:26.000'),
(9, 'Subadmin', '2026-06-09 17:18:59.713'),
(10, 'sales_agent', '2026-06-19 14:38:31.077');

-- --------------------------------------------------------

--
-- Table structure for table `saas_payments`
--

CREATE TABLE `saas_payments` (
  `id` int NOT NULL,
  `adminId` int NOT NULL,
  `amount` double NOT NULL,
  `planType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentStatus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transactionId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentDate` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `expiryDate` datetime(3) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int NOT NULL,
  `salaryId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `staffId` int NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periodStart` datetime NOT NULL,
  `periodEnd` datetime NOT NULL,
  `hoursWorked` int DEFAULT '0',
  `hourlyRate` double DEFAULT '0',
  `hourlyTotal` double DEFAULT '0',
  `fixedSalary` double DEFAULT '0',
  `commissionTotal` double DEFAULT '0',
  `bonuses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `deductions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `netPay` double NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Generated',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `salaryId`, `staffId`, `role`, `periodStart`, `periodEnd`, `hoursWorked`, `hourlyRate`, `hourlyTotal`, `fixedSalary`, `commissionTotal`, `bonuses`, `deductions`, `netPay`, `status`, `createdAt`) VALUES
(16, 'SAL-73-1784878817834', 73, 'Receptionist', '2026-07-01 00:00:00', '2026-07-31 00:00:00', NULL, 0, 0, NULL, 0, '[]', '[]', 0, 'Generated', '2026-07-24 07:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int NOT NULL,
  `adminId` int NOT NULL,
  `sessionName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trainerId` int NOT NULL,
  `branchId` int DEFAULT NULL,
  `date` datetime(3) NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Upcoming',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `capacity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `adminId`, `sessionName`, `trainerId`, `branchId`, `date`, `time`, `duration`, `description`, `status`, `createdAt`, `capacity`) VALUES
(42, 164, 'New Session', 165, NULL, '2025-12-29 00:00:00.000', '20:00', 60, 'demo', 'Complete', '2025-12-29 17:01:54.670', 20),
(43, 164, 'one', 165, NULL, '2025-12-29 00:00:00.000', '03:00', 60, 'demo', 'Complete', '2025-12-29 19:23:59.916', 20),
(45, 90, 'Test Session', 279, NULL, '2026-07-25 00:00:00.000', '10:00:00', 60, 'Test session description', 'Complete', '2026-07-21 11:09:00.995', 20),
(47, 90, 'Cardio Kickboxing', 279, NULL, '2026-07-27 00:00:00.000', '08:00:00', 60, 'Cardio kickboxing session', 'Complete', '2026-07-21 11:10:14.910', 20),
(49, 90, 'fnjdsnckjdn', 279, NULL, '2026-07-24 00:00:00.000', '00:30', 60, 'saxzsa', 'Complete', '2026-07-23 13:26:05.998', 20),
(50, 90, 'group session', 279, NULL, '2026-07-25 00:00:00.000', '05:30', 60, 'new class', 'Complete', '2026-07-24 05:28:23.762', 20),
(51, 314, '2nd', 340, NULL, '2026-07-25 00:00:00.000', '10:00', 60, 'asdfghjk', 'Complete', '2026-07-25 11:55:53.552', 20),
(52, 320, 'ws', 327, NULL, '2026-07-30 00:00:00.000', '01:00', 60, 'sxz', 'Complete', '2026-07-25 12:19:00.876', 20),
(53, 90, '1st', 324, NULL, '2026-07-31 00:00:00.000', '17:00', 60, 'sdfghjkl', 'Complete', '2026-07-25 12:30:14.355', 20);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` int NOT NULL,
  `staffIds` int DEFAULT NULL,
  `branchId` int DEFAULT NULL,
  `shiftDate` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `shiftType` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Pending',
  `createdById` int NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `staffIds`, `branchId`, `shiftDate`, `startTime`, `endTime`, `shiftType`, `description`, `status`, `createdById`, `createdAt`) VALUES
(59, 0, NULL, '2026-01-07', '13:12:00', '15:12:00', 'Evening Shift', 'Test', 'Pending', 7, '2026-01-07 07:42:29'),
(60, 0, NULL, '2026-01-07', '13:17:00', '15:17:00', 'Evening Shift', 'test', 'Pending', 7, '2026-01-07 07:47:55'),
(61, 0, NULL, '2026-06-17', '09:01:00', '15:00:00', 'Morning Shift', NULL, 'Approved', 7, '2026-06-16 10:06:02'),
(62, 0, NULL, '2026-06-17', '09:00:00', '16:00:00', 'Morning Shift', NULL, 'Pending', 7, '2026-06-16 11:00:09'),
(63, 70, NULL, '2026-07-25', '18:15:00', '19:00:00', 'Evening Shift', 'xyz', 'Pending', 7, '2026-07-21 13:04:07'),
(64, 100, NULL, '2026-07-23', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl;\'', 'Pending', 7, '2026-07-25 10:17:27'),
(65, 100, NULL, '2026-07-24', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl;\'', 'Pending', 7, '2026-07-25 10:17:28'),
(66, 100, NULL, '2026-07-25', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl;\'', 'Pending', 7, '2026-07-25 10:17:28'),
(67, 100, NULL, '2026-07-26', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl;\'', 'Pending', 7, '2026-07-25 10:17:28'),
(68, 100, NULL, '2026-07-27', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl;\'', 'Pending', 7, '2026-07-25 10:17:29'),
(69, 100, NULL, '2026-07-28', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl;\'', 'Pending', 7, '2026-07-25 10:17:29'),
(70, 100, NULL, '2026-07-29', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl;\'', 'Pending', 7, '2026-07-25 10:17:30'),
(71, 100, NULL, '2026-07-30', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl;\'', 'Pending', 7, '2026-07-25 10:17:30'),
(72, 78, NULL, '2026-07-08', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:15'),
(73, 78, NULL, '2026-07-09', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:16'),
(74, 78, NULL, '2026-07-10', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:16'),
(75, 78, NULL, '2026-07-11', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:16'),
(76, 78, NULL, '2026-07-12', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:17'),
(77, 78, NULL, '2026-07-13', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:17'),
(78, 78, NULL, '2026-07-14', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:17'),
(79, 78, NULL, '2026-07-15', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:18'),
(80, 78, NULL, '2026-07-16', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:18'),
(81, 78, NULL, '2026-07-17', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:18'),
(82, 78, NULL, '2026-07-18', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:19'),
(83, 78, NULL, '2026-07-19', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:19'),
(84, 78, NULL, '2026-07-08', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:19'),
(85, 78, NULL, '2026-07-20', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:20'),
(86, 78, NULL, '2026-07-09', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:20'),
(87, 78, NULL, '2026-07-21', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:20'),
(88, 78, NULL, '2026-07-10', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:20'),
(89, 78, NULL, '2026-07-22', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:21'),
(90, 78, NULL, '2026-07-11', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:21'),
(91, 78, NULL, '2026-07-23', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:21'),
(92, 78, NULL, '2026-07-12', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:21'),
(93, 78, NULL, '2026-07-24', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:21'),
(94, 78, NULL, '2026-07-25', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:22'),
(95, 78, NULL, '2026-07-13', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:22'),
(96, 78, NULL, '2026-07-26', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:22'),
(97, 78, NULL, '2026-07-14', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:22'),
(98, 78, NULL, '2026-07-27', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:22'),
(99, 78, NULL, '2026-07-15', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:23'),
(100, 78, NULL, '2026-07-28', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:23'),
(101, 78, NULL, '2026-07-16', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:23'),
(102, 78, NULL, '2026-07-29', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:23'),
(103, 78, NULL, '2026-07-17', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:23'),
(104, 78, NULL, '2026-07-30', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:24'),
(105, 78, NULL, '2026-07-18', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:24'),
(106, 78, NULL, '2026-07-31', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:24'),
(107, 78, NULL, '2026-07-19', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:24'),
(108, 78, NULL, '2026-08-01', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:24'),
(109, 78, NULL, '2026-07-20', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:24'),
(110, 78, NULL, '2026-08-02', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:25'),
(111, 78, NULL, '2026-07-21', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:25'),
(112, 78, NULL, '2026-08-03', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:25'),
(113, 78, NULL, '2026-07-22', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:25'),
(114, 78, NULL, '2026-08-04', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:26'),
(115, 78, NULL, '2026-07-23', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:26'),
(116, 78, NULL, '2026-08-05', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:26'),
(117, 78, NULL, '2026-07-24', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:26'),
(118, 78, NULL, '2026-07-25', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:27'),
(119, 78, NULL, '2026-08-06', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:27'),
(120, 78, NULL, '2026-08-07', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:27'),
(121, 78, NULL, '2026-07-26', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:27'),
(122, 78, NULL, '2026-08-08', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:28'),
(123, 78, NULL, '2026-07-27', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:28'),
(124, 78, NULL, '2026-07-28', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:29'),
(125, 78, NULL, '2026-07-29', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:29'),
(126, 78, NULL, '2026-07-30', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:33'),
(127, 78, NULL, '2026-07-31', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:34'),
(128, 78, NULL, '2026-08-01', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:34'),
(129, 78, NULL, '2026-08-02', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:35'),
(130, 78, NULL, '2026-08-03', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:35'),
(131, 78, NULL, '2026-08-04', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:35'),
(132, 78, NULL, '2026-08-05', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:36'),
(133, 78, NULL, '2026-08-06', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:36'),
(134, 78, NULL, '2026-08-07', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:37'),
(135, 78, NULL, '2026-08-08', '09:00:00', '10:30:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:21:37'),
(136, 78, NULL, '2026-07-25', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:45'),
(137, 78, NULL, '2026-07-26', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:46'),
(138, 78, NULL, '2026-07-27', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:46'),
(139, 78, NULL, '2026-07-28', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:46'),
(140, 78, NULL, '2026-07-29', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:47'),
(141, 78, NULL, '2026-07-30', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:47'),
(142, 78, NULL, '2026-07-31', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:48'),
(143, 78, NULL, '2026-08-01', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:48'),
(144, 78, NULL, '2026-08-02', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:48'),
(145, 78, NULL, '2026-08-03', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:49'),
(146, 78, NULL, '2026-08-04', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:49'),
(147, 78, NULL, '2026-08-05', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:49'),
(148, 78, NULL, '2026-08-06', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:50'),
(149, 78, NULL, '2026-08-07', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:50'),
(150, 78, NULL, '2026-08-08', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:51'),
(151, 78, NULL, '2026-08-09', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:51'),
(152, 78, NULL, '2026-08-10', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:52'),
(153, 78, NULL, '2026-08-11', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:52'),
(154, 78, NULL, '2026-08-12', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:52'),
(155, 78, NULL, '2026-08-13', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:53'),
(156, 78, NULL, '2026-08-14', '09:00:00', '10:15:00', 'Morning Shift', 'sdfghjkl', 'Pending', 7, '2026-07-25 10:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `adminId` int DEFAULT NULL,
  `branchId` int DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfBirth` datetime(3) NOT NULL,
  `joinDate` datetime(3) NOT NULL,
  `exitDate` datetime(3) DEFAULT NULL,
  `profilePhoto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `userId`, `adminId`, `branchId`, `gender`, `dateOfBirth`, `joinDate`, `exitDate`, `profilePhoto`, `status`) VALUES
(55, 93, 90, 48, 'Male', '1990-01-01 00:00:00.000', '2025-01-01 00:00:00.000', NULL, NULL, 'Active'),
(57, 261, 260, NULL, 'Female', '2001-12-02 05:30:00.000', '2026-07-10 05:30:00.000', NULL, NULL, 'Active'),
(58, 262, 260, NULL, 'Male', '2000-02-10 05:30:00.000', '2026-07-09 05:30:00.000', NULL, NULL, 'Active'),
(59, 263, 260, NULL, 'Male', '2001-06-01 05:30:00.000', '2026-07-09 05:30:00.000', NULL, NULL, 'Active'),
(60, 264, 260, NULL, 'Female', '2026-07-09 05:30:00.000', '2026-07-09 05:30:00.000', NULL, NULL, 'Active'),
(61, 265, 260, NULL, 'Female', '2000-07-08 05:30:00.000', '2026-07-09 05:30:00.000', NULL, NULL, 'Active'),
(62, 269, 90, 48, 'Female', '2000-02-02 05:30:00.000', '2026-07-13 05:30:00.000', NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783921635/staff/profile/pbxgzo6o2yyhdyyemcwu.jpg', 'Active'),
(63, 270, 90, 48, 'Male', '2001-01-01 05:30:00.000', '2026-07-13 05:30:00.000', NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783923289/staff/profile/rsvgxctnme5pxio3ryit.jpg', 'Active'),
(64, 271, 90, 48, 'Male', '2001-05-07 05:30:00.000', '2026-07-13 05:30:00.000', NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783923979/staff/profile/kr0tey5isyngvcqi7qgw.jpg', 'Active'),
(65, 272, 90, 48, 'Male', '2001-08-09 05:30:00.000', '2026-07-13 05:30:00.000', NULL, NULL, 'Active'),
(66, 273, 90, 48, 'Male', '2001-09-07 05:30:00.000', '2026-07-13 05:30:00.000', NULL, NULL, 'Active'),
(67, 274, 90, 48, 'Male', '1999-09-05 05:30:00.000', '2026-07-13 05:30:00.000', NULL, NULL, 'Active'),
(68, 277, 90, 48, 'Male', '0000-00-00 00:00:00.000', '2026-07-14 14:48:45.000', NULL, NULL, 'Active'),
(69, 278, 90, 48, 'Male', '0000-00-00 00:00:00.000', '2026-07-14 14:48:45.000', NULL, NULL, 'Active'),
(70, 279, 90, 48, 'Male', '0000-00-00 00:00:00.000', '2026-07-14 14:48:45.000', NULL, NULL, 'Active'),
(71, 280, 90, 48, 'Male', '0000-00-00 00:00:00.000', '2026-07-14 14:48:45.000', NULL, NULL, 'Active'),
(72, 281, 90, 48, 'Male', '0000-00-00 00:00:00.000', '2026-07-14 14:48:45.000', NULL, NULL, 'Active'),
(73, 303, 302, NULL, 'Male', '2003-07-22 00:00:00.000', '2026-07-24 00:00:00.000', NULL, NULL, 'Active'),
(74, 308, 302, NULL, 'Male', '2009-07-16 00:00:00.000', '2026-07-24 00:00:00.000', NULL, NULL, 'Active'),
(75, 309, 302, NULL, 'Male', '2009-07-01 00:00:00.000', '2026-07-24 00:00:00.000', NULL, NULL, 'Active'),
(76, 310, 302, NULL, 'Male', '2010-07-08 00:00:00.000', '2026-07-24 00:00:00.000', NULL, NULL, 'Active'),
(77, 318, 314, NULL, 'Male', '2026-07-25 00:00:00.000', '2026-07-25 00:00:00.000', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784960911/staff/profile/dir271tv_1784960911202.jpg.jpg', 'Active'),
(78, 321, 90, 48, 'Male', '2026-07-25 00:00:00.000', '2026-07-25 00:00:00.000', NULL, NULL, 'Active'),
(79, 322, 320, NULL, 'Male', '2026-06-28 00:00:00.000', '2026-07-25 00:00:00.000', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784963933/staff/profile/9vp6a715_1784963933143.jpg.jpg', 'Active'),
(80, 323, 90, 48, 'Male', '2026-07-25 00:00:00.000', '2026-07-24 00:00:00.000', NULL, NULL, 'Active'),
(81, 324, 90, 48, 'Male', '2010-06-30 00:00:00.000', '2026-07-22 00:00:00.000', NULL, NULL, 'Active'),
(82, 325, 90, 48, 'Female', '2004-07-13 00:00:00.000', '2026-07-20 00:00:00.000', NULL, NULL, 'Active'),
(83, 326, 90, 48, 'Female', '2009-07-22 00:00:00.000', '2026-07-01 00:00:00.000', NULL, NULL, 'Active'),
(84, 327, 320, NULL, 'Male', '2005-04-19 00:00:00.000', '2026-07-25 00:00:00.000', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784964403/staff/profile/l9p3wuds_1784964402894.jpg.jpg', 'Active'),
(85, 328, 90, 48, 'Female', '2005-07-02 00:00:00.000', '2026-07-19 00:00:00.000', NULL, NULL, 'Active'),
(86, 329, 90, 48, 'Male', '2008-07-09 00:00:00.000', '2026-07-23 00:00:00.000', NULL, NULL, 'Active'),
(87, 330, 320, NULL, 'Male', '1988-07-18 00:00:00.000', '2026-07-25 00:00:00.000', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784964539/staff/profile/wy74uupr_1784964538818.jpg.jpg', 'Active'),
(88, 331, 320, NULL, 'Male', '2012-07-25 00:00:00.000', '2026-07-25 00:00:00.000', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784964598/staff/profile/tbe729d9_1784964597567.jpg.jpg', 'Active'),
(89, 332, 90, 48, 'Male', '1999-07-25 00:00:00.000', '2015-07-25 00:00:00.000', NULL, NULL, 'Active'),
(90, 333, 320, NULL, 'Male', '2013-07-15 00:00:00.000', '2026-07-25 00:00:00.000', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784964691/staff/profile/9hee3bl4_1784964690952.jpg.jpg', 'Active'),
(91, 334, 320, NULL, 'Male', '2011-07-12 00:00:00.000', '2026-07-25 00:00:00.000', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784964752/staff/profile/gan1btrd_1784964751591.jpg.jpg', 'Active'),
(92, 335, 320, NULL, 'Male', '2009-06-29 00:00:00.000', '2026-07-25 00:00:00.000', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784964830/staff/profile/4omveee7_1784964830390.jpg.jpg', 'Active'),
(93, 336, 320, NULL, 'Male', '2012-07-10 00:00:00.000', '2026-07-25 00:00:00.000', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784964872/staff/profile/84ynfobv_1784964871292.jpg.jpg', 'Active'),
(94, 338, 314, NULL, 'Male', '2001-07-15 00:00:00.000', '2026-07-02 00:00:00.000', NULL, NULL, 'Active'),
(95, 339, 314, NULL, 'Male', '2002-07-15 00:00:00.000', '2025-07-28 00:00:00.000', NULL, NULL, 'Active'),
(96, 340, 314, NULL, 'Male', '2003-07-22 00:00:00.000', '2026-07-25 00:00:00.000', NULL, NULL, 'Active'),
(97, 341, 314, NULL, 'Female', '2005-07-15 00:00:00.000', '2025-07-25 00:00:00.000', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784966341/staff/profile/il9gz4ek_1784966340969.jpg.jpg', 'Active'),
(98, 343, 314, NULL, 'Female', '2004-07-14 00:00:00.000', '2026-07-25 00:00:00.000', NULL, NULL, 'Active'),
(99, 344, 314, NULL, 'Male', '2004-07-07 00:00:00.000', '2025-07-25 00:00:00.000', NULL, NULL, 'Active'),
(100, 345, 314, NULL, 'Male', '2002-07-25 00:00:00.000', '2026-07-25 00:00:00.000', NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784968665/staff/profile/2dg0fuz5_1784968665045.jpg.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `staffattendance`
--

CREATE TABLE `staffattendance` (
  `id` int NOT NULL,
  `shiftId` int DEFAULT NULL,
  `staffId` int NOT NULL,
  `branchId` int NOT NULL,
  `checkIn` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `checkOut` datetime(3) DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'Manual',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'Present',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stockmovement`
--

CREATE TABLE `stockmovement` (
  `id` int NOT NULL,
  `productId` int NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int NOT NULL,
  `assignedTo` int DEFAULT NULL,
  `roleId` int DEFAULT NULL,
  `branchId` int DEFAULT NULL,
  `taskTitle` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `dueDate` date NOT NULL,
  `priority` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Pending',
  `createdById` int NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `assignedTo`, `roleId`, `branchId`, `taskTitle`, `description`, `dueDate`, `priority`, `status`, `createdById`, `createdAt`) VALUES
(32, 25, NULL, NULL, 'error', 'fix it', '2025-12-15', 'high', 'completed', 4, '2025-12-15 08:51:42'),
(33, 25, NULL, NULL, 'Work Load', 'sdrg', '2025-12-16', 'low', 'completed', 4, '2025-12-15 08:53:43'),
(35, 27, NULL, NULL, 'wfr', 'ecfw f3', '2025-12-15', 'low', 'completed', 4, '2025-12-15 11:29:14'),
(39, 70, 3, NULL, 'start train 5 person from today ', '5 person train kro , i will audit next week', '2026-06-16', 'Medium', 'Approved', 90, '2026-06-16 11:21:03'),
(40, NULL, 3, NULL, 'clean locker room', 'asdfgh', '2026-07-23', 'Medium', 'Assigned', 90, '2026-07-20 11:55:17'),
(41, 71, 6, NULL, 'this is urgent task ', 'urgent ', '2026-07-27', 'High', 'Approved', 90, '2026-07-23 07:17:45'),
(42, 77, 6, NULL, 'fitness', 'asdfghjkl', '2026-07-29', 'Medium', 'Assigned', 314, '2026-07-25 10:29:09'),
(43, 96, 5, NULL, 'chj', 'sdfghjk', '2026-07-29', 'Low', 'Assigned', 314, '2026-07-25 10:29:49'),
(44, 99, 10, NULL, 'jhgfds', 'asdfghj', '2026-07-31', 'High', 'Assigned', 314, '2026-07-25 10:30:23'),
(45, 95, 5, NULL, 'jhgf', 'jhgfd', '2026-07-31', 'Medium', 'Assigned', 314, '2026-07-25 10:31:08');

-- --------------------------------------------------------

--
-- Table structure for table `template_audit_logs`
--

CREATE TABLE `template_audit_logs` (
  `id` int NOT NULL,
  `templateId` int NOT NULL,
  `adminId` int DEFAULT NULL,
  `ipAddress` varchar(45) DEFAULT NULL,
  `oldSubject` varchar(255) DEFAULT NULL,
  `newSubject` varchar(255) DEFAULT NULL,
  `oldMessage` text,
  `newMessage` text,
  `changedAt` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenantintegrationsettings`
--

CREATE TABLE `tenantintegrationsettings` (
  `id` int NOT NULL,
  `tenantId` int NOT NULL,
  `razorpayKeyId` varchar(255) DEFAULT NULL,
  `razorpaySecret` varchar(255) DEFAULT NULL,
  `brevoApiKey` varchar(255) DEFAULT NULL,
  `brevoSenderEmail` varchar(255) DEFAULT NULL,
  `brevoSenderName` varchar(255) DEFAULT NULL,
  `paymentGatewayEnabled` tinyint(1) DEFAULT '0',
  `emailEnabled` tinyint(1) DEFAULT '0',
  `isVerified` tinyint(1) DEFAULT '0',
  `lastVerifiedAt` datetime DEFAULT NULL,
  `lastTestStatus` varchar(50) DEFAULT NULL,
  `lastTestMessage` text,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `upiQrCode` varchar(500) DEFAULT NULL,
  `upiId` varchar(255) DEFAULT NULL,
  `upiAccountHolder` varchar(255) DEFAULT NULL,
  `paymentInstructions` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tenantintegrationsettings`
--

INSERT INTO `tenantintegrationsettings` (`id`, `tenantId`, `razorpayKeyId`, `razorpaySecret`, `brevoApiKey`, `brevoSenderEmail`, `brevoSenderName`, `paymentGatewayEnabled`, `emailEnabled`, `isVerified`, `lastVerifiedAt`, `lastTestStatus`, `lastTestMessage`, `createdAt`, `updatedAt`, `upiQrCode`, `upiId`, `upiAccountHolder`, `paymentInstructions`) VALUES
(1, 90, 'rzp_test_TLBqrssKM3ynrx', '8d682e4c9821bc316cc54dcf4bbccb97:791f02b388485811d0e6bd708d81ac9761ddc5a2035cc125237f758eacbbb00f', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, '2026-08-03 06:22:55', '2026-08-04 07:01:26', NULL, NULL, NULL, NULL),
(9, 320, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, '2026-08-03 06:33:22', '2026-08-03 06:33:22', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `token_blacklist`
--

CREATE TABLE `token_blacklist` (
  `id` int NOT NULL,
  `token` varchar(500) NOT NULL,
  `blacklistedAt` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unified_bookings`
--

CREATE TABLE `unified_bookings` (
  `id` int NOT NULL,
  `memberId` int NOT NULL,
  `trainerId` int DEFAULT NULL,
  `sessionId` int DEFAULT NULL,
  `classId` int DEFAULT NULL,
  `date` date NOT NULL,
  `endDate` date DEFAULT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `bookingType` enum('PT','GROUP') COLLATE utf8mb4_general_ci NOT NULL,
  `bookingStatus` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'Booked',
  `paymentStatus` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'Pending',
  `price` decimal(10,2) DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `branchId` int DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unified_bookings`
--

INSERT INTO `unified_bookings` (`id`, `memberId`, `trainerId`, `sessionId`, `classId`, `date`, `endDate`, `startTime`, `endTime`, `bookingType`, `bookingStatus`, `paymentStatus`, `price`, `notes`, `branchId`, `createdAt`, `updatedAt`) VALUES
(8, 3, NULL, NULL, 4, '2025-12-06', NULL, '07:00:00', '08:00:00', 'GROUP', 'Completed', 'Pending', NULL, 'Zumba class test', 1, '2025-12-11 09:12:16', '2026-01-03 10:06:00'),
(9, 68, 87, NULL, 4, '2025-12-11', NULL, '15:52:00', '17:52:00', 'GROUP', 'Completed', 'Pending', NULL, 'Nothing', 33, '2025-12-11 09:23:04', '2026-01-03 10:06:00'),
(10, 3, 5, 2, NULL, '2025-12-10', NULL, '09:00:00', '10:00:00', 'PT', 'Completed', 'Pending', NULL, 'Strength training with personal trainer', 1, '2025-12-11 09:48:05', '2025-12-19 02:25:00'),
(11, 3, NULL, NULL, 4, '2025-12-06', NULL, '07:00:00', '08:00:00', 'GROUP', 'Completed', 'Pending', NULL, 'Zumba class test', 1, '2025-12-11 09:48:33', '2026-01-03 10:06:00'),
(16, 68, 87, NULL, 1, '2025-12-25', NULL, '16:54:00', '18:54:00', 'GROUP', 'Cancelled', 'Refunded', NULL, 'testing...........', 33, '2025-12-11 10:24:56', '2025-12-12 10:47:36'),
(23, 94, NULL, NULL, 24, '2025-12-18', NULL, '17:32:00', '18:32:00', 'GROUP', 'Completed', 'Paid', 1200.00, 'test', NULL, '2025-12-19 01:31:48', '2025-12-19 01:31:48'),
(24, 91, 102, NULL, NULL, '2025-12-18', '2025-12-18', '17:42:00', '18:30:00', 'PT', 'Completed', 'Paid', 1200.00, 'test', NULL, '2025-12-19 01:42:26', '2025-12-19 02:31:00'),
(25, 91, 102, NULL, NULL, '2025-12-18', '2025-12-18', '19:08:00', '19:09:00', 'PT', 'Completed', 'Paid', 1200.00, 'test', NULL, '2025-12-19 03:08:03', '2025-12-19 03:09:00'),
(26, 94, 102, NULL, NULL, '2025-12-19', '2025-12-19', '17:53:00', '17:54:00', 'PT', 'Completed', 'Paid', 1200.00, 'test', NULL, '2025-12-20 01:53:12', '2025-12-20 01:53:48'),
(30, 104, 152, NULL, NULL, '2025-12-01', NULL, '10:00:00', '11:00:00', 'GROUP', 'Completed', 'Pending', NULL, NULL, NULL, '2025-12-01 17:30:00', '2025-12-20 22:23:59'),
(31, 104, 152, NULL, NULL, '2025-12-01', NULL, '18:00:00', '19:00:00', 'GROUP', 'Cancelled', 'Pending', NULL, NULL, NULL, '2025-12-02 01:00:00', '2025-12-20 22:23:59'),
(32, 104, 152, NULL, NULL, '2025-12-02', NULL, '09:00:00', '10:00:00', 'GROUP', 'Completed', 'Pending', NULL, NULL, NULL, '2025-12-02 01:00:00', '2026-01-03 10:06:00'),
(39, 95, 102, NULL, NULL, '2025-12-23', '2025-12-23', '12:00:00', '13:00:00', 'PT', 'Completed', 'Pending', 89500.00, 'testing', NULL, '2025-12-23 05:46:00', '2026-01-03 10:06:00'),
(41, 87, 102, NULL, NULL, '2025-12-23', '2025-12-23', '14:00:00', '15:00:00', 'PT', 'Completed', 'Paid', 80000.00, 'Demo', NULL, '2025-12-23 05:54:42', '2026-01-03 10:06:00'),
(42, 95, 102, NULL, NULL, '2025-12-24', '2025-12-24', '13:00:00', '14:00:00', 'PT', 'Completed', 'Pending', 9000.00, 'Testing', NULL, '2025-12-23 06:07:32', '2026-01-03 10:06:00'),
(45, 102, 150, NULL, NULL, '2025-12-31', '2025-12-31', '13:00:00', '14:00:00', 'PT', 'Completed', 'Pending', 89500.00, 'GHGH', NULL, '2025-12-23 06:18:04', '2026-01-03 10:06:00'),
(47, 87, NULL, NULL, 24, '2025-12-29', NULL, '16:54:00', '19:54:00', 'GROUP', 'Completed', 'Pending', 0.00, 'demo', NULL, '2025-12-29 09:25:11', '2026-01-03 10:06:00'),
(62, 169, 272, NULL, NULL, '2026-07-23', '2026-07-24', '16:45:00', '18:15:00', 'PT', 'Completed', 'Paid', 1200.00, 'asdfghjky', NULL, '2026-07-20 12:04:38', '2026-07-20 12:04:38'),
(63, 156, 279, 45, NULL, '2026-07-25', NULL, '10:00:00', '11:00:00', 'GROUP', 'Booked', 'Pending', NULL, NULL, NULL, '2026-07-23 05:41:19', '2026-07-23 05:41:19'),
(64, 156, 280, NULL, 34, '2026-07-24', NULL, '10:45:00', '11:15:00', 'GROUP', 'Booked', 'Pending', NULL, NULL, 48, '2026-07-23 06:12:05', '2026-07-23 06:12:05'),
(65, 156, 280, NULL, 35, '2026-07-26', NULL, '11:00:00', '12:15:00', 'GROUP', 'Booked', 'Pending', NULL, NULL, 48, '2026-07-23 06:29:57', '2026-07-23 06:29:57'),
(67, 195, 327, NULL, 42, '2026-08-01', NULL, '17:00:00', '18:15:00', 'GROUP', 'Booked', 'Pending', NULL, NULL, NULL, '2026-07-25 12:41:28', '2026-07-25 12:41:28'),
(68, 193, 338, NULL, 45, '2026-07-15', NULL, '07:00:00', '08:15:00', 'GROUP', 'Booked', 'Pending', NULL, NULL, NULL, '2026-07-25 12:42:09', '2026-07-25 12:42:09'),
(69, 163, 279, NULL, 31, '2026-07-10', NULL, '10:00:00', '11:15:00', 'GROUP', 'Booked', 'Pending', NULL, NULL, NULL, '2026-07-31 20:28:06', '2026-07-31 20:28:06'),
(70, 163, 280, NULL, 35, '2026-07-26', NULL, '11:00:00', '12:15:00', 'GROUP', 'Booked', 'Pending', NULL, NULL, NULL, '2026-07-31 20:29:51', '2026-07-31 20:29:51'),
(71, 163, 280, NULL, 34, '2026-07-24', NULL, '10:45:00', '11:15:00', 'GROUP', 'Booked', 'Pending', NULL, NULL, NULL, '2026-07-31 20:46:45', '2026-07-31 20:46:45'),
(72, 163, 280, NULL, 47, '2026-08-01', NULL, '05:00:00', '07:00:00', 'GROUP', 'Booked', 'Pending', NULL, NULL, NULL, '2026-07-31 21:03:07', '2026-07-31 21:03:07'),
(73, 163, 280, NULL, 37, '2026-07-25', NULL, '16:45:00', '17:00:00', 'GROUP', 'Booked', 'Pending', NULL, NULL, NULL, '2026-07-31 21:03:56', '2026-07-31 21:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `used_qr_nonces`
--

CREATE TABLE `used_qr_nonces` (
  `id` int NOT NULL,
  `nonce` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memberId` int NOT NULL,
  `usedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `adminId` int DEFAULT NULL,
  `fullName` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roleId` int NOT NULL,
  `branchId` int DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gymName` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `planName` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `gender` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_zip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profileImage` text COLLATE utf8mb4_general_ci,
  `gstNumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `gymAddress` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `licenseExpiryDate` datetime(3) DEFAULT NULL,
  `licenseKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsappPlan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Basic',
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `visiblePassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsappCredits` int NOT NULL DEFAULT '0',
  `isTrial` tinyint(1) NOT NULL DEFAULT '0',
  `trialStartDate` datetime DEFAULT NULL,
  `trialEndDate` datetime DEFAULT NULL,
  `gracePeriodEndDate` datetime DEFAULT NULL,
  `subscriptionPlan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Basic',
  `trialStatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `razorpayKeyId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpayKeySecret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emailCredits` int NOT NULL DEFAULT '0',
  `smtpHost` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `smtpPass` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `smtpPort` int DEFAULT NULL,
  `smtpUser` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `whatsappAccessToken` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `whatsappPhoneNumberId` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `adminId`, `fullName`, `email`, `password`, `phone`, `roleId`, `branchId`, `createdAt`, `address`, `description`, `duration`, `gymName`, `planName`, `price`, `status`, `dateOfBirth`, `gender`, `address_street`, `address_city`, `address_state`, `address_zip`, `profileImage`, `gstNumber`, `tax`, `gymAddress`, `licenseExpiryDate`, `licenseKey`, `whatsappPlan`, `permissions`, `visiblePassword`, `whatsappCredits`, `isTrial`, `trialStartDate`, `trialEndDate`, `gracePeriodEndDate`, `subscriptionPlan`, `trialStatus`, `razorpayKeyId`, `razorpayKeySecret`, `emailCredits`, `smtpHost`, `smtpPass`, `smtpPort`, `smtpUser`, `whatsappAccessToken`, `whatsappPhoneNumberId`) VALUES
(67, NULL, 'Super Admin', 'rsld2012@gmail.com', '$2b$10$By.RWPWO5IvlLJwrZPfk6e.CLCNkdDlcmjocPZUOXiNml3M5TaJke', '7034897239', 1, NULL, '2025-12-10 03:22:10.656', NULL, NULL, NULL, 'growth fitness gym', NULL, NULL, NULL, NULL, '', '', '', '', '', 'https://gym-backend-production-062c.up.railway.app/uploads/1784719962691_1yz3ce.jfif', '8963546345', NULL, 'indore', NULL, NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 68, 'John Doe', 'john.doe@example.com', '123', '1234567890', 4, 33, '2025-12-11 23:23:13.000', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 68, 'Trainer Name', 'trainer@email.com', 'hashed_password_here', '9999999999', 3, 33, '2025-12-12 02:42:45.028', 'Address here', 'Trainer description', '60 mins', 'Gym Name', 'Plan Name', '1500', 'ACTIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 90, 'John Smith', 'john@gmail.com', '$2b$10$crhZxB76ZuAWo2BDk1i3AednUk5HK2zm4ApRzkyOvnsn90JPMUxPq', '0770090987', 2, 33, '2025-12-12 23:54:44.133', '123 High Street', 'Life Time', 'Yearly', 'GYM Fitness ', 'Pro', '11999', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1765963221/users/profile/pytkcnfpl28ilkk9rpxy.png', '976856345', 10.00, 'indore', '2026-07-08 00:00:00.000', NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'Converted', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 90, 'John Admin', 'admin@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '9876543210', 2, 48, '2025-12-13 00:01:36.965', '101 Shanti Nagar, Indore, Madhya Pradesh, 452001', 'Life Time', 'Monthly', 'gymsoft', 'bronz', '20400.00', 'Active', '2005-02-28', '', '101 Shanti Nagar', 'Indore', 'Madhya Pradesh', '452001', 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1765970252/users/profile/gbtbcuht06njylbc71q8.jpg', '8963546345', 10.00, 'indore', '2027-09-20 00:00:00.000', NULL, 'Basic', NULL, NULL, 12972, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 90, 'John Smith', 'smith1@gmail.com', '$2b$10$zO6HvteXi8KfmXtay9soce6aB0ILw3Jwpe.JznL/SthDX9bz1vHRy', '0770097890', 4, NULL, '2025-12-13 02:02:45.418', '123 High Street', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 90, '123', '123@gym.com', '$2b$10$PkIg/YTs4GFAWUYwnr6o1e9PlFbK7IuOFETGP28n2bTpf5py.dSQK', NULL, 6, NULL, '2025-12-17 13:14:23.306', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(128, NULL, 'TestSuperadmin', 'test123@gmail.com', '$2b$10$ImJP5DumtcqVUzwlTZnDwuvXMnyp6yE0H5bk/KHl25tHNRipIepBC', NULL, 1, NULL, '2025-12-17 13:20:31.038', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 90, 'rahul123', '234@gmail.com', '$2b$10$CCbyKzVjMOEP7xq6UPgU1.bDEOR0yi.yCgQhSDqDS1xvSV0dkhPPq', NULL, 6, NULL, '2025-12-17 13:30:40.057', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 90, 'rahul123', 'r234@gmail.com', '$2b$10$g6PuRz2uxw.llLUKa1w3hu9mR0BMAvnxnHj0IvVX3tnA.tmANv66i', NULL, 6, NULL, '2025-12-17 13:45:55.622', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 90, '', '', '$2b$10$hK5NbZFxxE5oe4fAHDk5FuGjKtKhOyaKcnAt6S.r2cSMWCbGCcW..', NULL, 6, NULL, '2025-12-17 13:48:50.667', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1765960702/users/profile/mfamodv3su9hqpihgbts.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 90, 'raj', 'rrre234@gmail.com', '$2b$10$OIiDwkm7/xZiPfeYEPayRObo0G4yIWuynv4Tnc0UOhMjqXwbBcIAu', NULL, 6, NULL, '2025-12-17 14:14:40.362', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1765961939/users/profile/kosfccw9efeg1s3qh9h5.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 90, 'Rohit Kumar', 'rohit456@mail.com', '$2b$10$6BFA4S.4C2OdEbLq3jlL/.Nbkak1yBlyDZtJC3tTVXnbaO4RRPE1.', '987654321', 4, 33, '2025-12-17 14:36:01.711', 'India', 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1765962394/users/profile/fgk2ftzwjrer6rjdrl2z.jpg', NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 90, 'Sam Member', 'sam.member@example.com', '123', NULL, 4, NULL, '2025-12-20 12:45:55.000', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 90, 'Rohit Kumar', 'rohit@gmail.com', '$2b$10$nnumGwAtIfMi01Q/Hfz5ju6JtgpCBUm9epgFp1u13yT8A1O0mYWiq', '682834545639', 4, NULL, '2025-12-29 15:57:21.147', 'demo', NULL, NULL, NULL, NULL, NULL, 'Active', '2025-12-29', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1767004767/users/profile/zrfba7hmbyxefjh5xujl.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 90, 'Mamber', 'member@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '07008795635', 4, 48, '2025-12-29 16:06:39.494', 'indore', NULL, NULL, NULL, NULL, NULL, 'Active', '2025-12-13', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1767004755/users/profile/z1wpk3vxcezt0nwbav81.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 164, 'Personal', 'personal3@gmail.com', '$2b$10$KP/r4CKd5DeUNztlbbRj8.v/LJPovrnk7suXUct7LjHVvZDZyPwNu', '8014535433', 5, 33, '2025-12-29 16:53:55.913', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1767007436/staff/profile/aqmv4lztzvf2y3woa0f9.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 164, 'General', 'general3@gmail.com', '$2b$10$WUXme3IFWdWoL4FYB23CtOUgQaSI02wfiFRRGyKhj7TkQSLvGfLhS', '571423624289', 6, 33, '2025-12-29 16:54:57.611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1767007497/staff/profile/le18gj4wul2r43tbphg1.png', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 164, 'Housekeeping', 'housekeeping3@gmail.com', '$2b$10$NoEvoNrPUwtBk8C62BWREOTT2lYlU4z1Fss41E1V7O042gSjMOegq', '989543321321', 8, 33, '2025-12-29 16:55:46.503', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1767007546/staff/profile/htwtaywruuljyzknalqa.png', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 164, 'Receptionist Receptionist', 'receptionist3@gmail.com', '$2b$10$V4dr5xmI1ltMe6pltDGpou9cRxOsOzQhUPKh4n7qIt3oYV0u81p76', '9845621357', 7, 33, '2025-12-29 16:56:34.642', 'indore, indore, Madhya Pradesh, 455464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'indore', 'indore', 'Madhya Pradesh', '455464', 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1767007594/staff/profile/eqnhdpvme2f0eborczke.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 164, 'Demo Member', 'memberdemo@gmail.com', '$2b$10$hf8flVewCsfxdn3CbvF.NukNV9prXOuH4TC7Boh/FIxJVm5KgXYr.', '7891742645', 4, 33, '2025-12-29 17:06:00.646', 'indore, indore, Madhya Pradesh, 48946', NULL, NULL, NULL, NULL, NULL, 'Active', '2025-12-29', 'Male', 'indore', 'indore', 'Madhya Pradesh', '48946', 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1767084270/users/profile/qa26gdzqkf8veywmi6vx.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 164, 'Test', 'test@gmail.com', '$2b$10$JQFPaMODm505YNdSa3bCge63EyiSw7Y2V9WhyitpNzRPZWDebhc9e', '879135465425', 4, NULL, '2025-12-30 17:52:59.452', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2025-12-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 90, 'Smith', 'smith123@gmail.com', '$2b$10$7ntoDhEWiZlFdlCyOxP9SOfZWfYuITkZmYSbJCMj4X5WyCODhVTb2', '07700900123', 4, NULL, '2026-01-01 15:24:58.429', '123 High Street', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-01-01', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1767262712/users/profile/byjee88vrwtqu5i6x41p.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 164, 'General4', 'general4@gmail.com', '$2b$10$wwyyXWykD5NCndwJV5gXk.RMw8duMKQ64vFQD8GebXZ2oNBlM19xG', '871981682747', 6, 33, '2026-01-01 17:54:18.156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 164, 'HouseKeeping4', 'house@gmail.com', '$2b$10$yoZ.BHNLBgq6rQi/nwpuPuXraEe46KuvrEUz6w1PIrPjlGMXhZ2VK', '12435346456456', 8, 33, '2026-01-01 18:07:22.012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 90, 'Aman', 'aman@gmail.com', '$2b$10$ZxtsyaU4dDrneMfMXq.XUeGZUjF.6kfl1Poc/8.gHDTnBKknsVNLO', '456789091', 4, NULL, '2026-01-01 18:36:41.849', '123 High Street', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-01-01', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1767272799/users/profile/uwjjrwnuskexslwdvy2j.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 90, 'Test', 'test456@gmail.com', '$2b$10$CRvGCaT79xkIwEVonQLJg.ChAdZuJkbsStTw/cgJISwxBUUrEl0Si', '34567890', 4, NULL, '2026-01-02 12:21:50.165', '123 Indore Street', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-01-02', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1767336709/users/profile/tq61112zew86fjczatbd.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 90, 'asdf', 'asdf@gmail.com', '$2b$10$P1fIb5egWqxH7S4amwnnqOf1/d7tcelpX77NzFK54Hm5FPewkwOBS', '12345678', 4, NULL, '2026-01-02 14:19:42.765', 'Rau Circle Indore', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-01-02', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1767343782/users/profile/lnubvnapjqdgz2n1hl1u.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 90, 'Jay', 'jay9977@gmai.com', '$2b$10$KU1zkLdI6QnhXpNbQyJc2OM76Cj23XiXkvWdzFfEwhGFuPhhK6uea', '12345678', 4, NULL, '2026-01-03 12:48:51.513', 'Rau Circle Indore', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-01-03', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1767424730/users/profile/t3vocb9zaytadfvise0t.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 90, 'demo', 'demo2345@gmail.com', '$2b$10$v6DqlyDOVoU7exUJEUl6.eQCddyeMzj8D5PSWa1.ip3cYCYNRrUVe', '2324343432', 4, NULL, '2026-01-07 16:44:54.892', '123 High Street', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-01-07', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1767784493/users/profile/s5v8jn3owxbhnaclxr4n.jpg', NULL, 5.00, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 90, 'test', 'test56789@gmail.com', '$2b$10$Dmx9ORgIWOrzsWAYKOYFMe.4jsYNP0QsdwdlYnTPCAVlQxaqHiuyi', '123456789', 4, NULL, '2026-01-08 14:51:31.410', '123 High Street', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-01-08', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1767864090/users/profile/yjylix8eylk2x6pkk30j.jpg', NULL, 5.00, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 216, 'kkk', 'kkkk@gmail.com', '$2b$10$X7Egrr8ApuijHOvfJ/vN.uB9wBa5mo7YW7uv7C1dBd0ve.AYj7lfq', '101010101010', 5, 50, '2026-06-13 15:37:22.696', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1781345250/staff/profile/qm4fsxd0zmh0tyc0jgo1.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 216, 'sarah', 'sarah123@gmail.com', '$2b$10$wIknGYilm60SUH302rFVfuK7.RIFP.kfoHc6JxcThONy/vvr1WvUy', '101010101010', 4, NULL, '2026-06-13 15:39:22.634', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2003-02-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 90, 'demo boy', 'demoboy@gmail.com', '$2b$10$xMgLjnERgs3JU4toOTxGV.W9l0L1bUE39v5/Pi7fTJ24EqhNoRDYK', '7894561234', 4, NULL, '2026-06-15 14:21:59.005', 'demo street, demo city ', NULL, NULL, NULL, NULL, NULL, 'Active', '1998-12-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 90, 'Demo girl', 'demogirl@gmail.com', '$2b$10$oQ/0HcuOdFAY/.NkIooRee2HS.XGtlw7.6DI3xwi3AGeN1T6Gsdjq', '457869123', 4, NULL, '2026-06-15 15:11:44.759', 'demo street', NULL, NULL, NULL, NULL, NULL, 'Active', '1999-08-21', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1781516504/users/profile/e9x7ms3n7ay59oj0gc97.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 90, 'Demo Aayush', 'demoaayu@gmail.com', '$2b$10$/qC8JqA2Yq6IxtKKEGJey.btosdudsAV5IQCuoRnb05v0nUyFXd.q', '1234567890', 4, NULL, '2026-06-17 13:28:37.723', 'demo street', NULL, NULL, NULL, NULL, NULL, 'Active', '2002-01-01', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1781683117/users/profile/f5kzs3ldapiae0kogzzl.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 90, 'Dummy Lead 1', 'dummy.lead1@example.com', '$2b$10$XOroeua9HURQPyWvfQx9ROfv/x.MSxuEGc4ySVMZh0IiNSpreELbG', '9000000001', 4, NULL, '2026-06-17 14:33:22.870', 'xyz', NULL, NULL, NULL, NULL, NULL, 'Reject', '2000-08-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 90, 'pia b', 'pia@gmail.com', '$2b$10$XM0CxnvFkK3w5zRHZbiw6enP8NceBqljEJr1JLwP2h5whr4b7i.T.', '78945455421', 4, NULL, '2026-06-26 15:29:00.421', 'null', NULL, NULL, NULL, NULL, NULL, 'Active', '1998-02-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 90, 'riya ', 'riya@gmail.com', '$2b$10$ZQdCgNH7I//MSIeXYyDz2OvdI.wChFkj0IHFksLeDkrdSNYpV2.Ne', '7849615654', 4, NULL, '2026-06-26 16:06:29.388', 'null', NULL, NULL, NULL, NULL, NULL, 'Active', '1995-06-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(244, NULL, '7daysfreetrialgym', '7daysfreetrialgym@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '4561237899', 2, NULL, '2026-07-07 16:22:58.295', NULL, NULL, 'Monthly', '7daysfreetrialgym', '7-Day Free Trial', '0', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18.00, NULL, '2026-07-17 05:30:00.000', NULL, 'Basic', NULL, '123456', 0, 1, '2026-07-10 05:30:00', '2026-07-17 05:30:00', NULL, 'Basic', 'Active', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(245, NULL, '7dayssecondfree', '7dayssecondfree@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '554545545', 2, NULL, '2026-07-07 16:51:03.269', NULL, NULL, 'Yearly', '7dayssecondfree', 'Pro', '11999', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '52698323', 18.00, NULL, '2027-07-17 05:30:00.000', NULL, 'Basic', NULL, '123456', 0, 0, '2026-07-10 05:30:00', '2026-07-17 05:30:00', NULL, 'Trial', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(246, NULL, 'aaagym', 'aaagym@gmail.com', '$2b$10$aQGJfOQqQsP0AS9z/s.bHOm/qGgNeF732pD7yzScLasXo8amDThT.', '6565362545', 2, NULL, '2026-07-07 17:17:18.817', NULL, NULL, 'Yearly', 'aaagym', 'Pro', '11999', 'Active', NULL, NULL, NULL, 'noida', NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783424837/users/profile/djb6cg5qtj3jc2urps8z.png', '5869746565', 18.00, NULL, '2027-07-17 05:30:00.000', NULL, 'Basic', NULL, '112233', 0, 0, '2026-07-10 05:30:00', '2026-07-17 05:30:00', NULL, 'Trial', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(247, NULL, 'zzgym', 'zzgym@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '456789965', 2, NULL, '2026-07-07 18:33:04.439', NULL, NULL, 'Yearly', 'zzgym', 'Pro', '0.00', 'Active', NULL, NULL, NULL, 'indore', NULL, NULL, NULL, '5689565965', 18.00, NULL, '2027-07-11 05:30:00.000', NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Premium', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(248, NULL, 'plangym', 'plangym@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '5522336984', 2, NULL, '2026-07-08 11:01:57.111', NULL, NULL, 'Yearly', 'plangym', 'Pro', '0', 'Active', NULL, NULL, NULL, 'gujrat', NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783488716/users/profile/fl4aezlflkfctqxhcuzn.png', '325698596536', 18.00, NULL, '2027-07-10 05:30:00.000', NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Premium', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(249, NULL, 'planbgym', 'planbgym@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '5689565656', 2, NULL, '2026-07-08 11:11:47.419', NULL, NULL, 'Yearly', 'planbgym', 'Basic', '8999', 'Active', NULL, NULL, NULL, 'suart', NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783489307/users/profile/znhmejtrynlh9uvknhnb.png', '3569563259', 18.00, NULL, '2027-07-10 05:30:00.000', NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(250, NULL, 'plancgym', 'plancgym@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '456136554', 2, NULL, '2026-07-08 11:27:21.074', NULL, NULL, 'Yearly', 'plancgym', 'Gold', '4998', 'Active', NULL, NULL, NULL, 'ahemdabad', NULL, NULL, NULL, '658659856', 18.00, NULL, '2027-07-11 05:30:00.000', NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(251, NULL, 'palnaagym', 'planaagym@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '455656565', 2, NULL, '2026-07-08 11:40:08.004', NULL, NULL, 'Yearly', 'palnaagym', 'Pro', '11999', 'Active', NULL, NULL, NULL, 'ranchi', NULL, NULL, NULL, '565565965', 18.00, NULL, '2027-07-15 05:30:00.000', NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Premium', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(252, NULL, 'chikkugym', 'Chikkuyadav125@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '654789656', 2, NULL, '2026-07-08 15:51:22.369', NULL, NULL, 'Yearly', 'chikkugym', 'Pro', '11999', 'Active', NULL, NULL, NULL, 'indore', NULL, NULL, NULL, '659898656598', 18.00, NULL, '2027-07-10 05:30:00.000', NULL, 'Basic', NULL, '123456', 100, 0, NULL, '2026-07-09 00:11:29', '2026-07-12 00:11:29', 'Premium', 'Active', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 252, 'sarah', 'sarahh@gmail.com', '$2b$10$cnQm.vPQgyYu3QAAl6FcN.oZwXSYtGWpbMtodbvVfppsUm9NOVHZ.', '7067955583', 4, NULL, '2026-07-08 17:18:13.800', 'greater indore', NULL, NULL, NULL, NULL, NULL, 'Active', '2003-02-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 90, 'sanni', 'sanni@gmail.com', '$2b$10$DccN17.PS57wQCRIMIHXAuUwhe4a4GMj61C2fl3G3Ubp1pUYFxwUm', '582548666', 4, NULL, '2026-07-08 17:43:25.609', 'greater indore', NULL, NULL, NULL, NULL, NULL, 'Active', '2003-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(260, NULL, 'bhgaygym', 'bhagyashreeyadav1001@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '101010101019', 2, NULL, '2026-07-09 11:33:49.438', NULL, NULL, 'Yearly', 'bhgaygym', 'Basic', '91790', 'Active', NULL, NULL, NULL, 'noida', NULL, NULL, NULL, '65898563265', 18.00, NULL, '2027-07-16 05:30:00.000', NULL, 'Basic', NULL, '123456', 0, 0, '2026-07-09 05:30:00', '2026-07-16 05:30:00', NULL, 'Trial', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 260, 'sneha', 'sneha@gmail.com', '$2b$10$OmTN1sumb.HnDMmfKHHMZ.ECqbU5fua3Xeq/sAIPwiBhdGe.nqVWW', '456321456', 10, NULL, '2026-07-09 13:26:55.519', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 260, 'sonu', 'sonu@gmail.com', '$2b$10$CuaPbQIkmK/GLdr1OdkgqOo2agByAUAWx4GfKRzALaxLiYbgI3pge', '45612396', 5, NULL, '2026-07-09 14:51:30.887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 260, 'monu', 'monu@gmial.com', '$2b$10$7unVm7pvVeaeQpOVyzICeOllNPBPA.fwlywFolhRDMMyyeCpJru9K', '4895323565', 6, NULL, '2026-07-09 14:52:13.709', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 260, 'sikha', 'sikha@gmail.com', '$2b$10$ZrJAP52YMtsshhdDk2lvJ.Q2C8EN/mip0pQA07EMsD0Tnked9eLhy', '1236559859', 7, NULL, '2026-07-09 14:53:03.041', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 260, 'kumari', 'kumari@gmail.com', '$2b$10$Fe1deV2uQ2w0MCD40ecdC.al1xhLXIXpbVNZoWXOft2151Ok41rEm', '45631236', 8, NULL, '2026-07-09 14:53:57.340', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(266, NULL, 'piasubadmin', 'piasubadmin@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '656565666', 9, NULL, '2026-07-11 12:16:29.957', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783752391/users/profile/k4guss8rkkpwqgbllqzf.png', NULL, NULL, NULL, NULL, NULL, 'Basic', '[\"Dashboard\",\"Gym Owners\",\"Plans & Pricing\",\"Announcements\",\"Setting\",\"Leads / Inquiries\",\"Request Plan\",\"Payments\",\"Trial & Automation\"]', '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(267, NULL, 'barodpia', 'barodgym@gmail.com', '$2b$10$6bpEadA.SKHoewMkPh8qT.kh/58R1FcNuZ80o.S4nL.ryQVtScP5e', '2546635566', 2, NULL, '2026-07-11 12:55:57.864', 'greater indore', 'Life Time', 'Yearly', 'barodgym', 'Pro', '11999', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '74AS741851529', 18.00, 'greater indore', NULL, NULL, 'Basic', NULL, NULL, 0, 0, '2026-07-11 12:55:57', '2026-07-18 12:55:57', '2026-07-21 12:55:57', 'Basic', 'Active', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(268, NULL, 'piasingh', 'singhgym@gmail.com', '$2b$10$IM8GF5dAVqvlDr8pRnpv2ew3UzHKPotV2vNx/3UoP2sXWvSBbu4Dy', '5566223314', 2, NULL, '2026-07-11 13:05:21.142', 'noida', 'demo', 'Monthly', 'singhgym', 'Basic', '8999', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '74AS741851528', 18.00, 'noida greater', '2026-08-10 00:00:00.000', NULL, 'Basic', NULL, NULL, 0, 0, '2026-07-11 13:05:21', '2026-07-18 13:05:21', '2026-07-21 13:05:21', 'Basic', 'Active', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 90, 'sanu', 'snu@gmail.com', '$2b$10$wUfh0FDZ/jYPzFD2Jh6Wo.PdKJXSYJyBG5zfV1L9G5pPLN7IIFRmS', '5236985745', 10, 48, '2026-07-13 11:17:12.737', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783921635/staff/profile/pbxgzo6o2yyhdyyemcwu.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 90, 'mannu', 'mannu@gmail.com', '$2b$10$TIBagtPAUrno4M8VZjYnDuCi7aKocKl2domXQL4.JoqMLQiibYOPS', '58236974', 10, 48, '2026-07-13 11:44:47.733', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783923289/staff/profile/rsvgxctnme5pxio3ryit.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 90, 'perstrainer1', 'perstrainer1@gmail.com', '$2b$10$R7Ilx7lq0pXHkreo7Sl4Me2NbjbQFW/HVzmyp3zssjNVR5aJhqWR2', '265966565', 5, 48, '2026-07-13 11:56:17.169', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/dw48hcxi5/image/upload/v1783923979/staff/profile/kr0tey5isyngvcqi7qgw.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 90, 'personaltra2', 'personaltra2@gmail.com', '$2b$10$kIS1iuXF32dUv7sG2e3CZeSx2lk4LX5.bTldnVUMn7KiL2kC1VS0W', '45625369', 5, 48, '2026-07-13 11:57:37.362', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 90, 'gentrainer1', 'gentrainer1@gmail.com', '$2b$10$VGn5/yWWEz7qeKe9wd4yDOTfeEvsQi/MW24mTTBUZCh6fTMNUuHCO', '45632178', 6, 48, '2026-07-13 11:59:01.428', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 90, 'gannu', 'gannu@gmail.com', '$2b$10$CyAM7TDLOBUF9xj4ybp4He2w/rFpOLEIvGbe71QK6hs4Z8mrXkjDm', '45698745', 7, 48, '2026-07-13 11:59:49.643', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 90, 'barodjia', 'barodjia@gmail.com', '$2b$10$pBoeBCXkBtpOzAXg3PfoyOA0e5Vqw0RujdkOD.QAdsmsZMlnVkf16', '456563365', 4, 48, '2026-07-13 13:07:51.822', 'greater indore', NULL, NULL, NULL, NULL, NULL, 'Active', '2002-05-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(276, NULL, 'piiigym', 'barodpia280897@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '1234567890', 2, NULL, '2026-07-14 11:13:48.559', NULL, NULL, 'Yearly', 'piiigym', 'Basic', '91790', 'Active', NULL, NULL, NULL, 'noida', NULL, NULL, NULL, '74AS741851526', 18.00, NULL, '2027-07-21 05:30:00.000', NULL, 'Basic', NULL, '123456', 0, 0, '2026-07-14 05:30:00', '2026-07-21 05:30:00', NULL, 'Trial', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 90, 'Default Receptionist', 'receptionist@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '1234509876', 7, 48, '2026-07-14 14:48:45.000', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 90, 'Default Housekeeping', 'housekeeping@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', NULL, 8, 48, '2026-07-14 14:48:45.000', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 90, 'Default Personal Trainer', 'personal@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', NULL, 5, 48, '2026-07-14 14:48:45.000', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 90, 'Default General Trainer', 'generaltrainer1@gym.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', NULL, 6, 48, '2026-07-14 14:48:45.000', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 90, 'Default Sales Agent', 'salesagent@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', NULL, 10, 48, '2026-07-14 14:48:45.000', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(282, NULL, 'nalinigym', 'naliniparas228@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '5566223148', 2, NULL, '2026-07-14 15:01:47.303', NULL, NULL, 'Quarterly', 'nalinigym', 'Pro', '2850', 'Active', NULL, NULL, NULL, 'pipli', NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784021510/users/profile/q9lscukx_1784021504204.png.png', '74AS741851528', 18.00, NULL, '2026-08-13 05:30:00.000', NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Premium', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(284, NULL, 'raj_shekar', 'rahssshh@gmail.com', '$2b$10$/ieh9rLQFARS.RZKhemXP.b84TH9rhzn8EUSNIVeM.soQEveHntGq', '101010101010', 9, NULL, '2026-07-14 16:09:52.470', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', '[\"Dashboard\",\"Gym Owners\",\"Plans & Pricing\"]', '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 90, 'rahshekar2', 'rajshekkar12@gmai.com', '$2b$10$wcBrPIxJ3L.OPiH2C4b5Yeb5Azsil/sXqdyiMOPvhgM3MVycd9b96', '545656656', 4, NULL, '2026-07-14 16:38:52.198', 'greater indore', NULL, NULL, NULL, NULL, NULL, 'Active', '2000-01-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 279, 'john', 'johne@gmail.com', '$2b$10$Fb6cOPtg6ohLQHYr8AbXXe1EyEb9VCOHsQyIyxs9GO6/HT3QCeqdW', 'smith', 4, NULL, '2026-07-20 11:13:59.745', 'john , mira , dolly', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-07-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 90, 'xyz', 'xyz@gmail.com', '$2b$10$JQY0afoa2hwzT3UJyGkwsuHVCCLz/pt2Y0kntJAIl6MNg5/9v9ojq', '98765432345', 4, NULL, '2026-07-20 12:54:32.648', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2026-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 90, 'taasi', 'tasi@gmail.com', '$2b$10$SUZoDqQCyEF2LRbVmNFufuYjewAVCkJCvrrqZjsTR19KEp5ivWaW.', '9876543224', 4, NULL, '2026-07-20 16:20:25.937', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2026-07-31', NULL, NULL, NULL, NULL, NULL, 'https://gym-backend-production-062c.up.railway.app/uploads/1784544625550_kfa40b.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 90, 'Auto Email Test Member', 'autoemailtestmember17845482845829758@gym.com', '$2b$10$YUI.l8mlWxgtFlMnEs9yJupzT.jh9Rtptd3jfwO/31py2TnCWuSQO', '9988776655', 4, NULL, '2026-07-20 17:21:24.587', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 90, 'Auto Email Member', 'autoemailmember17845483294424494@gym.com', '$2b$10$lowu4PK3JazxJZTlEp.0AeWGyEyZ80T79SGYWfQ0parNnjVZ4twMe', '9988771122', 4, NULL, '2026-07-20 17:22:09.446', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 90, 'sarah', 'sarah13@gmail.com', '$2b$10$aO/QX7EnSIVXxkXh4AalmOoD.WLgnAdH371vBDZlKl9N2UZR57AVq', '1010101010', 4, NULL, '2026-07-20 17:23:51.238', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2026-07-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(293, NULL, 'Mohit sharma', 'member1@gmail.com', '$2b$10$Gx6z50CkBprz5LLsk/kwVOkUEpqjlyii/lJVgAREt7Q7hXFfNLkpe', '07008795635', 2, NULL, '2026-07-22 16:52:40.108', 'indore', NULL, NULL, 'power boost fitness', NULL, NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, 'https://gym-backend-production-062c.up.railway.app/uploads/1784719359978_vojm4k.jpg', NULL, 5.00, 'xyz', '2026-07-31 00:00:00.000', NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 90, 'sam', 'sam@gmail.com', '$2b$10$c2r8pUm8cRZ4AqcNuM/R8ugS.FQVjIKYTLzr1aykKlHgmoMQtEt8O', '984576324', 4, NULL, '2026-07-23 10:37:21.291', '12dctyuk', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-07-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 90, 'Diya Jain', 'jaindiya258@gmail.com', '$2b$10$kmDfeAJvvl.kSVr4wfgss.LD1VVXSl7lBhZ1ycPUHoEHT13ZjUsGe', '07518824806', 4, NULL, '2026-07-23 10:44:16.119', 'kerhgayhd ', NULL, NULL, NULL, NULL, NULL, 'Active', '2005-03-18', NULL, NULL, NULL, NULL, NULL, 'https://gym-backend-production-062c.up.railway.app/uploads/1784783655980_4h9vqi.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 90, 'user user', 'user@gmail.com', '$2b$10$TofncNHiQx7OJFR01CHI7OzZQlFXKcmVVufcjVi4F5CTSffrKu5c.', '222222222', 4, NULL, '2026-07-23 14:32:22.049', 'was', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 90, 'test', 'asdfghjk@gmail.com', '$2b$10$ckPxJFV0E4KfNcHqgS/27ukOcey7N6iYcFO3qwrcyOk9yaLNipBLq', '4444444444', 4, NULL, '2026-07-23 14:49:02.198', 'h', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 90, 'tanuja', 'tanuja@gmail.com', '$2b$10$U8bK6rJnmqGKlyhFfU3pBuBtHJF1wAzHU11oklhfrRwn9S1zWzWtO', '1234567809', 4, NULL, '2026-07-24 05:03:09.132', 'delhi', NULL, NULL, NULL, NULL, NULL, 'Active', '2000-06-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 90, 'sdf', 'scxz@gmail.com', '$2b$10$PiFDP/PHLkMO0.I6OvlcvO1WyVl/okfxE8bopDvtZBBt/h6SA81/O', '7652345633', 4, NULL, '2026-07-24 05:44:49.732', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 90, 'bot user', 'botuser@gmail.com', '$2b$10$qw/oMSJtpCo912tyo7rbDukmWBiFKu07E6fJINPvGA5KfJvBae7ZG', '3232125532', 4, NULL, '2026-07-24 06:52:21.439', 'rs', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-07-16', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784875940/users/profile/8wurgdsb_1784875940017.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 90, 'safari', 'safari@gmail.com', '$2b$10$e.B1ylNIOI5nD.SEA/TdO.PSqByFV8n/HZPN35/FaoKy4Zn/syoXG', '0112343233', 4, NULL, '2026-07-24 07:00:07.306', 'dwsvfed', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-07-09', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784876406/users/profile/pc9ymfwf_1784876405475.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(302, NULL, 'Gym1', 'abc@gmail.com', '$2b$10$dh.mcEA/t5qW1aADZ3eIWudYpec17/cQ7YYPJ/Ghvq1E2UTrzk2U.', '91191999', 2, NULL, '2026-07-24 07:00:28.993', 'New Delhi', 'wes', '7 Days', 'Gym1', '7 day freee package', '0', 'Active', NULL, NULL, NULL, 'New Delhi', NULL, NULL, NULL, NULL, 18.00, 'Hn 2020 Ashram', '2026-07-31 00:00:00.000', NULL, 'Basic', NULL, '123456', 0, 0, '2026-07-24 00:00:00', '2027-07-24 00:00:00', NULL, 'Basic', 'Converted', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 302, 'raj', 'aaaa@gmail.com', '$2b$10$4kCFp03gq/ENlYx5.J2y8OIWGh2kv/5.njwrY9omS2/Nii8fp7C7q', '09205118617', 7, NULL, '2026-07-24 07:38:19.549', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(305, NULL, 'ABC Pvt Ltd', 'abcd@gmail.com', '$2b$10$1o84FesNcdDcDOVVyDCe7OQpuki0yFPB91k05TGjmhGWiF8itdR/y', '2232323232', 2, NULL, '2026-07-24 08:43:01.217', NULL, NULL, '7 Days', 'ABC Pvt Ltd', '7 day freee package', '0.00', 'Active', NULL, NULL, NULL, 'india', NULL, NULL, NULL, '98765432QWSDF', 18.00, NULL, '2026-07-31 08:43:01.215', NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(306, NULL, 'testing gym ', 'testing@gmail.com', '$2b$10$kWkhINTSAWKo1I1Iajhf8ePuEanDRmZ61F9/y4JykaGPOJ7gC9Zei', '5555555555', 2, NULL, '2026-07-24 09:05:40.468', 'g', 'Plan for Monthly @ ₹2000', 'Monthly', 'testing gym ', 'bronz', '2000', 'Active', NULL, NULL, NULL, 'india', NULL, NULL, NULL, NULL, 18.00, 'g', '2026-08-24 00:00:00.000', NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'Converted', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(307, NULL, 'gymsoft ', 'gymsoft@gmail.com', '$2b$10$7egC1paqkJbIBd4toDr3/.xzWStMHAtJWh0Jf8urHuO1bBCjVh/Pq', '4564738383', 2, NULL, '2026-07-24 10:48:07.713', NULL, NULL, '7 Days', 'gymsoft ', '7 day freee package', '0.00', 'Active', NULL, NULL, NULL, 'india', NULL, NULL, NULL, '07ABCDE1234F1ZV', 18.00, NULL, '2026-07-31 10:48:07.718', NULL, 'Basic', NULL, '123456', 0, 1, '2026-07-24 10:48:08', '2026-07-31 10:48:08', NULL, '7-Day Trial', 'Active', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 302, 'gt1', 'dft@gmail.com', '$2b$10$bcBBLn/OlybXvfHvf5dyQ.4SSn5SqfVo5KhGpekuDvjwj3D0ppYsG', '9205118617', 6, NULL, '2026-07-24 12:03:08.322', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 302, 'pt1', 'aahhh@gmail.com', '$2b$10$zb41fimLKrW0QUZW5bw8XuWi1ARegFynAfCVol8z4qkKK74FgNqkG', '922222', 5, NULL, '2026-07-24 12:04:09.015', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 302, 'sales1', 'ahahhah@gmail.com', '$2b$10$HQiZSC2bja62j4RgGBZ1Uuj8giQCn7dPEQQAI0qRjJ9boDf6p1NxO', '988888', 7, NULL, '2026-07-24 12:05:04.174', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 302, 'member1', 'jjsssj@gmail.com', '$2b$10$N5l6cvhfsG1r68P6/Lk87uYM7vHUVwu1enPWU6/c8mBQJhlI0N9QS', '9888888', 4, NULL, '2026-07-24 12:09:14.041', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2010-07-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(313, NULL, 'fithit gym ', 'fithit@gmail.com', '$2b$10$jqnpIWA4o.ktgzVLuKlCweWIicVfUfIm8KClNIMbTlDRbxQDcpZda', '75757575757', 2, NULL, '2026-07-24 12:40:13.453', NULL, NULL, 'Yearly', 'fithit gym ', 'Pro', '10199.00', 'Active', NULL, NULL, NULL, 'indonesia', NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784896778/users/profile/pv4bmlp8_1784896777454.png.png', NULL, 18.00, NULL, '2027-07-31 12:40:13.455', NULL, 'Basic', NULL, '123456', 0, 0, '2026-07-24 12:40:13', '2026-07-31 12:40:13', NULL, '7-Day Trial', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(314, NULL, 'icon', 'aa@123', '$2b$10$9Mjb7i0tD8e/pHOTwRm0kO/YVopWEOaaCjDGf./NxpLW3g4hnD4QC', '12345678', 2, NULL, '2026-07-25 06:11:04.716', NULL, NULL, '7 Days', 'icon', '7-Day Free Trial', '0.00', 'Active', NULL, NULL, NULL, 'indore', NULL, NULL, NULL, '123456', 18.00, NULL, '2026-08-01 06:11:04.715', NULL, 'Basic', NULL, '12345', 0, 1, '2026-07-25 06:11:05', '2026-08-01 06:11:05', NULL, '7-Day Trial', 'Active', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(315, NULL, 'gym  soft go', 'gymsoftgo@gmail.com', '$2b$10$7iEYNb183ziPMZzEwwfXLeOfnuA33NqybcWed0GbrCUC0yBH3GCsS', '3232232323', 2, NULL, '2026-07-25 06:19:12.388', NULL, NULL, '7 Days', 'gym  soft go', '7 day freee package', '0.00', 'Active', NULL, NULL, NULL, 'india', NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784960233/users/profile/9azwsq02_1784960233157.jpeg.jpg', NULL, 18.00, NULL, '2026-08-01 06:19:12.387', NULL, 'Basic', NULL, '123456', 0, 1, '2026-07-25 06:19:12', '2026-08-01 06:19:12', NULL, '7-Day Trial', 'Active', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 314, 'bbb', 'raj23@gmail.com', '$2b$10$pygxSScY3I.BCZaayC1c2.kTVe7XBMbc/6F2sfQw4P7kq2U5J8K0q', '12345', 4, NULL, '2026-07-25 06:23:34.836', 'sudama nagar mp', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-07-25', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784960614/users/profile/a14sjpm0_1784960613974.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 314, 'rrr', 'rr@123', '$2b$10$SjVKtGIHVRP2lZawOomBH.gtwoZoB9A05/gxbieFwwk52c8b0xYXu', '123456', 4, NULL, '2026-07-25 06:26:04.411', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 314, 'genral1', 'rajj23@gmail.com', '$2b$10$YXPszrXVKe93yyhm0tKfquEIx..eZw7iZJFV6WP/VQd8DCpaFgvQe', '23456', 6, NULL, '2026-07-25 06:28:32.149', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784960911/staff/profile/dir271tv_1784960911202.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(319, NULL, 'first fitness gym', 'fitness@gmail.com', '$2b$10$Opq17pwPf3IaQ70uplcOJOZFS14fDjd74wTcZKJUJtv1DRR6NfgGm', '4321123454', 2, NULL, '2026-07-25 06:49:07.704', NULL, NULL, '7 Days', 'first fitness gym', '7-Day Free Trial', '0.00', 'Active', NULL, NULL, NULL, 'australia', NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784961895/users/profile/zsxecswz_1784961895409.png.png', 'mnbvryjiwo', 18.00, NULL, '2026-08-01 06:49:07.702', NULL, 'Basic', NULL, '123456', 0, 1, '2026-07-25 06:49:08', '2026-08-01 06:49:08', NULL, '7-Day Trial', 'Active', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(320, NULL, 'fresh up', 'fresh@gmail.com', '$2b$10$l7fHQYlBWTQTG3ADV29pUe9VC9odwWkzL3vLPHZ954J/QJGfSTGmG', '4345324522', 2, NULL, '2026-07-25 07:13:44.270', 'india', 'qw', 'Monthly', 'fresh up', 'bronz', '2000', 'Active', NULL, NULL, NULL, 'india', NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784963600/users/profile/uah1vg5u_1784963600106.png.png', 'msmlmkmk', 18.00, 'india', '2026-08-24 00:00:00.000', NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'Converted', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 90, 'aaa', 'raja23@gmail.com', '$2b$10$BtN7BNABp4Lwd5gFheWcIu/t5aETcrZpeOZ7qLwhpE2OS871qioJS', '1234567', 6, 48, '2026-07-25 07:16:37.924', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 320, 'personal trainer one', 'personal12@gmail.com', '$2b$10$2JYDu/g.4e2Y9/.LYRdAtefTiVIegVOfVwZsxw5HA9YSijEy7mLJW', '5678904321', 5, NULL, '2026-07-25 07:18:53.947', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784963933/staff/profile/9vp6a715_1784963933143.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` (`id`, `adminId`, `fullName`, `email`, `password`, `phone`, `roleId`, `branchId`, `createdAt`, `address`, `description`, `duration`, `gymName`, `planName`, `price`, `status`, `dateOfBirth`, `gender`, `address_street`, `address_city`, `address_state`, `address_zip`, `profileImage`, `gstNumber`, `tax`, `gymAddress`, `licenseExpiryDate`, `licenseKey`, `whatsappPlan`, `permissions`, `visiblePassword`, `whatsappCredits`, `isTrial`, `trialStartDate`, `trialEndDate`, `gracePeriodEndDate`, `subscriptionPlan`, `trialStatus`, `razorpayKeyId`, `razorpayKeySecret`, `emailCredits`, `smtpHost`, `smtpPass`, `smtpPort`, `smtpUser`, `whatsappAccessToken`, `whatsappPhoneNumberId`) VALUES
(323, 90, 'bbb', 'raaj23@gmail.com', '$2b$10$xdaU6AGxIJuvmgl.7FLsMu3htYEYNg02yP7T/RyQp81gwdDWC.DeC', '12345679', 6, 48, '2026-07-25 07:19:27.613', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 90, 'ccc', 'cc@123', '$2b$10$ePvE/G33x.C./tITEITiseu12rKzaBUZbqY4b3iOCB928sCxEpUTW', '123123', 5, 48, '2026-07-25 07:21:19.622', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 90, 'ddd', 'dd@123', '$2b$10$txib2qfqn1joKalFvn7gPO7.Imo5AdZC4oZm4RkWwmhu536pEyJvi', '121212', 5, 48, '2026-07-25 07:22:43.233', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 90, 'ee', 'ee@12', '$2b$10$CLYUh4k3.mDD8.p5BxYx3.1Q1f0xlNo71QvaOUuTvKfieP2IiFWNO', '111111', 7, 48, '2026-07-25 07:24:03.961', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 320, 'personal trainer second', 'personal2@gmail.com', '$2b$10$OQIl.fK/MpxGaAKhV5FlnuqgTg3RvI2ds5D2IANW9V39zFu1iy0XK', '6543218907', 5, NULL, '2026-07-25 07:26:28.917', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784964403/staff/profile/l9p3wuds_1784964402894.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 90, 'fff', 'ff@123', '$2b$10$jNSctx1OQjFMcSYuDx894.GOJoft3RGCg5zsVdGrOIsApH57TaDr6', '222222', 7, 48, '2026-07-25 07:28:00.617', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(329, 90, 'ggg', 'gg@12', '$2b$10$UntLzdehVFbQveZv4YN9C.W9vDgTKXvykUgraou2iN7UtaZjtgLKi', '3333333', 10, 48, '2026-07-25 07:28:58.511', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 320, 'general trainer one', 'general1@gmail.com', '$2b$10$.1//iHXGy7MF68ommVpUjOqSXFXet2riJCVWRDKikSCQALPaRhxXu', '6543211234', 6, NULL, '2026-07-25 07:28:59.951', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784964539/staff/profile/wy74uupr_1784964538818.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 320, 'general trainer two', 'general2@gmail.com', '$2b$10$yoe6XfRvbv0uFX9c1VsYZ.bASjJHHhXiyNUGs2kTikmHHWTu74yzu', '5678903232', 6, NULL, '2026-07-25 07:29:58.663', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784964598/staff/profile/tbe729d9_1784964597567.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 90, 'hhh', 'hh@12', '$2b$10$Y55YpqDoXTnZJ3i3G7bnfezUVIrqLW5hSu0qWbWQlMLngwQDQMbsm', '444444', 10, 48, '2026-07-25 07:30:10.811', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 320, 'receptionist one', 'receptionist1@gmail.com', '$2b$10$MpATZm.2r6UyPENNkjdpwOhlVhcP/V92W/796VY/qoc8aePgC6BOK', '1234567890', 7, NULL, '2026-07-25 07:31:32.028', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784964691/staff/profile/9hee3bl4_1784964690952.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 320, 'receptionist Two', 'recptionist2@gmail.com', '$2b$10$5x.qG2a3W3nDi8OhiDpnuuN.YgLIhKov5p3LPHk3AiJapOgxElGty', '1234565438', 7, NULL, '2026-07-25 07:32:32.789', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784964752/staff/profile/gan1btrd_1784964751591.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 320, 'sales one', 'sales1@gmail.com', '$2b$10$ekiY4b7spocIychxuLmmT.qAxVtqYqfDqRpr6qwpsURYB14DRhlPy', '253625346', 10, NULL, '2026-07-25 07:33:51.276', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784964830/staff/profile/4omveee7_1784964830390.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 320, 'sales two ', 'sales2@gmail.com', '$2b$10$1.gDIvNEbSrUB5dNbwy94u.BspQsEK0HnmdlO5ym96kM7di1C2z.6', '3232232323', 10, NULL, '2026-07-25 07:34:33.038', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784964872/staff/profile/84ynfobv_1784964871292.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 314, 'genral2', 'aaa@123', '$2b$10$O9gf/0V7TTLxYQU0oSEeS.ao14wBSoioyB5M83xhTyJnkm7weK7D6', '11111', 6, NULL, '2026-07-25 07:55:56.283', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 314, 'prasnal', 'bbb@123', '$2b$10$Z2VtCJg46ycnJTXl78.GEu9qHKudTnbZEFoLlqrZwQz0N90wVsIf2', '22222', 5, NULL, '2026-07-25 07:57:08.214', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(340, 314, 'prasnal2', 'ccc@123', '$2b$10$QXSkwPUaHqDvJfOTtjEstOSUv0eC20wYnBQS0K//l4GON48Efun3C', '123123', 5, NULL, '2026-07-25 07:57:52.971', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(341, 314, 'reception', 'ddd@123', '$2b$10$Bcp77Yb11jUR0HKj8rscmuIq9VeMpkDukNVy00ahAG1V3Cf2/IIn6', '12344', 7, NULL, '2026-07-25 07:59:02.225', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784966341/staff/profile/il9gz4ek_1784966340969.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(342, 320, 'safari', 'safarione@gmail.com', '$2b$10$N3wme0Sm01eUW9kN9hDQkuCBBucwC756/Ulud0yW8KrWbAq6iZfgq', '12345654387', 4, NULL, '2026-07-25 07:59:38.502', 'india', NULL, NULL, NULL, NULL, NULL, 'Active', '2000-07-19', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784966377/users/profile/tip0q1q0_1784966376882.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 314, 'reception2', 'eee@123', '$2b$10$5MAM/LXQurPtwgsBwzwSheull0S19zYeEEIJL522jP1oR93nAclMO', '123432', 7, NULL, '2026-07-25 07:59:54.661', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 314, 'sales', 'fff@123', '$2b$10$nCnIkeWok5SBPBmTlF5VDuDX5AoopINB40hKGe.bl9VbboFVo40.S', '12121212', 10, NULL, '2026-07-25 08:35:49.964', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 314, 'sales2', 'ggg@123', '$2b$10$e49mxXfxdwGiqkrTTWvMwuOiP3tQpHnerB3MJwYvGI.do2J/xCmuC', '1234567', 10, NULL, '2026-07-25 08:37:46.411', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784968665/staff/profile/2dg0fuz5_1784968665045.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(346, 320, 'safari two ', 'safaritwo@gmail.com', '$2b$10$3L8ZDwW7YMAxfu1Mt2GVL.0A8BQZ4P45LUXEHX4HrSwXdv03uq26u', '123487654', 4, NULL, '2026-07-25 08:38:45.259', 'hff', NULL, NULL, NULL, NULL, NULL, 'Active', '2012-07-05', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784968724/users/profile/t3gy84y1_1784968723509.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 320, 'pgx ', 'pgx@gmail.com', '$2b$10$ZkJBaaId7fUAuwEFviqXueJ3dkq8CVEfqlMF1lDa/ctxTO.VAioze', '737483847', 4, NULL, '2026-07-25 08:40:47.863', 'edws', NULL, NULL, NULL, NULL, NULL, 'Active', '2011-07-13', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784968846/users/profile/jjpz7181_1784968846438.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(348, 320, 'pgx two ', 'pgxtqo@gmail.com', '$2b$10$fgWI.HudtR/lxLgfmb2G6ev6vmBIphWdKqzq8g/17adkCJh/qJV6O', '634763483', 4, NULL, '2026-07-25 08:41:52.643', 'ewfdsw', NULL, NULL, NULL, NULL, NULL, 'Active', '2013-07-04', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784968911/users/profile/oe81k1do_1784968911222.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(349, 320, 'kt', 'kt@gmail.com', '$2b$10$YMGkvBZo6uXm2DHXWKYdDOPSWltGNv0UjwuAnAH1Aw5w1JenvOdrm', '232321312', 4, NULL, '2026-07-25 08:45:00.469', 'sa', NULL, NULL, NULL, NULL, NULL, 'Active', '2011-07-18', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784969099/users/profile/amnaljm9_1784969099065.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(350, 314, 'zzz', 'zz@123', '$2b$10$tNAsZ7LiJSK64WLv6KHU8.D9T7I41EqJZ/BwdNkbgljS61z79ixre', '1234532', 4, NULL, '2026-07-25 08:45:53.269', 'sudama nagar indore ', NULL, NULL, NULL, NULL, NULL, 'Inactive', '2010-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(351, 320, 'kt two', 'kttwo@gmail.com', '$2b$10$7EZZgnvp.2BFLPSFoX3q/O7RHbTSYBf4r6B7lv0F/zAu3jMTt94NK', '234234323', 4, NULL, '2026-07-25 08:46:04.836', 'qwas', NULL, NULL, NULL, NULL, NULL, 'Active', '1987-07-02', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784969163/users/profile/g5osr7o5_1784969163518.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(352, 314, 'yyy', 'yy@123', '$2b$10$MSNqJVZMojMMGljBRB3dZ.90ajZ0vcQqwOLRelAPuhYsOQxKnkNOe', '6543654', 4, NULL, '2026-07-25 08:49:04.403', 'asdfghjkjhgfd', NULL, NULL, NULL, NULL, NULL, 'Active', '2014-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(353, 314, 'www', 'ww@123', '$2b$10$rHyZcBKSVT2zT5A8C6KM6uTF7KafsI.9fyvn5lZIRxFbRT9h2Wi0i', '876543', 4, NULL, '2026-07-25 08:51:30.807', 'sdfghjk', NULL, NULL, NULL, NULL, NULL, 'Active', '2011-07-10', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784969489/users/profile/ctysq256_1784969489234.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(354, 314, 'rrr', 'rrr@123', '$2b$10$sFLTTeUtK90g5G0QwtcYLOJjJfx4YcRVRJ1CAgwrt/YreBnhF6IPe', '12345679876', 4, NULL, '2026-07-25 08:55:49.699', 'asdfghj', NULL, NULL, NULL, NULL, NULL, 'Active', '2004-07-05', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784969748/users/profile/i8qr69sb_1784969748332.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(355, 314, 'sss', 'sss@123', '$2b$10$H3JpkUDmmKjJz2L25W6kPO5woiiAfIb0MENI8LRRSCZwkxFATZicC', '9876544', 4, NULL, '2026-07-25 08:57:30.246', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2011-11-11', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784969848/users/profile/94v46g1u_1784969848648.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(356, 314, 'jjj', 'jj@123', '$2b$10$DmBZvaeyj0rL09D0L2JONeJCjOxsd1bro.c/eOynEoDRZ6snJN1JG', '65434554', 4, NULL, '2026-07-25 09:01:22.938', 'kjhgfx', NULL, NULL, NULL, NULL, NULL, 'Active', '2001-01-01', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784970081/users/profile/0zy8ec6p_1784970081579.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(357, 314, 'kkk', 'kk@123', '$2b$10$sFibjRt/R0XlE1Krx5YA1OuLYGmXytXRpymiifO3C41I44PVRxVQu', '6543456', 4, NULL, '2026-07-25 09:03:54.633', 'asdfghjk', NULL, NULL, NULL, NULL, NULL, 'Active', '2020-07-14', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784970233/users/profile/qxubyv6w_1784970233198.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(358, 320, 'r4ewf', 'abcde@gmail.com', '$2b$10$PT7OXRDMM9vWIpJ0RjJ04OruKAiZnydMz0flEFMcNuV1.QJMaYmte', 'ds', 4, NULL, '2026-07-25 09:22:01.236', 'hh', NULL, NULL, NULL, NULL, NULL, 'Active', '2011-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(359, 320, 'asd', 'asd@gmail.com', '$2b$10$V2aIiigcA7PS/F/MiI6vSuc7EkUw/93eZNlT50xIIuI3gyc/Asrt.', '43576432', 4, NULL, '2026-07-25 09:42:56.258', 'was', NULL, NULL, NULL, NULL, NULL, 'Active', '2012-07-12', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784972575/users/profile/dxir5n2e_1784972574714.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(360, 90, 'wdsasxssxxss', 'pgxgame@gmail.com', '$2b$10$O6YQOlCB0dTywpmRZ7RRNOu2yEtQ60.N3lU/s0xB17CHsQeU8VlYa', '1234654322', 4, NULL, '2026-07-25 10:06:34.270', 'ws', NULL, NULL, NULL, NULL, NULL, 'Active', '2012-07-24', NULL, NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/fosnfvnp/image/upload/v1784973993/users/profile/yj8uween_1784973993200.jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(364, 90, 'wqads', 'aaaabb@gmail.com', '$2b$10$gQH1cnj7ksZuM8UCLzp4POWHlewMhpmuU0vnRJVNXu/xgp5tCcpp6', '234567878', 4, NULL, '2026-07-31 11:25:12.700', 'xz', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 320, 'sdfgh', 'asdfghjkl@gmail.com', '$2b$10$7/tjo5EmZ0JYHCzia9IIWepld1IYSvo954bc2mvR5eLf63SAhhb1O', '7463923710', 4, NULL, '2026-07-31 12:12:54.663', 'wedsadsds', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 320, 'was', 'zxc@gmail.com', '$2b$10$tLddj8qjrNgCxPQy3E6f5.tj/GKcRRs3q4qfwWtbapC/r6F/HHiOW', '2446536343', 4, NULL, '2026-07-31 12:22:13.176', 's', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 320, 'amul', 'amul@gmail.com', '$2b$10$mSYuBFYes.pTzjletDJRNeVWrJVaquKnWn3h8CXWjTjU4ScIhdt66', '2345678901', 4, NULL, '2026-07-31 12:35:34.278', 'ASDXZA', NULL, NULL, NULL, NULL, NULL, 'Active', '2026-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 90, 'Arjun', 'dfhh@gmail.com', '$2b$10$usC.Cd14tCqhtV.zoiiUL.O/2u2/KHYZkGZj.MhHQYDixi.tcEFKG', '92051186312', 4, NULL, '2026-08-01 09:35:10.655', 'Ashram, New delhi ', NULL, NULL, NULL, NULL, NULL, 'Active', '2004-08-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 90, 'sdf', 'dgsj@gmail.com', '$2b$10$IxepHEjF1nXSZuo9Xf0uluBzw2bYB5XgZTfQYwvqVxmMQraope/.S', '2143567689', 4, NULL, '2026-08-03 10:53:44.120', 'xs', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 90, 'wgsx', 'gdfchg@gmail.com', '$2b$10$U6UkdbYDzw.hw4Xvz8/sBe8/3n7Ce914eOcDbdsxO45hkIcsOhHMO', '3653456554', 4, NULL, '2026-08-03 10:57:06.553', 'zsdx', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(384, NULL, 'new aug', 'aug@gmail.com', '$2b$10$2lvENqreIMed7pyFhMCfN.pXzIF9r/v5nyXCNjUcTFC9ffNYU/5Mi', '3245678901', 2, NULL, '2026-08-04 06:36:21.794', NULL, NULL, '7 Days', 'new aug', 'testing plan', '1.00', 'Active', NULL, NULL, NULL, 'india', NULL, NULL, NULL, NULL, 18.00, NULL, '2026-08-11 06:36:21.729', NULL, 'Basic', NULL, '123456', 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(385, 90, 'fg', 'sd@gmail.com', '$2b$10$7t2ndS3TzMNdn8YXMT97Xe5b2lykgHNN/I9w0fzGy5bqlByBKoPsi', '3455555555', 4, NULL, '2026-08-04 07:11:45.261', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(388, 387, 'shrikant sullere', 'JGDJS@gmail.com', '$2b$10$fZQ6QrsQhigCXG4teUKyGuMuUMn56NvGUq422BgLSoYPWb79hooaq', '08853713957', 4, NULL, '2026-08-04 09:04:48.912', 'Chhatarpur', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basic', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Basic', 'None', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `whatsapp_credit_transactions`
--

CREATE TABLE `whatsapp_credit_transactions` (
  `id` int NOT NULL,
  `adminId` int NOT NULL,
  `creditsPurchased` int NOT NULL,
  `amountPaid` double NOT NULL,
  `paymentStatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transactionId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `creditsAdded` int DEFAULT '0',
  `creditsUsed` int DEFAULT '0',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packageType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'WHATSAPP',
  `transactionType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whatsapp_credit_transactions`
--

INSERT INTO `whatsapp_credit_transactions` (`id`, `adminId`, `creditsPurchased`, `amountPaid`, `paymentStatus`, `transactionId`, `createdAt`, `creditsAdded`, `creditsUsed`, `description`, `packageType`, `transactionType`, `userId`) VALUES
(1, 0, 0, 1000, '', NULL, '2026-06-22 16:24:36', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(2, 0, 0, 1000, '', NULL, '2026-06-22 16:24:37', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(3, 0, 0, 1000, '', NULL, '2026-06-22 16:24:40', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(4, 0, 0, 1000, '', NULL, '2026-06-22 16:26:44', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(5, 0, 0, 4500, '', NULL, '2026-06-22 16:27:14', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(6, 0, 0, 0, '', NULL, '2026-06-26 15:29:00', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(7, 0, 0, 0, '', NULL, '2026-06-26 15:29:00', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(8, 0, 0, 0, '', NULL, '2026-06-26 16:06:29', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(9, 0, 0, 0, '', NULL, '2026-06-26 16:06:29', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(10, 0, 0, 0, '', NULL, '2026-07-08 11:14:07', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(11, 0, 0, 0, '', NULL, '2026-07-08 12:43:45', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(12, 0, 0, 0, '', NULL, '2026-07-08 12:57:04', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(13, 0, 0, 0, '', NULL, '2026-07-08 12:58:25', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(14, 0, 0, 0, '', NULL, '2026-07-08 13:05:21', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(15, 0, 0, 0, '', NULL, '2026-07-08 15:57:40', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(16, 0, 0, 0, '', NULL, '2026-07-20 12:54:32', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(17, 0, 0, 0, '', NULL, '2026-07-20 12:54:32', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(18, 0, 0, 0, '', NULL, '2026-07-20 13:15:53', 0, 0, NULL, 'WHATSAPP', NULL, NULL),
(19, 0, 0, 0, '', NULL, '2026-07-23 10:37:21', 0, 1, 'Sent WhatsApp to 984576324', 'WHATSAPP', 'USAGE', 90),
(20, 0, 0, 0, '', NULL, '2026-07-23 10:37:21', 0, 1, 'Sent WhatsApp to 984576324', 'WHATSAPP', 'USAGE', 90),
(21, 0, 0, 0, '', NULL, '2026-07-23 10:44:16', 0, 1, 'Sent WhatsApp to 07518824806', 'WHATSAPP', 'USAGE', 90),
(22, 0, 0, 0, '', NULL, '2026-07-23 10:44:16', 0, 1, 'Sent WhatsApp to 07518824806', 'WHATSAPP', 'USAGE', 90),
(23, 0, 0, 0, '', NULL, '2026-07-23 11:11:19', 0, 1, 'Sent WhatsApp to 1234567890', 'WHATSAPP', 'USAGE', 90);

-- --------------------------------------------------------

--
-- Table structure for table `workoutexercise`
--

CREATE TABLE `workoutexercise` (
  `id` int NOT NULL,
  `workoutPlanId` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sets` int DEFAULT NULL,
  `reps` int DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workoutexercise`
--

INSERT INTO `workoutexercise` (`id`, `workoutPlanId`, `name`, `sets`, `reps`, `duration`, `notes`) VALUES
(1, 3, 'Shoulder Press', 5, 12, NULL, NULL),
(2, 4, 'Shoulder Press', 5, 12, NULL, NULL),
(3, 5, 'Shoulder Press', 5, 12, NULL, NULL),
(4, 6, 'Pushups', 5, 12, NULL, NULL),
(5, 7, 'Pushups', 5, 12, NULL, NULL),
(6, 8, 'Pushups', 5, 12, NULL, NULL),
(7, 9, 'Bicep Curls', NULL, NULL, NULL, NULL),
(8, 10, 'Pull-ups', 4, 12, NULL, NULL),
(9, 11, 'Deadlift', 3, 20, NULL, 'sdfghj'),
(10, 11, 'Leg Press', 3, 20, NULL, 'sdfghj'),
(11, 12, 'Plank', 3, 19, NULL, 'sdfghj'),
(12, 12, 'Pushups', 3, 20, NULL, 'dfgh'),
(13, 13, 'Leg Press', 3, 3, NULL, NULL),
(14, 14, 'Tricep Dips', 2, 22, NULL, NULL),
(15, 15, 'Deadlift', 2, 1, NULL, 'ssdbzj'),
(16, 15, 'Leg Press', 3, 9, NULL, 'cxz');

-- --------------------------------------------------------

--
-- Table structure for table `workoutplan`
--

CREATE TABLE `workoutplan` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` int NOT NULL,
  `branchId` int DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workoutplan`
--

INSERT INTO `workoutplan` (`id`, `title`, `notes`, `createdBy`, `branchId`, `createdAt`) VALUES
(1, 'Full body stranght', 'rest 60 s  ', 272, 48, '2026-07-13 14:29:48.987'),
(2, 'full body  staright', 'rest  60 s', 272, 48, '2026-07-13 14:31:28.193'),
(3, 'full body  staright', 'rest  60 s', 272, 48, '2026-07-13 14:42:19.979'),
(4, 'full body  staright', 'rest  60 s', 272, 48, '2026-07-13 14:42:26.650'),
(5, 'full body  staright', 'rest  60 s', 272, 48, '2026-07-13 14:47:17.235'),
(6, 'full body workout', 'rest 9s between workout', 272, 48, '2026-07-13 14:49:07.675'),
(7, 'full body workout', 'rest 9s between workout', 272, 48, '2026-07-13 14:49:31.706'),
(8, 'full body workout', 'rest 9s between workout', 272, 48, '2026-07-13 14:53:31.784'),
(9, 'weight gain week - 4', '', 279, 48, '2026-07-20 11:35:30.827'),
(10, 'full body strenght', 'xyz', 279, 48, '2026-07-21 17:33:29.322'),
(11, 'dfgh', 'swerftghj', 339, 33, '2026-07-25 13:09:05.119'),
(12, 'sdfghj', 'sdfgh', 339, 33, '2026-07-25 13:18:43.362'),
(13, 'Legs', 'Legs', 309, 33, '2026-07-25 18:32:35.285'),
(14, 'vr', 'vbrs', 327, 33, '2026-07-26 10:03:00.428'),
(15, 'abc', 'sbcs', 279, 48, '2026-08-01 06:38:19.436');

-- --------------------------------------------------------

--
-- Table structure for table `workoutplanassignment`
--

CREATE TABLE `workoutplanassignment` (
  `id` int NOT NULL,
  `workoutPlanId` int NOT NULL,
  `memberId` int NOT NULL,
  `assignedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workoutplanassignment`
--

INSERT INTO `workoutplanassignment` (`id`, `workoutPlanId`, `memberId`, `assignedAt`) VALUES
(1, 8, 161, '2026-07-13 14:53:31.843'),
(2, 9, 161, '2026-07-20 11:35:30.845'),
(3, 10, 165, '2026-07-21 17:33:29.338'),
(4, 11, 190, '2026-07-25 13:09:05.859'),
(5, 12, 190, '2026-07-25 13:18:44.811'),
(6, 13, 178, '2026-07-25 18:32:36.830'),
(7, 14, 195, '2026-07-26 10:03:01.383');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_activity_logs`
--
ALTER TABLE `admin_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Alert_branchId_idx` (`branchId`),
  ADD KEY `Alert_memberId_idx` (`memberId`),
  ADD KEY `Alert_staffId_idx` (`staffId`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_notification`
--
ALTER TABLE `app_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tenantId` (`tenantId`),
  ADD KEY `idx_receiverId` (`receiverId`),
  ADD KEY `idx_receiverRole` (`receiverRole`),
  ADD KEY `idx_createdAt` (`createdAt`),
  ADD KEY `idx_isRead` (`isRead`);

--
-- Indexes for table `app_notification_archive`
--
ALTER TABLE `app_notification_archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_audit_log`
--
ALTER TABLE `auth_audit_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `automation_settings`
--
ALTER TABLE `automation_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Booking_memberId_idx` (`memberId`),
  ADD KEY `Booking_scheduleId_idx` (`scheduleId`);

--
-- Indexes for table `booking_requests`
--
ALTER TABLE `booking_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Branch_adminId_fkey` (`adminId`);

--
-- Indexes for table `classschedule`
--
ALTER TABLE `classschedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ClassSchedule_branchId_idx` (`adminId`),
  ADD KEY `ClassSchedule_trainerId_idx` (`trainerId`);

--
-- Indexes for table `classtype`
--
ALTER TABLE `classtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_packages`
--
ALTER TABLE `credit_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo_requests`
--
ALTER TABLE `demo_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dietmeal`
--
ALTER TABLE `dietmeal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DietMeal_dietPlanId_idx` (`dietPlanId`);

--
-- Indexes for table `dietplan`
--
ALTER TABLE `dietplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dietplanassignment`
--
ALTER TABLE `dietplanassignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DietPlanAssignment_dietPlanId_idx` (`dietPlanId`),
  ADD KEY `DietPlanAssignment_memberId_idx` (`memberId`);

--
-- Indexes for table `equipment_requests`
--
ALTER TABLE `equipment_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Expense_branchId_idx` (`branchId`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`key_name`);

--
-- Indexes for table `group_class_bookings`
--
ALTER TABLE `group_class_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gym_equipment`
--
ALTER TABLE `gym_equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `housekeepingattendance`
--
ALTER TABLE `housekeepingattendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staffId` (`staffId`),
  ADD KEY `createdById` (`createdById`);

--
-- Indexes for table `housekeepingschedule`
--
ALTER TABLE `housekeepingschedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staffId` (`staffId`),
  ADD KEY `createdById` (`createdById`);

--
-- Indexes for table `landing_page_cms`
--
ALTER TABLE `landing_page_cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_adminId_fkey` (`adminId`),
  ADD KEY `leads_assignedToStaffId_fkey` (`assignedToStaffId`);

--
-- Indexes for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Member_email_key` (`email`),
  ADD KEY `Member_branchId_idx` (`branchId`),
  ADD KEY `fk_member_user` (`userId`);

--
-- Indexes for table `memberattendance`
--
ALTER TABLE `memberattendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberplan`
--
ALTER TABLE `memberplan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MemberPlan_adminId_fkey` (`adminId`);

--
-- Indexes for table `membership_renewal_requests`
--
ALTER TABLE `membership_renewal_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memberId` (`memberId`),
  ADD KEY `assignmentId` (`assignmentId`),
  ADD KEY `planId` (`planId`),
  ADD KEY `requestedBy` (`requestedBy`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `member_assessments`
--
ALTER TABLE `member_assessments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_assessments_memberId_idx` (`memberId`),
  ADD KEY `idx_leaderboard` (`fitness_goal`,`final_leaderboard_score`);

--
-- Indexes for table `member_bodybuilding_logs`
--
ALTER TABLE `member_bodybuilding_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memberId` (`memberId`);

--
-- Indexes for table `member_health_log`
--
ALTER TABLE `member_health_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_health_log_memberId_fkey` (`memberId`);

--
-- Indexes for table `member_plan_assignment`
--
ALTER TABLE `member_plan_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_plan_assignment_memberId_idx` (`memberId`),
  ADD KEY `member_plan_assignment_planId_idx` (`planId`),
  ADD KEY `member_plan_assignment_status_idx` (`status`);

--
-- Indexes for table `message_templates`
--
ALTER TABLE `message_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eventKey` (`eventKey`);

--
-- Indexes for table `notificationlog`
--
ALTER TABLE `notificationlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `NotificationLog_memberId_idx` (`memberId`);

--
-- Indexes for table `notification_delivery_log`
--
ALTER TABLE `notification_delivery_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_notificationId` (`notificationId`),
  ADD KEY `idx_receiverId` (`receiverId`);

--
-- Indexes for table `notification_queue`
--
ALTER TABLE `notification_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_processAfter` (`processAfter`);

--
-- Indexes for table `password_reset_otp`
--
ALTER TABLE `password_reset_otp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_otp` (`otp`),
  ADD KEY `idx_resetToken` (`resetToken`),
  ADD KEY `idx_expiresAt` (`expiresAt`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Payment_invoiceNo_key` (`invoiceNo`),
  ADD KEY `Payment_memberId_idx` (`memberId`),
  ADD KEY `Payment_planId_idx` (`planId`);

--
-- Indexes for table `personal_notification`
--
ALTER TABLE `personal_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Plan_branchId_idx` (`branchId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Product_sku_key` (`sku`),
  ADD KEY `Product_branchId_idx` (`branchId`);

--
-- Indexes for table `pt_bookings`
--
ALTER TABLE `pt_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pt_session` (`sessionId`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Role_name_key` (`name`);

--
-- Indexes for table `saas_payments`
--
ALTER TABLE `saas_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saas_payments_adminId_fkey` (`adminId`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_salary_salaryId` (`salaryId`),
  ADD KEY `idx_salary_staffId` (`staffId`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Session_trainerId_idx` (`trainerId`),
  ADD KEY `Session_branchId_idx` (`branchId`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffattendance`
--
ALTER TABLE `staffattendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockmovement`
--
ALTER TABLE `stockmovement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `StockMovement_productId_idx` (`productId`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_audit_logs`
--
ALTER TABLE `template_audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenantintegrationsettings`
--
ALTER TABLE `tenantintegrationsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenantId` (`tenantId`);

--
-- Indexes for table `token_blacklist`
--
ALTER TABLE `token_blacklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_token` (`token`(255));

--
-- Indexes for table `unified_bookings`
--
ALTER TABLE `unified_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `used_qr_nonces`
--
ALTER TABLE `used_qr_nonces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `used_qr_nonces_nonce_key` (`nonce`),
  ADD KEY `used_qr_nonces_memberId_fkey` (`memberId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_email_key` (`email`),
  ADD KEY `User_branchId_idx` (`branchId`),
  ADD KEY `User_roleId_idx` (`roleId`);

--
-- Indexes for table `whatsapp_credit_transactions`
--
ALTER TABLE `whatsapp_credit_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workoutexercise`
--
ALTER TABLE `workoutexercise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `WorkoutExercise_workoutPlanId_idx` (`workoutPlanId`);

--
-- Indexes for table `workoutplan`
--
ALTER TABLE `workoutplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workoutplanassignment`
--
ALTER TABLE `workoutplanassignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `WorkoutPlanAssignment_memberId_idx` (`memberId`),
  ADD KEY `WorkoutPlanAssignment_workoutPlanId_idx` (`workoutPlanId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_activity_logs`
--
ALTER TABLE `admin_activity_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `alert`
--
ALTER TABLE `alert`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `app_notification`
--
ALTER TABLE `app_notification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `auth_audit_log`
--
ALTER TABLE `auth_audit_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `automation_settings`
--
ALTER TABLE `automation_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `booking_requests`
--
ALTER TABLE `booking_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `classschedule`
--
ALTER TABLE `classschedule`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `classtype`
--
ALTER TABLE `classtype`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `credit_packages`
--
ALTER TABLE `credit_packages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `demo_requests`
--
ALTER TABLE `demo_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dietmeal`
--
ALTER TABLE `dietmeal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `dietplan`
--
ALTER TABLE `dietplan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dietplanassignment`
--
ALTER TABLE `dietplanassignment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `equipment_requests`
--
ALTER TABLE `equipment_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `group_class_bookings`
--
ALTER TABLE `group_class_bookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gym_equipment`
--
ALTER TABLE `gym_equipment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `housekeepingattendance`
--
ALTER TABLE `housekeepingattendance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `housekeepingschedule`
--
ALTER TABLE `housekeepingschedule`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `landing_page_cms`
--
ALTER TABLE `landing_page_cms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `memberattendance`
--
ALTER TABLE `memberattendance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `memberplan`
--
ALTER TABLE `memberplan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `membership_renewal_requests`
--
ALTER TABLE `membership_renewal_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member_assessments`
--
ALTER TABLE `member_assessments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `member_bodybuilding_logs`
--
ALTER TABLE `member_bodybuilding_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `member_health_log`
--
ALTER TABLE `member_health_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `member_plan_assignment`
--
ALTER TABLE `member_plan_assignment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `message_templates`
--
ALTER TABLE `message_templates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3771;

--
-- AUTO_INCREMENT for table `notificationlog`
--
ALTER TABLE `notificationlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1089;

--
-- AUTO_INCREMENT for table `notification_delivery_log`
--
ALTER TABLE `notification_delivery_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT for table `notification_queue`
--
ALTER TABLE `notification_queue`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `password_reset_otp`
--
ALTER TABLE `password_reset_otp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `personal_notification`
--
ALTER TABLE `personal_notification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pt_bookings`
--
ALTER TABLE `pt_bookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `saas_payments`
--
ALTER TABLE `saas_payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `staffattendance`
--
ALTER TABLE `staffattendance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stockmovement`
--
ALTER TABLE `stockmovement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `template_audit_logs`
--
ALTER TABLE `template_audit_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tenantintegrationsettings`
--
ALTER TABLE `tenantintegrationsettings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `token_blacklist`
--
ALTER TABLE `token_blacklist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unified_bookings`
--
ALTER TABLE `unified_bookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `used_qr_nonces`
--
ALTER TABLE `used_qr_nonces`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT for table `whatsapp_credit_transactions`
--
ALTER TABLE `whatsapp_credit_transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `workoutexercise`
--
ALTER TABLE `workoutexercise`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `workoutplan`
--
ALTER TABLE `workoutplan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `workoutplanassignment`
--
ALTER TABLE `workoutplanassignment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alert`
--
ALTER TABLE `alert`
  ADD CONSTRAINT `Alert_branchId_fkey` FOREIGN KEY (`branchId`) REFERENCES `branch` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Alert_memberId_fkey` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Alert_staffId_fkey` FOREIGN KEY (`staffId`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `Booking_memberId_fkey` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Booking_scheduleId_fkey` FOREIGN KEY (`scheduleId`) REFERENCES `classschedule` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `Branch_adminId_fkey` FOREIGN KEY (`adminId`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `classschedule`
--
ALTER TABLE `classschedule`
  ADD CONSTRAINT `ClassSchedule_trainerId_fkey` FOREIGN KEY (`trainerId`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `dietmeal`
--
ALTER TABLE `dietmeal`
  ADD CONSTRAINT `DietMeal_dietPlanId_fkey` FOREIGN KEY (`dietPlanId`) REFERENCES `dietplan` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `dietplanassignment`
--
ALTER TABLE `dietplanassignment`
  ADD CONSTRAINT `DietPlanAssignment_dietPlanId_fkey` FOREIGN KEY (`dietPlanId`) REFERENCES `dietplan` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `DietPlanAssignment_memberId_fkey` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `expense`
--
ALTER TABLE `expense`
  ADD CONSTRAINT `Expense_branchId_fkey` FOREIGN KEY (`branchId`) REFERENCES `branch` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `leads`
--
ALTER TABLE `leads`
  ADD CONSTRAINT `leads_adminId_fkey` FOREIGN KEY (`adminId`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `leads_assignedToStaffId_fkey` FOREIGN KEY (`assignedToStaffId`) REFERENCES `staff` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `fk_member_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `Member_branchId_fkey` FOREIGN KEY (`branchId`) REFERENCES `branch` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `membership_renewal_requests`
--
ALTER TABLE `membership_renewal_requests`
  ADD CONSTRAINT `membership_renewal_requests_assignmentId_fkey` FOREIGN KEY (`assignmentId`) REFERENCES `member_plan_assignment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `membership_renewal_requests_memberId_fkey` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `membership_renewal_requests_planId_fkey` FOREIGN KEY (`planId`) REFERENCES `memberplan` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `member_assessments`
--
ALTER TABLE `member_assessments`
  ADD CONSTRAINT `member_assessments_memberId_fkey` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `member_bodybuilding_logs`
--
ALTER TABLE `member_bodybuilding_logs`
  ADD CONSTRAINT `member_bodybuilding_logs_ibfk_1` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`);

--
-- Constraints for table `member_health_log`
--
ALTER TABLE `member_health_log`
  ADD CONSTRAINT `member_health_log_memberId_fkey` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `member_plan_assignment`
--
ALTER TABLE `member_plan_assignment`
  ADD CONSTRAINT `member_plan_assignment_memberId_fkey` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `member_plan_assignment_planId_fkey` FOREIGN KEY (`planId`) REFERENCES `memberplan` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `notificationlog`
--
ALTER TABLE `notificationlog`
  ADD CONSTRAINT `NotificationLog_memberId_fkey` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `Payment_memberId_fkey` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `Plan_branchId_fkey` FOREIGN KEY (`branchId`) REFERENCES `branch` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `Product_branchId_fkey` FOREIGN KEY (`branchId`) REFERENCES `branch` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `pt_bookings`
--
ALTER TABLE `pt_bookings`
  ADD CONSTRAINT `fk_pt_session` FOREIGN KEY (`sessionId`) REFERENCES `session` (`id`);

--
-- Constraints for table `saas_payments`
--
ALTER TABLE `saas_payments`
  ADD CONSTRAINT `saas_payments_adminId_fkey` FOREIGN KEY (`adminId`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `fk_salary_staff` FOREIGN KEY (`staffId`) REFERENCES `staff` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `Session_branchId_fkey` FOREIGN KEY (`branchId`) REFERENCES `branch` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Session_trainerId_fkey` FOREIGN KEY (`trainerId`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `stockmovement`
--
ALTER TABLE `stockmovement`
  ADD CONSTRAINT `StockMovement_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tenantintegrationsettings`
--
ALTER TABLE `tenantintegrationsettings`
  ADD CONSTRAINT `tenantintegrationsettings_ibfk_1` FOREIGN KEY (`tenantId`) REFERENCES `user` (`id`);

--
-- Constraints for table `used_qr_nonces`
--
ALTER TABLE `used_qr_nonces`
  ADD CONSTRAINT `used_qr_nonces_memberId_fkey` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `User_branchId_fkey` FOREIGN KEY (`branchId`) REFERENCES `branch` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `User_roleId_fkey` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `workoutexercise`
--
ALTER TABLE `workoutexercise`
  ADD CONSTRAINT `WorkoutExercise_workoutPlanId_fkey` FOREIGN KEY (`workoutPlanId`) REFERENCES `workoutplan` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `workoutplanassignment`
--
ALTER TABLE `workoutplanassignment`
  ADD CONSTRAINT `WorkoutPlanAssignment_memberId_fkey` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `WorkoutPlanAssignment_workoutPlanId_fkey` FOREIGN KEY (`workoutPlanId`) REFERENCES `workoutplan` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
