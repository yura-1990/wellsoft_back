-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2026 at 07:01 PM
-- Server version: 8.0.30
-- PHP Version: 8.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wellsoft-back`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint UNSIGNED NOT NULL,
  `web_menu_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `web_menu_id`, `title`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, 'We provide perfect IT solutions & technology for any startups.', 'Why Choose Us', 'Start work with WellSoft. Build responsive, mobile-first projects on the web with the world\'s most popular front-end component library.', '2024-12-15 08:25:49', '2024-12-15 08:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `about_us_items`
--

CREATE TABLE `about_us_items` (
  `id` bigint UNSIGNED NOT NULL,
  `about_us_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us_items`
--

INSERT INTO `about_us_items` (`id`, `about_us_id`, `title`, `subtitle`, `image`, `info`, `created_at`, `updated_at`) VALUES
(1, 1, 'a', 'a', 'about-us-items\\December2024\\wkNN43uhFo3Z4X4fpHE2.webp', '<p>a</p>', '2024-12-15 08:32:25', '2024-12-15 08:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `about_us_item_childrens`
--

CREATE TABLE `about_us_item_childrens` (
  `id` bigint UNSIGNED NOT NULL,
  `about_us_item_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us_item_childrens`
--

INSERT INTO `about_us_item_childrens` (`id`, `about_us_item_id`, `title`, `icon`, `info`, `created_at`, `updated_at`) VALUES
(1, 1, 'High Security', 'about-us-item-childrens\\December2024\\HIDNVkoVZyGhVfiPvYhp.webp', '<p>WellSoft is an HTML5 template based on Sass and Bootstrap 5 with modern and creative design.</p>', '2024-12-15 08:35:05', '2024-12-15 08:35:05'),
(2, 1, 'Skilled Team', 'about-us-item-childrens\\December2024\\M8V2O4Dlyp2G5BgGToYc.webp', '<p>WellSoft is an HTML5 template based on Sass and Bootstrap 5 with modern and creative design.</p>', '2024-12-15 08:37:10', '2024-12-15 08:37:38'),
(3, 1, 'Affordable Price', 'about-us-item-childrens\\December2024\\Z7iY4Qx9ERIxbhkc8gNK.webp', '<p>WellSoft is an HTML5 template based on Sass and Bootstrap 5 with modern and creative design.</p>', '2024-12-15 08:39:13', '2024-12-15 08:39:13'),
(4, 1, '24/7 Support', 'about-us-item-childrens\\December2024\\fHAM75EYlmbbWKrfTi56.webp', '<p><span style=\"color: rgb(0, 0, 0);\">WellSoft is an HTML5 template based on Sass and Bootstrap 5 with modern and creative design.</span></p>', '2024-12-15 08:40:58', '2024-12-15 09:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `web_menu_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `web_menu_id`, `title`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(1, 9, 'Our Best Solutions News & Blogs', 'Best Of Our News & Blogs', 'Build responsive, mobile-first projects on the web with the world\'s most popular front-end component library.', '2024-11-30 11:58:53', '2024-11-30 11:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `blog_items`
--

CREATE TABLE `blog_items` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_info` text COLLATE utf8mb4_unicode_ci,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_items`
--

INSERT INTO `blog_items` (`id`, `blog_id`, `title`, `description`, `blog_info`, `images`, `created_at`, `updated_at`) VALUES
(1, 1, 'How to create add on google adwords?', 'Creating an ad on Google Ads (formerly known as Google AdWords) involves several key steps. Here’s a comprehensive guide to help you create your ad\n', '<p><strong>How to create add on google adwords?</strong></p>\n<p>Creating an ad on Google Ads (formerly known as Google AdWords) involves several key steps. Here&rsquo;s a comprehensive guide to help you create your ad:</p>\n<h3>Step-by-Step Guide to Creating an Ad on Google Ads</h3>\n<ol>\n<li>\n<p><strong>Sign in to Google Ads</strong>:</p>\n<ul>\n<li>Go to <a href=\"https://ads.google.com/\" target=\"_new\" rel=\"noopener\">Google Ads</a> and log in using your Google account credentials. If you don&rsquo;t have an account, you&rsquo;ll need to create one.</li>\n</ul>\n</li>\n<li>\n<p><strong>Create a New Campaign</strong>:</p>\n<ul>\n<li>Once logged in, click on the <strong>&ldquo;+ New Campaign&rdquo;</strong> button.</li>\n<li>Choose a campaign goal based on what you want to achieve (e.g., <strong>Sales</strong>, <strong>Leads</strong>, <strong>Website Traffic</strong>, etc.).</li>\n<li>Select a campaign type. For instance, if you want your ad to appear in search results, choose <strong>&ldquo;Search&rdquo;</strong>; for display ads, select <strong>&ldquo;Display&rdquo;</strong>.</li>\n</ul>\n</li>\n<li>\n<p><strong>Set Campaign Settings</strong>:</p>\n<ul>\n<li><strong>Name your campaign</strong> for easy identification.</li>\n<li>Choose your <strong>networks</strong> (e.g., Search Network, Display Network, or both). If you only want your ads to appear on Google Search, uncheck the Display Network.</li>\n<li>Set your <strong>budget</strong> (daily or total budget) and choose your <strong>bidding strategy</strong> (e.g., Manual CPC, Maximize Conversions, Target CPA).</li>\n<li>Select <strong>target locations</strong> and <strong>languages</strong> for your audience.</li>\n<li>Define <strong>ad scheduling</strong> and other targeting options like demographics.</li>\n</ul>\n</li>\n<li>\n<p><strong>Create Ad Groups</strong>:</p>\n<ul>\n<li>An ad group is a subset within your campaign that allows you to organize ads based on different themes or keywords.</li>\n<li>Name your ad group and add relevant keywords for this group. Use <strong>Google\'s Keyword Planner</strong> for keyword research to find terms that are relevant to your business.</li>\n</ul>\n</li>\n<li>\n<p><strong>Design Your Ads</strong>:</p>\n<ul>\n<li><strong>Text Ads</strong>: Include the following components:\n<ul>\n<li><strong>Headlines</strong> (up to 3, 30 characters each)</li>\n<li><strong>Descriptions</strong> (up to 2, 90 characters each)</li>\n<li><strong>Final URL</strong> (the destination page for the ad)</li>\n</ul>\n</li>\n<li><strong>Responsive Search Ads</strong>: Add multiple headlines and descriptions; Google will automatically test combinations to find the best-performing variation.</li>\n<li><strong>Display Ads</strong>: You can create visually engaging ads by uploading image or video assets. Ensure the ad meets Google\'s size and format specifications.</li>\n</ul>\n</li>\n<li>\n<p><strong>Add Ad Extensions</strong>:</p>\n<ul>\n<li>Ad extensions add additional information to your ad and can increase your click-through rate (CTR). Examples include:\n<ul>\n<li><strong>Sitelink Extensions</strong>: Link to specific pages of your website.</li>\n<li><strong>Callout Extensions</strong>: Add extra text (e.g., &ldquo;Free Shipping&rdquo; or &ldquo;24/7 Support&rdquo;).</li>\n<li><strong>Call Extensions</strong>: Include a phone number.</li>\n<li><strong>Structured Snippet Extensions</strong>: Highlight specific aspects of your business.</li>\n</ul>\n</li>\n</ul>\n</li>\n<li>\n<p><strong>Review Your Ad</strong>:</p>\n<ul>\n<li>Double-check all ad copy, keywords, and settings. Make sure your ad aligns with Google Ads&rsquo; <strong>policies</strong>.</li>\n<li>Use the <strong>&ldquo;Ad Preview and Diagnosis&rdquo;</strong> tool to see how your ad will look and check if it&rsquo;s eligible to run.</li>\n</ul>\n</li>\n<li>\n<p><strong>Set Up Billing Information</strong>:</p>\n<ul>\n<li>Before launching, make sure your billing and payment methods are up to date.</li>\n<li>Enter your payment details and choose your preferred payment method.</li>\n</ul>\n</li>\n<li>\n<p><strong>Launch Your Campaign</strong>:</p>\n<ul>\n<li>Click <strong>&ldquo;Save and Continue&rdquo;</strong> to review everything one last time and launch your campaign.</li>\n</ul>\n</li>\n<li>\n<p><strong>Monitor and Optimize</strong>:</p>\n<ul>\n<li>After your campaign is live, monitor its performance via the Google Ads dashboard.</li>\n<li>Adjust your bids, ad copy, and keywords based on performance metrics such as CTR, conversions, and Quality Score to optimize your ads for better results.</li>\n</ul>\n</li>\n</ol>\n<h3>Tips for Success:</h3>\n<ul>\n<li><strong>Use Strong Call-to-Action</strong>: Make your ad copy compelling with clear CTAs like &ldquo;Get Started Now&rdquo; or &ldquo;Learn More.&rdquo;</li>\n<li><strong>Include Keywords</strong>: Use relevant keywords in your ad text to improve ad relevance and Quality Score.</li>\n<li><strong>Optimize Landing Pages</strong>: Ensure your landing page aligns with your ad and provides a seamless user experience.</li>\n<li><strong>Ad Extensions</strong>: Use as many relevant ad extensions as possible to make your ad stand out.</li>\n</ul>', 'blog-items\\November2024\\oKiMHMUedpYEWNjaFPHo.webp', '2025-01-07 12:30:00', '2024-12-15 12:15:54'),
(2, 1, 'What is digital marketing and why is it important?', 'Digital marketing refers to the use of digital channels, platforms, and technologies to promote products, services, or brands. It encompasses a wide range of activities that aim to reach and engage consumers online. These activities include:', '<p><strong>What is digital marketing and why is it important?<br><br>Digital marketing</strong> refers to the use of digital channels, platforms, and technologies to promote products, services, or brands. It encompasses a wide range of activities that aim to reach and engage consumers online. These activities include:</p>\n<ul>\n<li><strong>Search Engine Optimization (SEO)</strong>: Optimizing content to rank higher in search engine results and attract organic traffic.</li>\n<li><strong>Social Media Marketing</strong>: Using platforms like Facebook, Instagram, Twitter, and LinkedIn to engage with audiences and promote products.</li>\n<li><strong>Email Marketing</strong>: Sending targeted, personalized messages to customers to build relationships and encourage repeat business.</li>\n<li><strong>Content Marketing</strong>: Creating valuable content like blogs, videos, and infographics to attract and retain customers.</li>\n<li><strong>PPC Advertising (Pay-Per-Click)</strong>: Running paid ads on search engines or social media platforms to drive traffic to websites.</li>\n<li><strong>Affiliate Marketing</strong>: Partnering with other businesses or influencers to promote products and earn a commission on sales.</li>\n<li><strong>Influencer Marketing</strong>: Collaborating with individuals who have significant social media followings to promote products to their audiences.</li>\n<li><strong>Online Public Relations (PR)</strong>: Managing the online presence and reputation of a brand through news articles, blog posts, and interactions with the online community.</li>\n</ul>\n<h3>Why is Digital Marketing Important?</h3>\n<ol>\n<li><strong>Wider Reach</strong>: Digital marketing allows businesses to reach a global audience at a fraction of the cost of traditional marketing methods.</li>\n<li><strong>Cost-Effective</strong>: Digital campaigns can be scaled to fit a budget and often provide a higher return on investment (ROI) compared to traditional methods.</li>\n<li><strong>Targeted Marketing</strong>: Digital tools enable businesses to target specific demographics based on interests, behavior, location, and more, making marketing more effective.</li>\n<li><strong>Measurable Results</strong>: Digital marketing provides detailed analytics that allow marketers to track performance, understand audience behavior, and refine strategies in real time.</li>\n<li><strong>Increased Engagement</strong>: Platforms like social media provide opportunities for businesses to interact directly with their customers, build relationships, and receive immediate feedback.</li>\n<li><strong>Adaptability</strong>: Digital campaigns can be adjusted quickly based on performance, trends, or emerging opportunities.</li>\n<li><strong>Personalization</strong>: Data-driven insights allow for personalized marketing experiences that cater to the unique preferences of different segments of the audience.</li>\n</ol>\n<p>In today\'s digital world, where consumers spend a significant portion of their time online, <strong>digital marketing</strong> is essential for businesses of all sizes. It enables brands to stay competitive, build strong relationships with their audience, and achieve business goals through targeted, data-driven campaigns.</p>', 'blog-items\\November2024\\1hC7L2rx4KRBdfSwpUG2.webp', '2025-01-15 13:13:00', '2024-12-15 09:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `blog_item_service_items`
--

CREATE TABLE `blog_item_service_items` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_item_id` bigint UNSIGNED NOT NULL,
  `service_item_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_item_service_items`
--

INSERT INTO `blog_item_service_items` (`id`, `blog_item_id`, `service_item_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, NULL, NULL, NULL, NULL),
(2, 1, 4, NULL, NULL, NULL, NULL, NULL),
(3, 1, 3, NULL, NULL, NULL, NULL, NULL),
(4, 2, 3, NULL, NULL, NULL, NULL, NULL),
(6, 2, 4, NULL, NULL, NULL, NULL, NULL),
(7, 2, 5, NULL, NULL, NULL, NULL, NULL),
(8, 1, 2, NULL, NULL, NULL, NULL, NULL),
(9, 1, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `web_menu_id` bigint UNSIGNED NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `description`, `web_menu_id`, `subtitle`, `created_at`, `updated_at`) VALUES
(1, 'Let\'s start working together', 'Build responsive, mobile-first projects on the web with the world\'s most popular front-end component library.', 6, 'Get in Touch', '2024-11-30 16:30:40', '2024-11-30 16:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `contact_clients`
--

CREATE TABLE `contact_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_clients`
--

INSERT INTO `contact_clients` (`id`, `name`, `contact`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Harding Walters', 'gyvuti@mailinator.com', NULL, 'Voluptate corrupti', '2024-11-30 16:24:27', '2024-11-30 16:24:27'),
(2, 'Murod', '+998975923990', NULL, 'Srm tizim yaratish boyicha', '2024-11-30 16:25:20', '2024-11-30 16:25:20'),
(3, 'Офисные Столы', '+998975923990', NULL, 'Офисные Столы', '2024-11-30 17:18:36', '2024-11-30 17:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

CREATE TABLE `contact_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `parent_id`, `type`, `info`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Our address info', 'Tashkent, Uzbekistan', 'fa-light fa-location-dot', NULL, '2024-11-30 16:36:00', '2024-11-30 17:09:56'),
(2, NULL, 'Phone', '+998901832233', 'fa-light fa-phone-volume', NULL, '2024-11-30 16:39:20', '2024-11-30 16:39:20'),
(3, NULL, 'Email', 'yurayur1990@gmail.com', 'fa-light fa-envelope', NULL, '2024-11-30 16:40:22', '2024-11-30 16:40:22'),
(5, NULL, 'Our Social info', NULL, 'fa-brands fa-telegram', 'https://t.me/WellSoftOfficial', '2024-11-30 16:43:00', '2024-12-15 16:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(61, 7, 'web_menu_belongsto_web_menu_relationship', 'relationship', 'web_menus', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\WebMenu\",\"table\":\"web_menus\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(62, 7, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 6),
(63, 7, 'position', 'number', 'Position', 0, 1, 1, 1, 1, 1, '{}', 5),
(64, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(65, 8, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(66, 8, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 8, 'web_menu_id', 'text', 'Web Menu Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(68, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(69, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(70, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 9, 'web_menu_id', 'text', 'Web Menu Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(72, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(73, 9, 'subtitle', 'text', 'Subtitle', 1, 1, 1, 1, 1, 1, '{}', 4),
(74, 9, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(75, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(76, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(77, 9, 'service_belongsto_web_menu_relationship', 'relationship', 'web_menus', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\WebMenu\",\"table\":\"web_menus\",\"type\":\"belongsTo\",\"column\":\"web_menu_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(78, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 10, 'service_id', 'text', 'Service Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(80, 10, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(81, 10, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(82, 10, 'icon', 'image', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 5),
(83, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(84, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(85, 10, 'service_item_belongsto_service_relationship', 'relationship', 'services', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Service\",\"table\":\"services\",\"type\":\"belongsTo\",\"column\":\"service_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(86, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(87, 11, 'web_menu_id', 'text', 'Web Menu Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(88, 11, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(89, 11, 'subtitle', 'text', 'Subtitle', 1, 1, 1, 1, 1, 1, '{}', 4),
(90, 11, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(91, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(92, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(93, 11, 'blog_belongsto_web_menu_relationship', 'relationship', 'web_menus', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\WebMenu\",\"table\":\"web_menus\",\"type\":\"belongsTo\",\"column\":\"web_menu_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":null}', 8),
(94, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(95, 12, 'blog_id', 'text', 'Blog Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(96, 12, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(97, 12, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(98, 12, 'blog_info', 'rich_text_box', 'Blog Info', 0, 1, 1, 1, 1, 1, '{}', 5),
(99, 12, 'images', 'image', 'Images', 0, 1, 1, 1, 1, 1, '{}', 6),
(100, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 1, '{}', 7),
(101, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(102, 12, 'blog_item_belongsto_blog_relationship', 'relationship', 'blogs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Blog\",\"table\":\"blogs\",\"type\":\"belongsTo\",\"column\":\"blog_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(103, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(104, 13, 'blog_item_id', 'text', 'Blog Item Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(105, 13, 'service_item_id', 'text', 'Service Item Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(106, 13, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(107, 13, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(108, 13, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(109, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(110, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(111, 13, 'blog_item_service_item_belongsto_blog_item_relationship', 'relationship', 'blog_items', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\BlogItem\",\"table\":\"blog_items\",\"type\":\"belongsTo\",\"column\":\"blog_item_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(112, 13, 'blog_item_service_item_belongsto_service_item_relationship', 'relationship', 'service_items', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ServiceItem\",\"table\":\"service_items\",\"type\":\"belongsTo\",\"column\":\"service_item_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(113, 10, 'service_item_belongstomany_blog_item_relationship', 'relationship', 'blog_items', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\BlogItem\",\"table\":\"blog_items\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"blog_item_service_items\",\"pivot\":\"1\",\"taggable\":\"on\"}', 9),
(114, 12, 'blog_item_belongstomany_service_item_relationship', 'relationship', 'service_items', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ServiceItem\",\"table\":\"service_items\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"blog_item_service_items\",\"pivot\":\"1\",\"taggable\":\"on\"}', 10),
(115, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(116, 14, 'web_menu_id', 'text', 'Web Menu Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(117, 14, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(118, 14, 'subtitle', 'text', 'Subtitle', 1, 1, 1, 1, 1, 1, '{}', 4),
(119, 14, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(120, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(121, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(122, 14, 'team_belongsto_web_menu_relationship', 'relationship', 'web_menus', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\WebMenu\",\"table\":\"web_menus\",\"type\":\"belongsTo\",\"column\":\"web_menu_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(123, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(124, 15, 'team_id', 'text', 'Team Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(125, 15, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(126, 15, 'position', 'text', 'Position', 1, 1, 1, 1, 1, 1, '{}', 4),
(127, 15, 'photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 5),
(128, 15, 'surname', 'text', 'Surname', 0, 1, 1, 1, 1, 1, '{}', 6),
(129, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(130, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(131, 15, 'team_member_belongsto_team_relationship', 'relationship', 'teams', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Team\",\"table\":\"teams\",\"type\":\"belongsTo\",\"column\":\"team_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(132, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(133, 16, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(134, 16, 'contact', 'text', 'Contact', 1, 1, 1, 1, 1, 1, '{}', 3),
(135, 16, 'subject', 'text', 'Subject', 0, 1, 1, 1, 1, 1, '{}', 4),
(136, 16, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 5),
(137, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(138, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(139, 8, 'contact_belongsto_web_menu_relationship', 'relationship', 'web_menus', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\WebMenu\",\"table\":\"web_menus\",\"type\":\"belongsTo\",\"column\":\"web_menu_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(140, 8, 'subtitle', 'text', 'Subtitle', 0, 1, 1, 1, 1, 1, '{}', 5),
(141, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(142, 17, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(143, 17, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 3),
(144, 17, 'info', 'text', 'Info', 0, 1, 1, 1, 1, 1, '{}', 4),
(145, 17, 'icon', 'text', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 5),
(146, 17, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 6),
(147, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(148, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(149, 17, 'contact_info_belongsto_contact_info_relationship', 'relationship', 'contact_infos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ContactInfo\",\"table\":\"contact_infos\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"type\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(150, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(151, 18, 'web_menu_id', 'text', 'Web Menu Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(152, 18, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(153, 18, 'subtitle', 'text', 'Subtitle', 0, 1, 1, 1, 1, 1, '{}', 4),
(154, 18, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(155, 18, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(156, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(157, 18, 'about_u_belongsto_web_menu_relationship', 'relationship', 'web_menus', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\WebMenu\",\"table\":\"web_menus\",\"type\":\"belongsTo\",\"column\":\"web_menu_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(158, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(159, 19, 'about_us_id', 'text', 'About Us Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(160, 19, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(161, 19, 'subtitle', 'text', 'Subtitle', 1, 1, 1, 1, 1, 1, '{}', 4),
(162, 19, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(163, 19, 'info', 'rich_text_box', 'Info', 0, 1, 1, 1, 1, 1, '{}', 6),
(164, 19, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(165, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(166, 19, 'about_us_item_belongsto_about_u_relationship', 'relationship', 'about_us', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\AboutUs\",\"table\":\"about_us\",\"type\":\"belongsTo\",\"column\":\"about_us_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(167, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(168, 20, 'about_us_item_id', 'text', 'About Us Item Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(169, 20, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(170, 20, 'icon', 'image', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 4),
(171, 20, 'info', 'rich_text_box', 'Info', 0, 1, 1, 1, 1, 1, '{}', 5),
(172, 20, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(173, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(174, 20, 'about_us_item_children_belongsto_about_us_item_relationship', 'relationship', 'about_us_items', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\AboutUsItem\",\"table\":\"about_us_items\",\"type\":\"belongsTo\",\"column\":\"about_us_item_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(175, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(176, 21, 'web_menu_id', 'text', 'Web Menu Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(177, 21, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(178, 21, 'subtitle', 'text', 'Subtitle', 1, 1, 1, 1, 1, 1, '{}', 4),
(179, 21, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(180, 21, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(181, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(182, 21, 'portfolio_belongsto_web_menu_relationship', 'relationship', 'web_menus', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\WebMenu\",\"table\":\"web_menus\",\"type\":\"belongsTo\",\"column\":\"web_menu_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(183, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(184, 22, 'portfolio_id', 'text', 'Portfolio Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(185, 22, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(186, 22, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(187, 22, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 5),
(188, 22, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 6),
(189, 22, 'photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 7),
(190, 22, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 8),
(191, 22, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(192, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(193, 22, 'portfolio_item_belongsto_portfolio_relationship', 'relationship', 'portfolios', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Portfolio\",\"table\":\"portfolios\",\"type\":\"belongsTo\",\"column\":\"portfolio_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(194, 22, 'portfolio_item_belongsto_portfolio_item_relationship', 'relationship', 'portfolio_items', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\PortfolioItem\",\"table\":\"portfolio_items\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"type\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(195, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(196, 23, 'web_menu_id', 'text', 'Web Menu Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(197, 23, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(198, 23, 'subtitle', 'text', 'Subtitle', 0, 1, 1, 1, 1, 1, '{}', 4),
(199, 23, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(200, 23, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(201, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(202, 23, 'partner_belongsto_web_menu_relationship', 'relationship', 'web_menus', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\WebMenu\",\"table\":\"web_menus\",\"type\":\"belongsTo\",\"column\":\"web_menu_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(203, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(204, 24, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(205, 24, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 3),
(206, 24, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 4),
(207, 24, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(208, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(209, 23, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 6),
(210, 24, 'partner_info_belongsto_partner_relationship', 'relationship', 'partners', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Partner\",\"table\":\"partners\",\"type\":\"belongsTo\",\"column\":\"partner_id\",\"key\":\"id\",\"label\":\"type\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(211, 24, 'partner_id', 'text', 'Partner Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(226, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(227, 27, 'web_menu_id', 'text', 'Web Menu Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(228, 27, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(229, 27, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(230, 27, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(231, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(232, 27, 'term_condition_belongsto_web_menu_relationship', 'relationship', 'web_menus', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\WebMenu\",\"table\":\"web_menus\",\"type\":\"belongsTo\",\"column\":\"web_menu_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(233, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(234, 28, 'term_condition_id', 'text', 'Term Condition Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(235, 28, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(236, 28, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(237, 28, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(238, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(239, 28, 'term_condition_item_belongsto_term_condition_relationship', 'relationship', 'term_conditions', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\TermCondition\",\"table\":\"term_conditions\",\"type\":\"belongsTo\",\"column\":\"term_condition_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(240, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(241, 29, 'web_menu_id', 'text', 'Web Menu Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(242, 29, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(243, 29, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(244, 29, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(245, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(246, 29, 'privacy_policy_belongsto_web_menu_relationship', 'relationship', 'web_menus', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\WebMenu\",\"table\":\"web_menus\",\"type\":\"belongsTo\",\"column\":\"web_menu_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(247, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(248, 30, 'privacy_policy_id', 'text', 'Privacy Policy Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(249, 30, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(250, 30, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(251, 30, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(252, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(253, 30, 'privacy_policy_item_belongsto_privacy_policy_relationship', 'relationship', 'privacy_policies', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\PrivacyPolicy\",\"table\":\"privacy_policies\",\"type\":\"belongsTo\",\"column\":\"privacy_policy_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(7, 'web_menus', 'web-menus', 'Web Menu', 'Web Menus', 'voyager-list', 'App\\Models\\WebMenu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-11-21 11:41:40', '2024-11-21 12:44:08'),
(8, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-11-30 10:25:58', '2024-11-30 16:29:41'),
(9, 'services', 'services', 'Service', 'Services', 'fa-light fa-ballot-check', 'App\\Models\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-11-30 11:05:28', '2024-11-30 11:07:18'),
(10, 'service_items', 'service-items', 'Service Item', 'Service Items', 'fa-light fa-check', 'App\\Models\\ServiceItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-11-30 11:12:49', '2024-11-30 12:41:46'),
(11, 'blogs', 'blogs', 'Blog', 'Blogs', 'fa-light fa-puzzle', 'App\\Models\\Blog', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-11-30 11:54:11', '2024-11-30 11:54:11'),
(12, 'blog_items', 'blog-items', 'Blog Item', 'Blog Items', 'fa-light fa-cubes-stacked', 'App\\Models\\BlogItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-11-30 12:02:02', '2024-12-15 09:29:50'),
(13, 'blog_item_service_items', 'blog-item-service-items', 'Blog Item Service Item', 'Blog Item Service Items', 'fa-light fa-chalkboard', 'App\\Models\\BlogItemServiceItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-11-30 12:33:19', '2024-11-30 12:38:10'),
(14, 'teams', 'teams', 'Team', 'Teams', 'fa-light fa-people-group', 'App\\Models\\Team', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-11-30 15:07:18', '2024-11-30 15:08:19'),
(15, 'team_members', 'team-members', 'Team Member', 'Team Members', 'fa-light fa-family', 'App\\Models\\TeamMember', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-11-30 15:12:36', '2024-11-30 15:13:23'),
(16, 'contact_clients', 'contact-clients', 'Contact Client', 'Contact Clients', 'fa-light fa-address-card', 'App\\Models\\ContactClient', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-11-30 15:45:58', '2024-11-30 15:45:58'),
(17, 'contact_infos', 'contact-infos', 'Contact Info', 'Contact Infos', 'fa-light fa-address-card', 'App\\Models\\ContactInfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-11-30 16:32:34', '2024-11-30 17:06:14'),
(18, 'about_us', 'about-us', 'About U', 'About Us', 'fa-light fa-address-card', 'App\\Models\\AboutUs', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-15 08:09:43', '2024-12-15 08:10:48'),
(19, 'about_us_items', 'about-us-items', 'About Us Item', 'About Us Items', 'fa-light fa-sitemap', 'App\\Models\\AboutUsItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-15 08:15:15', '2024-12-15 08:16:04'),
(20, 'about_us_item_childrens', 'about-us-item-childrens', 'About Us Item Children', 'About Us Item Childrens', 'fa-light fa-file-fragment', 'App\\Models\\AboutUsItemChildren', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-15 08:18:32', '2024-12-15 08:19:38'),
(21, 'portfolios', 'portfolios', 'Portfolio', 'Portfolios', 'fa-light fa-briefcase', 'App\\Models\\Portfolio', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-15 09:42:58', '2024-12-15 09:43:55'),
(22, 'portfolio_items', 'portfolio-items', 'Portfolio Item', 'Portfolio Items', 'fa-light fa-memo-circle-info', 'App\\Models\\PortfolioItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-15 09:47:13', '2024-12-15 10:24:09'),
(23, 'partners', 'partners', 'Partner', 'Partners', NULL, 'App\\Models\\Partner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-15 12:22:23', '2024-12-15 12:33:45'),
(24, 'partner_infos', 'partner-infos', 'Partner Info', 'Partner Infos', NULL, 'App\\Models\\PartnerInfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-15 12:24:28', '2024-12-15 12:35:27'),
(27, 'term_conditions', 'term-conditions', 'Term Condition', 'Term Conditions', NULL, 'App\\Models\\TermCondition', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-15 15:07:01', '2024-12-15 15:07:27'),
(28, 'term_condition_items', 'term-condition-items', 'Term Condition Item', 'Term Condition Items', NULL, 'App\\Models\\TermConditionItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-15 15:07:48', '2024-12-15 15:17:53'),
(29, 'privacy_policies', 'privacy-policies', 'Privacy Policy', 'Privacy Policies', 'fa-light fa-building-shield', 'App\\Models\\PrivacyPolicy', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-15 15:31:12', '2024-12-15 15:31:35'),
(30, 'privacy_policy_items', 'privacy-policy-items', 'Privacy Policy Item', 'Privacy Policy Items', 'fa-light fa-handcuffs', 'App\\Models\\PrivacyPolicyItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-15 15:32:45', '2024-12-15 15:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-11-03 15:19:54', '2024-11-03 15:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-11-03 15:19:54', '2024-11-03 15:19:54', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2024-11-03 15:19:54', '2024-11-30 11:15:28', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2024-11-03 15:19:54', '2024-11-03 15:19:54', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2024-11-03 15:19:54', '2024-11-03 15:19:54', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2024-11-03 15:19:54', '2024-11-30 11:15:28', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2024-11-03 15:19:54', '2024-11-30 11:15:28', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2024-11-03 15:19:54', '2024-11-30 11:15:28', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2024-11-03 15:19:54', '2024-11-30 11:15:28', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2024-11-03 15:19:54', '2024-11-30 11:15:28', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2024-11-03 15:19:54', '2024-11-30 11:15:28', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2024-11-03 15:19:54', '2024-11-30 11:15:28', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2024-11-03 15:19:54', '2024-11-30 11:15:28', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2024-11-03 15:19:54', '2024-11-30 11:15:28', 'voyager.pages.index', NULL),
(14, 1, 'Web Menus', '', '_self', 'voyager-list', '#1eff00', NULL, 10, '2024-11-21 11:41:40', '2024-11-30 11:15:28', 'voyager.web-menus.index', 'null'),
(15, 1, 'Contacts', '', '_self', 'fa-light fa-address-book', '#000000', 27, 1, '2024-11-30 10:25:58', '2024-11-30 15:51:57', 'voyager.contacts.index', 'null'),
(16, 1, 'Services', '', '_self', 'fa-light fa-ballot-check', NULL, 18, 1, '2024-11-30 11:05:28', '2024-11-30 11:15:30', 'voyager.services.index', NULL),
(17, 1, 'Service Items', '', '_self', 'fa-light fa-check', NULL, 18, 2, '2024-11-30 11:12:49', '2024-11-30 11:15:31', 'voyager.service-items.index', NULL),
(18, 1, 'Services', '', '_self', 'fa-light fa-list-check', '#00ff55', NULL, 11, '2024-11-30 11:15:22', '2024-11-30 15:51:57', NULL, ''),
(19, 1, 'Block', '', '_self', 'fa-sharp-duotone fa-light fa-block-quote', '#00ffaa', NULL, 12, '2024-11-30 11:53:03', '2024-11-30 15:51:57', NULL, ''),
(20, 1, 'Blogs', '', '_self', 'fa-light fa-puzzle', NULL, 19, 1, '2024-11-30 11:54:11', '2024-11-30 11:59:11', 'voyager.blogs.index', NULL),
(21, 1, 'Blog Items', '', '_self', 'fa-light fa-cubes-stacked', NULL, 19, 2, '2024-11-30 12:02:02', '2024-11-30 12:20:19', 'voyager.blog-items.index', NULL),
(22, 1, 'Blog Item Service Items', '', '_self', 'fa-light fa-chalkboard', NULL, 19, 3, '2024-11-30 12:33:19', '2024-11-30 12:39:43', 'voyager.blog-item-service-items.index', NULL),
(23, 1, 'Teams', '', '_self', 'fa-light fa-people-group', NULL, 24, 1, '2024-11-30 15:07:18', '2024-11-30 15:09:03', 'voyager.teams.index', NULL),
(24, 1, 'Team', '', '_self', 'fa-light fa-user-group-simple', '#00ffd5', NULL, 13, '2024-11-30 15:08:58', '2024-11-30 15:51:57', NULL, ''),
(25, 1, 'Team Members', '', '_self', 'fa-light fa-family', NULL, 24, 2, '2024-11-30 15:12:36', '2024-11-30 15:13:31', 'voyager.team-members.index', NULL),
(26, 1, 'Contact Clients', '', '_self', 'fa-light fa-address-card', NULL, 27, 2, '2024-11-30 15:45:58', '2024-11-30 15:51:57', 'voyager.contact-clients.index', NULL),
(27, 1, 'Contacts ', '', '_self', 'fa-light fa-address-book', '#00ff40', NULL, 14, '2024-11-30 15:46:53', '2024-11-30 15:51:57', NULL, ''),
(28, 1, 'Contact Infos', '', '_self', 'fa-light fa-address-card', NULL, 27, 3, '2024-11-30 16:32:34', '2024-11-30 16:33:25', 'voyager.contact-infos.index', NULL),
(29, 1, 'About Us', '', '_self', 'fa-light fa-address-card', NULL, 30, 1, '2024-12-15 08:09:43', '2024-12-15 08:11:39', 'voyager.about-us.index', NULL),
(30, 1, 'About Us', '', '_self', 'fa-light fa-table-layout', '#80ff00', NULL, 15, '2024-12-15 08:11:32', '2024-12-15 08:12:41', NULL, ''),
(31, 1, 'About Us Items', '', '_self', 'fa-light fa-sitemap', NULL, 30, 2, '2024-12-15 08:15:15', '2024-12-15 08:16:14', 'voyager.about-us-items.index', NULL),
(32, 1, 'About Us Item Childrens', '', '_self', 'fa-light fa-braille', '#000000', 30, 3, '2024-12-15 08:18:32', '2024-12-15 08:22:00', 'voyager.about-us-item-childrens.index', 'null'),
(33, 1, 'Portfolios', '', '_self', 'fa-light fa-briefcase', NULL, 34, 1, '2024-12-15 09:42:58', '2024-12-15 09:44:39', 'voyager.portfolios.index', NULL),
(34, 1, 'Portfolios', '', '_self', 'fa-light fa-briefcase-blank', '#44ff00', NULL, 16, '2024-12-15 09:44:33', '2024-12-15 09:45:17', NULL, ''),
(35, 1, 'Portfolio Items', '', '_self', 'fa-light fa-memo-circle-info', NULL, 34, 2, '2024-12-15 09:47:13', '2024-12-15 10:03:34', 'voyager.portfolio-items.index', NULL),
(36, 1, 'Partners', '', '_self', 'fa-light fa-handshake', '#fbff0a', NULL, 17, '2024-12-15 12:21:51', '2024-12-15 12:21:51', NULL, ''),
(37, 1, 'Partners', '', '_self', 'fa-light fa-handshake-angle', '#000000', 36, 1, '2024-12-15 12:22:23', '2024-12-15 12:23:34', 'voyager.partners.index', 'null'),
(38, 1, 'Partner Infos', '', '_self', 'fa-light fa-person-circle-check', '#000000', 36, 2, '2024-12-15 12:24:28', '2024-12-15 12:27:48', 'voyager.partner-infos.index', 'null'),
(41, 1, 'Term Conditions', '', '_self', 'fa-light fa-scale-balanced', '#000000', 43, 1, '2024-12-15 15:07:01', '2024-12-15 15:11:49', 'voyager.term-conditions.index', 'null'),
(42, 1, 'Term Condition Items', '', '_self', 'fa-light fa-hand', '#000000', 43, 2, '2024-12-15 15:07:48', '2024-12-15 15:12:57', 'voyager.term-condition-items.index', 'null'),
(43, 1, 'Terms Conditions', '', '_self', 'fa-light fa-user-police-tie', '#50ff05', NULL, 18, '2024-12-15 15:09:37', '2024-12-15 15:10:17', NULL, ''),
(44, 1, 'Privacy Policies', '', '_self', 'fa-light fa-building-shield', NULL, 46, 1, '2024-12-15 15:31:12', '2024-12-15 15:35:57', 'voyager.privacy-policies.index', NULL),
(45, 1, 'Privacy Policy Items', '', '_self', 'fa-light fa-handcuffs', NULL, 46, 2, '2024-12-15 15:32:45', '2024-12-15 15:36:03', 'voyager.privacy-policy-items.index', NULL),
(46, 1, 'Privacy Policy', '', '_self', 'fa-light fa-shield-halved', '#99ff00', NULL, 19, '2024-12-15 15:34:52', '2024-12-15 15:35:56', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(7, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(9, '2016_06_01_000004_create_oauth_clients_table', 1),
(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(11, '2016_10_21_190000_create_roles_table', 1),
(12, '2016_10_21_190000_create_settings_table', 1),
(13, '2016_11_30_135954_create_permission_table', 1),
(14, '2016_11_30_141208_create_permission_role_table', 1),
(15, '2016_12_26_201236_data_types__add__server_side', 1),
(16, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(17, '2017_01_14_005015_create_translations_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(21, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(22, '2017_08_05_000000_add_group_to_settings_table', 1),
(23, '2017_11_26_013050_add_user_role_relationship', 1),
(24, '2017_11_26_015000_create_user_roles_table', 1),
(25, '2018_03_11_000000_add_user_settings', 1),
(26, '2018_03_14_000000_add_details_to_data_types_table', 1),
(27, '2018_03_16_000000_make_settings_value_nullable', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(72, '2016_01_01_000000_create_pages_table', 2),
(73, '2016_01_01_000000_create_posts_table', 2),
(74, '2016_02_15_204651_create_categories_table', 2),
(75, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(76, '2024_11_13_193311_create_web_menus_table', 2),
(77, '2024_11_13_193413_create_services_table', 2),
(78, '2024_11_13_193638_create_service_items_table', 2),
(79, '2024_11_13_193824_create_blogs_table', 2),
(80, '2024_11_13_193857_create_blog_items_table', 2),
(81, '2024_11_13_194116_create_blog_item_service_items_table', 2),
(82, '2024_11_13_194243_create_term_conditions_table', 2),
(83, '2024_11_13_194346_create_term_condition_items_table', 2),
(84, '2024_11_13_194552_create_privacy_policies_table', 2),
(85, '2024_11_13_194626_create_privacy_policy_items_table', 2),
(86, '2024_11_13_194736_create_partners_table', 2),
(87, '2024_11_13_194957_create_partner_infos_table', 2),
(88, '2024_11_13_195100_create_contacts_table', 2),
(89, '2024_11_13_195210_create_contact_clients_table', 2),
(90, '2024_11_13_195322_create_contact_infos_table', 2),
(91, '2024_11_13_195445_create_about_us_table', 2),
(92, '2024_11_13_195519_create_about_us_items_table', 2),
(93, '2024_11_13_195709_create_about_us_item_childrens_table', 2),
(94, '2024_11_13_195817_create_teams_table', 2),
(95, '2024_11_13_195902_create_team_members_table', 3),
(96, '2024_11_13_200100_create_portfolios_table', 3),
(97, '2024_11_13_200125_create_portfolio_items_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'bKE5GEgSyrLvDyK7SruzmYLQmmSuJRH235YCxPTP', NULL, 'http://localhost', 1, 0, 0, '2024-11-03 15:20:34', '2024-11-03 15:20:34'),
(2, NULL, 'Laravel Password Grant Client', '04ubh1IayqQyH4razos1Yz3aoSmrN44v066tUycM', 'users', 'http://localhost', 0, 1, 0, '2024-11-03 15:20:34', '2024-11-03 15:20:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-11-03 15:20:34', '2024-11-03 15:20:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint UNSIGNED NOT NULL,
  `web_menu_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'clients',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `web_menu_id`, `title`, `subtitle`, `description`, `type`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Our clients', 'Some of our dearest clients', 'Build responsive, mobile-first projects on the web with the world\'s most popular front-end component library.\n', 'clients', '2024-12-15 12:41:32', '2024-12-15 12:50:11'),
(2, NULL, 'Our partners', 'Some of our dearest partners', 'Build responsive, mobile-first projects on the web with the world\'s most popular front-end component library.', 'Partners', '2024-12-15 12:42:41', '2024-12-15 12:49:47');

-- --------------------------------------------------------

--
-- Table structure for table `partner_infos`
--

CREATE TABLE `partner_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_infos`
--

INSERT INTO `partner_infos` (`id`, `title`, `url`, `logo`, `partner_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'partner-infos\\December2024\\OLG3DpewjkHALibtQtli.webp', 1, '2024-12-15 12:44:25', '2024-12-15 12:44:25'),
(2, NULL, NULL, 'partner-infos\\December2024\\VXvuOpgGedPqUzja2dPC.webp', 2, '2024-12-15 12:44:57', '2024-12-15 12:44:57'),
(3, NULL, NULL, 'partner-infos\\December2024\\7nD20PpQqjfaNCSNTrpo.webp', 1, '2024-12-15 12:45:51', '2024-12-15 12:46:08'),
(4, NULL, NULL, 'partner-infos\\December2024\\MjymV0YvOUxvMDeIPrf5.webp', 2, '2024-12-15 12:46:26', '2024-12-15 12:46:26'),
(5, NULL, NULL, 'partner-infos\\December2024\\1mRfg2dmv83Rr9PoMAdA.webp', 1, '2024-12-15 12:46:46', '2024-12-15 12:48:12'),
(6, NULL, NULL, 'partner-infos\\December2024\\A0Mee8p8jKW98Szfhepz.webp', 1, '2024-12-15 12:47:03', '2024-12-15 12:47:03'),
(7, NULL, NULL, 'partner-infos\\December2024\\cmiYbY53BmqgTb38s5Ic.webp', 1, '2024-12-15 12:47:27', '2024-12-15 12:47:27'),
(8, NULL, NULL, 'partner-infos\\December2024\\fTjmKDfv6p3ZFtFNuDMv.webp', 2, '2024-12-15 12:48:00', '2024-12-15 12:48:00'),
(9, NULL, NULL, 'partner-infos\\December2024\\D4oVToAe8DBaZOeg5cxu.webp', 1, '2024-12-15 12:48:54', '2024-12-15 12:48:54'),
(10, NULL, NULL, 'partner-infos\\December2024\\n6aDfCe2RvNifMZswyaD.webp', 1, '2024-12-15 13:26:11', '2024-12-15 13:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(2, 'browse_bread', NULL, '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(3, 'browse_database', NULL, '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(4, 'browse_media', NULL, '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(5, 'browse_compass', NULL, '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(6, 'browse_menus', 'menus', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(7, 'read_menus', 'menus', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(8, 'edit_menus', 'menus', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(9, 'add_menus', 'menus', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(10, 'delete_menus', 'menus', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(11, 'browse_roles', 'roles', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(12, 'read_roles', 'roles', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(13, 'edit_roles', 'roles', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(14, 'add_roles', 'roles', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(15, 'delete_roles', 'roles', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(16, 'browse_users', 'users', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(17, 'read_users', 'users', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(18, 'edit_users', 'users', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(19, 'add_users', 'users', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(20, 'delete_users', 'users', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(21, 'browse_settings', 'settings', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(22, 'read_settings', 'settings', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(23, 'edit_settings', 'settings', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(24, 'add_settings', 'settings', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(25, 'delete_settings', 'settings', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(26, 'browse_categories', 'categories', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(27, 'read_categories', 'categories', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(28, 'edit_categories', 'categories', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(29, 'add_categories', 'categories', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(30, 'delete_categories', 'categories', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(31, 'browse_posts', 'posts', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(32, 'read_posts', 'posts', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(33, 'edit_posts', 'posts', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(34, 'add_posts', 'posts', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(35, 'delete_posts', 'posts', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(36, 'browse_pages', 'pages', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(37, 'read_pages', 'pages', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(38, 'edit_pages', 'pages', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(39, 'add_pages', 'pages', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(40, 'delete_pages', 'pages', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(41, 'browse_web_menus', 'web_menus', '2024-11-21 11:41:40', '2024-11-21 11:41:40'),
(42, 'read_web_menus', 'web_menus', '2024-11-21 11:41:40', '2024-11-21 11:41:40'),
(43, 'edit_web_menus', 'web_menus', '2024-11-21 11:41:40', '2024-11-21 11:41:40'),
(44, 'add_web_menus', 'web_menus', '2024-11-21 11:41:40', '2024-11-21 11:41:40'),
(45, 'delete_web_menus', 'web_menus', '2024-11-21 11:41:40', '2024-11-21 11:41:40'),
(46, 'browse_contacts', 'contacts', '2024-11-30 10:25:58', '2024-11-30 10:25:58'),
(47, 'read_contacts', 'contacts', '2024-11-30 10:25:58', '2024-11-30 10:25:58'),
(48, 'edit_contacts', 'contacts', '2024-11-30 10:25:58', '2024-11-30 10:25:58'),
(49, 'add_contacts', 'contacts', '2024-11-30 10:25:58', '2024-11-30 10:25:58'),
(50, 'delete_contacts', 'contacts', '2024-11-30 10:25:58', '2024-11-30 10:25:58'),
(51, 'browse_services', 'services', '2024-11-30 11:05:28', '2024-11-30 11:05:28'),
(52, 'read_services', 'services', '2024-11-30 11:05:28', '2024-11-30 11:05:28'),
(53, 'edit_services', 'services', '2024-11-30 11:05:28', '2024-11-30 11:05:28'),
(54, 'add_services', 'services', '2024-11-30 11:05:28', '2024-11-30 11:05:28'),
(55, 'delete_services', 'services', '2024-11-30 11:05:28', '2024-11-30 11:05:28'),
(56, 'browse_service_items', 'service_items', '2024-11-30 11:12:49', '2024-11-30 11:12:49'),
(57, 'read_service_items', 'service_items', '2024-11-30 11:12:49', '2024-11-30 11:12:49'),
(58, 'edit_service_items', 'service_items', '2024-11-30 11:12:49', '2024-11-30 11:12:49'),
(59, 'add_service_items', 'service_items', '2024-11-30 11:12:49', '2024-11-30 11:12:49'),
(60, 'delete_service_items', 'service_items', '2024-11-30 11:12:49', '2024-11-30 11:12:49'),
(61, 'browse_blogs', 'blogs', '2024-11-30 11:54:11', '2024-11-30 11:54:11'),
(62, 'read_blogs', 'blogs', '2024-11-30 11:54:11', '2024-11-30 11:54:11'),
(63, 'edit_blogs', 'blogs', '2024-11-30 11:54:11', '2024-11-30 11:54:11'),
(64, 'add_blogs', 'blogs', '2024-11-30 11:54:11', '2024-11-30 11:54:11'),
(65, 'delete_blogs', 'blogs', '2024-11-30 11:54:11', '2024-11-30 11:54:11'),
(66, 'browse_blog_items', 'blog_items', '2024-11-30 12:02:02', '2024-11-30 12:02:02'),
(67, 'read_blog_items', 'blog_items', '2024-11-30 12:02:02', '2024-11-30 12:02:02'),
(68, 'edit_blog_items', 'blog_items', '2024-11-30 12:02:02', '2024-11-30 12:02:02'),
(69, 'add_blog_items', 'blog_items', '2024-11-30 12:02:02', '2024-11-30 12:02:02'),
(70, 'delete_blog_items', 'blog_items', '2024-11-30 12:02:02', '2024-11-30 12:02:02'),
(71, 'browse_blog_item_service_items', 'blog_item_service_items', '2024-11-30 12:33:19', '2024-11-30 12:33:19'),
(72, 'read_blog_item_service_items', 'blog_item_service_items', '2024-11-30 12:33:19', '2024-11-30 12:33:19'),
(73, 'edit_blog_item_service_items', 'blog_item_service_items', '2024-11-30 12:33:19', '2024-11-30 12:33:19'),
(74, 'add_blog_item_service_items', 'blog_item_service_items', '2024-11-30 12:33:19', '2024-11-30 12:33:19'),
(75, 'delete_blog_item_service_items', 'blog_item_service_items', '2024-11-30 12:33:19', '2024-11-30 12:33:19'),
(76, 'browse_teams', 'teams', '2024-11-30 15:07:18', '2024-11-30 15:07:18'),
(77, 'read_teams', 'teams', '2024-11-30 15:07:18', '2024-11-30 15:07:18'),
(78, 'edit_teams', 'teams', '2024-11-30 15:07:18', '2024-11-30 15:07:18'),
(79, 'add_teams', 'teams', '2024-11-30 15:07:18', '2024-11-30 15:07:18'),
(80, 'delete_teams', 'teams', '2024-11-30 15:07:18', '2024-11-30 15:07:18'),
(81, 'browse_team_members', 'team_members', '2024-11-30 15:12:36', '2024-11-30 15:12:36'),
(82, 'read_team_members', 'team_members', '2024-11-30 15:12:36', '2024-11-30 15:12:36'),
(83, 'edit_team_members', 'team_members', '2024-11-30 15:12:36', '2024-11-30 15:12:36'),
(84, 'add_team_members', 'team_members', '2024-11-30 15:12:36', '2024-11-30 15:12:36'),
(85, 'delete_team_members', 'team_members', '2024-11-30 15:12:36', '2024-11-30 15:12:36'),
(86, 'browse_contact_clients', 'contact_clients', '2024-11-30 15:45:58', '2024-11-30 15:45:58'),
(87, 'read_contact_clients', 'contact_clients', '2024-11-30 15:45:58', '2024-11-30 15:45:58'),
(88, 'edit_contact_clients', 'contact_clients', '2024-11-30 15:45:58', '2024-11-30 15:45:58'),
(89, 'add_contact_clients', 'contact_clients', '2024-11-30 15:45:58', '2024-11-30 15:45:58'),
(90, 'delete_contact_clients', 'contact_clients', '2024-11-30 15:45:58', '2024-11-30 15:45:58'),
(91, 'browse_contact_infos', 'contact_infos', '2024-11-30 16:32:34', '2024-11-30 16:32:34'),
(92, 'read_contact_infos', 'contact_infos', '2024-11-30 16:32:34', '2024-11-30 16:32:34'),
(93, 'edit_contact_infos', 'contact_infos', '2024-11-30 16:32:34', '2024-11-30 16:32:34'),
(94, 'add_contact_infos', 'contact_infos', '2024-11-30 16:32:34', '2024-11-30 16:32:34'),
(95, 'delete_contact_infos', 'contact_infos', '2024-11-30 16:32:34', '2024-11-30 16:32:34'),
(96, 'browse_about_us', 'about_us', '2024-12-15 08:09:43', '2024-12-15 08:09:43'),
(97, 'read_about_us', 'about_us', '2024-12-15 08:09:43', '2024-12-15 08:09:43'),
(98, 'edit_about_us', 'about_us', '2024-12-15 08:09:43', '2024-12-15 08:09:43'),
(99, 'add_about_us', 'about_us', '2024-12-15 08:09:43', '2024-12-15 08:09:43'),
(100, 'delete_about_us', 'about_us', '2024-12-15 08:09:43', '2024-12-15 08:09:43'),
(101, 'browse_about_us_items', 'about_us_items', '2024-12-15 08:15:15', '2024-12-15 08:15:15'),
(102, 'read_about_us_items', 'about_us_items', '2024-12-15 08:15:15', '2024-12-15 08:15:15'),
(103, 'edit_about_us_items', 'about_us_items', '2024-12-15 08:15:15', '2024-12-15 08:15:15'),
(104, 'add_about_us_items', 'about_us_items', '2024-12-15 08:15:15', '2024-12-15 08:15:15'),
(105, 'delete_about_us_items', 'about_us_items', '2024-12-15 08:15:15', '2024-12-15 08:15:15'),
(106, 'browse_about_us_item_childrens', 'about_us_item_childrens', '2024-12-15 08:18:32', '2024-12-15 08:18:32'),
(107, 'read_about_us_item_childrens', 'about_us_item_childrens', '2024-12-15 08:18:32', '2024-12-15 08:18:32'),
(108, 'edit_about_us_item_childrens', 'about_us_item_childrens', '2024-12-15 08:18:32', '2024-12-15 08:18:32'),
(109, 'add_about_us_item_childrens', 'about_us_item_childrens', '2024-12-15 08:18:32', '2024-12-15 08:18:32'),
(110, 'delete_about_us_item_childrens', 'about_us_item_childrens', '2024-12-15 08:18:32', '2024-12-15 08:18:32'),
(111, 'browse_portfolios', 'portfolios', '2024-12-15 09:42:58', '2024-12-15 09:42:58'),
(112, 'read_portfolios', 'portfolios', '2024-12-15 09:42:58', '2024-12-15 09:42:58'),
(113, 'edit_portfolios', 'portfolios', '2024-12-15 09:42:58', '2024-12-15 09:42:58'),
(114, 'add_portfolios', 'portfolios', '2024-12-15 09:42:58', '2024-12-15 09:42:58'),
(115, 'delete_portfolios', 'portfolios', '2024-12-15 09:42:58', '2024-12-15 09:42:58'),
(116, 'browse_portfolio_items', 'portfolio_items', '2024-12-15 09:47:13', '2024-12-15 09:47:13'),
(117, 'read_portfolio_items', 'portfolio_items', '2024-12-15 09:47:13', '2024-12-15 09:47:13'),
(118, 'edit_portfolio_items', 'portfolio_items', '2024-12-15 09:47:13', '2024-12-15 09:47:13'),
(119, 'add_portfolio_items', 'portfolio_items', '2024-12-15 09:47:13', '2024-12-15 09:47:13'),
(120, 'delete_portfolio_items', 'portfolio_items', '2024-12-15 09:47:13', '2024-12-15 09:47:13'),
(121, 'browse_partners', 'partners', '2024-12-15 12:22:23', '2024-12-15 12:22:23'),
(122, 'read_partners', 'partners', '2024-12-15 12:22:23', '2024-12-15 12:22:23'),
(123, 'edit_partners', 'partners', '2024-12-15 12:22:23', '2024-12-15 12:22:23'),
(124, 'add_partners', 'partners', '2024-12-15 12:22:23', '2024-12-15 12:22:23'),
(125, 'delete_partners', 'partners', '2024-12-15 12:22:23', '2024-12-15 12:22:23'),
(126, 'browse_partner_infos', 'partner_infos', '2024-12-15 12:24:28', '2024-12-15 12:24:28'),
(127, 'read_partner_infos', 'partner_infos', '2024-12-15 12:24:28', '2024-12-15 12:24:28'),
(128, 'edit_partner_infos', 'partner_infos', '2024-12-15 12:24:28', '2024-12-15 12:24:28'),
(129, 'add_partner_infos', 'partner_infos', '2024-12-15 12:24:28', '2024-12-15 12:24:28'),
(130, 'delete_partner_infos', 'partner_infos', '2024-12-15 12:24:28', '2024-12-15 12:24:28'),
(141, 'browse_term_conditions', 'term_conditions', '2024-12-15 15:07:01', '2024-12-15 15:07:01'),
(142, 'read_term_conditions', 'term_conditions', '2024-12-15 15:07:01', '2024-12-15 15:07:01'),
(143, 'edit_term_conditions', 'term_conditions', '2024-12-15 15:07:01', '2024-12-15 15:07:01'),
(144, 'add_term_conditions', 'term_conditions', '2024-12-15 15:07:01', '2024-12-15 15:07:01'),
(145, 'delete_term_conditions', 'term_conditions', '2024-12-15 15:07:01', '2024-12-15 15:07:01'),
(146, 'browse_term_condition_items', 'term_condition_items', '2024-12-15 15:07:48', '2024-12-15 15:07:48'),
(147, 'read_term_condition_items', 'term_condition_items', '2024-12-15 15:07:48', '2024-12-15 15:07:48'),
(148, 'edit_term_condition_items', 'term_condition_items', '2024-12-15 15:07:48', '2024-12-15 15:07:48'),
(149, 'add_term_condition_items', 'term_condition_items', '2024-12-15 15:07:48', '2024-12-15 15:07:48'),
(150, 'delete_term_condition_items', 'term_condition_items', '2024-12-15 15:07:48', '2024-12-15 15:07:48'),
(151, 'browse_privacy_policies', 'privacy_policies', '2024-12-15 15:31:12', '2024-12-15 15:31:12'),
(152, 'read_privacy_policies', 'privacy_policies', '2024-12-15 15:31:12', '2024-12-15 15:31:12'),
(153, 'edit_privacy_policies', 'privacy_policies', '2024-12-15 15:31:12', '2024-12-15 15:31:12'),
(154, 'add_privacy_policies', 'privacy_policies', '2024-12-15 15:31:12', '2024-12-15 15:31:12'),
(155, 'delete_privacy_policies', 'privacy_policies', '2024-12-15 15:31:12', '2024-12-15 15:31:12'),
(156, 'browse_privacy_policy_items', 'privacy_policy_items', '2024-12-15 15:32:45', '2024-12-15 15:32:45'),
(157, 'read_privacy_policy_items', 'privacy_policy_items', '2024-12-15 15:32:45', '2024-12-15 15:32:45'),
(158, 'edit_privacy_policy_items', 'privacy_policy_items', '2024-12-15 15:32:45', '2024-12-15 15:32:45'),
(159, 'add_privacy_policy_items', 'privacy_policy_items', '2024-12-15 15:32:45', '2024-12-15 15:32:45'),
(160, 'delete_privacy_policy_items', 'privacy_policy_items', '2024-12-15 15:32:45', '2024-12-15 15:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint UNSIGNED NOT NULL,
  `web_menu_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `web_menu_id`, `title`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(1, 5, 'Work & Project', 'Our Portfolio', 'WellSoft is an HTML5 template based on Sass and Bootstrap 5 with modern and creative design.', '2024-12-15 10:07:35', '2024-12-15 10:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_items`
--

CREATE TABLE `portfolio_items` (
  `id` bigint UNSIGNED NOT NULL,
  `portfolio_id` bigint DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_items`
--

INSERT INTO `portfolio_items` (`id`, `portfolio_id`, `parent_id`, `name`, `url`, `type`, `photo`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Building a Strong Brand Identity for Lasting Success', NULL, 'Branding', 'portfolio-items\\December2024\\gnan8BWvgvmJuBrnAX1n.webp', 'A strong brand identity sets your business apart from competitors. It creates a memorable impression in the minds of customers, ensuring they recognize and trust your products or services. By focusing on consistent messaging, visual elements, and customer experience, your brand becomes more than just a logo – it becomes a promise.', '2024-12-15 10:16:58', '2024-12-15 10:24:40'),
(2, 1, 1, 'The Power of Consistency in Brand Messaging and Design', 'no', '', 'portfolio-items\\December2024\\e8222CilT2HdrjWhNK6p.webp', 'Consistency is key to creating a reliable brand image. When your messaging and design are aligned across all platforms, your audience can instantly recognize and relate to your brand. Whether it’s your logo, colors, or tone of voice, maintaining consistency builds trust and fosters long-term customer loyalty.', '2024-12-15 10:20:33', '2024-12-15 10:24:27'),
(3, 1, 1, 'Creating Emotional Connections Through Brand Storytelling', NULL, '', 'portfolio-items\\December2024\\BXkbJ92UNmEuQhbtFlDs.webp', 'Effective branding goes beyond products and services; it tells a story. By sharing your brand’s journey, values, and mission, you create an emotional connection with your audience. This connection helps to build a community around your brand, driving customer engagement and loyalty through shared experiences and beliefs.', '2024-12-15 10:26:03', '2024-12-15 10:26:03'),
(4, 1, 1, 'Harnessing Social Media for Brand Awareness and Growth', NULL, '', 'portfolio-items\\December2024\\NTZCjWZQL6H4EmtE7n5M.webp', 'Social media platforms are powerful tools for increasing brand visibility. By strategically engaging with your audience, sharing valuable content, and using targeted advertising, your brand can reach a larger audience. Consistent interaction and authentic communication foster a loyal following and drive business growth through increased brand awareness.', '2024-12-15 10:27:36', '2024-12-15 10:27:36'),
(5, 1, NULL, 'Creating User-Centric Designs for Seamless Digital Experiences', NULL, 'Design', 'portfolio-items\\December2024\\kEmraYxBvEI1LPdBDG5w.webp', 'User-centric design prioritizes the needs, behaviors, and preferences of your target audience. By analyzing user feedback and data, you can craft intuitive interfaces that enhance usability and engagement. A seamless design experience reduces friction, making it easier for users to navigate and interact with your digital products. When users feel understood and catered to, they are more likely to stay engaged and return, fostering long-term relationships.', '2024-12-15 10:30:37', '2024-12-15 10:30:37'),
(6, 1, 5, 'The Art of Minimalism: Less is More in Design', NULL, '', 'portfolio-items\\December2024\\FBXfWMIaNCAoyx6r7Msk.webp', 'Minimalism in design is all about simplicity and focus. By removing unnecessary elements, you can create an elegant and clean interface that highlights essential content. Minimalist designs use ample white space, subtle color schemes, and clean lines to enhance usability and readability. This approach not only makes navigation easier but also creates a visually pleasing experience that allows users to engage with the product without distractions', '2024-12-15 10:31:22', '2024-12-15 10:31:22'),
(7, 1, 5, 'Designing for Accessibility: Making Digital Spaces Inclusive', NULL, '', 'portfolio-items\\December2024\\zuvOCzUWxBr5coAlq4u4.webp', 'Inclusive design ensures that digital spaces are usable by everyone, including people with disabilities. By considering accessibility features such as keyboard navigation, screen reader compatibility, and high-contrast visuals, you ensure that your product can be used by a wider audience. Accessible design is not just about compliance with legal standards but also about creating a more inclusive and equitable digital world, enhancing the user experience for all.\n\n', '2024-12-15 10:32:26', '2024-12-15 10:32:26'),
(8, 1, 5, 'Responsive Design: Adapting to Every Device and Screen Size', NULL, '', 'portfolio-items\\December2024\\eXoOUVIh4wdAziF2X0A8.webp', 'Responsive design is crucial in today’s multi-device world. It ensures that your website or application adapts to different screen sizes, from mobile phones to large desktop monitors. By using flexible layouts, scalable images, and adaptive content, responsive design ensures that users have a consistent, optimized experience regardless of the device they are using. This adaptability improves user satisfaction and retention.', '2024-12-15 10:33:32', '2024-12-15 10:33:32'),
(9, 1, NULL, 'Optimizing Web Development for Speed and Performance', NULL, 'Development', 'portfolio-items\\December2024\\9j5JMOTKOB5xx82xoYIQ.webp', 'Web performance is crucial for user experience and SEO. By optimizing your website\'s speed through efficient coding, reducing image sizes, and leveraging caching techniques, you can ensure a faster load time. This not only improves user engagement but also boosts your site\'s ranking on search engines, driving more traffic and conversions.', '2024-12-15 10:40:15', '2024-12-15 10:40:15'),
(10, 1, 9, 'Building Scalable and Secure Web Applications', NULL, '', 'portfolio-items\\December2024\\o2CEVeEbKYGdnm479MJz.webp', 'Scalability and security are key to developing robust web applications. By using modern frameworks, implementing secure authentication methods, and designing a flexible architecture, your application can grow with your business needs while safeguarding user data. A scalable and secure application ensures reliability and protects against potential threats.\n', '2024-12-15 10:41:48', '2024-12-15 10:41:48'),
(11, 1, 9, 'Integrating APIs for Enhanced Functionality in Web Projects', NULL, '', 'portfolio-items\\December2024\\wBPlEqMQsVfe3BYIStkO.webp', 'APIs enable seamless integration of external services and data into your web projects. By connecting to third-party tools and platforms, you can enhance your application’s functionality without reinventing the wheel. Whether it\'s payment gateways, social media logins, or data analysis, API integration streamlines processes and adds value to your project.', '2024-12-15 10:42:32', '2024-12-15 11:39:07'),
(12, 1, 9, 'Adopting Agile Methodologies for Faster Development Cycles', NULL, '', 'portfolio-items\\December2024\\etnXusuGrgGCxRxmDiL0.png', 'Agile methodologies emphasize iterative development, collaboration, and flexibility. By breaking down projects into smaller tasks and delivering incremental updates, you can respond to changing requirements more effectively. Agile development improves team communication, reduces time to market, and allows for continuous improvements based on user feedback.', '2024-12-15 10:43:25', '2024-12-15 11:36:51'),
(13, 1, NULL, 'Transforming Businesses with Tailored IT Solutions for Growth', NULL, 'IT Solution', 'portfolio-items\\December2024\\wvpb1tCElFWDXvMlKJit.webp', 'Maximizing Efficiency with Cutting-Edge IT Infrastructure Solutions', '2024-12-15 10:47:31', '2024-12-15 10:47:31'),
(14, 1, 13, 'Maximizing Efficiency with Cutting-Edge IT Infrastructure Solutions', NULL, '', 'portfolio-items\\December2024\\hCWjZzkVNaWfHrxJ1gvg.webp', 'A robust IT infrastructure is the backbone of any successful business. By integrating the latest technologies, businesses can streamline operations, reduce downtime, and improve overall efficiency. From scalable cloud systems to secure networks, modern IT infrastructure ensures that your business stays agile and capable of adapting to evolving demands.', '2024-12-15 10:49:27', '2024-12-15 10:49:27'),
(15, 1, 13, 'Driving Innovation with AI and Automation in IT Solutions', NULL, '', 'portfolio-items\\December2024\\sOFs2k3WZgV9XHVrHNFh.webp', 'Artificial intelligence and automation are transforming industries by driving innovation. Implementing AI-driven IT solutions allows businesses to automate repetitive tasks, improve decision-making, and enhance customer experiences. By leveraging these technologies, companies can stay ahead of competitors and create more efficient, cost-effective operations that boost overall performance.', '2024-12-15 10:50:29', '2024-12-15 10:50:29'),
(16, 1, 13, 'Optimizing Business Operations with Cloud-Based IT Solutions', NULL, '', 'portfolio-items\\December2024\\tPRk0LAolIjgwQqxfkze.jpg', 'Cloud computing has revolutionized the way businesses operate. By adopting cloud-based IT solutions, businesses can reduce costs, improve scalability, and access data from anywhere in the world. Cloud services offer flexibility, security, and collaboration tools that enable businesses to streamline workflows, enhance productivity, and scale effortlessly as their needs grow.', '2024-12-15 10:51:51', '2024-12-15 10:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint UNSIGNED NOT NULL,
  `web_menu_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `web_menu_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 8, 'Privacy Policy', 'Build responsive, mobile-first projects on the web with the world\'s most popular front-end component library.', '2024-12-15 15:38:54', '2024-12-15 15:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy_items`
--

CREATE TABLE `privacy_policy_items` (
  `id` bigint UNSIGNED NOT NULL,
  `privacy_policy_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policy_items`
--

INSERT INTO `privacy_policy_items` (`id`, `privacy_policy_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Privacy Policy', '<ul>\n<li>\n<p><strong>Your Privacy Matters to Us</strong><br>Our Privacy Policy outlines how we collect, use, and protect your personal information. We are committed to safeguarding your privacy and ensuring that your data is handled responsibly and securely. Please review our policy to understand how we protect your information.</p>\n</li>\n<li>\n<p><strong>Protecting Your Personal Information</strong><br>Our Privacy Policy explains the measures we take to ensure your data is secure. We are transparent about the information we collect, how it is used, and how we protect your privacy. We respect your trust and are dedicated to keeping your data safe.</p>\n</li>\n<li>\n<p><strong>Committed to Your Privacy</strong><br>At \"WellSoft\", we value your privacy and are dedicated to maintaining the confidentiality of your personal information. Our Privacy Policy provides detailed information on how we collect, store, and use your data to ensure your privacy is always protected.</p>\n</li>\n<li>\n<p><strong>Transparency in Data Usage</strong><br>We believe in transparency when it comes to your personal information. Our Privacy Policy provides clear details on how we collect and manage your data, ensuring that we always prioritize your privacy and security.</p>\n</li>\n<li>\n<p><strong>How We Protect Your Privacy</strong><br>Your privacy is our top priority. Our Privacy Policy explains the steps we take to safeguard your personal data, including how we collect, store, and share your information. We are committed to being transparent and accountable in all our data practices.</p>\n</li>\n<li>\n<p><strong>Your Data, Our Responsibility</strong><br>Our Privacy Policy is designed to provide you with clear information about how we handle your personal data. We take your privacy seriously and are committed to ensuring that your information is protected at all times.</p>\n</li>\n<li>\n<p><strong>Ensuring Confidentiality and Security</strong><br>The Privacy Policy outlines our commitment to maintaining the confidentiality and security of your personal information. We ensure that your data is used responsibly and never shared without your consent, unless required by law.</p>\n</li>\n<li>\n<p><strong>How We Handle Your Information</strong><br>Our Privacy Policy provides comprehensive details on how we collect, use, and protect your personal information. We respect your privacy and ensure that your data is handled in accordance with the highest standards of security and confidentiality.</p>\n</li>\n<li>\n<p><strong>Your Privacy Rights</strong><br>Our Privacy Policy explains your rights regarding the personal information we collect, how we use it, and the steps we take to protect it. We are dedicated to ensuring that your privacy is respected and your data remains secure.</p>\n</li>\n<li>\n<p><strong>Your Trust, Our Responsibility</strong><br>We are committed to maintaining your trust by protecting your personal information. Our Privacy Policy outlines the practices we follow to ensure that your data is secure, confidential, and only used for the purposes you have agreed to.</p>\n</li>\n</ul>', '2024-12-15 15:42:55', '2024-12-15 15:42:55'),
(2, 1, 'COOKIES AND TRACKING', '<ul>\n<li>\n<p><strong>Use of Cookies and Tracking Technologies</strong><br>To enhance your experience, we use cookies and similar tracking technologies to collect information about how you interact with our website. These technologies help us improve our services, provide personalized content, and analyze usage patterns. By continuing to use our site, you consent to the use of cookies.</p>\n</li>\n<li>\n<p><strong>Cookies and Tracking for a Better Experience</strong><br>Our website uses cookies and tracking technologies to offer a more personalized experience. These tools help us understand your preferences, improve site functionality, and ensure we provide relevant content. You can manage your cookie preferences through your browser settings.</p>\n</li>\n<li>\n<p><strong>Tracking Technologies We Use</strong><br>We use cookies, web beacons, and other tracking technologies to collect information about how you interact with our website. This data helps us improve your experience, deliver targeted ads, and analyze user behavior. You can control cookie settings in your browser at any time.</p>\n</li>\n<li>\n<p><strong>Cookies for Personalization and Analytics</strong><br>We use cookies to personalize your experience and analyze how our website is used. These cookies allow us to remember your preferences and provide you with tailored content. You can choose to disable cookies through your browser settings, but this may affect some site features.</p>\n</li>\n<li>\n<p><strong>How We Use Cookies</strong><br>Cookies are small data files stored on your device to enhance your browsing experience. We use them to improve website functionality, remember your preferences, and track site performance. By using our site, you agree to the use of cookies as described in our Privacy Policy.</p>\n</li>\n<li>\n<p><strong>Managing Cookies and Tracking Preferences</strong><br>Our website uses cookies and other tracking technologies to improve performance and enhance user experience. These tools help us collect data on site usage and provide relevant content. You can adjust your cookie settings in your browser to control what data is collected.</p>\n</li>\n<li>\n<p><strong>Cookies for Website Performance and Marketing</strong><br>To optimize our website and provide personalized content, we use cookies and other tracking technologies. These tools help us measure site traffic, track user behavior, and deliver targeted marketing. You can opt-out of certain tracking technologies by adjusting your browser settings.</p>\n</li>\n<li>\n<p><strong>Why We Use Cookies and Tracking</strong><br>We use cookies and tracking technologies to ensure that our website functions smoothly, provide personalized content, and analyze user activity. These tools help us improve your experience and provide more relevant content. You can manage your cookie preferences anytime through your browser settings.</p>\n</li>\n<li>\n<p><strong>Your Control Over Cookies</strong><br>We respect your privacy and give you control over cookies. By using our site, you consent to the use of cookies and similar tracking technologies for the purposes outlined in our Privacy Policy. However, you can change your cookie settings at any time to manage your preferences.</p>\n</li>\n<li>\n<p><strong>Cookies for Site Improvement</strong><br>To offer a better user experience, we use cookies and tracking technologies to monitor how visitors use our website. This data helps us enhance site performance, personalize content, and improve overall functionality. You can adjust your cookie preferences in your browser settings.</p>\n</li>\n</ul>', '2024-12-15 15:44:51', '2024-12-15 15:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(2, 'user', 'Normal User', '2024-11-03 15:19:54', '2024-11-03 15:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `web_menu_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `web_menu_id`, `title`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Services We Offer', 'Our Services', 'WellSoft is a HTML5 template based on Sass and Bootstrap 5 with modern and creative multipurpose design you can use Best services & IT solutions.', '2024-11-30 11:11:12', '2024-11-30 12:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `service_items`
--

CREATE TABLE `service_items` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_items`
--

INSERT INTO `service_items` (`id`, `service_id`, `title`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(1, 1, 'Apps Development', 'WellSoft is a HTML5 template based on Sass and Bootstrap 5 with modern and creative.', 'service-items\\November2024\\269UxK3SdpVCXyPqiTl2.webp', '2024-11-30 11:21:55', '2024-11-30 12:19:34'),
(2, 1, 'Web Development', 'WellSoft is a HTML5 template based on Sass and Bootstrap 5 with modern and creative.', 'service-items\\November2024\\qWYZi7MnDH9eGxZAmxPe.webp', '2024-11-30 11:23:18', '2024-11-30 12:19:25'),
(3, 1, 'Digital Marketing', 'WellSoft is a HTML5 template based on Sass and Bootstrap 5 with modern and creative.', 'service-items\\November2024\\9w2vv52fW11zJLgpLsV4.webp', '2024-11-30 11:24:34', '2024-11-30 12:19:14'),
(4, 1, 'SEO Optimization', 'WellSoft is a HTML5 template based on Sass and Bootstrap 5 with modern and creative. ', 'service-items\\November2024\\3y09QqvmjhNkaDkADoRg.webp', '2024-11-30 11:25:49', '2024-11-30 12:18:57'),
(5, 1, 'Web Hosting', 'WellSoft is a HTML5 template based on Sass and Bootstrap 5 with modern and creative. ', 'service-items\\November2024\\uYRmL29o1wpnL2QIVBMW.webp', '2024-11-30 11:27:08', '2024-11-30 12:18:46'),
(6, 1, 'Data Security', 'WellSoft is a HTML5 template based on Sass and Bootstrap 5 with modern and creative.', 'service-items\\November2024\\dgtaLrE9jvXfXUL1HUaz.webp', '2024-11-30 11:28:21', '2024-11-30 12:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `web_menu_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `web_menu_id`, `title`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(1, 10, 'Meet the Masterminds', 'Our Team', 'Build responsive, mobile-first projects on the web with the world\'s most popular front-end component library.', '2024-11-30 15:19:24', '2024-11-30 15:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint UNSIGNED NOT NULL,
  `team_id` bigint DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `surname` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `team_id`, `name`, `position`, `photo`, `surname`, `created_at`, `updated_at`) VALUES
(1, 1, 'Murodjon', 'CIO Company', 'team-members\\November2024\\n3uL8mfms0Oy1NGhPlmW.webp', 'Atamirzayev', '2024-11-30 15:20:49', '2024-11-30 17:26:59'),
(2, 1, 'Rasul', 'CEO Company', 'team-members\\November2024\\PZHBL2yPwW4rWUPcmB51.webp', 'Umarov', '2024-11-30 15:21:35', '2024-11-30 17:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `term_conditions`
--

CREATE TABLE `term_conditions` (
  `id` bigint UNSIGNED NOT NULL,
  `web_menu_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `term_conditions`
--

INSERT INTO `term_conditions` (`id`, `web_menu_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 7, 'Terms Conditions', 'Build responsive, mobile-first projects on the web with the world\'s most popular front-end component library.', '2024-12-15 15:16:43', '2024-12-15 15:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `term_condition_items`
--

CREATE TABLE `term_condition_items` (
  `id` bigint UNSIGNED NOT NULL,
  `term_condition_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `term_condition_items`
--

INSERT INTO `term_condition_items` (`id`, `term_condition_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'WE\'RE ALWAYS LOOKING FOR NEW WAYS TO PROVIDE PRIVACY FOR OUR CUSTOMERS.', '<ul>\n<li>\n<p><strong>Innovative Privacy Solutions</strong><br>At \"WellSoft\", we are committed to exploring and implementing cutting-edge technologies to ensure the highest level of privacy for our customers. We continually strive to enhance the security of your personal information and provide peace of mind in every interaction.</p>\n</li>\n<li>\n<p><strong>Dedicated to Customer Privacy</strong><br>We understand that privacy is paramount. That&rsquo;s why we are always looking for new ways to protect your data and maintain your confidentiality. Our goal is to deliver services that prioritize your security, keeping your personal information safe at all times.</p>\n</li>\n<li>\n<p><strong>Pioneering Privacy Protection</strong><br>As technology evolves, so do the ways we protect your privacy. We are dedicated to staying ahead of the curve, constantly seeking innovative methods to safeguard your data and ensure that your privacy remains a top priority.</p>\n</li>\n<li>\n<p><strong>Privacy is Our Priority</strong><br>At \"WellSoft\", we recognize the importance of protecting your privacy. Our team is always researching and developing new ways to enhance the security of your information, so you can trust us to keep your personal details safe.</p>\n</li>\n<li>\n<p><strong>Protecting Your Privacy, Always</strong><br>We believe that privacy is not just a feature, but a core value. That&rsquo;s why we&rsquo;re constantly seeking new and improved ways to secure your data and protect your privacy in an ever-changing digital world.</p>\n</li>\n<li>\n<p><strong>Your Privacy, Our Commitment</strong><br>We are committed to safeguarding your privacy through innovation. By continuously exploring new privacy technologies, we aim to ensure that your personal information remains secure and confidential, now and in the future.</p>\n</li>\n<li>\n<p><strong>Future-Focused Privacy Protection</strong><br>As privacy concerns grow, we are at the forefront of finding new and better ways to protect our customers\' personal information. Our focus is always on delivering the most secure, privacy-first solutions to give you peace of mind.</p>\n</li>\n<li>\n<p><strong>Constantly Evolving to Protect You</strong><br>We don&rsquo;t just settle for the status quo when it comes to privacy. Our team is always researching and implementing new privacy measures to ensure that your information stays safe and protected, no matter what.</p>\n</li>\n</ul>', '2024-12-15 15:26:09', '2024-12-15 15:26:09'),
(2, 1, 'YOUR DATA IS SAFE WITH US, WE WILL NOT SHARE ANY INFORMATION WITH EXTERNAL SOURCES.', '<ul>\n<li>\n<p><strong>Uncompromising Data Security</strong><br>At \"WellSoft\", we take your privacy seriously. Rest assured, your personal information is protected with the highest level of security, and we will never share your data with external sources. Your trust is our top priority.</p>\n</li>\n<li>\n<p><strong>Your Privacy, Our Promise</strong><br>We are committed to keeping your data safe and secure. We guarantee that your information will never be shared with third parties, ensuring that your privacy remains intact at all times.</p>\n</li>\n<li>\n<p><strong>Confidentiality You Can Trust</strong><br>Your data is yours alone. We uphold the highest standards of confidentiality and will never disclose your personal information to external sources. With us, your privacy is always protected.</p>\n</li>\n<li>\n<p><strong>We Respect Your Privacy</strong><br>At \"WellSoft\", we understand the importance of your privacy. We assure you that your data will remain private and will never be shared with any external parties without your consent.</p>\n</li>\n<li>\n<p><strong>Protecting Your Personal Information</strong><br>Your personal information is safe with us. We are committed to keeping it private and secure, and we will never share it with external sources. You can trust us to protect your data at all costs.</p>\n</li>\n<li>\n<p><strong>Commitment to Privacy and Security</strong><br>We prioritize your privacy above all else. Your data is safe with us, and we guarantee that we will never share it with any third-party sources. Your trust is essential, and we take every measure to protect your information.</p>\n</li>\n<li>\n<p><strong>Your Data, Your Control</strong><br>With \"WellSoft\", you can rest easy knowing that your data is secure. We will never share your personal information with external sources, ensuring that your privacy is always in your hands.</p>\n</li>\n<li>\n<p><strong>Privacy Assurance</strong><br>We respect your privacy and take every step to safeguard your data. Your personal information is never shared with external sources, so you can trust that your details remain confidential and protected.</p>\n</li>\n</ul>', '2024-12-15 15:29:27', '2024-12-15 15:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2024-11-03 15:19:54', '2024-11-03 15:19:54'),
(31, 'menu_items', 'title', 14, 'ru', 'Web Menus', '2024-11-21 11:43:12', '2024-11-21 11:43:12'),
(32, 'web_menus', 'name', 1, 'ru', 'Услуги', '2024-11-21 11:52:20', '2024-11-21 11:52:20'),
(33, 'web_menus', 'name', 2, 'ru', 'Меню', '2024-11-21 11:53:39', '2024-11-21 11:53:39'),
(34, 'web_menus', 'name', 3, 'ru', 'О нас', '2024-11-21 11:54:28', '2024-11-21 11:54:28'),
(35, 'web_menus', 'name', 4, 'ru', 'Подробности блога', '2024-11-21 11:55:35', '2024-11-21 11:55:35'),
(36, 'web_menus', 'name', 5, 'ru', 'Портфель', '2024-11-21 11:56:27', '2024-11-21 11:56:27'),
(37, 'web_menus', 'name', 6, 'ru', 'Контакт', '2024-11-21 11:57:21', '2024-11-21 11:57:21'),
(38, 'web_menus', 'name', 7, 'ru', 'Условия и положения', '2024-11-21 11:58:28', '2024-11-21 11:58:28'),
(39, 'web_menus', 'name', 8, 'ru', 'Политика конфиденциальности', '2024-11-21 11:59:09', '2024-12-15 16:13:26'),
(40, 'web_menus', 'name', 9, 'ru', 'Блог', '2024-11-21 12:00:26', '2024-11-21 12:00:26'),
(41, 'web_menus', 'name', 10, 'ru', 'Команда', '2024-11-21 12:01:36', '2024-11-21 12:01:36'),
(42, 'data_rows', 'display_name', 56, 'ru', 'Id', '2024-11-21 12:03:25', '2024-11-21 12:03:25'),
(43, 'data_rows', 'display_name', 57, 'ru', 'Name', '2024-11-21 12:03:25', '2024-11-21 12:03:25'),
(44, 'data_rows', 'display_name', 58, 'ru', 'Parent Id', '2024-11-21 12:03:25', '2024-11-21 12:03:25'),
(45, 'data_rows', 'display_name', 59, 'ru', 'Created At', '2024-11-21 12:03:25', '2024-11-21 12:03:25'),
(46, 'data_rows', 'display_name', 60, 'ru', 'Updated At', '2024-11-21 12:03:25', '2024-11-21 12:03:25'),
(47, 'data_rows', 'display_name', 61, 'ru', 'web_menus', '2024-11-21 12:03:25', '2024-11-21 12:03:25'),
(48, 'data_types', 'display_name_singular', 7, 'ru', 'Web Menu', '2024-11-21 12:03:25', '2024-11-21 12:03:25'),
(49, 'data_types', 'display_name_plural', 7, 'ru', 'Web Menus', '2024-11-21 12:03:25', '2024-11-21 12:03:25'),
(50, 'data_rows', 'display_name', 62, 'ru', 'Url', '2024-11-21 12:44:08', '2024-11-21 12:44:08'),
(51, 'menu_items', 'title', 15, 'ru', 'Contacts', '2024-11-30 10:42:16', '2024-11-30 10:42:16'),
(52, 'data_rows', 'display_name', 70, 'ru', 'Id', '2024-11-30 11:07:18', '2024-11-30 11:07:18'),
(53, 'data_rows', 'display_name', 71, 'ru', 'Web Menu Id', '2024-11-30 11:07:18', '2024-11-30 11:07:18'),
(54, 'data_rows', 'display_name', 72, 'ru', 'Title', '2024-11-30 11:07:18', '2024-11-30 11:07:18'),
(55, 'data_rows', 'display_name', 73, 'ru', 'Subtitle', '2024-11-30 11:07:18', '2024-11-30 11:07:18'),
(56, 'data_rows', 'display_name', 74, 'ru', 'Description', '2024-11-30 11:07:18', '2024-11-30 11:07:18'),
(57, 'data_rows', 'display_name', 75, 'ru', 'Created At', '2024-11-30 11:07:18', '2024-11-30 11:07:18'),
(58, 'data_rows', 'display_name', 76, 'ru', 'Updated At', '2024-11-30 11:07:18', '2024-11-30 11:07:18'),
(59, 'data_rows', 'display_name', 77, 'ru', 'web_menus', '2024-11-30 11:07:18', '2024-11-30 11:07:18'),
(60, 'data_types', 'display_name_singular', 9, 'ru', 'Service', '2024-11-30 11:07:18', '2024-11-30 11:07:18'),
(61, 'data_types', 'display_name_plural', 9, 'ru', 'Services', '2024-11-30 11:07:18', '2024-11-30 11:07:18'),
(62, 'services', 'title', 1, 'ru', 'Услуги, которые мы предлагаем', '2024-11-30 11:11:12', '2024-11-30 11:11:12'),
(63, 'services', 'subtitle', 1, 'ru', 'Наши услуги', '2024-11-30 11:11:12', '2024-11-30 11:11:12'),
(64, 'services', 'description', 1, 'ru', 'WellSoft — это HTML5 шаблон, основанный на Sass и Bootstrap 5, с современным и креативным многофункциональным дизайном, который можно использовать для лучших услуг и IT-решений.', '2024-11-30 11:11:12', '2024-11-30 12:18:21'),
(65, 'data_rows', 'display_name', 78, 'ru', 'Id', '2024-11-30 11:14:10', '2024-11-30 11:14:10'),
(66, 'data_rows', 'display_name', 79, 'ru', 'Service Id', '2024-11-30 11:14:10', '2024-11-30 11:14:10'),
(67, 'data_rows', 'display_name', 80, 'ru', 'Title', '2024-11-30 11:14:10', '2024-11-30 11:14:10'),
(68, 'data_rows', 'display_name', 81, 'ru', 'Description', '2024-11-30 11:14:10', '2024-11-30 11:14:10'),
(69, 'data_rows', 'display_name', 82, 'ru', 'Icon', '2024-11-30 11:14:10', '2024-11-30 11:14:10'),
(70, 'data_rows', 'display_name', 83, 'ru', 'Created At', '2024-11-30 11:14:10', '2024-11-30 11:14:10'),
(71, 'data_rows', 'display_name', 84, 'ru', 'Updated At', '2024-11-30 11:14:10', '2024-11-30 11:14:10'),
(72, 'data_rows', 'display_name', 85, 'ru', 'services', '2024-11-30 11:14:10', '2024-11-30 11:14:10'),
(73, 'data_types', 'display_name_singular', 10, 'ru', 'Service Item', '2024-11-30 11:14:10', '2024-11-30 11:14:10'),
(74, 'data_types', 'display_name_plural', 10, 'ru', 'Service Items', '2024-11-30 11:14:10', '2024-11-30 11:14:10'),
(75, 'menu_items', 'title', 18, 'ru', 'Сервиси', '2024-11-30 11:15:22', '2024-11-30 11:15:22'),
(76, 'service_items', 'title', 1, 'ru', 'Разработка приложений', '2024-11-30 11:21:55', '2024-11-30 11:21:55'),
(77, 'service_items', 'description', 1, 'ru', 'WellSoft — это HTML5-шаблон, основанный на Sass и Bootstrap 5 с современным и креативным дизайном.\n\n', '2024-11-30 11:21:55', '2024-11-30 12:19:34'),
(78, 'service_items', 'title', 2, 'ru', 'Веб-разработка', '2024-11-30 11:23:18', '2024-11-30 11:23:18'),
(79, 'service_items', 'description', 2, 'ru', 'WellSoft — это HTML5-шаблон, основанный на Sass и Bootstrap 5 с современным и креативным дизайном.', '2024-11-30 11:23:18', '2024-11-30 12:19:25'),
(80, 'service_items', 'title', 3, 'ru', 'Цифровой маркетинг', '2024-11-30 11:24:34', '2024-11-30 11:24:34'),
(81, 'service_items', 'description', 3, 'ru', 'WellSoft — это HTML5-шаблон, основанный на Sass и Bootstrap 5 с современным и креативным дизайном.', '2024-11-30 11:24:34', '2024-11-30 12:19:14'),
(82, 'service_items', 'title', 4, 'ru', 'SEO-оптимизация', '2024-11-30 11:25:49', '2024-11-30 11:25:49'),
(83, 'service_items', 'description', 4, 'ru', 'WellSoft — это HTML5-шаблон, основанный на Sass и Bootstrap 5 с современным и креативным дизайном.', '2024-11-30 11:25:49', '2024-11-30 12:18:57'),
(84, 'service_items', 'title', 5, 'ru', 'Веб-хостинг', '2024-11-30 11:27:08', '2024-11-30 11:27:08'),
(85, 'service_items', 'description', 5, 'ru', 'WellSoft — это HTML5-шаблон, основанный на Sass и Bootstrap 5 с современным и креативным дизайном. ', '2024-11-30 11:27:08', '2024-11-30 12:18:46'),
(86, 'service_items', 'title', 6, 'ru', 'Безопасность данных', '2024-11-30 11:28:21', '2024-11-30 11:28:21'),
(87, 'service_items', 'description', 6, 'ru', 'WellSoft — это HTML5-шаблон, основанный на Sass и Bootstrap 5 с современным и креативным дизайном.', '2024-11-30 11:28:21', '2024-11-30 12:18:35'),
(88, 'menu_items', 'title', 19, 'ru', 'Блок', '2024-11-30 11:53:03', '2024-11-30 11:53:03'),
(89, 'blogs', 'title', 1, 'ru', 'Новости и блоги наших лучших решений', '2024-11-30 11:58:53', '2024-11-30 11:58:53'),
(90, 'blogs', 'subtitle', 1, 'ru', 'Лучшие наши новости и блоги', '2024-11-30 11:58:53', '2024-11-30 11:58:53'),
(91, 'blogs', 'description', 1, 'ru', 'Создавайте адаптивные проекты с приоритетом мобильных устройств в интернете с помощью самой популярной библиотеки компонентов фронтенда в мире.', '2024-11-30 11:58:53', '2024-11-30 11:58:53'),
(92, 'data_rows', 'display_name', 94, 'ru', 'Id', '2024-11-30 12:17:03', '2024-11-30 12:17:03'),
(93, 'data_rows', 'display_name', 95, 'ru', 'Blog Id', '2024-11-30 12:17:03', '2024-11-30 12:17:03'),
(94, 'data_rows', 'display_name', 96, 'ru', 'Title', '2024-11-30 12:17:03', '2024-11-30 12:17:03'),
(95, 'data_rows', 'display_name', 97, 'ru', 'Description', '2024-11-30 12:17:03', '2024-11-30 12:17:03'),
(96, 'data_rows', 'display_name', 98, 'ru', 'Blog Info', '2024-11-30 12:17:03', '2024-11-30 12:17:03'),
(97, 'data_rows', 'display_name', 99, 'ru', 'Images', '2024-11-30 12:17:03', '2024-11-30 12:17:03'),
(98, 'data_rows', 'display_name', 100, 'ru', 'Created At', '2024-11-30 12:17:03', '2024-11-30 12:17:03'),
(99, 'data_rows', 'display_name', 101, 'ru', 'Updated At', '2024-11-30 12:17:03', '2024-11-30 12:17:03'),
(100, 'data_rows', 'display_name', 102, 'ru', 'blogs', '2024-11-30 12:17:03', '2024-11-30 12:17:03'),
(101, 'data_types', 'display_name_singular', 12, 'ru', 'Blog Item', '2024-11-30 12:17:03', '2024-11-30 12:17:03'),
(102, 'data_types', 'display_name_plural', 12, 'ru', 'Blog Items', '2024-11-30 12:17:03', '2024-11-30 12:17:03'),
(103, 'data_rows', 'display_name', 103, 'ru', 'Id', '2024-11-30 12:38:10', '2024-11-30 12:38:10'),
(104, 'data_rows', 'display_name', 104, 'ru', 'Blog Item Id', '2024-11-30 12:38:10', '2024-11-30 12:38:10'),
(105, 'data_rows', 'display_name', 105, 'ru', 'Service Item Id', '2024-11-30 12:38:10', '2024-11-30 12:38:10'),
(106, 'data_rows', 'display_name', 106, 'ru', 'Title', '2024-11-30 12:38:10', '2024-11-30 12:38:10'),
(107, 'data_rows', 'display_name', 107, 'ru', 'Description', '2024-11-30 12:38:10', '2024-11-30 12:38:10'),
(108, 'data_rows', 'display_name', 108, 'ru', 'Image', '2024-11-30 12:38:10', '2024-11-30 12:38:10'),
(109, 'data_rows', 'display_name', 109, 'ru', 'Created At', '2024-11-30 12:38:10', '2024-11-30 12:38:10'),
(110, 'data_rows', 'display_name', 110, 'ru', 'Updated At', '2024-11-30 12:38:10', '2024-11-30 12:38:10'),
(111, 'data_rows', 'display_name', 111, 'ru', 'blog_items', '2024-11-30 12:38:10', '2024-11-30 12:38:10'),
(112, 'data_rows', 'display_name', 112, 'ru', 'service_items', '2024-11-30 12:38:10', '2024-11-30 12:38:10'),
(113, 'data_types', 'display_name_singular', 13, 'ru', 'Blog Item Service Item', '2024-11-30 12:38:10', '2024-11-30 12:38:10'),
(114, 'data_types', 'display_name_plural', 13, 'ru', 'Blog Item Service Items', '2024-11-30 12:38:10', '2024-11-30 12:38:10'),
(115, 'data_rows', 'display_name', 113, 'ru', 'blog_items', '2024-11-30 12:41:46', '2024-11-30 12:41:46'),
(116, 'data_rows', 'display_name', 114, 'ru', 'service_items', '2024-11-30 12:42:27', '2024-11-30 12:42:27'),
(117, 'blog_items', 'title', 1, 'ru', 'У вас есть отличная бизнес-идея?', '2024-11-30 12:43:10', '2024-11-30 12:43:10'),
(118, 'blog_items', 'description', 1, 'ru', 'Создание рекламы в Google Ads (ранее известной как Google AdWords) включает несколько ключевых шагов. Вот подробное руководство, чтобы помочь вам создать рекламу', '2024-11-30 12:43:10', '2024-11-30 13:35:14'),
(119, 'blog_items', 'blog_info', 1, 'ru', '<p><strong>Как создать рекламу в Google Ads?</strong></p>\n<p>Создание рекламы в Google Ads (ранее известной как Google AdWords) включает несколько ключевых шагов. Вот подробное руководство, чтобы помочь вам создать рекламу:</p>\n<p><strong>Пошаговое руководство по созданию рекламы в Google Ads</strong></p>\n<p><strong>Войдите в Google Ads:</strong></p>\n<p>Перейдите в Google Ads и войдите, используя учетные данные своей учетной записи Google. Если у вас нет учетной записи, вам нужно будет создать одну.</p>\n<p><strong>Создайте новую кампанию:</strong></p>\n<p>После входа нажмите на кнопку &ldquo;+ Новая кампания&rdquo;. Выберите цель кампании в зависимости от того, чего вы хотите достичь (например, продажи, заявки, трафик на сайте и т. д.). Выберите тип кампании. Например, если вы хотите, чтобы ваше объявление появлялось в результатах поиска, выберите &ldquo;Поиск&rdquo;; для баннерных объявлений выберите &ldquo;Контекстно-медийная сеть&rdquo;.</p>\n<p><strong>Настройте параметры кампании:</strong></p>\n<p>Назовите свою кампанию для удобства идентификации. Выберите сети (например, Сеть поиска, Контекстно-медийная сеть или обе). Если вы хотите, чтобы ваши объявления отображались только в поисковой системе Google, снимите отметку с Контекстно-медийной сети. Установите бюджет (ежедневный или общий) и выберите стратегию ставок (например, ручной CPC, максимизация конверсий, целевая CPA). Выберите географические регионы и языки для вашей аудитории. Настройте расписание показов и другие параметры таргетинга, такие как демография.</p>\n<p><strong>Создайте группы объявлений:</strong></p>\n<p>Группа объявлений &mdash; это подкатегория в вашей кампании, которая позволяет организовать объявления по разным темам или ключевым словам. Назовите группу объявлений и добавьте релевантные ключевые слова для этой группы. Используйте Планировщик ключевых слов Google для поиска терминов, которые подходят для вашего бизнеса.</p>\n<p><strong>Создайте объявления:</strong></p>\n<p><strong>Текстовые объявления:</strong> Включите следующие элементы: Заголовки (до 3, по 30 символов каждый) Описание (до 2, по 90 символов каждое) Финальный URL (страница назначения для объявления) <strong>Адаптивные текстовые объявления:</strong> Добавьте несколько заголовков и описаний; Google автоматически протестирует комбинации, чтобы найти наиболее эффективный вариант. <strong>Баннерные объявления:</strong> Вы можете создать визуально привлекательные объявления, загружая изображения или видеоматериалы. Убедитесь, что объявление соответствует требованиям Google по размеру и формату.</p>\n<p><strong>Добавьте расширения объявлений:</strong></p>\n<p>Расширения объявлений добавляют дополнительную информацию к вашему объявлению и могут увеличить CTR (коэффициент кликабельности). Примеры включают: <strong>Расширения ссылок на сайт:</strong> Ссылка на конкретные страницы вашего сайта. <strong>Расширения дополнительного текста:</strong> Добавьте дополнительный текст (например, &laquo;Бесплатная доставка&raquo; или &laquo;Поддержка 24/7&raquo;). <strong>Расширения звонка:</strong> Включите номер телефона. <strong>Расширения структурированных фрагментов:</strong> Подчеркните определенные аспекты вашего бизнеса.</p>\n<p><strong>Проверьте ваше объявление:</strong></p>\n<p>Проверьте все тексты объявления, ключевые слова и настройки. Убедитесь, что ваше объявление соответствует политике Google Ads. Используйте инструмент &ldquo;Предварительный просмотр и диагностика объявления&rdquo;, чтобы увидеть, как будет выглядеть ваше объявление, и проверить, соответствует ли оно требованиям для запуска.</p>\n<p><strong>Настройте платежные данные:</strong></p>\n<p>Перед запуском убедитесь, что ваши платежные и расчетные данные актуальны. Введите свои платежные данные и выберите предпочтительный способ оплаты.</p>\n<p><strong>Запустите кампанию:</strong></p>\n<p>Нажмите &ldquo;Сохранить и продолжить&rdquo;, чтобы еще раз проверить все и запустить кампанию.</p>\n<p><strong>Мониторинг и оптимизация:</strong></p>\n<p>После запуска кампании следите за ее результатами через панель управления Google Ads. Корректируйте ставки, тексты объявлений и ключевые слова на основе таких показателей, как CTR, конверсии и показатель качества, чтобы оптимизировать объявления для лучших результатов.</p>\n<p><strong>Советы для успеха:</strong></p>\n<ul>\n<li><strong>Используйте призыв к действию:</strong> Сделайте текст объявления привлекательным с ясным призывом к действию, например, &laquo;Начните сейчас&raquo; или &laquo;Узнать больше&raquo;.</li>\n<li><strong>Включайте ключевые слова:</strong> Используйте релевантные ключевые слова в тексте объявления, чтобы повысить его релевантность и показатель качества.</li>\n<li><strong>Оптимизируйте целевые страницы:</strong> Убедитесь, что целевая страница соответствует вашему объявлению и обеспечивает удобный пользовательский опыт.</li>\n<li><strong>Расширения объявления:</strong> Используйте как можно больше релевантных расширений, чтобы выделиться на фоне конкурентов.</li>\n</ul>', '2024-11-30 12:43:10', '2024-11-30 12:43:10'),
(120, 'blog_items', 'title', 2, 'ru', 'Что такое цифровой маркетинг и почему он важен?', '2024-11-30 13:13:54', '2024-11-30 13:13:54'),
(121, 'blog_items', 'description', 2, 'ru', 'Цифровой маркетинг — это использование цифровых каналов, платформ и технологий для продвижения продуктов, услуг или брендов. Он охватывает широкий спектр деятельности, направленной на привлечение и вовлечение потребителей в сети. В эту деятельность входят:', '2024-11-30 13:13:54', '2024-11-30 13:30:56'),
(122, 'blog_items', 'blog_info', 2, 'ru', '<p><strong>Что такое цифровой маркетинг и почему он важен?</strong></p>\n<p><strong>Цифровой маркетинг</strong> &mdash; это использование цифровых каналов, платформ и технологий для продвижения продуктов, услуг или брендов. Он охватывает широкий спектр деятельности, направленной на привлечение и вовлечение потребителей в сети. В эту деятельность входят:</p>\n<p><strong>Поисковая оптимизация (SEO)</strong>: Оптимизация контента для повышения позиций в результатах поисковых систем и привлечения органического трафика.<br><strong>Маркетинг в социальных сетях</strong>: Использование платформ, таких как Facebook, Instagram, Twitter и LinkedIn, для взаимодействия с аудиторией и продвижения продуктов.<br><strong>Email-маркетинг</strong>: Отправка целевых, персонализированных сообщений клиентам для построения отношений и стимулирования повторных покупок.<br><strong>Контент-маркетинг</strong>: Создание ценного контента, такого как блоги, видео и инфографика, для привлечения и удержания клиентов.<br><strong>Реклама с оплатой за клик (PPC)</strong>: Проведение платных рекламных кампаний в поисковых системах или социальных сетях для привлечения трафика на сайты.<br><strong>Партнёрский маркетинг</strong>: Сотрудничество с другими компаниями или влиятельными личностями для продвижения продуктов и получения комиссии с продаж.<br><strong>Маркетинг с помощью инфлюенсеров</strong>: Сотрудничество с людьми, имеющими значительное количество подписчиков в социальных сетях, для продвижения продуктов среди их аудитории.<br><strong>Онлайн-публичные отношения (PR)</strong>: Управление онлайн-присутствием и репутацией бренда с помощью новостных статей, публикаций в блогах и взаимодействия с онлайн-сообществом.</p>\n<p><strong>Почему цифровой маркетинг важен?</strong></p>\n<p><strong>Широкий охват</strong>: Цифровой маркетинг позволяет компаниям достигать глобальной аудитории за небольшую часть стоимости традиционных маркетинговых методов.<br><strong>Экономичность</strong>: Цифровые кампании можно масштабировать в зависимости от бюджета и часто они обеспечивают более высокий возврат на инвестиции (ROI) по сравнению с традиционными методами.<br><strong>Целенаправленный маркетинг</strong>: Цифровые инструменты позволяют компаниям таргетировать определённые демографические группы на основе интересов, поведения, местоположения и других факторов, что делает маркетинг более эффективным.<br><strong>Измеримость результатов</strong>: Цифровой маркетинг предоставляет детальную аналитику, которая позволяет маркетологам отслеживать эффективность, понимать поведение аудитории и корректировать стратегии в реальном времени.<br><strong>Увеличенное вовлечение</strong>: Платформы, такие как социальные сети, предоставляют возможность для бизнеса взаимодействовать с клиентами напрямую, строить отношения и получать мгновенную обратную связь.<br><strong>Адаптивность</strong>: Цифровые кампании можно быстро корректировать в зависимости от эффективности, трендов или новых возможностей.<br><strong>Персонализация</strong>: Данные, полученные из аналитики, позволяют создавать персонализированный маркетинг, который учитывает уникальные предпочтения разных сегментов аудитории.</p>\n<p>В современном цифровом мире, где потребители проводят значительное количество времени в интернете, цифровой маркетинг необходим для бизнеса любого размера. Он позволяет брендам оставаться конкурентоспособными, строить прочные отношения с аудиторией и достигать бизнес-целей с помощью целенаправленных, основанных на данных кампаний.</p>', '2024-11-30 13:13:54', '2024-11-30 13:13:54'),
(123, 'data_rows', 'display_name', 115, 'ru', 'Id', '2024-11-30 15:08:19', '2024-11-30 15:08:19'),
(124, 'data_rows', 'display_name', 116, 'ru', 'Web Menu Id', '2024-11-30 15:08:19', '2024-11-30 15:08:19'),
(125, 'data_rows', 'display_name', 117, 'ru', 'Title', '2024-11-30 15:08:19', '2024-11-30 15:08:19'),
(126, 'data_rows', 'display_name', 118, 'ru', 'Subtitle', '2024-11-30 15:08:19', '2024-11-30 15:08:19'),
(127, 'data_rows', 'display_name', 119, 'ru', 'Description', '2024-11-30 15:08:19', '2024-11-30 15:08:19'),
(128, 'data_rows', 'display_name', 120, 'ru', 'Created At', '2024-11-30 15:08:19', '2024-11-30 15:08:19'),
(129, 'data_rows', 'display_name', 121, 'ru', 'Updated At', '2024-11-30 15:08:19', '2024-11-30 15:08:19'),
(130, 'data_rows', 'display_name', 122, 'ru', 'web_menus', '2024-11-30 15:08:19', '2024-11-30 15:08:19'),
(131, 'data_types', 'display_name_singular', 14, 'ru', 'Team', '2024-11-30 15:08:19', '2024-11-30 15:08:19'),
(132, 'data_types', 'display_name_plural', 14, 'ru', 'Teams', '2024-11-30 15:08:19', '2024-11-30 15:08:19'),
(133, 'menu_items', 'title', 24, 'ru', 'Команда', '2024-11-30 15:08:58', '2024-11-30 15:08:58'),
(134, 'data_rows', 'display_name', 123, 'ru', 'Id', '2024-11-30 15:13:23', '2024-11-30 15:13:23'),
(135, 'data_rows', 'display_name', 124, 'ru', 'Team Id', '2024-11-30 15:13:23', '2024-11-30 15:13:23'),
(136, 'data_rows', 'display_name', 125, 'ru', 'Name', '2024-11-30 15:13:23', '2024-11-30 15:13:23'),
(137, 'data_rows', 'display_name', 126, 'ru', 'Position', '2024-11-30 15:13:23', '2024-11-30 15:13:23'),
(138, 'data_rows', 'display_name', 127, 'ru', 'Photo', '2024-11-30 15:13:24', '2024-11-30 15:13:24'),
(139, 'data_rows', 'display_name', 128, 'ru', 'Surname', '2024-11-30 15:13:24', '2024-11-30 15:13:24'),
(140, 'data_rows', 'display_name', 129, 'ru', 'Created At', '2024-11-30 15:13:24', '2024-11-30 15:13:24'),
(141, 'data_rows', 'display_name', 130, 'ru', 'Updated At', '2024-11-30 15:13:24', '2024-11-30 15:13:24'),
(142, 'data_rows', 'display_name', 131, 'ru', 'teams', '2024-11-30 15:13:24', '2024-11-30 15:13:24'),
(143, 'data_types', 'display_name_singular', 15, 'ru', 'Team Member', '2024-11-30 15:13:24', '2024-11-30 15:13:24'),
(144, 'data_types', 'display_name_plural', 15, 'ru', 'Team Members', '2024-11-30 15:13:24', '2024-11-30 15:13:24'),
(145, 'teams', 'title', 1, 'ru', 'Познакомьтесь с гениями', '2024-11-30 15:19:24', '2024-11-30 15:19:24'),
(146, 'teams', 'subtitle', 1, 'ru', 'Наша команда ', '2024-11-30 15:19:24', '2024-11-30 15:19:24'),
(147, 'teams', 'description', 1, 'ru', 'Создавайте адаптивные проекты с учетом мобильных устройств с помощью самой популярной в мире библиотеки компонентов для фронтенда.', '2024-11-30 15:19:24', '2024-11-30 15:19:24'),
(148, 'team_members', 'position', 1, 'ru', 'CIO Компания', '2024-11-30 15:20:49', '2024-11-30 17:28:06'),
(149, 'team_members', 'position', 2, 'ru', 'CEO Компания', '2024-11-30 15:22:44', '2024-11-30 17:27:57'),
(150, 'menu_items', 'title', 27, 'ru', 'Контакты', '2024-11-30 15:46:53', '2024-11-30 15:51:42'),
(151, 'data_rows', 'display_name', 64, 'ru', 'Id', '2024-11-30 16:27:28', '2024-11-30 16:27:28'),
(152, 'data_rows', 'display_name', 65, 'ru', 'Title', '2024-11-30 16:27:28', '2024-11-30 16:27:28'),
(153, 'data_rows', 'display_name', 66, 'ru', 'Description', '2024-11-30 16:27:28', '2024-11-30 16:27:28'),
(154, 'data_rows', 'display_name', 67, 'ru', 'Web Menu Id', '2024-11-30 16:27:28', '2024-11-30 16:27:28'),
(155, 'data_rows', 'display_name', 68, 'ru', 'Created At', '2024-11-30 16:27:28', '2024-11-30 16:27:28'),
(156, 'data_rows', 'display_name', 69, 'ru', 'Updated At', '2024-11-30 16:27:28', '2024-11-30 16:27:28'),
(157, 'data_rows', 'display_name', 139, 'ru', 'web_menus', '2024-11-30 16:27:28', '2024-11-30 16:27:28'),
(158, 'data_types', 'display_name_singular', 8, 'ru', 'Contact', '2024-11-30 16:27:28', '2024-11-30 16:27:28'),
(159, 'data_types', 'display_name_plural', 8, 'ru', 'Contacts', '2024-11-30 16:27:28', '2024-11-30 16:27:28'),
(160, 'contacts', 'title', 1, 'ru', 'Свяжитесь с нами', '2024-11-30 16:31:41', '2024-11-30 16:31:41'),
(161, 'contacts', 'description', 1, 'ru', 'Создавайте адаптивные проекты с приоритетом мобильных устройств с помощью самой популярной библиотеки компонентов для фронтенда.', '2024-11-30 16:31:41', '2024-11-30 16:31:41'),
(162, 'contacts', 'subtitle', 1, 'ru', 'Свяжитесь с нами', '2024-11-30 16:31:41', '2024-11-30 16:31:41'),
(163, 'data_rows', 'display_name', 141, 'ru', 'Id', '2024-11-30 16:33:14', '2024-11-30 16:33:14'),
(164, 'data_rows', 'display_name', 142, 'ru', 'Parent Id', '2024-11-30 16:33:14', '2024-11-30 16:33:14'),
(165, 'data_rows', 'display_name', 143, 'ru', 'Type', '2024-11-30 16:33:14', '2024-11-30 16:33:14'),
(166, 'data_rows', 'display_name', 144, 'ru', 'Info', '2024-11-30 16:33:14', '2024-11-30 16:33:14'),
(167, 'data_rows', 'display_name', 145, 'ru', 'Icon', '2024-11-30 16:33:14', '2024-11-30 16:33:14'),
(168, 'data_rows', 'display_name', 146, 'ru', 'Url', '2024-11-30 16:33:14', '2024-11-30 16:33:14'),
(169, 'data_rows', 'display_name', 147, 'ru', 'Created At', '2024-11-30 16:33:14', '2024-11-30 16:33:14'),
(170, 'data_rows', 'display_name', 148, 'ru', 'Updated At', '2024-11-30 16:33:14', '2024-11-30 16:33:14'),
(171, 'data_rows', 'display_name', 149, 'ru', 'contact_infos', '2024-11-30 16:33:14', '2024-11-30 16:33:14'),
(172, 'data_types', 'display_name_singular', 17, 'ru', 'Contact Info', '2024-11-30 16:33:14', '2024-11-30 16:33:14'),
(173, 'data_types', 'display_name_plural', 17, 'ru', 'Contact Infos', '2024-11-30 16:33:14', '2024-11-30 16:33:14'),
(174, 'contact_infos', 'type', 1, 'ru', 'Наше адрес', '2024-11-30 16:36:28', '2024-11-30 17:14:02'),
(175, 'contact_infos', 'type', 2, 'ru', 'Телефон', '2024-11-30 16:39:20', '2024-11-30 16:39:20'),
(176, 'contact_infos', 'type', 3, 'ru', 'Электронная почта', '2024-11-30 16:40:22', '2024-11-30 16:40:22'),
(178, 'contact_infos', 'type', 5, 'ru', 'Информация о наших социальных сетях', '2024-11-30 17:06:27', '2024-12-15 16:27:40'),
(179, 'data_rows', 'display_name', 150, 'ru', 'Id', '2024-12-15 08:10:48', '2024-12-15 08:10:48'),
(180, 'data_rows', 'display_name', 151, 'ru', 'Web Menu Id', '2024-12-15 08:10:48', '2024-12-15 08:10:48'),
(181, 'data_rows', 'display_name', 152, 'ru', 'Title', '2024-12-15 08:10:48', '2024-12-15 08:10:48'),
(182, 'data_rows', 'display_name', 153, 'ru', 'Subtitle', '2024-12-15 08:10:48', '2024-12-15 08:10:48'),
(183, 'data_rows', 'display_name', 154, 'ru', 'Description', '2024-12-15 08:10:48', '2024-12-15 08:10:48'),
(184, 'data_rows', 'display_name', 155, 'ru', 'Created At', '2024-12-15 08:10:48', '2024-12-15 08:10:48'),
(185, 'data_rows', 'display_name', 156, 'ru', 'Updated At', '2024-12-15 08:10:48', '2024-12-15 08:10:48'),
(186, 'data_rows', 'display_name', 157, 'ru', 'web_menus', '2024-12-15 08:10:48', '2024-12-15 08:10:48'),
(187, 'data_types', 'display_name_singular', 18, 'ru', 'About U', '2024-12-15 08:10:48', '2024-12-15 08:10:48'),
(188, 'data_types', 'display_name_plural', 18, 'ru', 'About Us', '2024-12-15 08:10:48', '2024-12-15 08:10:48'),
(189, 'menu_items', 'title', 30, 'ru', 'О Нас', '2024-12-15 08:11:32', '2024-12-15 08:12:41'),
(190, 'data_rows', 'display_name', 158, 'ru', 'Id', '2024-12-15 08:16:04', '2024-12-15 08:16:04'),
(191, 'data_rows', 'display_name', 159, 'ru', 'About Us Id', '2024-12-15 08:16:04', '2024-12-15 08:16:04'),
(192, 'data_rows', 'display_name', 160, 'ru', 'Title', '2024-12-15 08:16:04', '2024-12-15 08:16:04'),
(193, 'data_rows', 'display_name', 161, 'ru', 'Subtitle', '2024-12-15 08:16:04', '2024-12-15 08:16:04'),
(194, 'data_rows', 'display_name', 162, 'ru', 'Image', '2024-12-15 08:16:04', '2024-12-15 08:16:04'),
(195, 'data_rows', 'display_name', 163, 'ru', 'Info', '2024-12-15 08:16:04', '2024-12-15 08:16:04'),
(196, 'data_rows', 'display_name', 164, 'ru', 'Created At', '2024-12-15 08:16:04', '2024-12-15 08:16:04'),
(197, 'data_rows', 'display_name', 165, 'ru', 'Updated At', '2024-12-15 08:16:04', '2024-12-15 08:16:04'),
(198, 'data_rows', 'display_name', 166, 'ru', 'about_us', '2024-12-15 08:16:04', '2024-12-15 08:16:04'),
(199, 'data_types', 'display_name_singular', 19, 'ru', 'About Us Item', '2024-12-15 08:16:04', '2024-12-15 08:16:04'),
(200, 'data_types', 'display_name_plural', 19, 'ru', 'About Us Items', '2024-12-15 08:16:04', '2024-12-15 08:16:04'),
(201, 'data_rows', 'display_name', 167, 'ru', 'Id', '2024-12-15 08:19:38', '2024-12-15 08:19:38'),
(202, 'data_rows', 'display_name', 168, 'ru', 'About Us Item Id', '2024-12-15 08:19:38', '2024-12-15 08:19:38'),
(203, 'data_rows', 'display_name', 169, 'ru', 'Title', '2024-12-15 08:19:38', '2024-12-15 08:19:38'),
(204, 'data_rows', 'display_name', 170, 'ru', 'Icon', '2024-12-15 08:19:38', '2024-12-15 08:19:38'),
(205, 'data_rows', 'display_name', 171, 'ru', 'Info', '2024-12-15 08:19:38', '2024-12-15 08:19:38'),
(206, 'data_rows', 'display_name', 172, 'ru', 'Created At', '2024-12-15 08:19:38', '2024-12-15 08:19:38'),
(207, 'data_rows', 'display_name', 173, 'ru', 'Updated At', '2024-12-15 08:19:38', '2024-12-15 08:19:38'),
(208, 'data_rows', 'display_name', 174, 'ru', 'about_us_items', '2024-12-15 08:19:38', '2024-12-15 08:19:38'),
(209, 'data_types', 'display_name_singular', 20, 'ru', 'About Us Item Children', '2024-12-15 08:19:38', '2024-12-15 08:19:38'),
(210, 'data_types', 'display_name_plural', 20, 'ru', 'About Us Item Childrens', '2024-12-15 08:19:38', '2024-12-15 08:19:38'),
(211, 'menu_items', 'title', 32, 'ru', 'About Us Item Childrens', '2024-12-15 08:20:20', '2024-12-15 08:20:20'),
(212, 'about_us', 'title', 1, 'ru', 'Мы предоставляем идеальные IT-решения и технологии для любых стартапов.', '2024-12-15 08:25:49', '2024-12-15 08:25:49'),
(213, 'about_us', 'subtitle', 1, 'ru', 'Почему выбирают нас', '2024-12-15 08:25:49', '2024-12-15 08:25:49'),
(214, 'about_us', 'description', 1, 'ru', 'Начните работу с WellSoft. Создавайте адаптивные, мобильные проекты в Интернете с самой популярной библиотекой компонентов для фронтенда в мире.', '2024-12-15 08:25:49', '2024-12-15 08:25:49'),
(215, 'about_us_items', 'title', 1, 'ru', 'a', '2024-12-15 08:32:25', '2024-12-15 08:32:25'),
(216, 'about_us_items', 'subtitle', 1, 'ru', 'a', '2024-12-15 08:32:25', '2024-12-15 08:32:25'),
(217, 'about_us_items', 'info', 1, 'ru', '<p>a</p>', '2024-12-15 08:32:25', '2024-12-15 08:32:25'),
(218, 'about_us_item_childrens', 'title', 1, 'ru', 'Высокая безопасность', '2024-12-15 08:35:05', '2024-12-15 08:35:05'),
(219, 'about_us_item_childrens', 'info', 1, 'ru', '<p>WellSoft&mdash; это HTML5 шаблон на основе Sass и Bootstrap 5 с современным и креативным дизайном.</p>', '2024-12-15 08:35:05', '2024-12-15 08:35:05'),
(220, 'about_us_item_childrens', 'title', 2, 'ru', 'Квалифицированная команда', '2024-12-15 08:37:10', '2024-12-15 08:37:10'),
(221, 'about_us_item_childrens', 'info', 2, 'ru', '<p>WellSoft&nbsp; &mdash; это HTML5 шаблон на основе Sass и Bootstrap 5 с современным и креативным дизайном.</p>', '2024-12-15 08:37:10', '2024-12-15 08:37:10'),
(222, 'about_us_item_childrens', 'title', 3, 'ru', 'Доступная цена', '2024-12-15 08:39:13', '2024-12-15 08:39:13'),
(223, 'about_us_item_childrens', 'info', 3, 'ru', '<p>WellSoft &mdash; это HTML5 шаблон на основе Sass и Bootstrap 5 с современным и креативным дизайном.</p>', '2024-12-15 08:39:13', '2024-12-15 08:39:13'),
(224, 'about_us_item_childrens', 'title', 4, 'ru', 'Поддержка 24/7', '2024-12-15 08:40:58', '2024-12-15 08:40:58'),
(225, 'about_us_item_childrens', 'info', 4, 'ru', '<p>WellSoft &mdash; это HTML5 шаблон на основе Sass и Bootstrap 5 с современным и креативным дизайном.</p>', '2024-12-15 08:40:58', '2024-12-15 08:40:58'),
(226, 'data_rows', 'display_name', 175, 'ru', 'Id', '2024-12-15 09:43:55', '2024-12-15 09:43:55'),
(227, 'data_rows', 'display_name', 176, 'ru', 'Web Menu Id', '2024-12-15 09:43:55', '2024-12-15 09:43:55'),
(228, 'data_rows', 'display_name', 177, 'ru', 'Title', '2024-12-15 09:43:55', '2024-12-15 09:43:55'),
(229, 'data_rows', 'display_name', 178, 'ru', 'Subtitle', '2024-12-15 09:43:55', '2024-12-15 09:43:55'),
(230, 'data_rows', 'display_name', 179, 'ru', 'Description', '2024-12-15 09:43:55', '2024-12-15 09:43:55'),
(231, 'data_rows', 'display_name', 180, 'ru', 'Created At', '2024-12-15 09:43:55', '2024-12-15 09:43:55'),
(232, 'data_rows', 'display_name', 181, 'ru', 'Updated At', '2024-12-15 09:43:55', '2024-12-15 09:43:55'),
(233, 'data_rows', 'display_name', 182, 'ru', 'web_menus', '2024-12-15 09:43:55', '2024-12-15 09:43:55'),
(234, 'data_types', 'display_name_singular', 21, 'ru', 'Portfolio', '2024-12-15 09:43:55', '2024-12-15 09:43:55'),
(235, 'data_types', 'display_name_plural', 21, 'ru', 'Portfolios', '2024-12-15 09:43:55', '2024-12-15 09:43:55'),
(236, 'menu_items', 'title', 34, 'ru', 'Портфолио', '2024-12-15 09:44:33', '2024-12-15 09:44:33'),
(237, 'data_rows', 'display_name', 183, 'ru', 'Id', '2024-12-15 10:03:23', '2024-12-15 10:03:23'),
(238, 'data_rows', 'display_name', 184, 'ru', 'Portfolio Id', '2024-12-15 10:03:23', '2024-12-15 10:03:23'),
(239, 'data_rows', 'display_name', 185, 'ru', 'Parent Id', '2024-12-15 10:03:23', '2024-12-15 10:03:23'),
(240, 'data_rows', 'display_name', 186, 'ru', 'Name', '2024-12-15 10:03:23', '2024-12-15 10:03:23'),
(241, 'data_rows', 'display_name', 187, 'ru', 'Url', '2024-12-15 10:03:23', '2024-12-15 10:03:23'),
(242, 'data_rows', 'display_name', 188, 'ru', 'Type', '2024-12-15 10:03:23', '2024-12-15 10:03:23'),
(243, 'data_rows', 'display_name', 189, 'ru', 'Photo', '2024-12-15 10:03:23', '2024-12-15 10:03:23'),
(244, 'data_rows', 'display_name', 190, 'ru', 'Description', '2024-12-15 10:03:23', '2024-12-15 10:03:23'),
(245, 'data_rows', 'display_name', 191, 'ru', 'Created At', '2024-12-15 10:03:23', '2024-12-15 10:03:23'),
(246, 'data_rows', 'display_name', 192, 'ru', 'Updated At', '2024-12-15 10:03:23', '2024-12-15 10:03:23'),
(247, 'data_rows', 'display_name', 193, 'ru', 'portfolios', '2024-12-15 10:03:23', '2024-12-15 10:03:23'),
(248, 'data_rows', 'display_name', 194, 'ru', 'portfolio_items', '2024-12-15 10:03:23', '2024-12-15 10:03:23'),
(249, 'data_types', 'display_name_singular', 22, 'ru', 'Portfolio Item', '2024-12-15 10:03:23', '2024-12-15 10:03:23'),
(250, 'data_types', 'display_name_plural', 22, 'ru', 'Portfolio Items', '2024-12-15 10:03:23', '2024-12-15 10:03:23'),
(251, 'portfolios', 'title', 1, 'ru', 'Работа и проекты', '2024-12-15 10:07:35', '2024-12-15 10:07:35'),
(252, 'portfolios', 'subtitle', 1, 'ru', 'Наше портфолио', '2024-12-15 10:07:35', '2024-12-15 10:07:35'),
(253, 'portfolios', 'description', 1, 'ru', 'WellSoft — это HTML5 шаблон на основе Sass и Bootstrap 5 с современным и креативным дизайном.', '2024-12-15 10:07:35', '2024-12-15 10:07:35'),
(254, 'portfolio_items', 'name', 1, 'ru', 'Создание сильной идентичности бренда для долгосрочного успеха', '2024-12-15 10:16:58', '2024-12-15 10:16:58'),
(255, 'portfolio_items', 'type', 1, 'ru', 'Брендинг', '2024-12-15 10:16:58', '2024-12-15 10:16:58'),
(256, 'portfolio_items', 'description', 1, 'ru', 'Сильная идентичность бренда выделяет ваш бизнес среди конкурентов. Она создает незабываемое впечатление в сознании клиентов, гарантируя, что они будут узнавать и доверять вашим продуктам или услугам. Сосредоточив внимание на последовательных сообщениях, визуальных элементах и опыте клиентов, ваш бренд становится не просто логотипом – он становится обещанием.', '2024-12-15 10:16:58', '2024-12-15 10:16:58'),
(257, 'portfolio_items', 'name', 2, 'ru', 'Сила последовательности в сообщениях и дизайне бренда', '2024-12-15 10:20:33', '2024-12-15 10:20:33'),
(258, 'portfolio_items', 'description', 2, 'ru', 'Последовательность – ключ к созданию надежного имиджа бренда. Когда ваши сообщения и дизайн согласованы на всех платформах, ваша аудитория может мгновенно распознать и связаться с вашим брендом. Будь то ваш логотип, цвета или тон общения, поддержание последовательности укрепляет доверие и способствует долгосрочной лояльности клиентов.', '2024-12-15 10:20:33', '2024-12-15 10:20:33'),
(259, 'portfolio_items', 'name', 3, 'ru', 'Создание эмоциональных связей через рассказ о бренде', '2024-12-15 10:26:03', '2024-12-15 10:26:03'),
(260, 'portfolio_items', 'description', 3, 'ru', 'Эффективный брендинг выходит за рамки продуктов и услуг; он рассказывает историю. Поделившись историей вашего бренда, его ценностями и миссией, вы создаете эмоциональную связь с вашей аудиторией. Эта связь помогает создать сообщество вокруг вашего бренда, стимулируя вовлеченность и лояльность клиентов через общие переживания и убеждения.', '2024-12-15 10:26:03', '2024-12-15 10:26:03'),
(261, 'portfolio_items', 'name', 4, 'ru', 'Использование социальных сетей для повышения осведомленности о бренде и роста', '2024-12-15 10:27:36', '2024-12-15 10:27:36'),
(262, 'portfolio_items', 'description', 4, 'ru', 'Платформы социальных сетей являются мощными инструментами для увеличения видимости бренда. Стратегически взаимодействуя с вашей аудиторией, делясь ценным контентом и используя таргетированную рекламу, ваш бренд может достичь более широкой аудитории. Последовательное взаимодействие и подлинная коммуникация способствуют формированию лояльной аудитории и стимулируют рост бизнеса через повышение осведомленности о бренде.', '2024-12-15 10:27:36', '2024-12-15 10:27:36'),
(263, 'portfolio_items', 'name', 5, 'ru', 'Создание ориентированных на пользователя дизайнов для бесшовных цифровых опытов', '2024-12-15 10:30:37', '2024-12-15 10:30:37'),
(264, 'portfolio_items', 'type', 5, 'ru', 'Дизайн', '2024-12-15 10:30:37', '2024-12-15 10:30:37'),
(265, 'portfolio_items', 'description', 5, 'ru', 'Ориентированный на пользователя дизайн фокусируется на потребностях и предпочтениях вашей аудитории. Понимание поведения пользователей и их отзывов позволяет создавать интуитивно понятные интерфейсы, которые улучшают общий пользовательский опыт. Хорошо спроектированный интерфейс способствует вовлеченности, снижает трение и гарантирует, что пользователи могут легко взаимодействовать с вашим цифровым продуктом.', '2024-12-15 10:30:37', '2024-12-15 10:30:37'),
(266, 'portfolio_items', 'name', 6, 'ru', 'Искусство минимализма: меньше — значит больше в дизайне', '2024-12-15 10:31:22', '2024-12-15 10:31:22'),
(267, 'portfolio_items', 'description', 6, 'ru', 'Минималистичный дизайн акцентирует внимание на простоте и ясности, удаляя ненужные элементы, чтобы сосредоточиться на том, что действительно важно. Используя чистые линии, просторное белое пространство и сдержанные цветовые схемы, минималистичные дизайны позволяют пользователям легко ориентироваться и взаимодействовать с контентом. Этот подход улучшает функциональность, создавая при этом визуально привлекательный и элегантный опыт.', '2024-12-15 10:31:22', '2024-12-15 10:31:22'),
(268, 'portfolio_items', 'name', 7, 'ru', 'Дизайн для доступности: создание инклюзивных цифровых пространств', '2024-12-15 10:32:26', '2024-12-15 10:32:26'),
(269, 'portfolio_items', 'description', 7, 'ru', 'Доступный дизайн гарантирует, что все пользователи, независимо от их возможностей, могут взаимодействовать с вашим продуктом. Внедрение таких функций, как навигация с клавиатуры, совместимость с экранными читалками и высококонтрастные визуальные элементы, делает ваши цифровые пространства доступными для более широкой аудитории. Доступный дизайн не только расширяет вашу аудиторию, но и демонстрирует вашу приверженность равенству и социальной ответственности.', '2024-12-15 10:32:26', '2024-12-15 10:32:26'),
(270, 'portfolio_items', 'name', 8, 'ru', 'Адаптивный дизайн: подстраиваясь под каждое устройство и размер экрана', '2024-12-15 10:33:32', '2024-12-15 10:33:32'),
(271, 'portfolio_items', 'description', 8, 'ru', 'С учетом того, что пользователи обращаются к контенту с различных устройств, адаптивный дизайн становится необходимостью. Он обеспечивает оптимальное отображение и функциональность вашего сайта или приложения на любых устройствах, от смартфонов до настольных компьютеров. Использование гибких макетов, масштабируемых изображений и адаптивного контента гарантирует бесшовный опыт на всех устройствах.', '2024-12-15 10:33:32', '2024-12-15 10:33:32'),
(272, 'portfolio_items', 'type', 9, 'ru', 'Разработка', '2024-12-15 10:40:15', '2024-12-15 10:40:15'),
(273, 'portfolio_items', 'name', 9, 'ru', 'Оптимизация веб-разработки для скорости и производительности', '2024-12-15 10:41:01', '2024-12-15 10:41:01'),
(274, 'portfolio_items', 'description', 9, 'ru', 'Производительность веб-сайта критически важна для пользовательского опыта и SEO. Оптимизируя скорость загрузки вашего сайта с помощью эффективного кода, уменьшения размера изображений и использования кеширования, вы можете обеспечить более быстрое время загрузки. Это не только улучшает вовлеченность пользователей, но и повышает рейтинг вашего сайта в поисковых системах, что приводит к увеличению трафика и конверсий.', '2024-12-15 10:41:01', '2024-12-15 10:41:01'),
(275, 'portfolio_items', 'name', 10, 'ru', 'Создание масштабируемых и безопасных веб-приложений', '2024-12-15 10:41:48', '2024-12-15 10:41:48'),
(276, 'portfolio_items', 'description', 10, 'ru', 'Масштабируемость и безопасность являются ключевыми для разработки надежных веб-приложений. Используя современные фреймворки, внедряя безопасные методы аутентификации и проектируя гибкую архитектуру, ваше приложение может расти вместе с потребностями бизнеса, обеспечивая при этом защиту данных пользователей. Масштабируемое и безопасное приложение гарантирует надежность и защищает от потенциальных угроз.', '2024-12-15 10:41:48', '2024-12-15 10:41:48'),
(277, 'portfolio_items', 'name', 11, 'ru', 'Интеграция API для улучшения функциональности веб-проектов', '2024-12-15 10:42:32', '2024-12-15 10:42:32'),
(278, 'portfolio_items', 'description', 11, 'ru', 'API позволяют бесшовно интегрировать внешние сервисы и данные в ваши веб-проекты. Подключая сторонние инструменты и платформы, вы можете улучшить функциональность вашего приложения, не изобретая велосипед. Будь то платежные шлюзы, вход через социальные сети или анализ данных, интеграция API упрощает процессы и добавляет ценность вашему проекту.', '2024-12-15 10:42:32', '2024-12-15 10:42:32'),
(279, 'portfolio_items', 'name', 12, 'ru', 'Применение методологий Agile для более быстрых циклов разработки', '2024-12-15 10:43:25', '2024-12-15 10:43:25'),
(280, 'portfolio_items', 'description', 12, 'ru', 'Методологии Agile подчеркивают итеративную разработку, сотрудничество и гибкость. Разбивая проекты на более мелкие задачи и предоставляя инкрементальные обновления, вы можете более эффективно реагировать на изменения требований. Agile-разработка улучшает коммуникацию в команде, сокращает время выхода на рынок и позволяет непрерывно совершенствовать продукт на основе отзывов пользователей.', '2024-12-15 10:43:25', '2024-12-15 10:43:25'),
(281, 'portfolio_items', 'name', 13, 'ru', 'Преобразование бизнеса с помощью индивидуальных IT-решений для роста', '2024-12-15 10:47:31', '2024-12-15 10:47:31'),
(282, 'portfolio_items', 'type', 13, 'ru', 'ИТ-решения', '2024-12-15 10:47:31', '2024-12-15 10:47:31'),
(283, 'portfolio_items', 'description', 13, 'ru', 'Максимизация эффективности с помощью передовых решений для IT-инфраструктуры', '2024-12-15 10:47:31', '2024-12-15 10:47:31'),
(284, 'portfolio_items', 'name', 14, 'ru', 'Максимизация эффективности с помощью передовых IT-инфраструктурных решений', '2024-12-15 10:49:27', '2024-12-15 10:49:27'),
(285, 'portfolio_items', 'description', 14, 'ru', 'Надежная IT-инфраструктура является основой успешного бизнеса. Интегрируя новейшие технологии, компании могут оптимизировать операции, сократить время простоя и повысить общую эффективность. От масштабируемых облачных систем до защищенных сетей, современная IT-инфраструктура обеспечивает гибкость бизнеса и способность адаптироваться к изменяющимся требованиям.', '2024-12-15 10:49:27', '2024-12-15 10:49:27'),
(286, 'portfolio_items', 'name', 15, 'ru', 'Стремление к инновациям с помощью ИИ и автоматизации в IT-решениях', '2024-12-15 10:50:29', '2024-12-15 10:50:29'),
(287, 'portfolio_items', 'description', 15, 'ru', 'Искусственный интеллект и автоматизация трансформируют отрасли, стимулируя инновации. Внедрение IT-решений на базе ИИ позволяет компаниям автоматизировать повторяющиеся задачи, улучшать принятие решений и повышать качество обслуживания клиентов. Используя эти технологии, компании могут опережать конкурентов и создавать более эффективные, экономичные операции, что способствует улучшению общей производительности.', '2024-12-15 10:50:29', '2024-12-15 10:50:29'),
(288, 'portfolio_items', 'name', 16, 'ru', 'Оптимизация бизнес-операций с помощью облачных IT-решений', '2024-12-15 10:51:51', '2024-12-15 10:51:51'),
(289, 'portfolio_items', 'description', 16, 'ru', 'Облачные вычисления произвели революцию в том, как работают компании. Применяя облачные IT-решения, бизнес может сократить затраты, повысить масштабируемость и получить доступ к данным из любой точки мира. Облачные сервисы предлагают гибкость, безопасность и инструменты для совместной работы, которые позволяют компаниям оптимизировать рабочие процессы, повысить продуктивность и масштабироваться по мере роста потребностей.', '2024-12-15 10:51:51', '2024-12-15 10:51:51'),
(290, 'menu_items', 'title', 36, 'ru', 'Партнёры', '2024-12-15 12:21:51', '2024-12-15 12:21:51'),
(291, 'menu_items', 'title', 37, 'ru', 'Partners', '2024-12-15 12:23:34', '2024-12-15 12:23:34'),
(292, 'data_rows', 'display_name', 203, 'ru', 'Id', '2024-12-15 12:26:15', '2024-12-15 12:26:15'),
(293, 'data_rows', 'display_name', 204, 'ru', 'Title', '2024-12-15 12:26:15', '2024-12-15 12:26:15'),
(294, 'data_rows', 'display_name', 205, 'ru', 'Url', '2024-12-15 12:26:15', '2024-12-15 12:26:15'),
(295, 'data_rows', 'display_name', 206, 'ru', 'Logo', '2024-12-15 12:26:15', '2024-12-15 12:26:15'),
(296, 'data_rows', 'display_name', 207, 'ru', 'Created At', '2024-12-15 12:26:15', '2024-12-15 12:26:15'),
(297, 'data_rows', 'display_name', 208, 'ru', 'Updated At', '2024-12-15 12:26:15', '2024-12-15 12:26:15'),
(298, 'data_types', 'display_name_singular', 24, 'ru', 'Partner Info', '2024-12-15 12:26:15', '2024-12-15 12:26:15'),
(299, 'data_types', 'display_name_plural', 24, 'ru', 'Partner Infos', '2024-12-15 12:26:15', '2024-12-15 12:26:15'),
(300, 'menu_items', 'title', 38, 'ru', 'Partner Infos', '2024-12-15 12:27:43', '2024-12-15 12:27:43'),
(301, 'data_rows', 'display_name', 195, 'ru', 'Id', '2024-12-15 12:33:45', '2024-12-15 12:33:45'),
(302, 'data_rows', 'display_name', 196, 'ru', 'Web Menu Id', '2024-12-15 12:33:45', '2024-12-15 12:33:45'),
(303, 'data_rows', 'display_name', 197, 'ru', 'Title', '2024-12-15 12:33:45', '2024-12-15 12:33:45'),
(304, 'data_rows', 'display_name', 198, 'ru', 'Subtitle', '2024-12-15 12:33:45', '2024-12-15 12:33:45'),
(305, 'data_rows', 'display_name', 199, 'ru', 'Description', '2024-12-15 12:33:45', '2024-12-15 12:33:45'),
(306, 'data_rows', 'display_name', 200, 'ru', 'Created At', '2024-12-15 12:33:45', '2024-12-15 12:33:45'),
(307, 'data_rows', 'display_name', 201, 'ru', 'Updated At', '2024-12-15 12:33:45', '2024-12-15 12:33:45'),
(308, 'data_rows', 'display_name', 202, 'ru', 'web_menus', '2024-12-15 12:33:45', '2024-12-15 12:33:45');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(309, 'data_types', 'display_name_singular', 23, 'ru', 'Partner', '2024-12-15 12:33:45', '2024-12-15 12:33:45'),
(310, 'data_types', 'display_name_plural', 23, 'ru', 'Partners', '2024-12-15 12:33:45', '2024-12-15 12:33:45'),
(311, 'data_rows', 'display_name', 210, 'ru', 'partners', '2024-12-15 12:35:27', '2024-12-15 12:35:27'),
(312, 'partners', 'title', 1, 'ru', 'Наши клиенты', '2024-12-15 12:41:32', '2024-12-15 12:50:11'),
(313, 'partners', 'subtitle', 1, 'ru', 'Некоторые из наших самых дорогих клиентов', '2024-12-15 12:41:32', '2024-12-15 12:41:32'),
(314, 'partners', 'description', 1, 'ru', 'Создавайте адаптивные, ориентированные на мобильные устройства проекты в Интернете с помощью самой популярной в мире библиотеки компонентов интерфейса.', '2024-12-15 12:41:32', '2024-12-15 12:41:32'),
(315, 'partners', 'type', 1, 'ru', 'Клиенты', '2024-12-15 12:41:32', '2024-12-15 12:41:32'),
(316, 'partners', 'title', 2, 'ru', 'Наши партнеры', '2024-12-15 12:42:41', '2024-12-15 12:42:41'),
(317, 'partners', 'subtitle', 2, 'ru', 'Некоторые из наших самых дорогих партнеры', '2024-12-15 12:42:41', '2024-12-15 12:49:47'),
(318, 'partners', 'description', 2, 'ru', 'Создавайте адаптивные, ориентированные на мобильные устройства проекты в Интернете с помощью самой популярной в мире библиотеки компонентов интерфейса.\n', '2024-12-15 12:42:41', '2024-12-15 12:42:41'),
(319, 'partners', 'type', 2, 'ru', 'Партнеры', '2024-12-15 12:42:41', '2024-12-15 12:42:41'),
(320, 'data_rows', 'display_name', 212, 'ru', 'Id', '2024-12-15 14:47:30', '2024-12-15 14:47:30'),
(321, 'data_rows', 'display_name', 213, 'ru', 'Web Menu Id', '2024-12-15 14:47:30', '2024-12-15 14:47:30'),
(322, 'data_rows', 'display_name', 214, 'ru', 'Title', '2024-12-15 14:47:30', '2024-12-15 14:47:30'),
(323, 'data_rows', 'display_name', 215, 'ru', 'Description', '2024-12-15 14:47:30', '2024-12-15 14:47:30'),
(324, 'data_rows', 'display_name', 216, 'ru', 'Created At', '2024-12-15 14:47:30', '2024-12-15 14:47:30'),
(325, 'data_rows', 'display_name', 217, 'ru', 'Updated At', '2024-12-15 14:47:30', '2024-12-15 14:47:30'),
(326, 'data_rows', 'display_name', 218, 'ru', 'web_menus', '2024-12-15 14:47:30', '2024-12-15 14:47:30'),
(329, 'data_rows', 'display_name', 219, 'ru', 'Id', '2024-12-15 14:49:25', '2024-12-15 14:49:25'),
(330, 'data_rows', 'display_name', 220, 'ru', 'Term Condition Id', '2024-12-15 14:49:25', '2024-12-15 14:49:25'),
(331, 'data_rows', 'display_name', 221, 'ru', 'Title', '2024-12-15 14:49:25', '2024-12-15 14:49:25'),
(332, 'data_rows', 'display_name', 222, 'ru', 'Description', '2024-12-15 14:49:25', '2024-12-15 14:49:25'),
(333, 'data_rows', 'display_name', 223, 'ru', 'Created At', '2024-12-15 14:49:25', '2024-12-15 14:49:25'),
(334, 'data_rows', 'display_name', 224, 'ru', 'Updated At', '2024-12-15 14:49:25', '2024-12-15 14:49:25'),
(335, 'data_rows', 'display_name', 225, 'ru', 'term_conditions', '2024-12-15 14:49:25', '2024-12-15 14:49:25'),
(338, 'data_rows', 'display_name', 226, 'ru', 'Id', '2024-12-15 15:07:27', '2024-12-15 15:07:27'),
(339, 'data_rows', 'display_name', 227, 'ru', 'Web Menu Id', '2024-12-15 15:07:27', '2024-12-15 15:07:27'),
(340, 'data_rows', 'display_name', 228, 'ru', 'Title', '2024-12-15 15:07:27', '2024-12-15 15:07:27'),
(341, 'data_rows', 'display_name', 229, 'ru', 'Description', '2024-12-15 15:07:27', '2024-12-15 15:07:27'),
(342, 'data_rows', 'display_name', 230, 'ru', 'Created At', '2024-12-15 15:07:27', '2024-12-15 15:07:27'),
(343, 'data_rows', 'display_name', 231, 'ru', 'Updated At', '2024-12-15 15:07:27', '2024-12-15 15:07:27'),
(344, 'data_rows', 'display_name', 232, 'ru', 'web_menus', '2024-12-15 15:07:27', '2024-12-15 15:07:27'),
(345, 'data_types', 'display_name_singular', 27, 'ru', 'Term Condition', '2024-12-15 15:07:27', '2024-12-15 15:07:27'),
(346, 'data_types', 'display_name_plural', 27, 'ru', 'Term Conditions', '2024-12-15 15:07:27', '2024-12-15 15:07:27'),
(347, 'data_rows', 'display_name', 233, 'ru', 'Id', '2024-12-15 15:08:25', '2024-12-15 15:08:25'),
(348, 'data_rows', 'display_name', 234, 'ru', 'Term Condition Id', '2024-12-15 15:08:25', '2024-12-15 15:08:25'),
(349, 'data_rows', 'display_name', 235, 'ru', 'Title', '2024-12-15 15:08:25', '2024-12-15 15:08:25'),
(350, 'data_rows', 'display_name', 236, 'ru', 'Description', '2024-12-15 15:08:25', '2024-12-15 15:08:25'),
(351, 'data_rows', 'display_name', 237, 'ru', 'Created At', '2024-12-15 15:08:25', '2024-12-15 15:08:25'),
(352, 'data_rows', 'display_name', 238, 'ru', 'Updated At', '2024-12-15 15:08:25', '2024-12-15 15:08:25'),
(353, 'data_rows', 'display_name', 239, 'ru', 'term_conditions', '2024-12-15 15:08:25', '2024-12-15 15:08:25'),
(354, 'data_types', 'display_name_singular', 28, 'ru', 'Term Condition Item', '2024-12-15 15:08:25', '2024-12-15 15:08:25'),
(355, 'data_types', 'display_name_plural', 28, 'ru', 'Term Condition Items', '2024-12-15 15:08:25', '2024-12-15 15:08:25'),
(356, 'menu_items', 'title', 43, 'ru', 'Условия и положения', '2024-12-15 15:09:37', '2024-12-15 15:09:37'),
(357, 'menu_items', 'title', 41, 'ru', 'Term Conditions', '2024-12-15 15:11:49', '2024-12-15 15:11:49'),
(358, 'menu_items', 'title', 42, 'ru', 'Term Condition Items', '2024-12-15 15:12:57', '2024-12-15 15:12:57'),
(359, 'term_conditions', 'title', 1, 'ru', 'Условия и положения', '2024-12-15 15:16:43', '2024-12-15 15:16:43'),
(360, 'term_conditions', 'description', 1, 'ru', 'Создавайте адаптивные проекты с приоритетом на мобильные устройства в интернете с использованием самой популярной фронтенд-компонентной библиотеки.', '2024-12-15 15:16:43', '2024-12-15 15:16:43'),
(361, 'term_condition_items', 'title', 1, 'ru', 'МЫ ВСЕГДА ИЩЕМ НОВЫЕ СПОСОБЫ ОБЕСПЕЧИТЬ ПРИВАТНОСТЬ НАШИХ КЛИЕНТОВ.', '2024-12-15 15:26:09', '2024-12-15 15:26:09'),
(362, 'term_condition_items', 'description', 1, 'ru', '<p><strong>Инновационные решения для обеспечения конфиденциальности</strong><br>В \"WellSoft\" мы стремимся исследовать и внедрять передовые технологии, чтобы обеспечить высочайший уровень конфиденциальности для наших клиентов. Мы постоянно работаем над улучшением безопасности вашей личной информации и предоставлением спокойствия в каждом взаимодействии.</p>\n<p><strong>Преданность конфиденциальности клиентов</strong><br>Мы понимаем, что конфиденциальность имеет первостепенное значение. Поэтому мы всегда ищем новые способы защиты ваших данных и сохранения вашей конфиденциальности. Наша цель &mdash; предоставлять услуги, которые приоритетно обеспечивают вашу безопасность, гарантируя сохранность ваших личных данных в любое время.</p>\n<p><strong>Пионеры защиты конфиденциальности</strong><br>По мере того как технологии развиваются, развиваются и способы защиты вашей конфиденциальности. Мы стремимся оставаться на передовой, постоянно ищем инновационные методы защиты ваших данных и обеспечения того, чтобы ваша конфиденциальность оставалась главным приоритетом.</p>\n<p><strong>Конфиденциальность &mdash; наш приоритет</strong><br>В \"WellSoft\" мы понимаем важность защиты вашей конфиденциальности. Наша команда всегда исследует и разрабатывает новые способы улучшения безопасности ваших данных, чтобы вы могли доверять нам сохранность ваших личных данных.</p>\n<p><strong>Защита вашей конфиденциальности всегда</strong><br>Мы считаем, что конфиденциальность &mdash; это не просто функция, а основная ценность. Поэтому мы постоянно ищем новые и улучшенные способы защиты ваших данных и конфиденциальности в постоянно меняющемся цифровом мире.</p>\n<p><strong>Ваша конфиденциальность &mdash; наша обязанность</strong><br>Мы обязуемся защищать вашу конфиденциальность через инновации. Постоянно исследуя новые технологии обеспечения конфиденциальности, мы стремимся гарантировать, что ваша личная информация останется безопасной и конфиденциальной, как сейчас, так и в будущем.</p>\n<p><strong>Ориентированная на будущее защита конфиденциальности</strong><br>По мере роста обеспокоенности по поводу конфиденциальности, мы находимся на передовой в поиске новых и лучших способов защиты личной информации наших клиентов. Наши усилия всегда направлены на предоставление самых безопасных решений с приоритетом конфиденциальности, чтобы обеспечить вам спокойствие.</p>\n<p><strong>Постоянное развитие для вашей защиты</strong><br>Мы не довольствуемся статусом-кво, когда речь идет о конфиденциальности. Наша команда всегда исследует и внедряет новые меры защиты конфиденциальности, чтобы ваши данные оставались безопасными и защищенными, независимо от обстоятельств.</p>', '2024-12-15 15:26:09', '2024-12-15 15:26:09'),
(363, 'term_condition_items', 'title', 2, 'ru', 'ВАШИ ДАННЫЕ В БЕЗОПАСНОСТИ С НАМИ, МЫ НЕ БУДЕМ ДЕЛИТЬСЯ ИНФОРМАЦИЕЙ С ВНЕШНИМИ ИСТОЧНИКАМИ.', '2024-12-15 15:29:27', '2024-12-15 15:29:27'),
(364, 'term_condition_items', 'description', 2, 'ru', '<p><strong>Безопасность данных без компромиссов</strong><br>В \"WellSoft\" мы серьезно относимся к вашей конфиденциальности. Будьте уверены, ваша личная информация защищена на высшем уровне безопасности, и мы никогда не будем делиться вашими данными с внешними источниками. Ваше доверие &mdash; наш главный приоритет.</p>\n<p><strong>Ваша конфиденциальность &mdash; наше обещание</strong><br>Мы обязуемся сохранять ваши данные в безопасности. Мы гарантируем, что ваша информация никогда не будет передана третьим лицам, обеспечивая сохранность вашей конфиденциальности в любое время.</p>\n<p><strong>Конфиденциальность, которой можно доверять</strong><br>Ваши данные принадлежат только вам. Мы придерживаемся самых высоких стандартов конфиденциальности и никогда не раскроем вашу личную информацию внешним источникам. С нами ваша конфиденциальность всегда защищена.</p>\n<p><strong>Мы уважаем вашу конфиденциальность</strong><br>В \"WellSoft\" мы понимаем важность вашей конфиденциальности. Мы уверяем вас, что ваши данные останутся частными и никогда не будут переданы внешним сторонам без вашего согласия.</p>\n<p><strong>Защита вашей личной информации</strong><br>Ваша личная информация в безопасности с нами. Мы обязуемся сохранить ее частной и защищенной, и никогда не будем делиться ею с внешними источниками. Вы можете довериться нам в защите ваших данных.</p>\n<p><strong>Обязательство к конфиденциальности и безопасности</strong><br>Мы ставим вашу конфиденциальность на первое место. Ваши данные в безопасности с нами, и мы гарантируем, что никогда не будем передавать их третьим сторонам. Ваше доверие важно для нас, и мы принимаем все меры для защиты вашей информации.</p>\n<p><strong>Ваши данные &mdash; ваш контроль</strong><br>С \"WellSoft\" вы можете быть уверены, что ваши данные в безопасности. Мы никогда не будем делиться вашей личной информацией с внешними источниками, обеспечивая, что ваша конфиденциальность всегда остается под вашим контролем.</p>\n<p><strong>Гарантия конфиденциальности</strong><br>Мы уважаем вашу конфиденциальность и предпринимаем все шаги для защиты ваших данных. Ваша личная информация никогда не будет передана внешним источникам, так что вы можете быть уверены, что ваши данные остаются конфиденциальными и защищенными.</p>', '2024-12-15 15:29:27', '2024-12-15 15:29:27'),
(365, 'data_rows', 'display_name', 240, 'ru', 'Id', '2024-12-15 15:31:35', '2024-12-15 15:31:35'),
(366, 'data_rows', 'display_name', 241, 'ru', 'Web Menu Id', '2024-12-15 15:31:35', '2024-12-15 15:31:35'),
(367, 'data_rows', 'display_name', 242, 'ru', 'Title', '2024-12-15 15:31:35', '2024-12-15 15:31:35'),
(368, 'data_rows', 'display_name', 243, 'ru', 'Description', '2024-12-15 15:31:35', '2024-12-15 15:31:35'),
(369, 'data_rows', 'display_name', 244, 'ru', 'Created At', '2024-12-15 15:31:35', '2024-12-15 15:31:35'),
(370, 'data_rows', 'display_name', 245, 'ru', 'Updated At', '2024-12-15 15:31:35', '2024-12-15 15:31:35'),
(371, 'data_rows', 'display_name', 246, 'ru', 'web_menus', '2024-12-15 15:31:35', '2024-12-15 15:31:35'),
(372, 'data_types', 'display_name_singular', 29, 'ru', 'Privacy Policy', '2024-12-15 15:31:35', '2024-12-15 15:31:35'),
(373, 'data_types', 'display_name_plural', 29, 'ru', 'Privacy Policies', '2024-12-15 15:31:35', '2024-12-15 15:31:35'),
(374, 'data_rows', 'display_name', 247, 'ru', 'Id', '2024-12-15 15:34:05', '2024-12-15 15:34:05'),
(375, 'data_rows', 'display_name', 248, 'ru', 'Privacy Policy Id', '2024-12-15 15:34:05', '2024-12-15 15:34:05'),
(376, 'data_rows', 'display_name', 249, 'ru', 'Title', '2024-12-15 15:34:05', '2024-12-15 15:34:05'),
(377, 'data_rows', 'display_name', 250, 'ru', 'Description', '2024-12-15 15:34:05', '2024-12-15 15:34:05'),
(378, 'data_rows', 'display_name', 251, 'ru', 'Created At', '2024-12-15 15:34:05', '2024-12-15 15:34:05'),
(379, 'data_rows', 'display_name', 252, 'ru', 'Updated At', '2024-12-15 15:34:05', '2024-12-15 15:34:05'),
(380, 'data_rows', 'display_name', 253, 'ru', 'privacy_policies', '2024-12-15 15:34:05', '2024-12-15 15:34:05'),
(381, 'data_types', 'display_name_singular', 30, 'ru', 'Privacy Policy Item', '2024-12-15 15:34:05', '2024-12-15 15:34:05'),
(382, 'data_types', 'display_name_plural', 30, 'ru', 'Privacy Policy Items', '2024-12-15 15:34:05', '2024-12-15 15:34:05'),
(383, 'menu_items', 'title', 46, 'ru', 'политика конфиденциальности', '2024-12-15 15:34:52', '2024-12-15 15:34:52'),
(384, 'privacy_policies', 'title', 1, 'ru', 'Политика конфиденциальности', '2024-12-15 15:38:54', '2024-12-15 15:38:54'),
(385, 'privacy_policies', 'description', 1, 'ru', 'Создавайте адаптивные проекты, ориентированные на мобильные устройства, с использованием самой популярной библиотеки компонентов для фронтенда в мире.', '2024-12-15 15:38:54', '2024-12-15 15:38:54'),
(386, 'privacy_policy_items', 'title', 1, 'ru', 'Политика конфиденциальности', '2024-12-15 15:42:55', '2024-12-15 15:42:55'),
(387, 'privacy_policy_items', 'description', 1, 'ru', '<p><strong>Ваша конфиденциальность имеет значение для нас</strong><br>Наша политика конфиденциальности описывает, как мы собираем, используем и защищаем вашу личную информацию. Мы обязуемся защищать вашу конфиденциальность и обеспечивать, чтобы ваши данные обрабатывались ответственно и безопасно. Пожалуйста, ознакомьтесь с нашей политикой, чтобы понять, как мы защищаем вашу информацию.</p>\n<p><strong>Защита вашей личной информации</strong><br>Наша политика конфиденциальности объясняет меры, которые мы принимаем для обеспечения безопасности ваших данных. Мы открыто сообщаем о том, какую информацию мы собираем, как она используется и как мы защищаем вашу конфиденциальность. Мы ценим ваше доверие и стремимся обеспечить безопасность ваших данных.</p>\n<p><strong>Обязательства по защите вашей конфиденциальности</strong><br>В \"WellSoft\" мы ценим вашу конфиденциальность и обязуемся поддерживать конфиденциальность вашей личной информации. Наша политика конфиденциальности предоставляет подробную информацию о том, как мы собираем, храним и используем ваши данные, чтобы ваша конфиденциальность всегда оставалась защищенной.</p>\n<p><strong>Прозрачность использования данных</strong><br>Мы верим в прозрачность в отношении вашей личной информации. Наша политика конфиденциальности предоставляет четкие сведения о том, как мы собираем и управляем вашими данными, гарантируя, что мы всегда ставим вашу конфиденциальность и безопасность на первое место.</p>\n<p><strong>Как мы защищаем вашу конфиденциальность</strong><br>Ваша конфиденциальность &mdash; наш главный приоритет. Наша политика конфиденциальности объясняет шаги, которые мы предпринимаем для защиты ваших личных данных, включая то, как мы собираем, храним и передаем вашу информацию. Мы обязуемся быть прозрачными и ответственными в наших действиях с данными.</p>\n<p><strong>Ваши данные &mdash; наша ответственность</strong><br>Наша политика конфиденциальности предназначена для того, чтобы предоставить вам четкую информацию о том, как мы обрабатываем ваши личные данные. Мы серьезно относимся к вашей конфиденциальности и обязуемся обеспечить защиту вашей информации в любое время.</p>\n<p><strong>Обеспечение конфиденциальности и безопасности</strong><br>Политика конфиденциальности описывает наши обязательства по сохранению конфиденциальности и безопасности вашей личной информации. Мы гарантируем, что ваши данные используются ответственно и никогда не передаются без вашего согласия, если это не требуется по закону.</p>\n<p><strong>Как мы обрабатываем вашу информацию</strong><br>Наша политика конфиденциальности предоставляет подробную информацию о том, как мы собираем, используем и защищаем вашу личную информацию. Мы уважаем вашу конфиденциальность и обеспечиваем, чтобы ваши данные обрабатывались в соответствии с самыми высокими стандартами безопасности и конфиденциальности.</p>\n<p><strong>Ваши права на конфиденциальность</strong><br>Наша политика конфиденциальности объясняет ваши права в отношении личной информации, которую мы собираем, как мы ее используем и какие шаги предпринимаем для ее защиты. Мы обязуемся гарантировать, что ваша конфиденциальность будет уважаться, а ваши данные останутся в безопасности.</p>\n<p><strong>Ваше доверие &mdash; наша ответственность</strong><br>Мы обязуемся поддерживать ваше доверие, защищая вашу личную информацию. Наша политика конфиденциальности описывает практики, которые мы применяем для обеспечения безопасности, конфиденциальности ваших данных и их использования только для целей, на которые вы дали согласие.</p>', '2024-12-15 15:42:55', '2024-12-15 15:42:55'),
(388, 'privacy_policy_items', 'title', 2, 'ru', 'Cookie и технологий отслеживания', '2024-12-15 15:44:51', '2024-12-15 16:14:28'),
(389, 'privacy_policy_items', 'description', 2, 'ru', '<p><strong>Использование файлов cookie и технологий отслеживания</strong><br>Для улучшения вашего опыта мы используем файлы cookie и аналогичные технологии отслеживания для сбора информации о том, как вы взаимодействуете с нашим веб-сайтом. Эти технологии помогают нам улучшать наши услуги, предоставлять персонализированный контент и анализировать шаблоны использования. Продолжая использовать наш сайт, вы даете согласие на использование файлов cookie.</p>\n<p><strong>Файлы cookie и отслеживание для лучшего опыта</strong><br>Наш сайт использует файлы cookie и технологии отслеживания, чтобы предложить более персонализированный опыт. Эти инструменты помогают нам понять ваши предпочтения, улучшить функциональность сайта и обеспечить предоставление релевантного контента. Вы можете управлять своими предпочтениями по файлам cookie через настройки вашего браузера.</p>\n<p><strong>Технологии отслеживания, которые мы используем</strong><br>Мы используем файлы cookie, веб-маяки и другие технологии отслеживания для сбора информации о том, как вы взаимодействуете с нашим сайтом. Эти данные помогают нам улучшить ваш опыт, предоставлять таргетированную рекламу и анализировать поведение пользователей. Вы можете контролировать настройки cookie в своем браузере в любое время.</p>\n<p><strong>Файлы cookie для персонализации и аналитики</strong><br>Мы используем файлы cookie для персонализации вашего опыта и анализа того, как используется наш сайт. Эти файлы cookie позволяют нам запоминать ваши предпочтения и предоставлять вам адаптированный контент. Вы можете отключить файлы cookie через настройки браузера, но это может повлиять на некоторые функции сайта.</p>\n<p><strong>Как мы используем файлы cookie</strong><br>Файлы cookie &mdash; это небольшие файлы данных, хранящиеся на вашем устройстве для улучшения вашего опыта просмотра. Мы используем их для улучшения функциональности сайта, запоминания ваших предпочтений и отслеживания производительности сайта. Используя наш сайт, вы соглашаетесь на использование файлов cookie, как это описано в нашей Политике конфиденциальности.</p>\n<p><strong>Управление предпочтениями файлов cookie и отслеживания</strong><br>Наш сайт использует файлы cookie и другие технологии отслеживания для улучшения производительности и повышения удобства использования. Эти инструменты помогают нам собирать данные о использовании сайта и предоставлять релевантный контент. Вы можете настроить параметры cookie в своем браузере, чтобы контролировать, какие данные собираются.</p>\n<p><strong>Файлы cookie для производительности сайта и маркетинга</strong><br>Для оптимизации нашего сайта и предоставления персонализированного контента мы используем файлы cookie и другие технологии отслеживания. Эти инструменты помогают нам измерять трафик сайта, отслеживать поведение пользователей и предоставлять таргетированный маркетинг. Вы можете отказаться от некоторых технологий отслеживания, настроив параметры браузера.</p>\n<p><strong>Зачем мы используем файлы cookie и отслеживание</strong><br>Мы используем файлы cookie и технологии отслеживания, чтобы обеспечить бесперебойную работу нашего сайта, предоставить персонализированный контент и анализировать действия пользователей. Эти инструменты помогают нам улучшить ваш опыт и предоставить более релевантный контент. Вы можете управлять своими предпочтениями по файлам cookie в любое время через настройки браузера.</p>\n<p><strong>Ваш контроль над файлами cookie</strong><br>Мы уважаем вашу конфиденциальность и даем вам контроль над файлами cookie. Используя наш сайт, вы даете согласие на использование файлов cookie и аналогичных технологий отслеживания для целей, изложенных в нашей Политике конфиденциальности. Тем не менее, вы можете изменить настройки файлов cookie в любое время, чтобы управлять своими предпочтениями.</p>\n<p><strong>Файлы cookie для улучшения сайта</strong><br>Для того чтобы предложить лучший пользовательский опыт, мы используем файлы cookie и технологии отслеживания для мониторинга того, как посетители используют наш сайт. Эти данные помогают нам улучшить производительность сайта, персонализировать контент и улучшить общую функциональность. Вы можете настроить свои предпочтения по файлам cookie в настройках браузера.</p>', '2024-12-15 15:44:51', '2024-12-15 15:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$eIdFwZEuJO3fNejEJjHQw.kBd/WiMPUH/my18OHb3iwMhvpNA5wsW', 'JmKiSZkviDBJX55lk1EozACglFa8P7GAXx5rjijZ9cettz2J4uYnyndkt0xp', NULL, '2024-11-03 15:19:54', '2024-11-03 15:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_menus`
--

CREATE TABLE `web_menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_menus`
--

INSERT INTO `web_menus` (`id`, `name`, `parent_id`, `url`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Services', NULL, 'services', 2, NULL, '2024-11-21 12:44:37'),
(2, 'Menu', NULL, NULL, 1, NULL, '2024-11-21 12:44:25'),
(3, 'About us', 2, 'about', NULL, NULL, NULL),
(4, 'Blog Details', 2, 'blog', NULL, NULL, '2024-12-15 09:34:32'),
(5, 'Portfolio', 2, 'portfolio', NULL, NULL, NULL),
(6, 'Contact', NULL, 'contact', 5, NULL, '2024-11-21 12:57:55'),
(7, 'Terms Conditions', 2, 'terms', NULL, NULL, NULL),
(8, 'Privacy Policy', 2, 'privacy', NULL, NULL, NULL),
(9, 'Blog', NULL, 'blog', 3, NULL, '2024-11-21 12:44:57'),
(10, 'Team', NULL, 'team', 4, NULL, '2024-11-21 12:45:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_us_web_menu_id_foreign` (`web_menu_id`);

--
-- Indexes for table `about_us_items`
--
ALTER TABLE `about_us_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_us_items_about_us_id_index` (`about_us_id`);

--
-- Indexes for table `about_us_item_childrens`
--
ALTER TABLE `about_us_item_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_us_item_childrens_about_us_item_id_index` (`about_us_item_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_web_menu_id_index` (`web_menu_id`);

--
-- Indexes for table `blog_items`
--
ALTER TABLE `blog_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_items_blog_id_index` (`blog_id`);

--
-- Indexes for table `blog_item_service_items`
--
ALTER TABLE `blog_item_service_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_item_service_items_blog_item_id_index` (`blog_item_id`),
  ADD KEY `blog_item_service_items_service_item_id_index` (`service_item_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_web_menu_id_foreign` (`web_menu_id`);

--
-- Indexes for table `contact_clients`
--
ALTER TABLE `contact_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_infos_parent_id_index` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partners_web_menu_id_foreign` (`web_menu_id`);

--
-- Indexes for table `partner_infos`
--
ALTER TABLE `partner_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolios_web_menu_id_index` (`web_menu_id`);

--
-- Indexes for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_items_portfolio_id_index` (`portfolio_id`),
  ADD KEY `portfolio_items_parent_id_index` (`parent_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `privacy_policies_web_menu_id_foreign` (`web_menu_id`);

--
-- Indexes for table `privacy_policy_items`
--
ALTER TABLE `privacy_policy_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `privacy_policy_items_privacy_policy_id_index` (`privacy_policy_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_web_menu_id_index` (`web_menu_id`);

--
-- Indexes for table `service_items`
--
ALTER TABLE `service_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_items_service_id_index` (`service_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_web_menu_id_index` (`web_menu_id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_members_team_id_index` (`team_id`);

--
-- Indexes for table `term_conditions`
--
ALTER TABLE `term_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_conditions_web_menu_id_foreign` (`web_menu_id`);

--
-- Indexes for table `term_condition_items`
--
ALTER TABLE `term_condition_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_condition_items_term_condition_id_index` (`term_condition_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `web_menus`
--
ALTER TABLE `web_menus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_us_items`
--
ALTER TABLE `about_us_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_us_item_childrens`
--
ALTER TABLE `about_us_item_childrens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_items`
--
ALTER TABLE `blog_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_item_service_items`
--
ALTER TABLE `blog_item_service_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_clients`
--
ALTER TABLE `contact_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `partner_infos`
--
ALTER TABLE `partner_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `privacy_policy_items`
--
ALTER TABLE `privacy_policy_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_items`
--
ALTER TABLE `service_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `term_conditions`
--
ALTER TABLE `term_conditions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `term_condition_items`
--
ALTER TABLE `term_condition_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_menus`
--
ALTER TABLE `web_menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_us`
--
ALTER TABLE `about_us`
  ADD CONSTRAINT `about_us_web_menu_id_foreign` FOREIGN KEY (`web_menu_id`) REFERENCES `web_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `about_us_items`
--
ALTER TABLE `about_us_items`
  ADD CONSTRAINT `about_us_items_about_us_id_foreign` FOREIGN KEY (`about_us_id`) REFERENCES `about_us` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `about_us_item_childrens`
--
ALTER TABLE `about_us_item_childrens`
  ADD CONSTRAINT `about_us_item_childrens_about_us_item_id_foreign` FOREIGN KEY (`about_us_item_id`) REFERENCES `about_us_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_web_menu_id_foreign` FOREIGN KEY (`web_menu_id`) REFERENCES `web_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_items`
--
ALTER TABLE `blog_items`
  ADD CONSTRAINT `blog_items_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_web_menu_id_foreign` FOREIGN KEY (`web_menu_id`) REFERENCES `web_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `partners`
--
ALTER TABLE `partners`
  ADD CONSTRAINT `partners_web_menu_id_foreign` FOREIGN KEY (`web_menu_id`) REFERENCES `web_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_web_menu_id_foreign` FOREIGN KEY (`web_menu_id`) REFERENCES `web_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD CONSTRAINT `privacy_policies_web_menu_id_foreign` FOREIGN KEY (`web_menu_id`) REFERENCES `web_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_web_menu_id_foreign` FOREIGN KEY (`web_menu_id`) REFERENCES `web_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_items`
--
ALTER TABLE `service_items`
  ADD CONSTRAINT `service_items_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_web_menu_id_foreign` FOREIGN KEY (`web_menu_id`) REFERENCES `web_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `term_conditions`
--
ALTER TABLE `term_conditions`
  ADD CONSTRAINT `term_conditions_web_menu_id_foreign` FOREIGN KEY (`web_menu_id`) REFERENCES `web_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
