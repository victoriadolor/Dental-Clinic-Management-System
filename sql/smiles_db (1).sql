-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 02:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smiles_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `image`, `content`) VALUES
(1, 'Know More About Pipo Esthetique Dental Center', '1719237046.png', '<p><font color=\"#222222\" face=\"Open Sans\">Pipo Esthetique Dental Center</font><span style=\"color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;;\">&nbsp;isn’t just another place to see a dentist in Laguna.</span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;;\">&nbsp;We’re a multispecialty practice that can provide preventive care, dental implants, gum disease treatment, orthodontics, oral surgery, root canals, and much more in one location. The complete range of dentistry under one roof. In addition to all treatments, we see patients of all ages. Every member of your family. With&nbsp;</span><em style=\"-webkit-font-smoothing: antialiased; color: rgb(34, 34, 34); font-family: &quot;2&quot;, &quot;Helvetica Neue&quot;, sans-serif;\"><span style=\"font-family: &quot;Open Sans&quot;;\">well over a century</span></em><span style=\"color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;;\">&nbsp;of combined experience, years of diverse, advanced training, and ongoing education in the latest techniques and technologies, our team is the only “dentist” you’ll ever need.</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `dental_history`
--

CREATE TABLE `dental_history` (
  `id` int(11) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `dentist` varchar(255) NOT NULL,
  `visit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `id` int(11) NOT NULL,
  `dentist_id` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`id`, `dentist_id`, `description`, `image`) VALUES
(19, '182', 'dfsf', '1719239765.png');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `status`) VALUES
(23, '1658238779.jpg', 'Active'),
(24, '1658238787.jpg', 'Active'),
(25, '1658238848.jpg', 'Active'),
(26, '1658238870.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id`, `title`, `content`, `image`) VALUES
(1, 'Experience World Class Dental Cares', 'We at Pipo Esthetique Dental Center take pride in the level of treatments and services we’re offering. Aside from the state-of-the-art equipment, our dental team is fully equipped with knowledge and experience in the field', '1658238443.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `health_declaration`
--

CREATE TABLE `health_declaration` (
  `id` int(11) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `answer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_declaration`
--

INSERT INTO `health_declaration` (`id`, `question_id`, `patient_id`, `answer`) VALUES
(2976, 3, 248, 'Yes'),
(2977, 4, 248, 'No'),
(2978, 5, 248, 'Yes'),
(2979, 6, 248, 'Yes'),
(2980, 7, 248, 'Yes'),
(2981, 8, 248, 'No'),
(2982, 9, 248, 'No'),
(2983, 10, 248, 'Yes'),
(2984, 11, 248, 'Yes'),
(2985, 12, 248, 'No'),
(2986, 3, 247, 'No'),
(2987, 4, 247, 'Yes'),
(2988, 5, 247, 'No'),
(2989, 6, 247, 'No'),
(2990, 7, 247, 'No'),
(2991, 8, 247, 'Yes'),
(2992, 9, 247, 'No'),
(2993, 10, 247, 'Yes'),
(2994, 11, 247, 'Yes'),
(2995, 12, 247, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `mail_settings`
--

CREATE TABLE `mail_settings` (
  `id` int(11) NOT NULL,
  `host` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mail_settings`
--

INSERT INTO `mail_settings` (`id`, `host`, `username`, `password`, `created_at`) VALUES
(1, 'smtp.gmail.com', 'pippoesthetique@gmail.com', 'vcxekdhkksqpbpkp', '2023-01-05 04:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `medical_record`
--

CREATE TABLE `medical_record` (
  `id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `q1` varchar(255) NOT NULL,
  `q2` varchar(255) NOT NULL,
  `q3` varchar(255) NOT NULL,
  `q4` varchar(255) NOT NULL,
  `q5` varchar(255) NOT NULL,
  `allergy` varchar(255) NOT NULL,
  `med` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `doc_id` bigint(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `seen_status` int(1) NOT NULL COMMENT '0=not seen, 1=seen',
  `type` int(1) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `app_id` bigint(20) NOT NULL,
  `payer_id` varchar(50) DEFAULT NULL,
  `ref_id` varchar(255) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `txn_id` varchar(50) DEFAULT NULL,
  `payer_email` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `method` varchar(20) NOT NULL DEFAULT '',
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `patient_id`, `app_id`, `payer_id`, `ref_id`, `payment_status`, `amount`, `currency`, `txn_id`, `payer_email`, `first_name`, `last_name`, `method`, `created_at`) VALUES
(19, 245, 499, NULL, 'UXHQRBKTZF5A', 'Completed', 1000.00, NULL, NULL, NULL, NULL, NULL, 'Paypal', '2024-07-22 08:21:23'),
(20, 245, 500, NULL, 'JNFBRD1LUKPE', 'Completed', 2000.00, NULL, NULL, NULL, NULL, NULL, '', '2024-07-22 08:23:59'),
(21, 245, 501, NULL, 'YXRKKZ649FYS', 'Completed', 2000.00, NULL, NULL, NULL, NULL, NULL, 'cash', '2024-07-22 08:25:39'),
(22, 248, 502, NULL, '7U2WQLMIOAGV', 'Completed', 2000.00, NULL, NULL, NULL, NULL, NULL, 'cash', '2024-07-22 08:26:44'),
(23, 245, 503, NULL, 'CGZPPCF7KQNG', 'Completed', 0.00, NULL, NULL, NULL, NULL, NULL, 'cash', '2024-07-22 08:29:27'),
(24, 245, 504, NULL, 'MVXYHQFJMNRZ', 'Completed', 0.00, NULL, NULL, NULL, NULL, NULL, 'cash', '2024-07-22 08:35:06'),
(25, 245, 505, NULL, 'T9YNTN6G4W2V', 'Completed', 1800.00, NULL, NULL, NULL, NULL, NULL, 'cash', '2024-07-22 08:38:00'),
(26, 245, 506, NULL, 'ZTPQZG8IPKBL', 'Completed', 2000.00, NULL, NULL, NULL, NULL, NULL, 'cash', '2024-07-22 08:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `business_email` varchar(150) NOT NULL,
  `success` varchar(150) NOT NULL,
  `cancel` varchar(150) NOT NULL,
  `ipn` varchar(150) NOT NULL,
  `fee` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `business_email`, `success`, `cancel`, `ipn`, `fee`) VALUES
(1, 'sb-aeq8l22251756@business.example.com', 'https://localhost/PatientsManagementSystem/patient/return.php', 'https://localhost/PatientsManagementSystem/patient/cancel.php', 'https://localhost/PatientsManagementSystem/patient/notify.php', 121.00);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` bigint(20) NOT NULL,
  `doc_id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `medicine` varchar(255) NOT NULL,
  `dose` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `advice` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `procedures`
--

CREATE TABLE `procedures` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `procedures` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `procedures`
--

INSERT INTO `procedures` (`id`, `service_id`, `procedures`, `price`) VALUES
(28, 6, 'Cleaning', '0'),
(29, 6, 'Whitening', '0'),
(30, 10, 'Restoration', '0'),
(31, 10, 'Extraction', '0'),
(32, 10, 'Temporary Filling', '0'),
(34, 5, 'Composite', '2,000'),
(35, 3, 'Dental Braces ', '1,000');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaires`
--

CREATE TABLE `questionnaires` (
  `id` bigint(20) NOT NULL,
  `questions` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questionnaires`
--

INSERT INTO `questionnaires` (`id`, `questions`) VALUES
(3, 'Do you have a fever or temperature over 38  °C?'),
(4, 'Have you experienced shortness of breathe or had trouble breathing?'),
(5, 'Do you have a dry cough?'),
(6, 'Do you have runny nose?'),
(7, 'Have you recently lost or had a reduction in your sense of smell?'),
(8, 'Do you have sore throat?'),
(9, 'Do you have diarrhea?'),
(10, 'Do you have Influenza-like symptoms? (headache, aches and pains, a rash on skin)'),
(11, 'Do you have history of COVID-19 infection?'),
(12, 'Do you have a member of your family who tested positive for COVID-19?');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `review` longtext NOT NULL,
  `status` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `designation`, `review`, `status`, `image`) VALUES
(17, 'Reed Prince', 'Aliquam corporis vol', 'Sint minima ut volup', 'Active', '1719239628.png');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` bigint(20) NOT NULL,
  `doc_id` bigint(20) NOT NULL,
  `doc_name` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `starttime` varchar(255) NOT NULL,
  `endtime` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `doc_id`, `doc_name`, `day`, `starttime`, `endtime`, `duration`) VALUES
(112, 182, 'Vincent Calayan', '2023-03-11', '8:00 AM', '4:00 PM', '45'),
(114, 182, 'Vincent Calayan', '2024-07-23', '9:00 AM', '4:00 PM', '30'),
(115, 185, 'Ori Moss', '2024-07-23', '9:00 AM', '3:00 PM', '30');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `article_title`, `description`, `image`) VALUES
(3, 'Veneers', 'What is Veneers ? ', '<p><font face=\"Open Sans\"><span style=\"font-size: 14px;\">jgvsghjvdahjksgvdhasvdvashdvashvjdasd</span></font></p>', '1658240219.jpg'),
(5, 'Prosthodontics Treatment', 'What is Prosthodontics Treatment?', '<p><span style=\"font-size: 14px; font-family: &quot;Open Sans&quot;;\">﻿</span><span style=\"font-family: &quot;Open Sans&quot;;\">PUP Taguig Dental Clinic provides a slate of prosthodontics or denture services to treat and rehabilitate patients’ oral function, comfort, and appearance.\r\n</span></p><p><span style=\"font-family: &quot;Open Sans&quot;;\">\r\nWe only use top-quality teeth for your dentures. And you need not wait a long time because we have our own laboratory that produces dentures.</span></p>', '1658240226.jpg'),
(6, 'Oral Prophylaxis', 'What is Oral Prophylaxis?', '<p class=\"brz-mb-xs-15 brz-tp-paragraph brz-text-xs-center brz-mb-lg-20\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; line-height: 1.6em;\"><span class=\"brz-cp-color1\" style=\"margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; line-height: inherit; display: inline; font-family: &quot;Open Sans&quot;; font-size: 14px;\">Oral prophylaxis&nbsp;is a dental procedure that is performed to help reduce the risk of gum and tooth disease. Also known simply as prophylaxis or&nbsp;prophy, this dental procedure is recommended to</span><span style=\"font-size: 14px; font-family: &quot;Open Sans&quot;;\">﻿</span><span class=\"brz-cp-color1\" style=\"margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; line-height: inherit; display: inline; font-family: &quot;Open Sans&quot;; font-size: 14px;\"> be taken every six months or yearly, depending on a patient’s history.</span></p><p class=\"brz-mb-xs-15 brz-tp-paragraph brz-text-xs-center brz-mb-lg-20\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; line-height: 1.6em;\"><span style=\"font-family: &quot;Open Sans&quot;; font-size: 14px;\">During dental prophylaxis, your dentist will also inspect your teeth and jaw for any obvious signs of ill health. This inspection may reveal underlying medical issues such as receding gums, erupting wisdom teeth, dental cavities, or even oral cancer – some of which will require immediate treatment. Early identification of dental problems can help you deal with them before they become serious.</span><br></p>', '1658240233.jpg'),
(8, 'Oral Surgery (Minor Surgery)', 'What is Oral Surgery?', '<p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, Calibri, Candara, Arial, sans-serif;\"><span style=\"font-family: &quot;Open Sans&quot;;\">﻿</span><span style=\"font-size: 14px;\">﻿</span><span style=\"font-family: &quot;Open Sans&quot;;\">You can expect our team of dentists to be very gentle but thorough with every surgical process. From simple extractions to complex treatments like frenectomy, where tissue is removed to prepare for dentures or braces, patients can be assured of great comfort during surgery as well as long-term enhancement of oral functions.</span></p><ul style=\"margin-bottom: 10.5px; color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, Calibri, Candara, Arial, sans-serif;\"><li><span style=\"font-family: &quot;Open Sans&quot;;\">Simple Extraction</span></li><li><span style=\"font-family: &quot;Open Sans&quot;;\">Odontectomy (Wisdom Tooth Removal)</span></li><li><span style=\"font-family: &quot;Open Sans&quot;;\">Apicoectomy</span></li><li><span style=\"font-family: &quot;Open Sans&quot;;\">Alveolectomy/Alveoplasty (Removal or Trimming of Ridge)</span></li><li><span style=\"font-family: &quot;Open Sans&quot;;\">Frenectomy</span></li><li><span style=\"font-family: &quot;Open Sans&quot;;\">Torus Palatinus/Mandibularis</span></li></ul>', '1658240241.jpg'),
(9, 'Cosmetic Dentistry', 'What is Cosmetic Dentistry?', '<p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, Calibri, Candara, Arial, sans-serif;\"><span style=\"font-size: 14px;\">﻿</span><span style=\"font-family: &quot;Open Sans&quot;;\">﻿</span><span style=\"font-size: 14px;\">﻿</span><span style=\"font-family: &quot;Open Sans&quot;;\">We promise you a smile makeover that goes beyond improving how your teeth and gums function. Ever wonder how actors and actresses have gotten that picture-perfect teeth? At PUP Taguig Dental Clinic, you can now also enjoy quality cosmetic treatments that they get. Our services involve whitening, teeth reshaping, bonding, porcelain veneers (laminates), crowns (caps), and gum grafts, among others. We can also restore decayed teeth to their original form and function.</span></p><p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, Calibri, Candara, Arial, sans-serif;\"><span style=\"font-family: &quot;Open Sans&quot;;\">Our all-porcelain/ceramic crowns mimic the appearance of natural teeth. Materials used for both are 100% biocompatible, metal-free, hypoallergenic, translucent, and natural-looking, without the unsightly dark gumlines. Zirconia crowns and bridges can also be used instead. The clinic utilizes E-max and Empress Systems for such treatments.</span></p>', '1658240252.jpg'),
(10, 'Restorative Treatment', 'What is Restorative Treatment?', '<p class=\"brz-mb-xs-15 brz-tp-paragraph brz-text-xs-center brz-mb-lg-20\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; line-height: 1.6em;\"><span style=\"font-family: &quot;Open Sans&quot;; font-size: 14px;\">﻿</span><span class=\"brz-cp-color1\" style=\"margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; line-height: inherit; display: inline; font-family: &quot;Open Sans&quot;;\">A dental filling or also known as pasta is a way to restore a tooth damaged by decay back to its normal function and shape. When a dentist gives you a filling, he or she first removes the decayed tooth material, cleans the affected area, and then fills the cleaned out cavity with a filling material.</span></p><p class=\"brz-mb-xs-15 brz-tp-paragraph brz-text-xs-center brz-mb-lg-20\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; line-height: 1.6em;\"><span class=\"brz-cp-color1\" style=\"margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; line-height: inherit; display: inline; font-family: &quot;Open Sans&quot;;\">Fillings are also used to repair cracked or broken teeth and teeth that have been worn down from misuse such as from nail-biting or tooth grinding. The dentist will tell you what type of restorative material will be used depending on the case of your tooth.</span></p>', '1658240271.jpg'),
(31, 'Root Canal Treatment', 'What is Root Canal Treatment?', '<p><strong>Welcome to Pipo Esthetique Dental Care</strong></p><p>At Pipo Esthetique Dental Care, we are dedicated to providing comprehensive dental services to help you achieve a healthy and beautiful smile. Our team of experienced dental professionals is committed to delivering personalized care using the latest technology and techniques. Explore our range of services designed to meet all your dental needs.</p><p>&nbsp;</p><p><span class=\"ui-provider a b c d e f g h i j k l m n o p q r s t u v w x y z ab ac ae af ag ah ai aj ak\" dir=\"ltr\"></span></p><p>Save your natural teeth with our expert root canal treatment. When the pulp of a tooth becomes infected or damaged, root canal therapy can remove the infection and restore the tooths health. Our gentle and precise approach ensures minimal discomfort and a high success rate, allowing you to retain your natural teeth and avoid extraction.</p>', '1719238690.png');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` bigint(20) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `sid`, `token`, `sender`) VALUES
(1, 'ACd025385d0723d1a72be2d29642d17ba5', '216228570dda2c32cdbedac548555644', '+19298224102');

-- --------------------------------------------------------

--
-- Table structure for table `system_details`
--

CREATE TABLE `system_details` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `days` varchar(255) NOT NULL,
  `openhr` varchar(50) NOT NULL,
  `closehr` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `telno` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `map` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_details`
--

INSERT INTO `system_details` (`id`, `name`, `days`, `openhr`, `closehr`, `address`, `telno`, `email`, `mobile`, `facebook`, `map`, `logo`, `brand`) VALUES
(1, 'System Title', '2,3,4,5,6', '8:00 AM', '6:00 PM', 'System Address', '+639952350999', 'feliztoothdev@gmail.com', '+639952350999', 'https://www.facebook.com', 'https://maps.app.goo.gl/juoq3HkzrbH25rLHA', '1678434994.png', '1678434983.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `verify_token` varchar(255) NOT NULL,
  `verify_status` tinyint(2) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `name`, `address`, `phone`, `email`, `image`, `password`, `role`, `status`, `verify_token`, `verify_status`, `created_at`) VALUES
(52, 'admin', 'Sequi eum quia ducim', '+639999999999', 'admin@gmail.com', '1678435022.png', '$2y$10$ovSBMnrKAE/MENpdZpVMe.Xf/qeZeldHbdL5NP.10gNwe/rtmMJgi', 'admin', 1, '', 1, '2022-11-02 05:49:00'),
(53, 'Quinn Wheeler', 'Aut ut quia Nam dolo', '+639999999999', 'jahetoso@mailinator.com', '1719240497.png', '$2y$10$ZSABnp972iHKOez3783naOiTQZXAGi3RcWLXn2dp5LZ0ZHFioBqBS', 'admin', 0, '', 0, '2024-06-24 22:48:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `doc_id` bigint(20) NOT NULL,
  `schedule` varchar(191) NOT NULL,
  `starttime` varchar(191) NOT NULL,
  `endtime` varchar(191) NOT NULL,
  `sched_id` bigint(20) NOT NULL,
  `schedtype` varchar(191) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `seen_status` int(1) NOT NULL,
  `status` varchar(100) NOT NULL,
  `payment` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Unfinished,1=Finish',
  `payment_option` varchar(255) NOT NULL,
  `bgcolor` varchar(7) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`id`, `patient_id`, `patient_name`, `doc_id`, `schedule`, `starttime`, `endtime`, `sched_id`, `schedtype`, `reason`, `seen_status`, `status`, `payment`, `payment_option`, `bgcolor`, `created_at`) VALUES
(478, 247, 'Bernard Swanson Chava Walsh', 182, '2024-07-23', '09:00 AM', '09:30 AM', 114, 'Online Schedule', 'Cleaning', 0, 'Pending', 0, 'paypal', '', '2024-07-22 06:49:19'),
(505, 245, 'demo patient', 182, '2024-07-23', '09:30 AM', '10:00 AM', 114, 'Walk-in Schedule', 'Composite', 0, 'Confirmed', 1, 'cash', '#f39c12', '2024-07-22 08:38:00'),
(506, 245, 'demo patient', 182, '2024-07-23', '10:00 AM', '10:30 AM', 114, 'Walk-in Schedule', 'Composite', 0, 'Confirmed', 1, 'cash', '#f39c12', '2024-07-22 08:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbldoctor`
--

CREATE TABLE `tbldoctor` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `specialty` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(191) NOT NULL DEFAULT '2',
  `status` tinyint(2) NOT NULL DEFAULT 1 COMMENT '0=inactive,1=active',
  `verify_token` varchar(255) NOT NULL,
  `verify_status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0=no,1=yes	',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldoctor`
--

INSERT INTO `tbldoctor` (`id`, `name`, `dob`, `address`, `gender`, `phone`, `email`, `degree`, `specialty`, `image`, `password`, `role`, `status`, `verify_token`, `verify_status`, `created_at`) VALUES
(182, 'Vincent Calayan', '01/31/1990', '56 East First Court', 'Male', '+639558308223', 'hugyh@gmail.com', 'Adipisicing nihil ex', 'Ut et animi molesti', '1678435221.png', '$2y$10$IETknIKiNzgrAafSwn3hy.ub6xo99qZLltmUIb6A610mW4NBa8uC2', '2', 1, '', 0, '2023-03-10 16:00:21'),
(184, 'Malcolm Mercer', '02/02/2010', 'Quibusdam rerum veni', 'Female', '+639999999999', 'jifigiri@mailinator.com', 'Est et voluptates u', 'In id quam eius qui', '1719240105.png', '$2y$10$eEh0A/EMPlwfC4NqEpXbUemhww.//dnSYqn1VubaRP8yOPxQBeXj.', '2', 1, '', 0, '2024-06-24 22:41:45'),
(185, 'Ori Moss', '02/01/2000', 'Nemo consequatur po', 'Others', '+639999999999', 'tukygapusu@mailinator.com', 'Voluptatum sed totam', 'Quibusdam dolor ea q', '1721608954.png', '$2y$10$uB9GsstYE3W/rOG4x8ZucuGSDH8NuBAUN7C/qnVAbMIhi9GjHij2u', '2', 1, '', 0, '2024-07-22 08:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(191) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `card` tinyint(4) NOT NULL DEFAULT 0,
  `email` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(191) NOT NULL DEFAULT 'patient',
  `verify_token` varchar(191) NOT NULL,
  `verify_status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0=no,1=yes',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`id`, `fname`, `lname`, `address`, `dob`, `gender`, `phone`, `card`, `email`, `image`, `password`, `role`, `verify_token`, `verify_status`, `created_at`) VALUES
(245, 'demo', 'patient', '#81 Maginhawa Teachers Village Quezon City', '11/18/2002', 'Female', '+639762553652', 1, 'pipopatient@gmail.com', '1678435139.png', '$2y$10$eoD.N1GihAtDbgLLvf4BzevDyJzJjh.cQtzqvQRNZsGFlvCbMNE8y', 'patient', '', 0, '2023-03-10 15:58:22'),
(247, 'Bernard Swanson', 'Chava Walsh', 'Et qui incidunt con', '06/06/2000', 'Female', '+639999999999', 0, 'wanetoh@mailinator.com', '1719241481.png', '$2y$10$D2Bym7Rv.jW0Br1ZwfUYcueYZPXmNrVMvEap117PKPolgs1rBWWKK', 'patient', '', 1, '2024-06-24 23:04:41'),
(248, 'Kim', 'Hopkins', 'Quis ut maiores quo ', '03/10/2004', 'Female', '+639999999999', 0, 'jekixirulu@mailinator.com', '1720634021.png', '$2y$10$6KZn/v.ASTqI.GXFdhjKxOiZDGhhmFP7sg7xSEze/ZYyfnxf5KCma', 'patient', '', 1, '2024-07-11 01:53:41'),
(249, 'Cullen Ochoa', 'Mara Robinson', 'Numquam harum esse ', '05/24/1993', 'Female', '+639999999999', 0, 'duhifywa@mailinator.com', '1721562327.png', '$2y$10$8nRLmpbBjLwzke/m3kLXUeQ3U06dNu.Bnue/ReQpfwehgETFD3qTS', 'patient', '', 1, '2024-07-21 19:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(191) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `verify_token` varchar(255) NOT NULL,
  `verify_status` tinyint(2) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`id`, `name`, `dob`, `address`, `gender`, `phone`, `email`, `image`, `password`, `role`, `status`, `verify_token`, `verify_status`, `created_at`) VALUES
(29, 'Sara Durham', '02/01/2000', 'Qui minim facilis al', 'Male', '+639999999999', 'syki@mailinator.com', '1721609073.png', '$2y$10$f8ckyEGHHdaKDEHKvuos0uz47bG/s2FyzBZO4b1IAM0rfoeifj1Va', '3', 1, '', 0, '2024-07-22 08:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `id` bigint(20) NOT NULL,
  `appointment_id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `doc_id` bigint(20) NOT NULL,
  `visit` varchar(255) NOT NULL,
  `teeth` varchar(255) NOT NULL,
  `complaint` varchar(255) NOT NULL,
  `treatment` varchar(255) NOT NULL,
  `fees` varchar(255) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `uploaded_on` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `users`
-- (See below for the actual view)
--
CREATE TABLE `users` (
`id` bigint(20)
,`name` varchar(292)
,`email` varchar(255)
,`role` varchar(255)
,`status` tinyint(4)
,`password` varchar(255)
,`verify_token` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `users`
--
DROP TABLE IF EXISTS `users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `users`  AS SELECT `tbladmin`.`id` AS `id`, `tbladmin`.`name` AS `name`, `tbladmin`.`email` AS `email`, `tbladmin`.`role` AS `role`, `tbladmin`.`status` AS `status`, `tbladmin`.`password` AS `password`, `tbladmin`.`verify_token` AS `verify_token` FROM `tbladmin`union all select `tblstaff`.`id` AS `id`,`tblstaff`.`name` AS `name`,`tblstaff`.`email` AS `email`,`tblstaff`.`role` AS `role`,`tblstaff`.`status` AS `status`,`tblstaff`.`password` AS `password`,`tblstaff`.`verify_token` AS `verify_token` from `tblstaff` union all select `tblpatient`.`id` AS `id`,concat(`tblpatient`.`fname`,' ',`tblpatient`.`lname`) AS `name`,`tblpatient`.`email` AS `email`,`tblpatient`.`role` AS `role`,`tblpatient`.`verify_status` AS `status`,`tblpatient`.`password` AS `password`,`tblpatient`.`verify_token` AS `verify_token` from `tblpatient` union all select `tbldoctor`.`id` AS `id`,`tbldoctor`.`name` AS `name`,`tbldoctor`.`email` AS `email`,`tbldoctor`.`role` AS `role`,`tbldoctor`.`status` AS `status`,`tbldoctor`.`password` AS `password`,`tbldoctor`.`verify_token` AS `verify_token` from `tbldoctor`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dental_history`
--
ALTER TABLE `dental_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dh_patient_id_foreign` (`patient_id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_declaration`
--
ALTER TABLE `health_declaration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hd_patient_id_foreign` (`patient_id`),
  ADD KEY `hd_q_id_foreign` (`question_id`);

--
-- Indexes for table `mail_settings`
--
ALTER TABLE `mail_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_record`
--
ALTER TABLE `medical_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mr_patient_id_foreign` (`patient_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notif_patient_id_foreign` (`patient_id`),
  ADD KEY `notif_doc_id_foreign` (`doc_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_patient_id` (`patient_id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescription_doc_id_foreign` (`doc_id`),
  ADD KEY `prescription_patient_id_foreign` (`patient_id`);

--
-- Indexes for table `procedures`
--
ALTER TABLE `procedures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `procedures_service_id_foreign` (`service_id`);

--
-- Indexes for table `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sched_doc_id_foreign` (`doc_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_details`
--
ALTER TABLE `system_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id_foreign` (`patient_id`),
  ADD KEY `app_sched_id_foreign` (`sched_id`),
  ADD KEY `app_doc_id_foreign` (`doc_id`);

--
-- Indexes for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `treatment_id_foreign` (`appointment_id`),
  ADD KEY `treatment_doc_id` (`doc_id`),
  ADD KEY `treatment_patient_id` (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dental_history`
--
ALTER TABLE `dental_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `health_declaration`
--
ALTER TABLE `health_declaration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2996;

--
-- AUTO_INCREMENT for table `mail_settings`
--
ALTER TABLE `mail_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medical_record`
--
ALTER TABLE `medical_record`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=552;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `procedures`
--
ALTER TABLE `procedures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `questionnaires`
--
ALTER TABLE `questionnaires`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_details`
--
ALTER TABLE `system_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dental_history`
--
ALTER TABLE `dental_history`
  ADD CONSTRAINT `dh_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `tblpatient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `health_declaration`
--
ALTER TABLE `health_declaration`
  ADD CONSTRAINT `hd_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `tblpatient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hd_q_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questionnaires` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_record`
--
ALTER TABLE `medical_record`
  ADD CONSTRAINT `mr_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `tblpatient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notif_doc_id_foreign` FOREIGN KEY (`doc_id`) REFERENCES `tbldoctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notif_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `tblpatient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payment_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `tblpatient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_doc_id_foreign` FOREIGN KEY (`doc_id`) REFERENCES `tbldoctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescription_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `tblpatient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `procedures`
--
ALTER TABLE `procedures`
  ADD CONSTRAINT `procedures_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `sched_doc_id_foreign` FOREIGN KEY (`doc_id`) REFERENCES `tbldoctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD CONSTRAINT `app_doc_id_foreign` FOREIGN KEY (`doc_id`) REFERENCES `tbldoctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `app_sched_id_foreign` FOREIGN KEY (`sched_id`) REFERENCES `schedule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `tblpatient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_doc_id` FOREIGN KEY (`doc_id`) REFERENCES `tbldoctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `treatment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `tblappointment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `treatment_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `tblpatient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
