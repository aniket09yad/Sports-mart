-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2023 at 03:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'Aniket Yadav', 'sportmartcon4@gmail.com', 'Admin@1234', '3551739.jpg', 'India', ' This application is created by Aniket, if you willing to contact me, please click this link. <br/>\r\n                        <a href=\"#\"> Aniket Sports-Mart </a> <br/>\r\n                        I am a driven and ambitious individual with a passion for innovation and problem-solving. I have a strong work ethic and am always eager to take on new challenges. I believe in the power of perseverance and am not afraid to put in the effort to achieve my goals.', '+91 9819135304', 'Web Designer'),
(3, 'Dhruvi Verma', 'dhruvsal@gmail.com', 'Dhruvi@123', '27470370_7309687.jpg', 'India', 'This application is created by Dhruvi Verma, if you willing to contact me, please click this link. <br/>\n                        <a href=\"#\"> Sports-Mart </a> <br/>\nI am a curious and adventurous soul with a love for exploring new places and trying new things. I have a thirst for knowledge and am always eager to learn something new. I believe in living life to the fullest and am not afraid to take risks to achieve my dreams.', '+91 9922338844', 'Temp Manager');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, 'Best Products', 'Don\'t miss out the best deal of the season with our unbeatable offer!'),
(2, 'Best Offers', 'Don\'t miss out the best deal of the season with our unbeatable offer!'),
(3, '100% Quality Products', 'We are committed to providing only the highest quality products to our customers. ');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `p_price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, 'Men', 'yes', 'man.jpg'),
(2, 'Women', 'no', 'woman.jpg'),
(3, 'Both', 'no', 'both.jpg'),
(4, 'Kids', 'yes', 'kids.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(3, 19, 'Ladies Fashion Week Offer', '60', '01012020', 5, 0),
(4, 14, 'Fashion Week Offer', '349', '20201010', 5, 1),
(5, 5, 'Sasta Offer', '30', '23231212', 7, 1),
(6, 3, 'Sasta Malamal Offer', '1399', '03031010', 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(4, 'Kiara', 'kiara@gmail.com', 'nopassword', 'India', 'Mumbai', '1234569990', 'Jannat', 'product14side.jpg', '::1'),
(8, 'Aniket', 'aniketyadav@gmail.com', 'Aniket@123', 'India', 'Where you never think', '23456789034', 'Mannat ke pass', '3551739.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(9, 8, 798, 98964489, 1, 'Small', '2023-02-07', 'Complete'),
(10, 8, 2798, 1574944684, 2, 'Medium', '2023-02-07', 'Pending'),
(11, 8, 349, 1709517154, 1, 'Medium', '2023-02-07', 'Complete'),
(12, 8, 30, 895487592, 1, 'Medium', '2023-02-16', 'Pending'),
(13, 8, 749, 895487592, 1, 'Medium', '2023-02-16', 'Pending'),
(14, 8, 14499, 1157432143, 1, 'Medium', '2023-02-16', 'Pending'),
(15, 8, 400, 2071848745, 1, 'Large', '2023-02-18', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(1, 'Name_1', 'yes', 'man_1.jpg'),
(2, 'Name_2', 'yes', 'man_2.jpg'),
(3, 'Name_3', 'yes', 'woman_1.jpg'),
(4, 'Name_4', 'no', 'worker.jpg'),
(10, 'Sagar Singh', 'yes', 'jackets.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(1, 872557791, 1159, 'Paytm', 123456789, 2147483647, '29-01-2023'),
(3, 511819671, 1194, 'Debit Card', 0, 1234567, '03-02-2023'),
(4, 0, 0, 'Paytm', 0, 0, 'sdfghj'),
(5, 98964489, 0, 'Credit Card', 465229381, 2147483647, '2023-02-07');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(10, 8, 1574944684, '3', 2, 'Medium', 'Pending'),
(11, 8, 1709517154, '14', 1, 'Medium', 'Complete'),
(12, 8, 895487592, '5', 1, 'Medium', 'Pending'),
(14, 8, 1157432143, '21', 1, 'Medium', 'Pending'),
(15, 8, 2071848745, '37', 1, 'Large', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_label` text NOT NULL,
  `product_sale` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_features`, `product_video`, `product_label`, `product_sale`) VALUES
(2, 3, 1, 2, '2023-02-04 15:50:56', 'Vector X Velocity Football Shoes (Black-Silver)', 'product-2', 'product-8c.jpg', 'product-8a.jpg', 'product-8b.jpg', 1159, 'Brand:- Vector X', '<p>Color: Black-Sliver</p>\n<p>Sole Material: TPU Sole</p>\n<p>Outer Material: PU</p>\n<p>Padded Footbed, Cushioned Ankle</p>', '', '', 'Sale', 999),
(3, 3, 1, 3, '2023-02-04 15:51:01', 'Puma Mens Rapido Iii Fg/Ag Football Shoe', 'product-3', 'product-7a.jpg', 'product-7b.jpg', 'product-7c.jpg', 1859, 'Brand: Puma', '<p>Sole: Rubber</p>\n<p>Closure: Lace-Up</p>\n<p>Fit Type: Regular</p>\n<p>Shoe Width: Medium</p>', '', '', 'Sale', 1499),
(5, 2, 2, 1, '2023-02-07 00:59:26', 'Noise ColorFit Smart Watch 1.69', 'product-5', 'product-5a.jpg', 'product-5b.jpg', 'product-5c.jpg', 1999, 'Brand: Noise', '<p>1.69 inch hd Display with imersive viewing experience in outdoors.</p>\r\n<p>Instant Charge: Now enjoy more than a day worth /25 hours of battery in just 15 minute of charge.</p>\r\n<p>IP68 Waterproof technology: Water Resistance</p>\r\n<p>Noise Healt Monitoring System</p>', '<p>150+ cloud-based &amp; customisable watch faces: Choose from 150+ cloud-based and customisable watch faces and change your look to suit your outfit.<br />IP68 waterproof: Live your life the way you want to, thanks to the IP68 waterproof rating.;7-day battery: Charge your watch once and go about your week without a hitch.; Water Resistance Level: Water Resistant</p>\r\n<p>IP68 Water Proofing technology</p>', '                                                                        <iframe width=\"320\" height=\"560\" src=\"https://www.youtube.com/embed/DEJfhPjNE6g\" title=\"Noise Colorfit pro 3 assist #noise #noiseshots #unboxing  #pro3assist\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>                                                                ', 'New', 0),
(7, 5, 1, 1, '2023-02-04 15:51:13', 'ZU Mens Micro Polyeste Gym T-Shirt for Men', 'product-7', 'mentshirt-front.jpg', 'mentshirt-back.jpg', 'mentshirt-middle.jpg', 321, 'Color: Orange', '<p>Fit Type: Regular Fit</p>\n<p>Care Instructon : Hand wash</p>\n<p>Minimal Shrinkage</p>\n<p>Material : Micro Polyster</p>', '', '', 'Sale', 299),
(11, 5, 1, 10, '2023-02-04 15:51:31', 'BISHOP COTTON Men\'s Polo T-Shirt', 'product-11', '61gFGZvTWCS._SX679._SX._UX._SY._UY_.jpg', '61j2utWRp5S._SX679._SX._UX._SY._UY_.jpg', '614mnocbCPS._SX679._SX._UX._SY._UY_.jpg', 349, 'Color: Orange', '<p>Material Composition : Polyster</p>\n<p>Neck-Style: Round Neck</p>\n<p>Pattern: Self-Design</p>\n<p>Fit Type: Regular/p>\n', '', '', 'Sale', 298),
(12, 5, 1, 2, '2023-02-04 15:51:34', 'Bishop Half Sleeve Polo T-Shirts', 'product-12', 'product11front.jpg', 'product11side.jpg', 'product11back.jpg', 349, 'Color: Blue', '<p>Material: Polyster</p>\n<p>Wear: Sports Wear, Gym Wear</p>\n<p>Neck-Style: Round Neck</p>\n<p>Fit: Regular Fit</p>\n<p>Sleeves: Half Sleeves</p> ', '', '', 'New', 0),
(14, 5, 1, 4, '2023-02-16 06:53:09', 'AYBTIC Team India Jersey for Men ', 'product-14', 'p-16a.jpg', 'p-16b.jpg', 'p-16c.jpg', 398, 'Team India Jersey', '<p>Material Composition : Polyster</p>\r\n<p>Style: Retro</p>\r\n<p>Neck Style: Round Neck</p>\r\n<p>Pattern: Printed</p>', '', '                                                                      ', 'New', 0),
(15, 2, 3, 2, '2023-02-04 15:51:40', 'Sfane polyester 23 CMS Duffle Bag', 'product-15', 'probag-1a.jpg', 'probag-1b.jpg', 'probag-1c.jpg', 377, 'Color Name: Grey', '<p>Durable Material - Travel Duffle Bag is made of,</p>\r\n<p>Durable Materail: Seperate Shoes</p>\r\n<p>Water Resistance Level: Water Resistance ;</p>\r\n<p>Handle Type: Web Handle;</p>\r\n<p>Color Name: Grey</p>', '', '', 'Sale', 329),
(16, 5, 2, 10, '2023-02-04 15:51:46', 'Women\'s Half Sleeves Sports Gym T-Shirt', 'product-16', 'pgirl-1a.jpg', 'pgirl-1c.jpg', 'pgirl-1b.jpg', 349, 'Style: Round Neck, Color: Grey', '<p>Fabric: Polyester. Soft and breathable. </p>\n<p>Anti-Microbial technology keeps odor-causing microbes away</p>\n<p>Advanced Rapid Dry Technology processed at the yarn level wicks sweat & dries fast.</p>\n<p>Color Name: Black</p>', '', '', 'New', 0),
(17, 2, 3, 1, '2023-02-04 15:51:49', 'Urban Tribe Plank 23 litres Sports Gym Bag', 'product-17', 'probag-2a.jpg', 'probag-2b.jpg', 'probag-2c.jpg', 1048, 'Sports Gym Duffel Bag with Separate Shoe Compartment', '<p>Manuacturer: BACKPACK INTERNATIONAL PVT LTD</p>\n<p>Generic Name: Luggage Carry-On-Luggage</p>\n<p>Material Type: Polyster</p>\n<p>Handle Type: Web Handle</p>\n<p>Waster Resistance Level: Waster Resistance </p>', '', '', 'New', 0),
(18, 5, 2, 4, '2023-02-16 07:21:42', 'Bishop Half Sleeve Woman T-Shirtss', 'product-18', 'pgirl-2a.jpg', 'pgirl-2b.jpg', 'pgirl-2c.jpg', 327, 'Woman T-Shirt', '<p>Material: Polyster</p>\r\n<p>Wear: Sports Wear, Gym Wear</p>\r\n<p>Neck-Style: Round Neck</p>\r\n<p>Fit: Regular Fit</p>\r\n<p>Sleeves: Half Sleeves</p>', '', '                                   <iframe width=\"440\" height=\"446\" src=\"https://www.youtube.com/embed/027VewUlUa0\" title=\"Durafit - Manual Treadmill Installation Video\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>                                 ', 'New', 0),
(21, 1, 3, 2, '2023-02-17 10:39:34', 'Sparnod Fitness STH-1200 Automatic Treadmill', 'treadmil-1', 'tread1.jpg', 'tread2.jpg', 'tread3.jpg', 17499, 'GYM FITNESS EQUIPMENTS', '', '', '                                                                                                            <p><iframe width=\"440\" height=\"446\" src=\"https://www.youtube.com/embed/LKL5JSj8Ifw\" title=\"RPM717 Carbon Installation and Usage Video\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe></p>                                                                                                ', 'Sale', 14499),
(22, 2, 3, 2, '2023-02-17 10:34:45', 'Boult Smartwatch  with 100+ Sports Mode', 'bolt-1', 'watch1a.jpg', 'watch1b.jpg', 'watch1c.jpg', 2599, 'Blot Smart Watch ', '<ul>\r\n<li>1.75 Inch AMOLED Display , Bluetooth Calling &amp; Other Notifications, Rotating Crown, AI Voice Assistant, Heart Rate Monitor, BP &amp; Sleep Monitoring , Gesture Control, Built-in-Games, 150+ Sports Mode, 250+Watch Faces, Music Control, 15 Days Battery.</li>\r\n<li>[Twist and Control]Why swipe when you can Twist! With a rotating crown, Ignite Grit makes it easy to surf through the smooth UI of a 60 Hz refresh rate backed by HyperSenseTM.</li>\r\n</ul>', '<ul>\r\n<li>[Beat your High Scores] Take your fitness game up a notch with Ignite Grit! With over 150+ sports modes to choose from, every day craves a new activity! Alongside, with the built-in 2 games, entertainment is always on the wrist!</li>\r\n<li>[Dial through the wrist] Raise your wrist, Tap the screen! That&rsquo;s how easy phone calls have become with Ignite Grit. The dynamic speaker and advanced Bluetooth version installed ensure disturbance-free calls every time.</li>\r\n<li>[Keep your Vitals in check] Before the dark circles start forming, assess your sleeping patterns with Ignite Grit&rsquo;s precise sleep monitors. Equipped with instant HR, BP, and SpO2 trackers, always know what your body feels.</li>\r\n</ul>', '                                                  <iframe width=\"320\" height=\"560\" src=\"https://www.youtube.com/embed/NgX0C6N2xTs\" title=\"Boult Ridge calling Smartwatch under 3000 rupees #trending #shorts\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>                                                                                      ', 'Sale', 2299),
(23, 1, 3, 3, '2023-02-17 13:16:35', 'Cockatoo CTM-04 Motor Multi-Function Treadmill', 'treadmilla-a', 'treadmilla.jpg', 'treadmillb.jpg', 'treadmillc.jpg', 19999, 'GYM FITNESS EQUIPMENTS', '<ul>\r\n<li>Belt size: Running Surface(LxB):1100 x 390 mm (43.3\" x 15.3\")</li>\r\n<li>otor type: DC-Motorised | Motor horsepower data : 1.5 HP Continuous ( 2 HP Peak)</li>\r\n<li>Speed: 0.8-14 km/hr | Max Weight support: 90 Kilograms</li>\r\n<li>Inclination type: 3 Level Manual Incline</li>\r\n<li>Technical Feature:Time, Speed,Distance, Calorie, Pulse, Fat Measure</li>\r\n<li>Other Feature:AUX input , Foldable &amp; Moveable, Easy Installation</li>\r\n<li>Display: 5\" LED Screen||Belt Thickness:1.4 mm</li>\r\n</ul>', '<table>\r\n<tbody>\r\n<tr>\r\n<td>Brand</td>\r\n<td>Cockatoo</td>\r\n</tr>\r\n<tr>\r\n<td>Colour</td>\r\n<td>White</td>\r\n</tr>\r\n<tr>\r\n<td>Product Dimensions&nbsp;</td>\r\n<td>27D x 9W x 57H Centimeters</td>\r\n</tr>\r\n<tr>\r\n<td>Item Weight</td>\r\n<td>42 Kilograms</td>\r\n</tr>\r\n<tr>\r\n<td>Material</td>\r\n<td>Blend</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<ul>\r\n<li>Warranty details: Warranty Details: 1 Year Motor Warranty, 1 Year Parts Warranty &amp; LifeTime Frame Warranty</li>\r\n<li>In-box Content: 1 x Treadmill</li>\r\n</ul>', '                                                                                                                                                                                                <iframe width=\"440\" height=\"446\" src=\"https://www.youtube.com/embed/5jqjRRYLG30\" title=\"Cockatoo Fitness CTM 05 Motorized Treadmill For Home Use\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>                                                                                                                                                                                                                                                                                            ', 'New', 0),
(24, 1, 3, 4, '2023-02-17 13:36:14', 'MAXPRO PTM405 2HP Folding Treadmill', 'tremill-a', 'tremilla.jpg', 'tremillb.jpg', 'tremillc.jpg', 26550, 'GYM FITNESS EQUIPMENTS', '<ul>\r\n<li>【Motor】 2.0 HP(4 HP Peak) DC quite motor deliver power for interval, speed, or endurance training . 【Incline】 3-Level manual incline for intense workout.</li>\r\n<li>【Display】5&rdquo; Blue LCD display, Display reading &ndash; Hand Pulse, Time, Speed, Distance, Calories. 【Speed】 1 to 14 km/hr Speed levels available, you can select different speed base on your physical condition and exercise based.</li>\r\n<li>【Max user weight】 110kg . 【Program】 12 pre-set programs for efficient workout &amp; H1-H3 Program. Hand held Pulse Stay in your target heart rate zone with built-in thumb sensors that help you monitor your heart rate throughout your workout.Wheels for easy transportation.Easily foldable using soft drop hydraulic system.</li>\r\n</ul>', '<table>\r\n<tbody>\r\n<tr>\r\n<td>Brand</td>\r\n<td>WELCARE</td>\r\n</tr>\r\n<tr>\r\n<td>Colour</td>\r\n<td>Blue,Grey</td>\r\n</tr>\r\n<tr>\r\n<td>Product Dimensions</td>\r\n<td>61.6D x 11.4W x 30.3H Centimeters</td>\r\n</tr>\r\n<tr>\r\n<td>Item Weight</td>\r\n<td>47 Kilograms</td>\r\n</tr>\r\n<tr>\r\n<td>Material</td>\r\n<td>Alloy Steel</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>【Features】 Mobile &amp; tablet holder for safe keeping your smart devices while running. USB Port, MP3 Speakers.【Running surface 】:(L x W) &ndash; 1150 X 420mm. The multi-layered running belt reduces sudden shocks. The textured material offers optimum traction and makes it easy to use without compromising on its functionality.&nbsp;</p>', '                    <iframe width=\"440\" height=\"446\" src=\"https://www.youtube.com/embed/1XFJkaSZIoo\" title=\"MAXPRO | PTM405 | PRODUCT DEMO VIDEO\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>                                                                                                                    ', 'New', 0),
(25, 1, 3, 1, '2023-02-17 14:20:09', 'Stunner Fitness STX-360 Motorized Treadmill ', 'trea-1', 'trea.jpg', 'treb.jpg', 'treadmillb.jpg', 31499, 'GYM FITNESS EQUIPMENTS', '<ul>\r\n<li>Warranty: Lifetime Frame Warranty, 1-Year Motor Warranty, And 1-Year Parts &amp; Manufacturing Defects Warranty. Performance: Motorised treadmill with very powerful, quiet and durable DC Motor with 2.0 HP Power. With Speed of 1.0-14 km/h you can select different speed base on your physical condition and exercise based. With Auto Inclination of 0%-15% maximum gradient make the workout extremely effective, be it running, jogging or walking.</li>\r\n</ul>', '<table>\r\n<tbody>\r\n<tr>\r\n<td>Brand</td>\r\n<td>Stunner Fitness</td>\r\n</tr>\r\n<tr>\r\n<td>Colour</td>\r\n<td>Black</td>\r\n</tr>\r\n<tr>\r\n<td>Item Weight</td>\r\n<td>55 Kilograms</td>\r\n</tr>\r\n<tr>\r\n<td>Material</td>\r\n<td>Alloy Steel</td>\r\n</tr>\r\n<tr>\r\n<td>Maximum Speed</td>\r\n<td>14 Kilometers per Hour</td>\r\n</tr>\r\n</tbody>\r\n</table>', '                                           <iframe width=\"440\" height=\"446\" src=\"https://www.youtube.com/embed/S31_z-oJwbU\" title=\"Stunner Fitness STX-360 Motorised Treadmill - Installation and User Guide - Treadmill For Home Use\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>                                                                                             ', 'Sale', 25999),
(26, 1, 3, 2, '2023-02-17 14:36:07', 'SPARNOD FITNESS STH-2160 4-HP Treadmill', 'tresab-1', 'treaa.jpg', 'treab.jpg', 'treac.jpg', 23999, 'GYM FITNESS EQUIPMENTS', '<table>\r\n<tbody>\r\n<tr>\r\n<td>Brand</td>\r\n<td>SPARNOD FITNESS</td>\r\n</tr>\r\n<tr>\r\n<td>Colour</td>\r\n<td>Black</td>\r\n</tr>\r\n<tr>\r\n<td>Product Dimensions</td>\r\n<td>149D x 72.9W x 116H Centimeters</td>\r\n</tr>\r\n<tr>\r\n<td>Item Weight</td>\r\n<td>43 Kilograms</td>\r\n</tr>\r\n<tr>\r\n<td>Material</td>\r\n<td>Alloy Steel</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '                                                        <iframe width=\"440\" height=\"446\" src=\"https://www.youtube.com/embed/nYfzpR4V0TQ\" title=\"Stunner Fitness STX-250 Motorised Treadmill - Installation and User Guide - Treadmill For Home Use\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>            ', 'New', 0),
(27, 3, 1, 10, '2023-02-18 07:06:00', 'Andune cross Fitting shoes', 'shoea-1', 'andunea.jpg', 'anduneb.jpg', 'andunec.jpg', 2499, 'Brand: Andune Shoes', '<ul>\r\n<li>Sole: Rubber</li>\r\n<li>Closure: Snap</li>\r\n<li>Fit Type: Regular</li>\r\n<li>Shoe Width: Wide</li>\r\n</ul>', '<ul>\r\n<li>Product Dimensions &rlm; : &lrm;&nbsp;33.5 x 13.5 x 9 cm; 430 Grams</li>\r\n<li>Date First Available &rlm; : &lrm;&nbsp;8 April 2022</li>\r\n<li>Manufacturer &rlm; : &lrm;&nbsp;Indigro</li>\r\n<li>ASIN &rlm; : &lrm;&nbsp;B09XHYPLSH</li>\r\n<li>Item model number &rlm; : &lrm;&nbsp;AND 05</li>\r\n<li>Country of Origin &rlm; : &lrm; India</li>\r\n<li>Department &rlm; : &lrm;&nbsp;mens</li>\r\n<li>Manufacturer &rlm; : &lrm;&nbsp;Indigro</li>\r\n<li>Packer &rlm; : &lrm;&nbsp;Indigro</li>\r\n<li>Item Weight &rlm; : &lrm;&nbsp;430 g</li>\r\n<li>Item Dimensions LxWxH &rlm; : &lrm;&nbsp;33.5 x 13.5 x 9 Centimeters</li>\r\n</ul>', '                                                              <b>Video Not Avaliable</b>                                                                                                                                                                                                                  ', 'Sale', 1999),
(28, 3, 2, 1, '2023-02-18 07:05:44', 'Campus Womens Annie Sneaker', 'woshoes-2', 'woshoesa.jpg', 'woshoesb.jpg', 'woshoesc.jpg', 711, 'Women Sohoes', '<ul>\r\n<li>Sole: Thermoplastic Elastomers</li>\r\n<li>Closure: Slip-On</li>\r\n<li>Shoe Width: Medium</li>\r\n<li>Warranty Type: Manufacturer</li>\r\n<li>Care Instructions: Allow your pair of shoes to air and de-odorize at a regular basis, this also helps them retain their natural shape; use shoes bags to prevent any stains or mildew; dust any dry dirt from the surface using a clean cloth, do not use polish or shiner</li>\r\n</ul>', '<ul>\r\n<li>Product Dimensions &rlm; : &lrm;&nbsp;30.5 x 21.5 x 11.2 cm; 900 Grams</li>\r\n<li>Date First Available &rlm; : &lrm;&nbsp;21 January 2022</li>\r\n<li>Manufacturer &rlm; : &lrm;&nbsp;Campus</li>\r\n<li>ASIN &rlm; : &lrm;&nbsp;B09QXKN6M8</li>\r\n<li>Item model number &rlm; : &lrm;&nbsp;ANNIE</li>\r\n<li>Country of Origin &rlm; : &lrm;&nbsp;India</li>\r\n<li>Department &rlm; : &lrm;&nbsp;womens</li>\r\n<li>Manufacturer &rlm; : &lrm;&nbsp;Campus, Campus Shoes,D-1, Rohtak Road, Udyog Nagar, Opp. Peera Garhi Metro Station Gate No 2, New Delhi, Delhi 110041,ph no- 01143272500</li>\r\n<li>Packer &rlm; : &lrm;&nbsp;Campus Shoes,D-1, Rohtak Road, Udyog Nagar, Opp. Peera Garhi Metro Station Gate No 2, New Delhi, Delhi 110041,ph no- 01143272500</li>\r\n<li>Item Weight &rlm; : &lrm;&nbsp;900 g</li>\r\n</ul>', '                                                          <b>Video Not Avaliable</b>                                                                              ', 'New', 0),
(29, 3, 2, 2, '2023-02-18 07:05:32', 'Campus Womens Annie Sneaker', 'woshoes-21', 'whowsha.jpg', 'whowshb.jpg', 'whowshc.jpg', 769, 'Women Shoes', '<ul>\r\n<li>Sole: Phylon</li>\r\n<li>Closure: Lace-Up</li>\r\n<li>Shoe Width: Medium</li>\r\n<li>Lifestyle: Runing Shoes</li>\r\n<li>Warranty Type: Manufacturer</li>\r\n<li>Care Instructions: Allow your pair of shoes to air and de-odorize at a regular basis, this also helps them retain their natural shape; use shoes bags to prevent any stains or mildew; dust any dry dirt from the surface using a clean cloth, do not use polish or shiner</li>\r\n</ul>', '<ul>\r\n<li>Product Dimensions &rlm; : &lrm;&nbsp;30.5 x 21.5 x 11.2 cm; 900 Grams</li>\r\n<li>Date First Available &rlm; : &lrm;&nbsp;21 January 2022</li>\r\n<li>Manufacturer &rlm; : &lrm;&nbsp;Campus</li>\r\n<li>ASIN &rlm; : &lrm;&nbsp;B09QXKN6M8</li>\r\n<li>Item model number &rlm; : &lrm;&nbsp;ANNIE</li>\r\n<li>Country of Origin &rlm; : &lrm;&nbsp;India</li>\r\n<li>Department &rlm; : &lrm;&nbsp;womens</li>\r\n<li>Manufacturer &rlm; : &lrm;&nbsp;Campus, Campus Shoes,D-1, Rohtak Road, Udyog Nagar, Opp. Peera Garhi Metro Station Gate No 2, New Delhi, Delhi 110041,ph no- 01143272500</li>\r\n<li>Packer &rlm; : &lrm;&nbsp;Campus Shoes,D-1, Rohtak Road, Udyog Nagar, Opp. Peera Garhi Metro Station Gate No 2, New Delhi, Delhi 110041,ph no- 01143272500</li>\r\n<li>Item Weight &rlm; : &lrm;&nbsp;900 g</li>\r\n</ul>', '                                               <b>Video Not Avaliable</b>                                                                                         ', 'New', 0),
(30, 3, 2, 3, '2023-02-18 09:59:18', 'Sparx Womens Sx0201l Running Shoe', 'whoeha-1', 'whoesha.jpg', 'whoeshc.jpg', 'whowshb.jpg', 699, 'Women Shoes', '<ul>\r\n<li>Sole: Ethylene Vinyl Acetate</li>\r\n<li>Closure: Lace-Up</li>\r\n<li>Fit Type: Regular</li>\r\n<li>Shoe Width: Medium</li>\r\n<li>WHAT YOU GET: 1. One Pair of Sports Shoes as shown in the pictures.2. Storage Box.3. Sparx Trust</li>\r\n<li>KEY FEATURES: Made to Last Long, Elegant Packaging, Perfect Gifting Option, Zero compromise on quality</li>\r\n</ul>', '<ul>\r\n<li>CARE INSTRUCTIONS: Soaking in water may damage the product. For cleaning just wipe dirt or mud off with a soft moist cloth. Do not use any hard bristles brush for cleaning. Do not bleach or use harsh cleaning agents. Do not machine wash or machine dry. Just dry in shade. Do not use any heating equipement for drying</li>\r\n<li>THE BRAND: Sparx is all about passion, challenges and zeal of people who like to live on-the-edge, have a dare-devil spirit and do things differently. Checkout our exciting range of shoes, sandals &amp; flip-flops</li>\r\n</ul>', '                                                                                         <b>Video Not Avaliable</b>                                               ', 'New', 0),
(31, 3, 1, 2, '2023-02-18 10:00:03', 'FOOTBOX Men’s Striker Football Shoes', 'foota-23', 'foota.jpg', 'footb.jpg', 'footc.jpg', 1499, 'Men Striker Football Shoes Studs ', '<ul>\r\n<li>Sole: Thermoplastic Elastomers</li>\r\n<li>Closure: Lace-Up</li>\r\n<li>Shoe Width: Medium</li>\r\n<li>MATERIAL: The upper of these football shoes is made of PU material that offers utmost comfort to your foot. These shoes are durable and lightweight.</li>\r\n<li>STUDS ON SOLE: The well studded sole provides better grip and stability while you play on the field. It prevents you from slipping even when you are playing in the wet ground.</li>\r\n</ul>', '<ul>\r\n<li>COMFORTABLE AND SNUG FIT: This pair of football studs is designed to provide an extra boost to your energy while you play the game. It offers a comfortable and snug fit to your feet. They are crafted with a cushioned footbed to offer ultimate comfort.</li>\r\n<li>CARE INSTRUCTIONS: Clean all dirt and debris from between the cleats/studs after playing and wipe off the upper by clean cloth. Let your shoes completely dry out after every game. Do not use polish or shiner.</li>\r\n</ul>', '                                                           <b>Video Not Available</b>         ', 'Sale', 1259),
(32, 3, 1, 1, '2023-02-18 10:27:00', 'Nivia Storm Football Shoe for Mens ', 'nivia-31', 'nivia.jpg', 'nivib.jpg', 'nivic.jpg', 1649, 'Nivia Storm Football Shoe', '<ul>\r\n<li>Sole: Ethylene Vinyl Acetate</li>\r\n<li>Closure: Lace-Up</li>\r\n<li>Fit Type: Regular</li>\r\n<li>Shoe Width: Medium</li>\r\n<li>PVC Synthetic leather offers excellent ball control and tackling</li>\r\n<li>Die CUt soft cushion sockliner exists as an extra layer of plush,step-in comfort</li>\r\n</ul>', '<p>&nbsp;</p>\r\n<ul>\r\n<li>Product Dimensions &rlm; : &lrm;&nbsp;30.4 x 17 x 9 cm; 540 Grams</li>\r\n<li>Date First Available &rlm; : &lrm;&nbsp;3 March 2021</li>\r\n<li>Manufacturer &rlm; : &lrm;&nbsp;Nivia</li>\r\n<li>ASIN &rlm; : &lrm;&nbsp;B08XXNX6RZ</li>\r\n<li>Item model number &rlm; : &lrm;&nbsp;1166WH05</li>\r\n<li>Department &rlm; : &lrm;&nbsp;Mens</li>\r\n<li>Manufacturer &rlm; : &lrm;&nbsp;Nivia, Shoe Variants Pvt.Ltd,398/399/405 Leather Complex,Jalandhar-144021, Contact No. - 0181-5057000,5099000</li>\r\n<li>Item Weight &rlm; : &lrm;&nbsp;540 g</li>\r\n<li>Item Dimensions LxWxH &rlm; : &lrm;&nbsp;30.4 x 17 x 9 Centimeters</li>\r\n<li>Net Quantity &rlm; : &lrm;&nbsp;1.00 Pair</li>\r\n<li>Included Components &rlm; : &lrm;&nbsp;Pair</li>\r\n<li>Generic Name &rlm; : &lrm;&nbsp;Nivia Storm Football Shoe for Mens | TPU sole with PVC Synthetic Leather Upper for hard and Grassy surfaces suitable for Sports, Die Cut soft cushion, Light weight insole (White) UK - 5</li>\r\n</ul>', '                                                                                                        <b>Video Not Available</b>                                 ', 'Sale', 1349),
(34, 2, 3, 2, '2023-02-18 13:16:17', 'Kakss Exclusive Cast Iron Hex Dumbbell ', 'dumb-24', 'dumba.jpg', 'dumbb.jpg', 'dumbc.jpg', 1099, 'GYM FITNESS EQUIPMENTS', '<table id=\"productDetails_techSpec_section_1\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<th>Brand</th>\r\n<td>&lrm;Kakss</td>\r\n</tr>\r\n<tr>\r\n<th>Included Components</th>\r\n<td>&lrm;1 Unit of Card Holder</td>\r\n</tr>\r\n<tr>\r\n<th>Weight</th>\r\n<td>&lrm;5 Kilograms</td>\r\n</tr>\r\n<tr>\r\n<th>Size</th>\r\n<td>&lrm;10 kilograms</td>\r\n</tr>\r\n<tr>\r\n<th>Sport</th>\r\n<td>&lrm;Fitness</td>\r\n</tr>\r\n<tr>\r\n<th>Style</th>\r\n<td>&lrm;Kakss Cast Iron Hex Dumbbell (5+5=10 kg)</td>\r\n</tr>\r\n<tr>\r\n<th>Manufacturer</th>\r\n<td>&lrm;Kakss Exporters</td>\r\n</tr>\r\n<tr>\r\n<th>Country of Origin</th>\r\n<td>&lrm;India</td>\r\n</tr>\r\n<tr>\r\n<th>Imported By</th>\r\n<td>&lrm;N.A</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<ul>\r\n<li>VERSATILE : Dumbbells offer the ability to target specific muscle groups or perform a full body workout</li>\r\n<li>Life Time Warranty</li>\r\n<li>WEIGHT : 5+5=10kg Total</li>\r\n<li>CHOICES : These dumbbell pairs from Kakss are available in pairs of 2.5, 5 , 7.5 , 10 , 12.5 , 15 , 17.5 and 20 kgs</li>\r\n</ul>', '                                                    <b>Video of this Product is not Available</b>                                                                                    ', 'New', 0),
(35, 2, 3, 10, '2023-02-18 13:30:13', 'FitBox Sports Intruder 20 Kg PVC Dumbbells', 'fit-26', 'fita.jpg', 'fitb.jpg', 'fitc.jpg', 699, 'GYM FITNESS EQUIPMENTS', '<table id=\"productDetails_techSpec_section_1\" role=\"presentation\">\r\n<tbody>\r\n<tr>\r\n<th>Brand</th>\r\n<td>&lrm;FitBox Sports</td>\r\n</tr>\r\n<tr>\r\n<th>Colour</th>\r\n<td>&lrm;Black</td>\r\n</tr>\r\n<tr>\r\n<th>Item Weight</th>\r\n<td>&lrm;21490 Grams</td>\r\n</tr>\r\n<tr>\r\n<th>Material</th>\r\n<td>&lrm;Alloy Steel</td>\r\n</tr>\r\n<tr>\r\n<th>Product Dimensions</th>\r\n<td>&lrm;14L x 8W Centimeters</td>\r\n</tr>\r\n<tr>\r\n<th>Style</th>\r\n<td>&lrm;Dumbbells</td>\r\n</tr>\r\n<tr>\r\n<th>Handle Material</th>\r\n<td>&lrm;Pvc</td>\r\n</tr>\r\n<tr>\r\n<th>Number of Pieces</th>\r\n<td>&lrm;2</td>\r\n</tr>\r\n<tr>\r\n<th>Batteries Included</th>\r\n<td>&lrm;No</td>\r\n</tr>\r\n<tr>\r\n<th>Included Components</th>\r\n<td>&nbsp;&lrm;Intruder Dumbells Weights</td>\r\n</tr>\r\n<tr>\r\n<th>Material Type</th>\r\n<td>&lrm;Alloy Steel</td>\r\n</tr>\r\n<tr>\r\n<th>Number of Items</th>\r\n<td>&lrm;2</td>\r\n</tr>\r\n<tr>\r\n<th>Size</th>\r\n<td>&lrm;20Kg</td>\r\n</tr>\r\n<tr>\r\n<th>Sport</th>\r\n<td>&lrm;Exercise &amp; Fitness</td>\r\n</tr>\r\n<tr>\r\n<th>Manufacturer</th>\r\n<td>&lrm;FitBox Sports</td>\r\n</tr>\r\n<tr>\r\n<th>Country of Origin</th>\r\n<td>&lrm;India</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<div id=\"productOverview_feature_div\" data-feature-name=\"productOverview\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"productOverview\" data-csa-c-slot-id=\"productOverview_feature_div\" data-csa-c-asin=\"B08B22WSP7\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"l0msya-leu3dt-tofdpk-726a9w\" data-cel-widget=\"productOverview_feature_div\">\r\n<div>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Brand</td>\r\n<td>FitBox Sports</td>\r\n</tr>\r\n<tr>\r\n<td>Colour</td>\r\n<td>Black</td>\r\n</tr>\r\n<tr>\r\n<td>Item Weight</td>\r\n<td>21490 Grams</td>\r\n</tr>\r\n<tr>\r\n<td>Material</td>\r\n<td>Alloy Steel</td>\r\n</tr>\r\n<tr>\r\n<td>Product Dimensions</td>\r\n<td>14L x 8W Centimeters</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<div id=\"featurebullets_feature_div\" data-feature-name=\"featurebullets\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"featurebullets\" data-csa-c-slot-id=\"featurebullets_feature_div\" data-csa-c-asin=\"B08B22WSP7\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"5vpxhp-lkppj0-xlvy9v-b0wwtk\" data-cel-widget=\"featurebullets_feature_div\">\r\n<div id=\"feature-bullets\"><hr />\r\n<h1>About this item</h1>\r\n<ul>\r\n<li>MUST-HAVE FREE WEIGHTS FOR YOUR HOME GYM: Exercise from the comfort of your home, at your own pace, on your own terms. Create your morning-workout routine with our 20kg Button Weights Set and start building muscle, anytime, anywhere.</li>\r\n<li>BOX CONTANT : (3kg x 4 12kg + 2kg x 4 8kg) 20kg weight plates &amp; rods</li>\r\n<li>WANT A VARIETY OF EXERCISES? Our dumbbells and barbell weights set is the thing for you! Perfect for muscle-sculpting, squatting, biceps and triceps shaping, core strengthening, push-ups, and calorie burning, the dumbbell weights meet your needs.</li>\r\n</ul>\r\n</div>\r\n</div>', '                                                                                                                                                                                             <b>Video of this Product is not Available</b>                                                                                                                                                        ', 'Sale', 599),
(36, 5, 1, 3, '2023-02-18 13:37:25', 'Fly Sports Half Sleeve Jersey ', 'jer-27', 'jera.jpg', 'jerb.jpg', 'jerc.jpg', 749, 'Sports Jersey For Men', '<ul>\r\n<li>Care Instructions: Machine Wash</li>\r\n<li>Fit Type: Slim Fit Polyester Half Sleeve Jersey</li>\r\n<li>Very good quality fabric, Good stitching &amp; Breathable Fabric</li>\r\n<li>Wash Care: Machine Wash</li>\r\n<li>Quick Dry</li>\r\n</ul>', '', '                                  <b>Video for this product is not available</b>                                                                                                      ', 'Sale', 699),
(37, 5, 1, 4, '2023-02-18 13:37:25', 'Inkholic Men\'s Collar Neck Sports Jersey ', 'sport-29', 'stora.jpg', 'storb.jpg', 'storc.jpg', 449, 'Sports Jersey For Men', '<ul>\r\n<li>Care Instructions: Machine Wash</li>\r\n<li>Fit Type: Slim Fit Polyester Half Sleeve Jersey</li>\r\n<li>Very good quality fabric, Good stitching &amp; Breathable Fabric</li>\r\n<li>Wash Care: Machine Wash</li>\r\n<li>Quick Dry</li>\r\n</ul>', '', '                                  <b>Video for this product is not available</b>                                                                                                      ', 'Sale', 400),
(39, 5, 4, 1, '2023-02-19 05:28:37', ' Puma Half Sleeve T-Shirt for Kids', 'boya-1', 'boya.jpg', 'boyb.jpg', 'boyc.jpg', 999, 'Puma Boys T-Shirt', '<ul>\r\n<li>Care Instructions: Machine Wash</li>\r\n<li>Fit Type: Slim Fit Polyester Half Sleeve Jersey</li>\r\n<li>Very good quality fabric, Good stitching &amp; Breathable Fabric</li>\r\n<li>Wash Care: Machine Wash</li>\r\n<li>Quick Dry</li>\r\n</ul>', '', '                                                     <b>Video for this product is not available</b>                ', 'Sale', 899),
(40, 5, 4, 3, '2023-02-19 05:36:58', 'Puma Boys Cotton T-Shirt  for Kids', 'chia-33', 'chia.jpg', 'chib.jpg', 'chic.jpg', 899, 'Puma Boys T-Shirt', '<ul>\r\n<li>Care Instructions: Machine Wash</li>\r\n<li>Fit Type: Slim Fit Cotton Half Sleeve Kid T-Shirt</li>\r\n<li>Very good quality fabric, Good stitching &amp; Breathable Fabric</li>\r\n<li>Wash Care: Machine Wash</li>\r\n<li>Quick Dry</li>\r\n</ul>', '', '                                                                   <b>Video for this product is not available</b>  ', 'New', 0),
(41, 5, 2, 10, '2023-02-19 05:48:59', 'Women Half Sleeve Cotton T-Shirt', 'puma-34', 'puma.jpg', 'pumb.jpg', 'pumc.jpg', 779, 'Woman Cotton T-Shirt', '<ul>\r\n<li>Care Instructions: Machine Wash</li>\r\n<li>Fit Type: Slim Fit Cotton Half Sleeve Kid T-Shirt</li>\r\n<li>Very good quality fabric, Good stitching &amp; Breathable Fabric</li>\r\n<li>Wash Care: Machine Wash</li>\r\n<li>Quick Dry</li>\r\n</ul>', '', '                                       <b>Video for this product is not available</b>                             ', 'New', 0),
(42, 4, 3, 4, '2023-02-19 06:05:44', 'Football Ball Training F100 Size - 5 , White/Blue', 'balla-35', 'balla.jpg', 'ballac.jpg', 'ballb.jpg', 1499, 'Football Sports Equipment ', '<div id=\"productOverview_feature_div\" data-feature-name=\"productOverview\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"productOverview\" data-csa-c-slot-id=\"productOverview_feature_div\" data-csa-c-asin=\"B0BFHYGCP3\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"qqitwt-ja6718-ljvbxq-gvaz6h\" data-cel-widget=\"productOverview_feature_div\">\r\n<div>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Brand</td>\r\n<td>Generic</td>\r\n</tr>\r\n<tr>\r\n<td>Material&nbsp;&nbsp;</td>\r\n<td>TPU</td>\r\n</tr>\r\n<tr>\r\n<td>Colour</td>\r\n<td>white</td>\r\n</tr>\r\n<tr>\r\n<td>Sport</td>\r\n<td>Soccer</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<div id=\"featurebullets_feature_div\" data-feature-name=\"featurebullets\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"featurebullets\" data-csa-c-slot-id=\"featurebullets_feature_div\" data-csa-c-asin=\"B0BFHYGCP3\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"45i7sw-x3riic-txsvmu-nyd36\" data-cel-widget=\"featurebullets_feature_div\">\r\n<div id=\"feature-bullets\"><hr />\r\n<h1>&nbsp;</h1>\r\n</div>\r\n</div>', '<h1>About this item</h1>\r\n<ul>\r\n<li>TPU outer layer for good durability</li>\r\n<li>Optimised bladder for good air retention.</li>\r\n<li>The ball meets international football standards in terms of bounce.</li>\r\n</ul>', '                                        <b>Video for this product is not available</b>                                                                                                                                                                    ', 'Sale', 1359),
(43, 4, 3, 10, '2023-02-19 06:12:22', 'Spalding Flight Rubber Basketball Multicolor', 'foblla-36', 'foblla.jpg', 'fobllb.jpg', 'fobllc.jpg', 1299, 'Basket Ball', '<table>\r\n<tbody>\r\n<tr>\r\n<td>Brand</td>\r\n<td>&nbsp; Spalding</td>\r\n</tr>\r\n<tr>\r\n<td>Material</td>\r\n<td>&nbsp; Rubber</td>\r\n</tr>\r\n<tr>\r\n<td>Colour</td>\r\n<td>&nbsp; multicolour</td>\r\n</tr>\r\n<tr>\r\n<td>Age Range</td>\r\n<td>&nbsp; Adult</td>\r\n</tr>\r\n<tr>\r\n<td>Item Weight</td>\r\n<td>&nbsp; 580 Grams</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<h1>About this item</h1>\r\n<ul>\r\n<li>Premium Rubber Material</li>\r\n<li>Exclusive Digital Print Styles</li>\r\n<li>Soft Tack for Great feel &amp; Handling</li>\r\n<li>Pin Included</li>\r\n</ul>', '                      <b>Video for this product is not available</b>                                                                                                                  ', 'New', 0),
(44, 4, 3, 1, '2023-02-19 06:32:33', 'MRF Cricket Taniss Bat Full Size ', 'cricb-36', 'bala.jpg', 'balb.jpg', 'balc.jpg', 499, 'Tennis Cricket Bat', '<ul>\r\n<li>✔ POPULAR WILLOW CRICKET BAT MEANT FOR PLAYING BY ONLY 13+ Years BOYS and GIRLS. Used to hit a Tennis ball, this cricket bat is expertly crafted using Popular willow to provide long-lasting performance on the pitch.</li>\r\n<li>✔ TENNIS BALL CRICKET BAT. Made of handcrafted wood, this cricket bat is designed to be used with a tennis cricket ball only (not recommended for leather balls). The handle is reinforced with firmly wound string and a rubber sleeve for increased durability.</li>\r\n<li>✔ COMFORTABLE RUBBER GRIP. The cricket bat is easy to grip and hold, thanks to a high-quality rubber sleeve. Offering extra comfort when holding the bat, this handle allows for longer practice sessions time and time again.</li>\r\n</ul>', '<table>\r\n<tbody>\r\n<tr>\r\n<td>Size</td>\r\n<td>Full Size</td>\r\n</tr>\r\n<tr>\r\n<td>Sport</td>\r\n<td>Cricket</td>\r\n</tr>\r\n<tr>\r\n<td>Brand</td>\r\n<td>Mayra Sports &amp; Fitness</td>\r\n</tr>\r\n<tr>\r\n<td>Material</td>\r\n<td>Wood</td>\r\n</tr>\r\n<tr>\r\n<td>Colour</td>\r\n<td>Natural</td>\r\n</tr>\r\n</tbody>\r\n</table>', '                                         <b>Video for this product is not available</b>                                                                                                ', 'New', 0),
(45, 4, 3, 1, '2023-02-19 06:38:12', 'GM Six6 Bullet Willow Cricket Bat ', 'gmbat-37', 'gmba.jpg', 'gmbb.jpg', 'gmbc.jpg', 4249, 'GM Cricket Bat', '<p>GM Cricket BatGM Cricket BatGM Cricket BatGM Cricket BatGM Cricket BatGM Cricket BatGM Cricket BatGM Cricket BatGM Cricket Bat</p>', '', '', 'Sale', 3949),
(46, 4, 3, 10, '2023-02-19 06:50:11', 'SG Club Cricket Ball Leather(Red) Standard', 'leath-38', 'leabc.jpg', 'leabb.jpg', 'leaba.jpg', 649, 'Cricket Leather Ball', '<div id=\"variation_color_name\">\r\n<div><label>Colour:&nbsp;&nbsp;</label>red</div>\r\n</div>\r\n<div id=\"variation_size_name\">\r\n<div><label>Size:&nbsp;&nbsp;</label>Club</div>\r\n</div>\r\n<div id=\"variation_style_name\">\r\n<div><label>Style:&nbsp;&nbsp;</label>cricket leather ball</div>\r\n</div>\r\n<div id=\"variation_pattern_name\">\r\n<div><label>Design:&nbsp;</label>cricket leather ball</div>\r\n<div>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Brand</td>\r\n<td>SG</td>\r\n</tr>\r\n<tr>\r\n<td>Material</td>\r\n<td>Leather</td>\r\n</tr>\r\n<tr>\r\n<td>Colour</td>\r\n<td>red</td>\r\n</tr>\r\n<tr>\r\n<td>Age Range</td>\r\n<td>Adult</td>\r\n</tr>\r\n<tr>\r\n<td>Item Weight</td>\r\n<td>&nbsp;159 Grams</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', '<ul>\r\n<li>The Club is a quality four-piece cricket ball made from quality alum tanned leather</li>\r\n<li>The Club is ideally suited for club and school matches</li>\r\n<li>centre construction encased with layers of top quality Portuguese cork wound with 100 percent wool</li>\r\n<li>Naturally seasoned inner core</li>\r\n<li>Box Content - 1 Ball. weight 155-160 gram.</li>\r\n</ul>', '                                                                                                 <b>Video for this product is not available</b>                                        ', 'New', 0),
(47, 4, 3, 2, '2023-02-19 06:56:56', 'APG Davidson Pink Leather Cricket Ball ', 'pinkb-39', 'pinka.jpg', 'pinkb.jpg', 'pinkc.jpg', 450, 'Pink Leather Cricket Ball', '<div id=\"twister_feature_div\" data-feature-name=\"twister\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"twister\" data-csa-c-slot-id=\"twister_feature_div\" data-csa-c-asin=\"B0998DBR65\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"vs7xej-qy7y64-q1bb8c-celskf\" data-cel-widget=\"twister_feature_div\">\r\n<div id=\"twisterContainer\">\r\n<div><form id=\"twister\" action=\"https://www.amazon.in/gp/product\" method=\"get\">\r\n<div id=\"variation_style_name\">\r\n<div><label>Style:&nbsp;</label>Davidson</div>\r\n</div>\r\n</form></div>\r\n</div>\r\n</div>\r\n<div id=\"valueAdds_feature_div\" data-feature-name=\"valueAdds\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"valueAdds\" data-csa-c-slot-id=\"valueAdds_feature_div\" data-csa-c-asin=\"B0998DBR65\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"dk9gn8-32t977-6gqhcp-ez6t2k\" data-cel-widget=\"valueAdds_feature_div\">&nbsp;</div>\r\n<div id=\"holidayAvailabilityMessage_feature_div\" data-feature-name=\"holidayAvailabilityMessage\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"holidayAvailabilityMessage\" data-csa-c-slot-id=\"holidayAvailabilityMessage_feature_div\" data-csa-c-asin=\"B0998DBR65\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"qje0vt-hdb1rf-201p2t-p3smo7\" data-cel-widget=\"holidayAvailabilityMessage_feature_div\">&nbsp;</div>\r\n<div id=\"clickToContact_feature_div\" data-feature-name=\"clickToContact\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"clickToContact\" data-csa-c-slot-id=\"clickToContact_feature_div\" data-csa-c-asin=\"B0998DBR65\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"gp5ef2-3qdc89-eu4fzt-cynlqq\" data-cel-widget=\"clickToContact_feature_div\">&nbsp;</div>\r\n<div id=\"amazonCertifiedBadge_feature_div\" data-feature-name=\"amazonCertifiedBadge\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"amazonCertifiedBadge\" data-csa-c-slot-id=\"amazonCertifiedBadge_feature_div\" data-csa-c-asin=\"B0998DBR65\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"8bzi7o-ivh7ft-j2rsgs-re8mn2\" data-cel-widget=\"amazonCertifiedBadge_feature_div\">&nbsp;</div>\r\n<div id=\"smartHomeWidget_feature_div\" data-feature-name=\"smartHomeWidget\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"smartHomeWidget\" data-csa-c-slot-id=\"smartHomeWidget_feature_div\" data-csa-c-asin=\"B0998DBR65\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"fun16p-k4odut-yrytqz-aqxt5n\" data-cel-widget=\"smartHomeWidget_feature_div\">&nbsp;</div>\r\n<div id=\"renewedProgramDescriptionAtf_feature_div\" data-feature-name=\"renewedProgramDescriptionAtf\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"renewedProgramDescriptionAtf\" data-csa-c-slot-id=\"renewedProgramDescriptionAtf_feature_div\" data-csa-c-asin=\"B0998DBR65\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"7dz9ms-wqrjpv-990l0l-eh11ko\" data-cel-widget=\"renewedProgramDescriptionAtf_feature_div\">&nbsp;</div>\r\n<div id=\"twisterPlusWWDesktop\" data-feature-name=\"twisterPlusWWDesktop\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"twisterPlusWWDesktop\" data-csa-c-slot-id=\"twisterPlusWWDesktop\" data-csa-c-asin=\"B0998DBR65\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"a7bm3i-d737gg-lef71u-s7lr7x\" data-cel-widget=\"twisterPlusWWDesktop\">&nbsp;</div>\r\n<div id=\"productOverview_feature_div\" data-feature-name=\"productOverview\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"productOverview\" data-csa-c-slot-id=\"productOverview_feature_div\" data-csa-c-asin=\"B0998DBR65\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"4p2oog-2cizne-5cyg49-3ozd91\" data-cel-widget=\"productOverview_feature_div\">\r\n<div>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Brand</td>\r\n<td>APG</td>\r\n</tr>\r\n<tr>\r\n<td>Material</td>\r\n<td>Leather</td>\r\n</tr>\r\n<tr>\r\n<td>Colour</td>\r\n<td>Pink</td>\r\n</tr>\r\n<tr>\r\n<td>Age Range (Description)</td>\r\n<td>Adult</td>\r\n</tr>\r\n<tr>\r\n<td>Item Weight</td>\r\n<td>156 Grams</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', '<ul>\r\n<li>APG Davidson Leather Cricket Balls Made up of Alum Tanned Leather having 4 piece construction</li>\r\n<li>Model - Davidson, Hand stitched 4-piece construction with 3 Layer of Cork and with a centre Made up of Cork of 50-55 gms and Good Quality of Wool</li>\r\n<li>Entirely Hand Made</li>\r\n<li>APG Davidson Cricket Ball Having Accurate Weight Between 156 gms to 163 gms .</li>\r\n<li>Proudly made in India</li>\r\n</ul>', '                                                 <b>Video for this product is not available</b>                    ', 'New', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, ' Treadmill ', 'yes', 'tread1.jpg'),
(2, 'Accessories', 'no', 'accessories.jpg'),
(3, 'Shoes', 'no', 'shoes.jpg'),
(4, ' Sports Items', 'yes', 'foblla.jpg'),
(5, 'T-Shirts', 'yes', 't-shirts.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(1, 'Slide 5', 'newanner1.jpg', 'http://localhost/sport-mart/shop.php?p_cat=3'),
(4, 'Slide 7', '7446134a.jpg', 'http://localhost/sport-mart/shop.php?'),
(5, 'Slide 9', 'slide-5.jpg', 'http://localhost/sport-mart/shop.php'),
(6, 'Slide 3', 'slide-7.jpg', 'http://localhost/sport-mart/shop.php');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Terms & Conditions Statement', 'termLinkstat', '<p>Thank you for choosing to shop at our online store. Please read the following terms and conditions carefully before making a purchase on our website:</p>\r\n<ol>\r\n<li>\r\n<p><strong>Product Information</strong>: We strive to provide accurate and complete product information, including images and descriptions. However, we do not guarantee that the information on our website is error-free, complete, or up-to-date. We reserve the right to modify or update information on our website at any time.</p>\r\n</li>\r\n<li>\r\n<p><strong>Pricing</strong>: Prices listed on our website are subject to change without notice. We reserve the right to correct any errors in pricing or product information, including after an order has been placed.</p>\r\n</li>\r\n<li>\r\n<p><strong>Order Acceptance</strong>: After you place an order on our website, we will send you an email confirming receipt of your order. However, this does not mean that we have accepted your order. We reserve the right to accept or reject any order for any reason, including if the product is out of stock or if we suspect fraudulent activity.</p>\r\n</li>\r\n<li>\r\n<p><strong>Payment</strong>: We accept payment by credit card, debit card, or other payment methods specified on our website. By providing payment information, you represent and warrant that you are authorized to use the payment method you have chosen.</p>\r\n</li>\r\n</ol>\r\n<p style=\"text-align: center;\">By placing an order on our website, you agree to these terms and conditions. If you have any questions or concerns, please contact us before making a purchase.</p>'),
(2, 'Refund Policy', 'refundLink', '<ol>\r\n<li>\r\n<p><strong>Returns and Refunds</strong>: We offer a 30-day return policy for most products. To be eligible for a return, the product must be unused and in its original packaging. Refunds will be processed within 14 days of receiving the returned product. Some products may be excluded from our return policy, and we reserve the right to reject any return that does not meet our criteria.</p>\r\n</li>\r\n</ol>'),
(3, 'Promo & Other Term Conditions', 'promoTermConditions', '<ol>\r\n<li>\r\n<p>Privacy: We respect your privacy and are committed to protecting your personal information. Please see our privacy policy for more information on how we collect, use, and protect your information.</p>\r\n</li>\r\n<li>\r\n<p>Limitation of Liability: We will not be liable for any damages, including direct, indirect, incidental, or consequential damages, arising from the use of our website or the products purchased on our website.</p>\r\n</li>\r\n<li>\r\n<p>Governing Law: These terms and conditions will be governed by and construed in accordance with the laws of the jurisdiction in which we are located.</p>\r\n</li>\r\n</ol>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
