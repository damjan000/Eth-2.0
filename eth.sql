-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 02:16 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eth`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress komentator', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-06-01 19:03:15', '2021-06-01 17:03:15', 'Zdravo, ovo je komentar.\nDa počnete sa moderacijom, uređivanjem i brisanjem komentara, molimo posjetite ekran komentara na kontrolnoj ploči.\nAvatari komentatora dolaze iz <a href=\"https://gravatar.com\">Gravatara</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/eth', 'yes'),
(2, 'home', 'http://localhost/eth', 'yes'),
(3, 'blogname', 'Ethereum 2.0', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'damjan.jankovic@student.pmf.unibl.org', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j. F Y.', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j. F Y. G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:1;s:28:\"wp-social-widget/socials.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:97:\"C:\\Users\\PC\\Documents\\GitHub\\Ethereum-2.0\\xampp\\htdocs\\eth/wp-content/plugins/akismet/akismet.php\";i:2;s:92:\"C:\\Users\\PC\\Documents\\GitHub\\Ethereum-2.0\\xampp\\htdocs\\eth/wp-content/themes/suki/single.php\";i:3;s:93:\"C:\\Users\\PC\\Documents\\GitHub\\Ethereum-2.0\\xampp\\htdocs\\eth/wp-content/themes/suki/sidebar.php\";i:4;s:91:\"C:\\Users\\PC\\Documents\\GitHub\\Ethereum-2.0\\xampp\\htdocs\\eth/wp-content/themes/suki/style.css\";i:5;s:0:\"\";}', 'no'),
(40, 'template', 'sydney', 'yes'),
(41, 'stylesheet', 'sydney', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Sarajevo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '20', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1638118993', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'bs_BA', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;i:4;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:1;}}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:4;a:0:{}}', 'yes'),
(107, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:15:{i:0;s:7:\"pages-3\";i:1;s:15:\"media_gallery-3\";i:2;s:13:\"media_video-3\";i:3;s:14:\"recent-posts-4\";i:4;s:11:\"tag_cloud-3\";i:5;s:10:\"nav_menu-3\";i:6;s:13:\"custom_html-3\";i:7;s:21:\"sydney_contact_info-3\";i:8;s:21:\"sydney_contact_info-5\";i:9;s:10:\"archives-2\";i:10;s:6:\"meta-2\";i:11;s:8:\"search-2\";i:12;s:12:\"categories-2\";i:13;s:14:\"recent-posts-2\";i:14;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:2:{i:0;s:13:\"media_image-3\";i:1;s:6:\"meta-4\";}s:8:\"footer-1\";a:1:{i:0;s:18:\"wp-social-widget-2\";}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:6:{i:1622804596;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1622826196;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1622826215;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622826217;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1623258196;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(110, 'widget_calendar', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:15:{s:4:\"size\";s:4:\"full\";s:5:\"width\";i:225;s:6:\"height\";i:225;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:14;s:3:\"url\";s:60:\"http://localhost/eth/wp-content/uploads/2021/06/download.png\";s:5:\"title\";s:0:\"\";}}', 'yes'),
(113, 'widget_media_gallery', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(114, 'widget_media_video', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(115, 'widget_tag_cloud', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:13:\"link_category\";}}', 'yes'),
(116, 'widget_nav_menu', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:1:{s:8:\"nav_menu\";i:3;}}', 'yes'),
(117, 'widget_custom_html', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1622567945;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:30:\"SSL verifikacija nije uspjela.\";}}', 'yes'),
(131, '_site_transient_timeout_browser_ac929f8f91613db4b0af5eca584775a8', '1623171816', 'no'),
(132, '_site_transient_browser_ac929f8f91613db4b0af5eca584775a8', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"90.0.4430.212\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, '_site_transient_timeout_php_check_5e827212769c648f6a0478f622eede02', '1623171817', 'no'),
(134, '_site_transient_php_check_5e827212769c648f6a0478f622eede02', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(146, 'can_compress_scripts', '1', 'no'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(159, 'current_theme', 'Sydney', 'yes'),
(160, 'theme_mods_suki', 'a:20:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:13:\"header-menu-1\";i:3;s:18:\"header-mobile-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"page_layout\";s:10:\"full-width\";s:26:\"header_elements_main_right\";a:1:{i:0;s:6:\"menu-1\";}s:27:\"page_header_elements_center\";a:1:{i:0;s:5:\"title\";}s:26:\"page_header_elements_right\";a:0:{}s:20:\"page_header_bg_image\";s:0:\"\";s:28:\"page_header_title_text_color\";s:7:\"#333333\";s:12:\"subtle_color\";s:22:\"rgba(204,204,204,0.05)\";s:29:\"footer_elements_bottom_center\";a:0:{}s:28:\"footer_elements_bottom_right\";a:1:{i:0;s:6:\"social\";}s:20:\"page_header_bg_color\";s:19:\"rgba(63,63,63,0.05)\";s:24:\"page_header_border_color\";s:7:\"#0a0a0a\";s:28:\"page_header_bg_overlay_color\";s:7:\"#e2e2e2\";s:18:\"footer_widgets_bar\";s:1:\"0\";s:27:\"footer_elements_bottom_left\";a:0:{}s:14:\"content_layout\";s:6:\"narrow\";s:15:\"content_padding\";s:19:\"80px 30px 80px 30px\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1622631876;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:0:{}s:16:\"footer-widgets-1\";a:0:{}s:16:\"footer-widgets-2\";a:0:{}s:16:\"footer-widgets-3\";a:0:{}s:16:\"footer-widgets-4\";a:0:{}s:16:\"footer-widgets-5\";a:0:{}s:16:\"footer-widgets-6\";a:0:{}}}}', 'yes'),
(161, 'theme_switched', '', 'yes'),
(162, 'widget_suki_widget_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(163, 'widget_suki_widget_social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(164, 'suki_theme_version', '1.2.13', 'yes'),
(165, 'suki_installed_time', '1622567947', 'yes'),
(166, 'suki_rating_notice_is_dismissed', '0', 'yes'),
(177, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(218, 'theme_mods_sydney', 'a:32:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:19:\"forked_owl_carousel\";b:1;s:18:\"custom_css_post_id\";i:-1;s:19:\"wrapper_top_padding\";i:70;s:17:\"front_header_type\";s:5:\"image\";s:12:\"header_image\";s:54:\"http://localhost/eth/wp-content/uploads/2021/06/dd.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:16;s:3:\"url\";s:54:\"http://localhost/eth/wp-content/uploads/2021/06/dd.jpg\";s:13:\"thumbnail_url\";s:54:\"http://localhost/eth/wp-content/uploads/2021/06/dd.jpg\";s:6:\"height\";i:300;s:5:\"width\";i:800;}s:14:\"slider_image_1\";s:0:\"\";s:13:\"header_height\";i:120;s:11:\"sticky_menu\";s:6:\"sticky\";s:10:\"menu_style\";s:8:\"centered\";s:14:\"header_bg_size\";s:5:\"cover\";s:14:\"menu_container\";s:9:\"container\";s:11:\"blog_layout\";s:11:\"classic-alt\";s:15:\"site_title_size\";i:40;s:19:\"footer_widget_areas\";s:1:\"4\";s:16:\"background_color\";s:6:\"ffffff\";s:13:\"menu_bg_color\";s:7:\"#263246\";s:15:\"body_text_color\";s:7:\"#47425d\";s:9:\"site_logo\";s:0:\"\";s:17:\"full_content_home\";s:0:\"\";s:21:\"full_content_archives\";s:0:\"\";s:16:\"index_feat_image\";i:1;s:15:\"post_feat_image\";i:1;s:16:\"fullwidth_single\";s:0:\"\";s:10:\"exc_lenght\";i:55;s:15:\"hide_meta_index\";i:1;s:16:\"hide_meta_single\";i:1;s:15:\"page_feat_image\";i:1;s:12:\"hide_overlay\";s:0:\"\";s:18:\"header_button_html\";s:7:\"nothing\";}', 'yes'),
(219, 'yith_woocompare_button_text', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path d=\"M504.971 359.029c9.373 9.373 9.373 24.569 0 33.941l-80 79.984c-15.01 15.01-40.971 4.49-40.971-16.971V416h-58.785a12.004 12.004 0 0 1-8.773-3.812l-70.556-75.596 53.333-57.143L352 336h32v-39.981c0-21.438 25.943-31.998 40.971-16.971l80 79.981zM12 176h84l52.781 56.551 53.333-57.143-70.556-75.596A11.999 11.999 0 0 0 122.785 96H12c-6.627 0-12 5.373-12 12v56c0 6.627 5.373 12 12 12zm372 0v39.984c0 21.46 25.961 31.98 40.971 16.971l80-79.984c9.373-9.373 9.373-24.569 0-33.941l-80-79.981C409.943 24.021 384 34.582 384 56.019V96h-58.785a12.004 12.004 0 0 0-8.773 3.812L96 336H12c-6.627 0-12 5.373-12 12v56c0 6.627 5.373 12 12 12h110.785c3.326 0 6.503-1.381 8.773-3.812L352 176h32z\" /></svg>', 'yes'),
(220, 'sydney_theme_installed_time', '1622631877', 'yes'),
(221, 'elementor_disable_color_schemes', 'yes', 'yes'),
(222, 'elementor_disable_typography_schemes', 'yes', 'yes'),
(226, 'widget_sydney_contact_info', 'a:4:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;i:3;a:0:{}i:5;a:4:{s:5:\"title\";s:12:\"Ethereum 2.0\";s:7:\"address\";s:17:\"ethereum@info.com\";s:5:\"phone\";s:10:\"+333333333\";s:5:\"email\";s:17:\"ethereum@info.com\";}}', 'yes'),
(320, 'category_children', 'a:0:{}', 'yes'),
(341, 'recently_activated', 'a:1:{s:41:\"sassy-social-share/sassy-social-share.php\";i:1622651253;}', 'yes'),
(354, 'widget_heateor_sss_follow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(358, 'widget_wp-social-widget', 'a:2:{i:2;a:53:{s:5:\"title\";s:7:\"Kontakt\";s:6:\"target\";s:6:\"_blank\";s:16:\"background_color\";s:0:\"\";s:22:\"background_hover_color\";s:0:\"\";s:10:\"icon_color\";s:0:\"\";s:16:\"icon_hover_color\";s:0:\"\";s:11:\"icon_circle\";N;s:4:\"mail\";s:0:\"\";s:14:\"show_hide_mail\";s:3:\"off\";s:3:\"rss\";s:0:\"\";s:13:\"show_hide_rss\";s:3:\"off\";s:7:\"behance\";s:0:\"\";s:17:\"show_hide_behance\";s:3:\"off\";s:10:\"foursquare\";s:0:\"\";s:20:\"show_hide_foursquare\";s:3:\"off\";s:5:\"skype\";s:0:\"\";s:15:\"show_hide_skype\";s:3:\"off\";s:10:\"soundcloud\";s:0:\"\";s:20:\"show_hide_soundcloud\";s:3:\"off\";s:4:\"vine\";s:0:\"\";s:14:\"show_hide_vine\";s:3:\"off\";s:2:\"vk\";s:0:\"\";s:12:\"show_hide_vk\";s:3:\"off\";s:4:\"xing\";s:0:\"\";s:14:\"show_hide_xing\";s:3:\"off\";s:4:\"yelp\";s:0:\"\";s:14:\"show_hide_yelp\";s:3:\"off\";s:8:\"dribbble\";s:0:\"\";s:18:\"show_hide_dribbble\";s:3:\"off\";s:8:\"facebook\";s:12:\"facebook.com\";s:18:\"show_hide_facebook\";s:2:\"on\";s:6:\"flickr\";s:0:\"\";s:16:\"show_hide_flickr\";s:3:\"off\";s:6:\"github\";s:0:\"\";s:16:\"show_hide_github\";s:3:\"off\";s:6:\"google\";s:0:\"\";s:16:\"show_hide_google\";s:3:\"off\";s:9:\"instagram\";s:13:\"instagram.com\";s:19:\"show_hide_instagram\";s:2:\"on\";s:8:\"linkedin\";s:12:\"linkedin.com\";s:18:\"show_hide_linkedin\";s:2:\"on\";s:9:\"pinterest\";s:0:\"\";s:19:\"show_hide_pinterest\";s:3:\"off\";s:11:\"stumbleupon\";s:0:\"\";s:21:\"show_hide_stumbleupon\";s:3:\"off\";s:6:\"tumblr\";s:0:\"\";s:16:\"show_hide_tumblr\";s:3:\"off\";s:7:\"twitter\";s:11:\"twitter.com\";s:17:\"show_hide_twitter\";s:2:\"on\";s:5:\"vimeo\";s:0:\"\";s:15:\"show_hide_vimeo\";s:3:\"off\";s:7:\"youtube\";s:0:\"\";s:17:\"show_hide_youtube\";s:3:\"off\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(367, '_site_transient_timeout_theme_roots', '1622802916', 'no'),
(368, '_site_transient_theme_roots', 'a:5:{s:4:\"suki\";s:7:\"/themes\";s:6:\"sydney\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(369, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":8,\"critical\":0}', 'yes'),
(371, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/bs_BA/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"bs_BA\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/bs_BA/wordpress-5.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1622801143;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}', 'no'),
(372, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1622801147;s:7:\"checked\";a:5:{s:4:\"suki\";s:6:\"1.2.13\";s:6:\"sydney\";s:4:\"1.77\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:5:{s:4:\"suki\";a:6:{s:5:\"theme\";s:4:\"suki\";s:11:\"new_version\";s:6:\"1.2.13\";s:3:\"url\";s:34:\"https://wordpress.org/themes/suki/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/suki.1.2.13.zip\";s:8:\"requires\";s:3:\"4.5\";s:12:\"requires_php\";s:3:\"5.6\";}s:6:\"sydney\";a:6:{s:5:\"theme\";s:6:\"sydney\";s:11:\"new_version\";s:4:\"1.77\";s:3:\"url\";s:36:\"https://wordpress.org/themes/sydney/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/sydney.1.77.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:3:\"2.0\";s:7:\"updated\";s:19:\"2019-06-09 14:57:05\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/2.0/bs_BA.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentytwenty\";s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:3:\"1.7\";s:7:\"updated\";s:19:\"2020-06-17 11:58:21\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwenty/1.7/bs_BA.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(373, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1622801147;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";s:28:\"wp-social-widget/socials.php\";s:5:\"2.2.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.1.9\";s:7:\"updated\";s:19:\"2019-10-31 16:11:52\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1.9/bs_BA.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:28:\"wp-social-widget/socials.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/wp-social-widget\";s:4:\"slug\";s:16:\"wp-social-widget\";s:6:\"plugin\";s:28:\"wp-social-widget/socials.php\";s:11:\"new_version\";s:5:\"2.2.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-social-widget/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wp-social-widget.2.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-social-widget/assets/icon-256x256.jpg?rev=1693735\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-social-widget/assets/icon-128x128.jpg?rev=1693735\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/wp-social-widget/assets/banner-1544x500.jpg?rev=1693735\";s:2:\"1x\";s:71:\"https://ps.w.org/wp-social-widget/assets/banner-772x250.jpg?rev=1693735\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(374, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_edit_lock', '1622650138:1'),
(8, 1, '_wp_trash_meta_status', 'publish'),
(9, 1, '_wp_trash_meta_time', '1622567258'),
(10, 1, '_wp_desired_post_slug', 'zdravo-svijete'),
(11, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(12, 2, '_wp_trash_meta_status', 'publish'),
(13, 2, '_wp_trash_meta_time', '1622567378'),
(14, 2, '_wp_desired_post_slug', 'probna stranica'),
(15, 3, '_wp_trash_meta_status', 'draft'),
(16, 3, '_wp_trash_meta_time', '1622567383'),
(17, 3, '_wp_desired_post_slug', 'privacy-policy'),
(18, 11, '_edit_lock', '1622626143:1'),
(21, 6, '_edit_last', '1'),
(24, 6, '_suki_page_settings', 'a:0:{}'),
(25, 12, '_wp_trash_meta_status', 'publish'),
(26, 12, '_wp_trash_meta_time', '1622568201'),
(27, 13, '_edit_lock', '1622568225:1'),
(28, 14, '_wp_attached_file', '2021/06/download.png'),
(29, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2021/06/download.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 13, '_wp_trash_meta_status', 'publish'),
(31, 13, '_wp_trash_meta_time', '1622568246'),
(32, 15, '_edit_lock', '1622568581:1'),
(33, 16, '_wp_attached_file', '2021/06/dd.jpg'),
(34, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:300;s:4:\"file\";s:14:\"2021/06/dd.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"dd-300x113.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"dd-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"dd-768x288.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 17, '_menu_item_type', 'custom'),
(36, 17, '_menu_item_menu_item_parent', '0'),
(37, 17, '_menu_item_object_id', '17'),
(38, 17, '_menu_item_object', 'custom'),
(39, 17, '_menu_item_target', ''),
(40, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 17, '_menu_item_xfn', ''),
(42, 17, '_menu_item_url', 'http://localhost/eth'),
(43, 15, '_wp_trash_meta_status', 'publish'),
(44, 15, '_wp_trash_meta_time', '1622568597'),
(45, 18, '_wp_trash_meta_status', 'publish'),
(46, 18, '_wp_trash_meta_time', '1622568768'),
(47, 19, '_edit_lock', '1622569440:1'),
(48, 19, '_wp_trash_meta_status', 'publish'),
(49, 19, '_wp_trash_meta_time', '1622569443'),
(52, 20, '_wp_attached_file', '2021/06/download-1.png'),
(53, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2021/06/download-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 21, '_edit_lock', '1622626199:1'),
(55, 21, '_wp_trash_meta_status', 'publish'),
(56, 21, '_wp_trash_meta_time', '1622626205'),
(66, 17, '_wp_old_date', '2021-06-01'),
(67, 23, '_edit_lock', '1622629437:1'),
(68, 23, '_wp_trash_meta_status', 'publish'),
(69, 23, '_wp_trash_meta_time', '1622629455'),
(71, 24, '_customize_restore_dismissed', '1'),
(75, 25, '_customize_restore_dismissed', '1'),
(76, 27, '_edit_lock', '1622632296:1'),
(77, 16, '_wp_attachment_custom_header_last_used_sydney', '1622632300'),
(78, 16, '_wp_attachment_is_custom_header', 'sydney'),
(79, 27, '_wp_trash_meta_status', 'publish'),
(80, 27, '_wp_trash_meta_time', '1622632300'),
(81, 28, '_edit_lock', '1622632596:1'),
(82, 28, '_wp_trash_meta_status', 'publish'),
(83, 28, '_wp_trash_meta_time', '1622632628'),
(84, 29, '_menu_item_type', 'post_type'),
(85, 29, '_menu_item_menu_item_parent', '0'),
(86, 29, '_menu_item_object_id', '6'),
(87, 29, '_menu_item_object', 'post'),
(88, 29, '_menu_item_target', ''),
(89, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 29, '_menu_item_xfn', ''),
(91, 29, '_menu_item_url', ''),
(93, 30, '_wp_attached_file', '2021/06/vitalk.jpg'),
(94, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1261;s:6:\"height\";i:1125;s:4:\"file\";s:18:\"2021/06/vitalk.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"vitalk-300x268.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"vitalk-1024x914.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:914;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"vitalk-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"vitalk-768x685.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:685;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:18:\"vitalk-830x740.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:740;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:18:\"vitalk-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:18:\"vitalk-230x205.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:18:\"vitalk-350x312.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:18:\"vitalk-480x428.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:428;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 34, '_wp_attached_file', '2021/06/vitalk-1.jpg'),
(100, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1261;s:6:\"height\";i:1125;s:4:\"file\";s:20:\"2021/06/vitalk-1.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"vitalk-1-300x268.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"vitalk-1-1024x914.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:914;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vitalk-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"vitalk-1-768x685.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:685;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:20:\"vitalk-1-830x740.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:740;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:20:\"vitalk-1-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:20:\"vitalk-1-230x205.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:20:\"vitalk-1-350x312.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:20:\"vitalk-1-480x428.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:428;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 37, '_edit_lock', '1622633714:1'),
(106, 37, '_wp_trash_meta_status', 'publish'),
(107, 37, '_wp_trash_meta_time', '1622633722'),
(108, 38, '_edit_lock', '1622633739:1'),
(109, 38, '_wp_trash_meta_status', 'publish'),
(110, 38, '_wp_trash_meta_time', '1622633759'),
(111, 39, '_edit_lock', '1622635334:1'),
(112, 39, '_wp_trash_meta_status', 'publish'),
(113, 39, '_wp_trash_meta_time', '1622635343'),
(114, 40, '_edit_lock', '1622650179:1'),
(119, 42, '_menu_item_type', 'post_type'),
(120, 42, '_menu_item_menu_item_parent', '0'),
(121, 42, '_menu_item_object_id', '40'),
(122, 42, '_menu_item_object', 'post'),
(123, 42, '_menu_item_target', ''),
(124, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(125, 42, '_menu_item_xfn', ''),
(126, 42, '_menu_item_url', ''),
(128, 44, '_wp_attached_file', '2021/06/eth.png'),
(129, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:15:\"2021/06/eth.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"eth-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"eth-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"eth-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"eth-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"sydney-large-thumb\";a:4:{s:4:\"file\";s:15:\"eth-830x830.png\";s:5:\"width\";i:830;s:6:\"height\";i:830;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:15:\"eth-550x400.png\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:15:\"eth-230x230.png\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:15:\"eth-350x350.png\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:15:\"eth-480x480.png\";s:5:\"width\";i:480;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 47, '_edit_lock', '1622637353:1'),
(135, 47, '_wp_trash_meta_status', 'publish'),
(136, 47, '_wp_trash_meta_time', '1622637399'),
(137, 48, '_edit_lock', '1622644853:1'),
(138, 48, '_wp_trash_meta_status', 'publish'),
(139, 48, '_wp_trash_meta_time', '1622644901'),
(140, 49, '_edit_lock', '1622650201:1'),
(141, 50, '_edit_lock', '1622649352:1'),
(142, 50, '_wp_trash_meta_status', 'publish'),
(143, 50, '_wp_trash_meta_time', '1622649355'),
(144, 51, '_wp_attached_file', '2021/06/rast.png'),
(145, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:830;s:6:\"height\";i:470;s:4:\"file\";s:16:\"2021/06/rast.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"rast-300x170.png\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"rast-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"rast-768x435.png\";s:5:\"width\";i:768;s:6:\"height\";i:435;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"sydney-medium-thumb\";a:4:{s:4:\"file\";s:16:\"rast-550x400.png\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"sydney-small-thumb\";a:4:{s:4:\"file\";s:16:\"rast-230x130.png\";s:5:\"width\";i:230;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"sydney-service-thumb\";a:4:{s:4:\"file\";s:16:\"rast-350x198.png\";s:5:\"width\";i:350;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"sydney-mas-thumb\";a:4:{s:4:\"file\";s:16:\"rast-480x272.png\";s:5:\"width\";i:480;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(148, 53, '_menu_item_type', 'post_type'),
(149, 53, '_menu_item_menu_item_parent', '0'),
(150, 53, '_menu_item_object_id', '49'),
(151, 53, '_menu_item_object', 'post'),
(152, 53, '_menu_item_target', ''),
(153, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(154, 53, '_menu_item_xfn', ''),
(155, 53, '_menu_item_url', ''),
(157, 54, '_menu_item_type', 'taxonomy'),
(158, 54, '_menu_item_menu_item_parent', '0'),
(159, 54, '_menu_item_object_id', '7'),
(160, 54, '_menu_item_object', 'category'),
(161, 54, '_menu_item_target', ''),
(162, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(163, 54, '_menu_item_xfn', ''),
(164, 54, '_menu_item_url', ''),
(166, 55, '_edit_lock', '1622652544:1'),
(169, 57, '_edit_lock', '1622650251:1'),
(172, 59, '_edit_lock', '1622650271:1'),
(175, 61, '_menu_item_type', 'post_type'),
(176, 61, '_menu_item_menu_item_parent', '54'),
(177, 61, '_menu_item_object_id', '55'),
(178, 61, '_menu_item_object', 'post'),
(179, 61, '_menu_item_target', ''),
(180, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(181, 61, '_menu_item_xfn', ''),
(182, 61, '_menu_item_url', ''),
(184, 62, '_menu_item_type', 'post_type'),
(185, 62, '_menu_item_menu_item_parent', '54'),
(186, 62, '_menu_item_object_id', '57'),
(187, 62, '_menu_item_object', 'post'),
(188, 62, '_menu_item_target', ''),
(189, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(190, 62, '_menu_item_xfn', ''),
(191, 62, '_menu_item_url', ''),
(193, 63, '_menu_item_type', 'post_type'),
(194, 63, '_menu_item_menu_item_parent', '54'),
(195, 63, '_menu_item_object_id', '59'),
(196, 63, '_menu_item_object', 'post'),
(197, 63, '_menu_item_target', ''),
(198, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(199, 63, '_menu_item_xfn', ''),
(200, 63, '_menu_item_url', ''),
(208, 40, '_edit_last', '1'),
(209, 40, '_wp_page_template', 'default'),
(212, 6, '_wp_page_template', 'default'),
(228, 72, '_customize_restore_dismissed', '1'),
(229, 74, '_edit_lock', '1622651586:1'),
(230, 75, '_wp_trash_meta_status', 'publish'),
(231, 75, '_wp_trash_meta_time', '1622651807'),
(234, 78, '_wp_trash_meta_status', 'publish'),
(235, 78, '_wp_trash_meta_time', '1622803362');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-06-01 19:03:15', '2021-06-01 17:03:15', '<!-- wp:paragraph -->\n<p>Dobro došli u WordPress. Ovo je vaš prvi članak. Uredite ga ili obrišite, zatim započnite sa pisanjem!</p>\n<!-- /wp:paragraph -->', 'Zdravo svijete!', '', 'trash', 'open', 'open', '', 'zdravo-svijete__trashed', '', '', '2021-06-01 19:07:38', '2021-06-01 17:07:38', '', 0, 'http://localhost/eth/?p=1', 0, 'post', '', 1),
(2, 1, '2021-06-01 19:03:15', '2021-06-01 17:03:15', '<!-- wp:paragraph -->\n<p>Ovo je primjer. Razlikuje se od bloga, jer će ostati na jednom mjestu i pojaviti se u navigaciji sajta (u većini tema). Većina ljudi počinje sa osnovnim informacijama, koje ih predstavljaju potencijalnim posjetiteljima. Mogli biste reći nešto ovako:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Ćao! Ja sam kurir na biciklu danju, a noću sam glumac. Ovo je moja web stranica. Živim u Los Angelesu, imam sjajnog psa zvanog Jack i volim ćevape.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ili nešto ovako:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Kompanija KSIZ Doohickey osnovana je 1971. i od tada pruža kvalitetne doohickeye svima. Locirana u Gothamu, KSIZ zapošljava preko 2 000 ljudi i radi svakakve fenomenalne stvari za Gotham zajednicu.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Kao novi korisnik WordPressa, posjetite <a href=\"http://localhost/eth/wp-admin/\">vašu kontrolnu ploču</a> da obrišete ovu stranicu i kreirate nove stranice sa vašim sadržajem. Želimo vam puno zabave!</p>\n<!-- /wp:paragraph -->', 'Probna stranica', '', 'trash', 'closed', 'open', '', 'probna stranica__trashed', '', '', '2021-06-01 19:09:38', '2021-06-01 17:09:38', '', 0, 'http://localhost/eth/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-06-01 19:03:15', '2021-06-01 17:03:15', '<!-- wp:heading --><h2>Ko smo</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Adresa naše web stranice je: http://localhost/eth.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Komentari</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Kada posjetitelji napišu komentar na web-stranici mi prikupljamo podatke prikazane u formi komentara, a također i IP adresu posjetioca kao i string korisničkog agenta preglednika, kako bismo lakše otkrili spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Moguće je da je anonimiziran string kreiran iz vaše email adrese (koji se također zove hash) dostavljen Gravatar servisu kako bi provjerili da li ga koristite. Pravila privatnosti Gravatar servisa dostupna su ovdje: https://automattic.com/privacy/. Nakon odobrenja vašeg komentara, vaša profilna slika je javno vidljiva u kontekstu vašeg komentara.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Fajlovi</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako dodate sliku na web stranicu, trebali bi izbjegavati prenos slika koje imaju ugrađene podatke o lokaciji (EXIF GPS). Posjetioci web stranice mogu ih preuzeti i izdvojiti bilo koje podatke o lokaciji iz slika sa web stranice.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Kolačići</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako napišete komentar na našoj web stranici, možete odabrati da spremite ime, email adresu i web stranicu u kolačiće. Razlog za ovo je kako bi vam olakšali ponovno komentarisanje, jer nećete morati popunjavati vaše lične informacije više puta. Ovi kolačići traju godinu dana.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ako posjetite našu stranicu za prijavu, postaviti ćemo privremeni kolačić kako bi utvrdili da li vaš preglednik prihvaća kolačiće. Ovaj kolačić ne sadrži osobne podatke i briše se kada ugasite preglednik.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Kada se prijavite, također ćemo postaviti nekoliko kolačića kako bi sačuvali vaše podatke o prijavi i vaše postavke prikaza. Kolačići prijave traju dva dana, a kolačići postavki prikaza traju godinu dana. Ako odaberete &quot;Zapamti me&quot;, vaša prijava će trajati dvije sedmice. Ako se odjavite s računa, kolačići prijave će biti uklonjeni.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ako uredite ili objavite članak, dodatni kolačić biti će spremljen u vašem pregledniku. Ovaj kolačić ne sadrži osobne podatke i samo ukazuje na ID objave članka koji ste upravo uredili. Kolačić ističe nakon 1 dana.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ugrađeni sadržaj sa drugih web lokacija</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Članci na ovoj web stranici mogu sadržavati ugrađeni sadržaj (npr. video, slike, članke, itd.). Ugrađeni sadržaj sa drugih web stranica ponaša se identično kao da je posjetitelj posjetio tu drugu web stranicu.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ove web stranice možda prikupljaju podatke o vama, koriste kolačiće, imaju ugrađeno dodatno praćenje od trećih strana, i nadgledaju vašu interakciju s tim ugrađenim sadržajem, uključujući praćenje vaše interakcije s ugrađenim sadržajem ako imate račun i prijavljeni ste na web stranici.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>S kim dijelimo vaše podatke</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Koliko dugo zadržavamo vaše podatke</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako ostavite komentar, komentar i njegove metapodatke se zadržavaju na neodređeno vrijeme. To radimo iz razloga da možemo priznati i odobriti bilo kakve slijedeće komentare automatski umjesto da ih zadržavamo u redu za moderaciju.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Za korisnike koji se registruju na našoj web stranici (ako ih ima), mi također pohranjujemo lične podatke koje navedu u njihovim korisničkim profilima, Svi korisnici mogu vidjeti, urediti, ili obrisati svoje lične podatke u bilo koje vrijeme (osim što ne mogu promijeniti svoje korisničko ime). Administratori web stranice također mogu vidjeti i urediti te informacije.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Kakva prava imate u vezi svojih podataka</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako imate račun na ovoj web stranici, ili ste pisali komentare, možete zatražiti primanje izvoznog fajla ličnih podataka koje imamo o vama, uključujući sve podatke koje ste nam dostavili. Također možete zatražiti brisanje svih ličnih podataka koje imamo o vama. Ovo ne uključuje bilo koje podatke koje smo obavezni držati za administrativne, pravne ili sigurnosne namjene.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Gdje šaljemo vaše podatke</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Komentari posjetitelja mogu se pregledati automatiziranom uslugom spam detekcije.</p><!-- /wp:paragraph -->', 'Politika privatnosti', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2021-06-01 19:09:43', '2021-06-01 17:09:43', '', 0, 'http://localhost/eth/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-06-01 19:03:37', '0000-00-00 00:00:00', '', 'Automatska skica', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-06-01 19:03:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/eth/?p=4', 0, 'post', '', 0),
(6, 1, '2021-06-01 19:07:22', '2021-06-01 17:07:22', '<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"medium\"} -->\n<p class=\"has-text-align-left has-medium-font-size\">Vitalik Buterin je rusko-kanadski programer koji je poznatiji kao jedan od osnivača Ethereuma. Rođen je 31. januara 1994. godine. Do svoje šeste godine živio je u Rusiji kada su njegovi roditelji odlučili da se odsele u Kanadu zbog boljih poslova. On je već od malena bio u toku o kriptovalutama koje je saznao od svoga oca. Nakon završene srednje škole započeo je studije na Univerzitetu Waterloo. Tamo je išao na razne napredne kurseve i osvajao razne nagrade i medalje na takmičenjima. 2013. godine je objavio bijelu knjigu predlažući Ethereum. Napustio je Univerzitet 2014. godine kad je dobio stipendiju od 100 000 dolara i počeo raditi na Ethereumu punim radnim vremenom.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":34,\"width\":515,\"height\":459,\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/eth/wp-content/uploads/2021/06/vitalk-1-1024x914.jpg\" alt=\"\" class=\"wp-image-34\" width=\"515\" height=\"459\"/></figure></div>\n<!-- /wp:image -->', 'Vitalik Buterin', '', 'publish', 'open', 'open', '', 'vitalik-buterin', '', '', '2021-06-02 18:09:07', '2021-06-02 16:09:07', '', 0, 'http://localhost/eth/?p=6', 0, 'post', '', 0),
(7, 1, '2021-06-01 19:06:52', '2021-06-01 17:06:52', '<!-- wp:paragraph -->\n<p>Vitalik Buterin je rusko-kanadski programer koji je poznatiji kao jedan od osnivača Ethereuma. Rođen je 31. januara 1994. godine. Do svoje šeste godine živio je u Rusiji kada su njegovi roditelji odlučili da se odsele u Kanadu zbog boljih poslova. On je već od malena bio u toku o kriptovalutama koje je saznao od svoga oca. Nakon završene srednje škole započeo je studije na Univerzitetu Waterloo. Tamo je išao na razne napredne kurseve i osvajao razne nagrade i medalje na takmičenjima. 2013. godine je objavio bijelu knjigu predlažući Ethereum. Napustio je Univerzitet 2014. godine kad je dobio stipendiju od 100 000 dolara i počeo raditi na Ethereumu punim radnim vremenom.</p>\n<!-- /wp:paragraph -->', 'Vitalik Buterin', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-06-01 19:06:52', '2021-06-01 17:06:52', '', 6, 'http://localhost/eth/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-06-01 19:07:38', '2021-06-01 17:07:38', '<!-- wp:paragraph -->\n<p>Dobro došli u WordPress. Ovo je vaš prvi članak. Uredite ga ili obrišite, zatim započnite sa pisanjem!</p>\n<!-- /wp:paragraph -->', 'Zdravo svijete!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-06-01 19:07:38', '2021-06-01 17:07:38', '', 1, 'http://localhost/eth/?p=8', 0, 'revision', '', 0),
(9, 1, '2021-06-01 19:09:38', '2021-06-01 17:09:38', '<!-- wp:paragraph -->\n<p>Ovo je primjer. Razlikuje se od bloga, jer će ostati na jednom mjestu i pojaviti se u navigaciji sajta (u većini tema). Većina ljudi počinje sa osnovnim informacijama, koje ih predstavljaju potencijalnim posjetiteljima. Mogli biste reći nešto ovako:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Ćao! Ja sam kurir na biciklu danju, a noću sam glumac. Ovo je moja web stranica. Živim u Los Angelesu, imam sjajnog psa zvanog Jack i volim ćevape.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ili nešto ovako:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Kompanija KSIZ Doohickey osnovana je 1971. i od tada pruža kvalitetne doohickeye svima. Locirana u Gothamu, KSIZ zapošljava preko 2 000 ljudi i radi svakakve fenomenalne stvari za Gotham zajednicu.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Kao novi korisnik WordPressa, posjetite <a href=\"http://localhost/eth/wp-admin/\">vašu kontrolnu ploču</a> da obrišete ovu stranicu i kreirate nove stranice sa vašim sadržajem. Želimo vam puno zabave!</p>\n<!-- /wp:paragraph -->', 'Probna stranica', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-06-01 19:09:38', '2021-06-01 17:09:38', '', 2, 'http://localhost/eth/?p=9', 0, 'revision', '', 0),
(10, 1, '2021-06-01 19:09:43', '2021-06-01 17:09:43', '<!-- wp:heading --><h2>Ko smo</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Adresa naše web stranice je: http://localhost/eth.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Komentari</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Kada posjetitelji napišu komentar na web-stranici mi prikupljamo podatke prikazane u formi komentara, a također i IP adresu posjetioca kao i string korisničkog agenta preglednika, kako bismo lakše otkrili spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Moguće je da je anonimiziran string kreiran iz vaše email adrese (koji se također zove hash) dostavljen Gravatar servisu kako bi provjerili da li ga koristite. Pravila privatnosti Gravatar servisa dostupna su ovdje: https://automattic.com/privacy/. Nakon odobrenja vašeg komentara, vaša profilna slika je javno vidljiva u kontekstu vašeg komentara.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Fajlovi</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako dodate sliku na web stranicu, trebali bi izbjegavati prenos slika koje imaju ugrađene podatke o lokaciji (EXIF GPS). Posjetioci web stranice mogu ih preuzeti i izdvojiti bilo koje podatke o lokaciji iz slika sa web stranice.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Kolačići</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako napišete komentar na našoj web stranici, možete odabrati da spremite ime, email adresu i web stranicu u kolačiće. Razlog za ovo je kako bi vam olakšali ponovno komentarisanje, jer nećete morati popunjavati vaše lične informacije više puta. Ovi kolačići traju godinu dana.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ako posjetite našu stranicu za prijavu, postaviti ćemo privremeni kolačić kako bi utvrdili da li vaš preglednik prihvaća kolačiće. Ovaj kolačić ne sadrži osobne podatke i briše se kada ugasite preglednik.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Kada se prijavite, također ćemo postaviti nekoliko kolačića kako bi sačuvali vaše podatke o prijavi i vaše postavke prikaza. Kolačići prijave traju dva dana, a kolačići postavki prikaza traju godinu dana. Ako odaberete &quot;Zapamti me&quot;, vaša prijava će trajati dvije sedmice. Ako se odjavite s računa, kolačići prijave će biti uklonjeni.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ako uredite ili objavite članak, dodatni kolačić biti će spremljen u vašem pregledniku. Ovaj kolačić ne sadrži osobne podatke i samo ukazuje na ID objave članka koji ste upravo uredili. Kolačić ističe nakon 1 dana.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ugrađeni sadržaj sa drugih web lokacija</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Članci na ovoj web stranici mogu sadržavati ugrađeni sadržaj (npr. video, slike, članke, itd.). Ugrađeni sadržaj sa drugih web stranica ponaša se identično kao da je posjetitelj posjetio tu drugu web stranicu.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ove web stranice možda prikupljaju podatke o vama, koriste kolačiće, imaju ugrađeno dodatno praćenje od trećih strana, i nadgledaju vašu interakciju s tim ugrađenim sadržajem, uključujući praćenje vaše interakcije s ugrađenim sadržajem ako imate račun i prijavljeni ste na web stranici.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>S kim dijelimo vaše podatke</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Koliko dugo zadržavamo vaše podatke</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako ostavite komentar, komentar i njegove metapodatke se zadržavaju na neodređeno vrijeme. To radimo iz razloga da možemo priznati i odobriti bilo kakve slijedeće komentare automatski umjesto da ih zadržavamo u redu za moderaciju.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Za korisnike koji se registruju na našoj web stranici (ako ih ima), mi također pohranjujemo lične podatke koje navedu u njihovim korisničkim profilima, Svi korisnici mogu vidjeti, urediti, ili obrisati svoje lične podatke u bilo koje vrijeme (osim što ne mogu promijeniti svoje korisničko ime). Administratori web stranice također mogu vidjeti i urediti te informacije.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Kakva prava imate u vezi svojih podataka</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako imate račun na ovoj web stranici, ili ste pisali komentare, možete zatražiti primanje izvoznog fajla ličnih podataka koje imamo o vama, uključujući sve podatke koje ste nam dostavili. Također možete zatražiti brisanje svih ličnih podataka koje imamo o vama. Ovo ne uključuje bilo koje podatke koje smo obavezni držati za administrativne, pravne ili sigurnosne namjene.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Gdje šaljemo vaše podatke</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Komentari posjetitelja mogu se pregledati automatiziranom uslugom spam detekcije.</p><!-- /wp:paragraph -->', 'Politika privatnosti', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-06-01 19:09:43', '2021-06-01 17:09:43', '', 3, 'http://localhost/eth/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-06-01 19:11:00', '0000-00-00 00:00:00', '', 'Početna', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-06-01 19:11:00', '2021-06-01 17:11:00', '', 0, 'http://localhost/eth/?page_id=11', 0, 'page', '', 0),
(12, 1, '2021-06-01 19:23:21', '2021-06-01 17:23:21', '{\n    \"sidebars_widgets[sidebar]\": {\n        \"value\": [\n            \"recent-posts-2\",\n            \"categories-2\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:23:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '85a0b0b4-d17a-4b95-9bed-7909dc116358', '', '', '2021-06-01 19:23:21', '2021-06-01 17:23:21', '', 0, 'http://localhost/eth/2021/06/01/85a0b0b4-d17a-4b95-9bed-7909dc116358/', 0, 'customize_changeset', '', 0),
(13, 1, '2021-06-01 19:24:06', '2021-06-01 17:24:06', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:23:45\"\n    },\n    \"site_icon\": {\n        \"value\": 14,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:24:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '83773a26-ff2e-4ba5-83ab-20c3b69f3109', '', '', '2021-06-01 19:24:06', '2021-06-01 17:24:06', '', 0, 'http://localhost/eth/?p=13', 0, 'customize_changeset', '', 0),
(14, 1, '2021-06-01 19:23:52', '2021-06-01 17:23:52', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2021-06-01 19:23:52', '2021-06-01 17:23:52', '', 0, 'http://localhost/eth/wp-content/uploads/2021/06/download.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2021-06-01 19:29:57', '2021-06-01 17:29:57', '{\n    \"nav_menu[-7123720760381975000]\": {\n        \"value\": {\n            \"name\": \"Glavni meni\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:24:45\"\n    },\n    \"nav_menu_item[-1470956418750173200]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Po\\u010detna\",\n            \"url\": \"http://localhost/eth\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Po\\u010detna\",\n            \"nav_menu_term_id\": -7123720760381975000,\n            \"_invalid\": false,\n            \"type_label\": \"Korisni\\u010dki link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:24:45\"\n    },\n    \"suki::nav_menu_locations[header-menu-1]\": {\n        \"value\": -7123720760381975000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:25:45\"\n    },\n    \"suki::nav_menu_locations[header-mobile-menu]\": {\n        \"value\": -7123720760381975000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:25:45\"\n    },\n    \"suki::page_layout\": {\n        \"value\": \"full-width\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:26:45\"\n    },\n    \"suki::header_elements_main_right\": {\n        \"value\": [\n            \"menu-1\"\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:26:45\"\n    },\n    \"suki::page_header_elements_center\": {\n        \"value\": [],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:27:41\"\n    },\n    \"suki::page_header_elements_right\": {\n        \"value\": [\n            \"title\"\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:27:41\"\n    },\n    \"suki::page_header_bg_image\": {\n        \"value\": \"http://localhost/eth/wp-content/uploads/2021/06/dd.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:29:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '39443161-4312-491b-9369-97e1fadb0b96', '', '', '2021-06-01 19:29:57', '2021-06-01 17:29:57', '', 0, 'http://localhost/eth/?p=15', 0, 'customize_changeset', '', 0),
(16, 1, '2021-06-01 19:29:34', '2021-06-01 17:29:34', '', 'dd', '', 'inherit', 'open', 'closed', '', 'dd', '', '', '2021-06-01 19:29:34', '2021-06-01 17:29:34', '', 0, 'http://localhost/eth/wp-content/uploads/2021/06/dd.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2021-06-02 18:04:47', '2021-06-01 17:29:57', '', 'Početna', '', 'publish', 'closed', 'closed', '', 'pocetna', '', '', '2021-06-02 18:04:47', '2021-06-02 16:04:47', '', 0, 'http://localhost/eth/2021/06/01/pocetna/', 1, 'nav_menu_item', '', 0),
(18, 1, '2021-06-01 19:32:48', '2021-06-01 17:32:48', '{\n    \"suki::page_header_elements_center\": {\n        \"value\": [\n            \"title\"\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:32:48\"\n    },\n    \"suki::page_header_elements_right\": {\n        \"value\": [],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:32:48\"\n    },\n    \"suki::page_header_title_text_color\": {\n        \"value\": \"#fcfcfc\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:32:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c286a79b-e11b-4eb5-bfe7-dfff1b34f6ec', '', '', '2021-06-01 19:32:48', '2021-06-01 17:32:48', '', 0, 'http://localhost/eth/2021/06/01/c286a79b-e11b-4eb5-bfe7-dfff1b34f6ec/', 0, 'customize_changeset', '', 0),
(19, 1, '2021-06-01 19:44:02', '2021-06-01 17:44:02', '{\n    \"suki::subtle_color\": {\n        \"value\": \"rgba(204,204,204,0.05)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:36:48\"\n    },\n    \"suki::footer_elements_bottom_center\": {\n        \"value\": [],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:37:48\"\n    },\n    \"suki::footer_elements_bottom_right\": {\n        \"value\": [\n            \"social\"\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:37:48\"\n    },\n    \"suki::page_header_bg_color\": {\n        \"value\": \"rgba(63,63,63,0.05)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:41:49\"\n    },\n    \"suki::page_header_border_color\": {\n        \"value\": \"#0a0a0a\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:41:49\"\n    },\n    \"suki::page_header_bg_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:41:49\"\n    },\n    \"suki::page_header_bg_overlay_color\": {\n        \"value\": \"#e2e2e2\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:44:02\"\n    },\n    \"suki::page_header_title_text_color\": {\n        \"value\": \"#333333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-01 17:43:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '50622e0a-98f8-4e41-a1b0-b85a51b74592', '', '', '2021-06-01 19:44:02', '2021-06-01 17:44:02', '', 0, 'http://localhost/eth/?p=19', 0, 'customize_changeset', '', 0),
(20, 1, '2021-06-02 11:29:49', '2021-06-02 09:29:49', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2021-06-02 11:29:49', '2021-06-02 09:29:49', '', 0, 'http://localhost/eth/wp-content/uploads/2021/06/download-1.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2021-06-02 11:30:04', '2021-06-02 09:30:04', '{\n    \"site_icon\": {\n        \"value\": 20,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 09:29:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '89749f3c-15c8-4d0e-9310-f6da9fbc1ec8', '', '', '2021-06-02 11:30:04', '2021-06-02 09:30:04', '', 0, 'http://localhost/eth/?p=21', 0, 'customize_changeset', '', 0),
(23, 1, '2021-06-02 12:24:15', '2021-06-02 10:24:15', '{\n    \"sidebars_widgets[sidebar]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 10:22:22\"\n    },\n    \"suki::footer_widgets_bar\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 10:22:22\"\n    },\n    \"suki::footer_elements_bottom_left\": {\n        \"value\": [],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 10:23:22\"\n    },\n    \"suki::content_layout\": {\n        \"value\": \"narrow\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 10:24:15\"\n    },\n    \"suki::content_padding\": {\n        \"value\": \"80px 30px 80px 30px\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 10:24:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c70956b9-e8f3-43e0-b943-99a01a708bc8', '', '', '2021-06-02 12:24:15', '2021-06-02 10:24:15', '', 0, 'http://localhost/eth/?p=23', 0, 'customize_changeset', '', 0),
(24, 1, '2021-06-02 12:57:42', '0000-00-00 00:00:00', '{\n    \"suki::page_layout\": {\n        \"value\": \"boxed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 10:57:42\"\n    },\n    \"suki::page_bg_color\": {\n        \"value\": \"#33afa3\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 10:57:42\"\n    },\n    \"suki::container_width\": {\n        \"value\": \"1020px\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 10:57:42\"\n    },\n    \"suki::content_narrow_width\": {\n        \"value\": \"759px\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 10:57:42\"\n    },\n    \"suki::boxed_page_width\": {\n        \"value\": \"1399px\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 10:57:42\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '8f3b507e-a548-4853-a3e1-c5af8a1abfbf', '', '', '2021-06-02 12:57:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/eth/?p=24', 0, 'customize_changeset', '', 0),
(25, 1, '2021-06-02 12:59:45', '0000-00-00 00:00:00', '{\n    \"suki::page_header_elements_left\": {\n        \"value\": [],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 10:59:45\"\n    },\n    \"suki::page_header_elements_center\": {\n        \"value\": [\n            \"title\"\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 10:59:45\"\n    },\n    \"suki::content_container\": {\n        \"value\": \"default\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 10:59:45\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '0ed1e046-3684-47ab-9104-9936dce5d31d', '', '', '2021-06-02 12:59:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/eth/?p=25', 0, 'customize_changeset', '', 0),
(27, 1, '2021-06-02 13:11:40', '2021-06-02 11:11:40', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:09:07\"\n    },\n    \"sydney::wrapper_top_padding\": {\n        \"value\": \"70\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:08:07\"\n    },\n    \"sydney::front_header_type\": {\n        \"value\": \"image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:09:07\"\n    },\n    \"sydney::header_image\": {\n        \"value\": \"http://localhost/eth/wp-content/uploads/2021/06/dd.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:10:08\"\n    },\n    \"sydney::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/eth/wp-content/uploads/2021/06/dd.jpg\",\n            \"thumbnail_url\": \"http://localhost/eth/wp-content/uploads/2021/06/dd.jpg\",\n            \"timestamp\": 1622632184982,\n            \"attachment_id\": 16,\n            \"width\": 800,\n            \"height\": 300\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:10:08\"\n    },\n    \"sydney::slider_image_1\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:10:08\"\n    },\n    \"sydney::header_height\": {\n        \"value\": \"120\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:11:40\"\n    },\n    \"sydney::sticky_menu\": {\n        \"value\": \"sticky\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:11:07\"\n    },\n    \"sydney::menu_style\": {\n        \"value\": \"centered\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:11:07\"\n    },\n    \"sydney::header_bg_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:11:07\"\n    },\n    \"sydney::menu_container\": {\n        \"value\": \"container\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:11:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8f08044a-f0b9-4993-8bee-361126ee01e4', '', '', '2021-06-02 13:11:40', '2021-06-02 11:11:40', '', 0, 'http://localhost/eth/?p=27', 0, 'customize_changeset', '', 0),
(28, 1, '2021-06-02 13:17:08', '2021-06-02 11:17:08', '{\n    \"sydney::blog_layout\": {\n        \"value\": \"modern\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:13:07\"\n    },\n    \"sydney::site_title_size\": {\n        \"value\": \"40\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:13:07\"\n    },\n    \"sydney::footer_widget_areas\": {\n        \"value\": \"2\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:14:07\"\n    },\n    \"sydney::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:15:08\"\n    },\n    \"sydney::menu_bg_color\": {\n        \"value\": \"#263246\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:16:07\"\n    },\n    \"sydney::body_text_color\": {\n        \"value\": \"#47425d\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:15:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a744e861-3158-459a-ab50-3e28abd75c91', '', '', '2021-06-02 13:17:08', '2021-06-02 11:17:08', '', 0, 'http://localhost/eth/?p=28', 0, 'customize_changeset', '', 0),
(29, 1, '2021-06-02 18:04:48', '2021-06-02 11:19:01', '', 'Osnivač', '', 'publish', 'closed', 'closed', '', 'osnivac', '', '', '2021-06-02 18:04:48', '2021-06-02 16:04:48', '', 0, 'http://localhost/eth/?p=29', 8, 'nav_menu_item', '', 0),
(30, 1, '2021-06-02 13:20:50', '2021-06-02 11:20:50', '', 'vitalk', '', 'inherit', 'open', 'closed', '', 'vitalk', '', '', '2021-06-02 13:20:50', '2021-06-02 11:20:50', '', 6, 'http://localhost/eth/wp-content/uploads/2021/06/vitalk.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2021-06-02 13:24:15', '2021-06-02 11:24:15', '<!-- wp:image {\"align\":\"right\",\"id\":30,\"width\":-391,\"height\":-349,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"alignright size-large is-resized\"><img src=\"http://localhost/eth/wp-content/uploads/2021/06/vitalk-1024x914.jpg\" alt=\"\" class=\"wp-image-30\" width=\"-391\" height=\"-349\"/><figcaption>Vitalik Buterin</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"medium\"} -->\n<p class=\"has-text-align-left has-medium-font-size\">Vitalik Buterin je rusko-kanadski programer koji je poznatiji kao jedan od osnivača Ethereuma. Rođen je 31. januara 1994. godine. Do svoje šeste godine živio je u Rusiji kada su njegovi roditelji odlučili da se odsele u Kanadu zbog boljih poslova. On je već od malena bio u toku o kriptovalutama koje je saznao od svoga oca. Nakon završene srednje škole započeo je studije na Univerzitetu Waterloo. Tamo je išao na razne napredne kurseve i osvajao razne nagrade i medalje na takmičenjima. 2013. godine je objavio bijelu knjigu predlažući Ethereum. Napustio je Univerzitet 2014. godine kad je dobio stipendiju od 100 000 dolara i počeo raditi na Ethereumu punim radnim vremenom.</p>\n<!-- /wp:paragraph -->', 'Vitalik Buterin', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-06-02 13:24:15', '2021-06-02 11:24:15', '', 6, 'http://localhost/eth/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-06-02 13:25:25', '2021-06-02 11:25:25', '<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"medium\"} -->\n<p class=\"has-text-align-left has-medium-font-size\">Vitalik Buterin je rusko-kanadski programer koji je poznatiji kao jedan od osnivača Ethereuma. Rođen je 31. januara 1994. godine. Do svoje šeste godine živio je u Rusiji kada su njegovi roditelji odlučili da se odsele u Kanadu zbog boljih poslova. On je već od malena bio u toku o kriptovalutama koje je saznao od svoga oca. Nakon završene srednje škole započeo je studije na Univerzitetu Waterloo. Tamo je išao na razne napredne kurseve i osvajao razne nagrade i medalje na takmičenjima. 2013. godine je objavio bijelu knjigu predlažući Ethereum. Napustio je Univerzitet 2014. godine kad je dobio stipendiju od 100 000 dolara i počeo raditi na Ethereumu punim radnim vremenom.</p>\n<!-- /wp:paragraph -->', 'Vitalik Buterin', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-06-02 13:25:25', '2021-06-02 11:25:25', '', 6, 'http://localhost/eth/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-06-02 13:26:36', '2021-06-02 11:26:36', '', 'vitalk-1', '', 'inherit', 'open', 'closed', '', 'vitalk-1', '', '', '2021-06-02 13:26:36', '2021-06-02 11:26:36', '', 6, 'http://localhost/eth/wp-content/uploads/2021/06/vitalk-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2021-06-02 13:28:28', '2021-06-02 11:28:28', '<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"medium\"} -->\n<p class=\"has-text-align-left has-medium-font-size\">Vitalik Buterin je rusko-kanadski programer koji je poznatiji kao jedan od osnivača Ethereuma. Rođen je 31. januara 1994. godine. Do svoje šeste godine živio je u Rusiji kada su njegovi roditelji odlučili da se odsele u Kanadu zbog boljih poslova. On je već od malena bio u toku o kriptovalutama koje je saznao od svoga oca. Nakon završene srednje škole započeo je studije na Univerzitetu Waterloo. Tamo je išao na razne napredne kurseve i osvajao razne nagrade i medalje na takmičenjima. 2013. godine je objavio bijelu knjigu predlažući Ethereum. Napustio je Univerzitet 2014. godine kad je dobio stipendiju od 100 000 dolara i počeo raditi na Ethereumu punim radnim vremenom.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":34,\"width\":515,\"height\":459,\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/eth/wp-content/uploads/2021/06/vitalk-1-1024x914.jpg\" alt=\"\" class=\"wp-image-34\" width=\"515\" height=\"459\"/><figcaption><strong>Vitalik Buterin</strong></figcaption></figure></div>\n<!-- /wp:image -->', 'Vitalik Buterin', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-06-02 13:28:28', '2021-06-02 11:28:28', '', 6, 'http://localhost/eth/?p=35', 0, 'revision', '', 0),
(36, 1, '2021-06-02 13:30:01', '2021-06-02 11:30:01', '<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"medium\"} -->\n<p class=\"has-text-align-left has-medium-font-size\">Vitalik Buterin je rusko-kanadski programer koji je poznatiji kao jedan od osnivača Ethereuma. Rođen je 31. januara 1994. godine. Do svoje šeste godine živio je u Rusiji kada su njegovi roditelji odlučili da se odsele u Kanadu zbog boljih poslova. On je već od malena bio u toku o kriptovalutama koje je saznao od svoga oca. Nakon završene srednje škole započeo je studije na Univerzitetu Waterloo. Tamo je išao na razne napredne kurseve i osvajao razne nagrade i medalje na takmičenjima. 2013. godine je objavio bijelu knjigu predlažući Ethereum. Napustio je Univerzitet 2014. godine kad je dobio stipendiju od 100 000 dolara i počeo raditi na Ethereumu punim radnim vremenom.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":34,\"width\":515,\"height\":459,\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/eth/wp-content/uploads/2021/06/vitalk-1-1024x914.jpg\" alt=\"\" class=\"wp-image-34\" width=\"515\" height=\"459\"/></figure></div>\n<!-- /wp:image -->', 'Vitalik Buterin', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-06-02 13:30:01', '2021-06-02 11:30:01', '', 6, 'http://localhost/eth/?p=36', 0, 'revision', '', 0),
(37, 1, '2021-06-02 13:35:22', '2021-06-02 11:35:22', '{\n    \"sydney::site_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:31:39\"\n    },\n    \"sydney::full_content_home\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:31:39\"\n    },\n    \"sydney::full_content_archives\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:31:39\"\n    },\n    \"sydney::index_feat_image\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:31:39\"\n    },\n    \"sydney::post_feat_image\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:31:39\"\n    },\n    \"sydney::blog_layout\": {\n        \"value\": \"modern\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:32:39\"\n    },\n    \"sydney::fullwidth_single\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:32:39\"\n    },\n    \"sidebars_widgets[footer-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:33:39\"\n    },\n    \"widget_sydney_contact_info[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:33:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8ab30fbc-030f-4717-923c-051e8d4b38d7', '', '', '2021-06-02 13:35:22', '2021-06-02 11:35:22', '', 0, 'http://localhost/eth/?p=37', 0, 'customize_changeset', '', 0),
(38, 1, '2021-06-02 13:35:59', '2021-06-02 11:35:59', '{\n    \"sydney::exc_lenght\": {\n        \"value\": \"55\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:35:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dae15f36-31b2-4667-89b9-7ca6183e1d38', '', '', '2021-06-02 13:35:59', '2021-06-02 11:35:59', '', 0, 'http://localhost/eth/?p=38', 0, 'customize_changeset', '', 0),
(39, 1, '2021-06-02 14:02:23', '2021-06-02 12:02:23', '{\n    \"sydney::menu_style\": {\n        \"value\": \"centered\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:55:43\"\n    },\n    \"sydney::header_bg_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 11:55:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '270538b7-4b44-42ab-9c7a-cfe835a64573', '', '', '2021-06-02 14:02:23', '2021-06-02 12:02:23', '', 0, 'http://localhost/eth/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2021-06-02 14:09:25', '2021-06-02 12:09:25', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Ethereum je decentralizovani blockchain (baza podataka koja se ne nalazi na jednom mjestu, već čine više manjih baza povezani digitalno koje sadrže informacije o digitalnim transakcijama). Ether (ETH) je kripto valuta druga po vrijednosti poslije Bitcoin-a. Ehtereum je više od jedne obične kripto valute. On predstavlja mrežu koja u svom sistemu ima internet pretraživač, programski jezik i sistem za plaćanje. Ethereum se nadovezuje na Bitcoinovu inovaciju uz neke razlike. Oba omogućavaju plaćanje preko digitalnog novca bez banaka i računa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Da bi dobili ETH novčiće koriste se Proof of Work (PoW) algoritam koji zahtjevaju od rudara da ulože trud (procersku moć) preko Rig mašine ili ASIC mašine. Mi ustvari ustupamo naš hardware na korištenje, a za uzvrat dobijamo dio od transakcija u vidu kripto valute ETH.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Za razvoj ethereuma skupljeno je 150 miliona dolara 2014. godine, a već 30. jula 2015. godine mreža je pušten u rad. U početku je pušteno 72 miliona novčića. 2016. godine desio se hakerski napad preko The DAO projekta i ukradeno je 50 miliona dolara u ETH novčićima. Poslije toga ethereum zajednica je glasala za potpuno promjenu mreže, kako bi preokrenuli krađu. Tada nastaje Ethereum Classic (ETC) koji nastavlja sa radom prvobitne mreže, a ETH nastavlja kao nova mreža.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Zbog malog protoka transakcija u sekundi (15 transakcija u sekundi) javlja se problem da troškovi transakcija poskupljuju i do nekoliko dolara. Zbog toga prelazi se na rad sa Proof of Stake (PoS) algoritmom rada i nastaje Ethereum 2.0. PoS algoritam rada je da validatori ulažu novčiće na neki vremenski period, a zauzvrat dobijaju kamatu od uloženih novčića na godišnjem nivou. Što je više validatora smanjuje kamata na godišnjem nivou.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":44,\"width\":262,\"height\":262,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/eth/wp-content/uploads/2021/06/eth-1024x1024.png\" alt=\"\" class=\"wp-image-44\" width=\"262\" height=\"262\"/></figure></div>\n<!-- /wp:image -->', 'Više o Ethereumu', '', 'publish', 'open', 'open', '', 'vise-o-ethereumu', '', '', '2021-06-02 18:11:58', '2021-06-02 16:11:58', '', 0, 'http://localhost/eth/?p=40', 0, 'post', '', 0),
(41, 1, '2021-06-02 14:09:25', '2021-06-02 12:09:25', '<!-- wp:paragraph -->\n<p>Ethereum je decentralizovani blockchain (baza podataka koja se ne nalazi na jednom mjestu, već čine više manjih baza povezani digitalno koje sadrže informacije o digitalnim transakcijama). Ether (ETH) je kripto valuta druga po vrijednosti poslije Bitcoin-a. Ehtereum je više od jedne obične kripto valute. On predstavlja mrežu koja u svom sistemu ima internet pretraživač, programski jezik i sistem za plaćanje. Ethereum se nadovezuje na Bitcoinovu inovaciju uz neke razlike. Oba omogućavaju plaćanje preko digitalnog novca bez banaka i računa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Da bi dobili ETH novčiće koriste se Proof of Work (PoW) algoritam koji zahtjevaju od rudara da ulože trud (procersku moć) preko Rig mašine ili ASIC mašine. Mi ustvari ustupamo naš hardware na korištenje, a za uzvrat dobijamo dio od transakcija u vidu kripto valute ETH.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Za razvoj ethereuma skupljeno je 150 miliona dolara 2014. godine, a već 30. jula 2015. godine mreža je pušten u rad. U početku je pušteno 72 miliona novčića. 2016. godine desio se hakerski napad preko The DAO projekta i ukradeno je 50 miliona dolara u ETH novčićima. Poslije toga ethereum zajednica je glasala za potpuno promjenu mreže, kako bi preokrenuli krađu. Tada nastaje Ethereum Classic (ETC) koji nastavlja sa radom prvobitne mreže, a ETH nastavlja kao nova mreža.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Zbog malog protoka transakcija u sekundi (15 transakcija u sekundi) javlja se problem da troškovi transakcija poskupljuju i do nekoliko dolara. Zbog toga prelazi se na rad sa Proof of Stake (PoS) algoritmom rada i nastaje Ethereum 2.0. PoS algoritam rada je da validatori ulažu novčiće na neki vremenski period, a zauzvrat dobijaju kamatu od uloženih novčića na godišnjem nivou. Što je više validatora smanjuje kamata na godišnjem nivou.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Više o Ethereumu', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2021-06-02 14:09:25', '2021-06-02 12:09:25', '', 40, 'http://localhost/eth/?p=41', 0, 'revision', '', 0),
(42, 1, '2021-06-02 18:04:47', '2021-06-02 12:10:48', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2021-06-02 18:04:47', '2021-06-02 16:04:47', '', 0, 'http://localhost/eth/?p=42', 2, 'nav_menu_item', '', 0),
(44, 1, '2021-06-02 14:13:58', '2021-06-02 12:13:58', '', 'eth', '', 'inherit', 'open', 'closed', '', 'eth', '', '', '2021-06-02 14:13:58', '2021-06-02 12:13:58', '', 40, 'http://localhost/eth/wp-content/uploads/2021/06/eth.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(45, 1, '2021-06-02 14:14:44', '2021-06-02 12:14:44', '<!-- wp:paragraph -->\n<p>Ethereum je decentralizovani blockchain (baza podataka koja se ne nalazi na jednom mjestu, već čine više manjih baza povezani digitalno koje sadrže informacije o digitalnim transakcijama). Ether (ETH) je kripto valuta druga po vrijednosti poslije Bitcoin-a. Ehtereum je više od jedne obične kripto valute. On predstavlja mrežu koja u svom sistemu ima internet pretraživač, programski jezik i sistem za plaćanje. Ethereum se nadovezuje na Bitcoinovu inovaciju uz neke razlike. Oba omogućavaju plaćanje preko digitalnog novca bez banaka i računa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Da bi dobili ETH novčiće koriste se Proof of Work (PoW) algoritam koji zahtjevaju od rudara da ulože trud (procersku moć) preko Rig mašine ili ASIC mašine. Mi ustvari ustupamo naš hardware na korištenje, a za uzvrat dobijamo dio od transakcija u vidu kripto valute ETH.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Za razvoj ethereuma skupljeno je 150 miliona dolara 2014. godine, a već 30. jula 2015. godine mreža je pušten u rad. U početku je pušteno 72 miliona novčića. 2016. godine desio se hakerski napad preko The DAO projekta i ukradeno je 50 miliona dolara u ETH novčićima. Poslije toga ethereum zajednica je glasala za potpuno promjenu mreže, kako bi preokrenuli krađu. Tada nastaje Ethereum Classic (ETC) koji nastavlja sa radom prvobitne mreže, a ETH nastavlja kao nova mreža.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Zbog malog protoka transakcija u sekundi (15 transakcija u sekundi) javlja se problem da troškovi transakcija poskupljuju i do nekoliko dolara. Zbog toga prelazi se na rad sa Proof of Stake (PoS) algoritmom rada i nastaje Ethereum 2.0. PoS algoritam rada je da validatori ulažu novčiće na neki vremenski period, a zauzvrat dobijaju kamatu od uloženih novčića na godišnjem nivou. Što je više validatora smanjuje kamata na godišnjem nivou.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":44,\"width\":262,\"height\":262,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/eth/wp-content/uploads/2021/06/eth-1024x1024.png\" alt=\"\" class=\"wp-image-44\" width=\"262\" height=\"262\"/><figcaption>Logo ETH</figcaption></figure></div>\n<!-- /wp:image -->', 'Više o Ethereumu', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2021-06-02 14:14:44', '2021-06-02 12:14:44', '', 40, 'http://localhost/eth/?p=45', 0, 'revision', '', 0),
(46, 1, '2021-06-02 14:16:23', '2021-06-02 12:16:23', '<!-- wp:paragraph -->\n<p>Ethereum je decentralizovani blockchain (baza podataka koja se ne nalazi na jednom mjestu, već čine više manjih baza povezani digitalno koje sadrže informacije o digitalnim transakcijama). Ether (ETH) je kripto valuta druga po vrijednosti poslije Bitcoin-a. Ehtereum je više od jedne obične kripto valute. On predstavlja mrežu koja u svom sistemu ima internet pretraživač, programski jezik i sistem za plaćanje. Ethereum se nadovezuje na Bitcoinovu inovaciju uz neke razlike. Oba omogućavaju plaćanje preko digitalnog novca bez banaka i računa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Da bi dobili ETH novčiće koriste se Proof of Work (PoW) algoritam koji zahtjevaju od rudara da ulože trud (procersku moć) preko Rig mašine ili ASIC mašine. Mi ustvari ustupamo naš hardware na korištenje, a za uzvrat dobijamo dio od transakcija u vidu kripto valute ETH.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Za razvoj ethereuma skupljeno je 150 miliona dolara 2014. godine, a već 30. jula 2015. godine mreža je pušten u rad. U početku je pušteno 72 miliona novčića. 2016. godine desio se hakerski napad preko The DAO projekta i ukradeno je 50 miliona dolara u ETH novčićima. Poslije toga ethereum zajednica je glasala za potpuno promjenu mreže, kako bi preokrenuli krađu. Tada nastaje Ethereum Classic (ETC) koji nastavlja sa radom prvobitne mreže, a ETH nastavlja kao nova mreža.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Zbog malog protoka transakcija u sekundi (15 transakcija u sekundi) javlja se problem da troškovi transakcija poskupljuju i do nekoliko dolara. Zbog toga prelazi se na rad sa Proof of Stake (PoS) algoritmom rada i nastaje Ethereum 2.0. PoS algoritam rada je da validatori ulažu novčiće na neki vremenski period, a zauzvrat dobijaju kamatu od uloženih novčića na godišnjem nivou. Što je više validatora smanjuje kamata na godišnjem nivou.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":44,\"width\":262,\"height\":262,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/eth/wp-content/uploads/2021/06/eth-1024x1024.png\" alt=\"\" class=\"wp-image-44\" width=\"262\" height=\"262\"/></figure></div>\n<!-- /wp:image -->', 'Više o Ethereumu', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2021-06-02 14:16:23', '2021-06-02 12:16:23', '', 40, 'http://localhost/eth/?p=46', 0, 'revision', '', 0),
(47, 1, '2021-06-02 14:36:39', '2021-06-02 12:36:39', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"meta-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 12:21:05\"\n    },\n    \"sydney::fullwidth_single\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 12:18:11\"\n    },\n    \"widget_media_gallery[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 12:18:11\"\n    },\n    \"widget_recent-posts[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6NTtzOjk6InNob3dfZGF0ZSI7YjoxO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7464471de418a4f9e68e1bea30e96c8c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 12:19:11\"\n    },\n    \"widget_nav_menu[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjg6Im5hdl9tZW51IjtpOjM7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a71d135be3377dca6df722246f483cb6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 12:19:11\"\n    },\n    \"widget_pages[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 12:20:05\"\n    },\n    \"widget_media_video[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 12:20:05\"\n    },\n    \"widget_meta[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 12:21:05\"\n    },\n    \"sydney::blog_layout\": {\n        \"value\": \"fullwidth\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 12:23:04\"\n    },\n    \"sydney::footer_widget_areas\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 12:23:04\"\n    },\n    \"sydney::full_content_home\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 12:24:05\"\n    },\n    \"sydney::full_content_archives\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 12:25:05\"\n    },\n    \"sydney::hide_meta_index\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 12:25:05\"\n    },\n    \"sydney::hide_meta_single\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 12:26:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4b38830e-88a8-47fe-aa18-f159b9c90d2e', '', '', '2021-06-02 14:36:39', '2021-06-02 12:36:39', '', 0, 'http://localhost/eth/?p=47', 0, 'customize_changeset', '', 0),
(48, 1, '2021-06-02 16:41:40', '2021-06-02 14:41:40', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"media_image-3\",\n            \"meta-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 14:37:11\"\n    },\n    \"widget_media_image[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNTp7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6NToid2lkdGgiO2k6MjI1O3M6NjoiaGVpZ2h0IjtpOjIyNTtzOjc6ImNhcHRpb24iO3M6MDoiIjtzOjM6ImFsdCI7czowOiIiO3M6OToibGlua190eXBlIjtzOjY6ImN1c3RvbSI7czo4OiJsaW5rX3VybCI7czowOiIiO3M6MTM6ImltYWdlX2NsYXNzZXMiO3M6MDoiIjtzOjEyOiJsaW5rX2NsYXNzZXMiO3M6MDoiIjtzOjg6ImxpbmtfcmVsIjtzOjA6IiI7czoxNzoibGlua190YXJnZXRfYmxhbmsiO2I6MDtzOjExOiJpbWFnZV90aXRsZSI7czowOiIiO3M6MTM6ImF0dGFjaG1lbnRfaWQiO2k6MTQ7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly9sb2NhbGhvc3QvZXRoL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDIxLzA2L2Rvd25sb2FkLnBuZyI7czo1OiJ0aXRsZSI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d55a98b9015a081352dae67b617c15d7\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 14:36:12\"\n    },\n    \"sydney::hide_meta_index\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 14:39:12\"\n    },\n    \"sydney::hide_meta_single\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 14:39:12\"\n    },\n    \"sydney::index_feat_image\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 14:39:12\"\n    },\n    \"sydney::blog_layout\": {\n        \"value\": \"masonry-layout\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 14:39:12\"\n    },\n    \"sydney::full_content_home\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 14:40:12\"\n    },\n    \"sydney::full_content_archives\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 14:40:12\"\n    },\n    \"sydney::post_feat_image\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 14:39:12\"\n    },\n    \"sydney::page_feat_image\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 14:39:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '61ce6bd7-3392-4b4c-b3ea-be0532c2581f', '', '', '2021-06-02 16:41:40', '2021-06-02 14:41:40', '', 0, 'http://localhost/eth/?p=48', 0, 'customize_changeset', '', 0),
(49, 1, '2021-06-02 17:59:11', '2021-06-02 15:59:11', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Ethereum 2.0 je dugo planirana nadogradnja Ethereuma koja će pužiti skalabilnost i sigurnost. Osnovna ideja je smanjiti potrošnju energije promjenom algoritma i povećati propusnost mreže u odnosu na broj transakcija. Uz prelaz sa PoW na PoS algoritam rada mreža se implementirati koncept blockchain krhotina. To je ideja koja se već neko vrijeme postoji i biće testirana u novoj verziji protokola Ethereum. Ethereum 2.0 je još poznat pod nazivom Serenity. Postavljanje Ethereuma 2.0 odvijat će se u 3 faze.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":51,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/eth/wp-content/uploads/2021/06/rast.png\" alt=\"\" class=\"wp-image-51\"/><figcaption>Prikaz rasta ETH-a</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Ethereum 2.0', '', 'publish', 'open', 'open', '', 'ethereum-2-0', '', '', '2021-06-02 18:12:22', '2021-06-02 16:12:22', '', 0, 'http://localhost/eth/?p=49', 0, 'post', '', 0),
(50, 1, '2021-06-02 17:55:54', '2021-06-02 15:55:54', '{\n    \"sidebars_widgets[footer-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 15:49:14\"\n    },\n    \"sydney::footer_widget_areas\": {\n        \"value\": \"4\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 15:48:13\"\n    },\n    \"widget_sydney_contact_info[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEyOiJFdGhlcmV1bSAyLjAiO3M6NzoiYWRkcmVzcyI7czoxNzoiZXRoZXJldW1AaW5mby5jb20iO3M6NToicGhvbmUiO3M6MTA6IiszMzMzMzMzMzMiO3M6NToiZW1haWwiO3M6MTc6ImV0aGVyZXVtQGluZm8uY29tIjt9\",\n            \"title\": \"Ethereum 2.0\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9cc81d48577dbfd8c7f7a89dce2b9d35\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 15:48:13\"\n    },\n    \"sydney::hide_overlay\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 15:49:14\"\n    },\n    \"sydney::header_button_html\": {\n        \"value\": \"nothing\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 15:51:13\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"calendar-3\",\n            \"media_image-3\",\n            \"meta-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 15:55:54\"\n    },\n    \"widget_custom_html[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 15:55:13\"\n    },\n    \"widget_tag_cloud[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aTowO3M6ODoidGF4b25vbXkiO3M6MTM6ImxpbmtfY2F0ZWdvcnkiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3dd1934359ba4f4f416cb31845e18b07\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 15:55:13\"\n    },\n    \"widget_calendar[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 15:55:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e51b867c-ec83-47df-ad8d-31c72da1bfb2', '', '', '2021-06-02 17:55:54', '2021-06-02 15:55:54', '', 0, 'http://localhost/eth/?p=50', 0, 'customize_changeset', '', 0),
(51, 1, '2021-06-02 17:58:11', '2021-06-02 15:58:11', '', 'rast', '', 'inherit', 'open', 'closed', '', 'rast', '', '', '2021-06-02 17:58:11', '2021-06-02 15:58:11', '', 49, 'http://localhost/eth/wp-content/uploads/2021/06/rast.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2021-06-02 17:59:11', '2021-06-02 15:59:11', '<!-- wp:paragraph -->\n<p>Ethereum 2.0 je dugo planirana nadogradnja Ethereuma koja će pužiti skalabilnost i sigurnost. Osnovna ideja je smanjiti potrošnju energije promjenom algoritma i povećati propusnost mreže u odnosu na broj transakcija. Uz prelaz sa PoW na PoS algoritam rada mreža se implementirati koncept blockchain krhotina. To je ideja koja se već neko vrijeme postoji i biće testirana u novoj verziji protokola Ethereum. Ethereum 2.0 je još poznat pod nazivom Serenity. Postavljanje Ethereuma 2.0 odvijat će se u 3 faze.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":51,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/eth/wp-content/uploads/2021/06/rast.png\" alt=\"\" class=\"wp-image-51\"/><figcaption>Prikaz rasta ETH-a</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Ethereum 2.0', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2021-06-02 17:59:11', '2021-06-02 15:59:11', '', 49, 'http://localhost/eth/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-06-02 18:04:47', '2021-06-02 16:00:16', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2021-06-02 18:04:47', '2021-06-02 16:04:47', '', 0, 'http://localhost/eth/?p=53', 3, 'nav_menu_item', '', 0),
(54, 1, '2021-06-02 18:04:47', '2021-06-02 16:01:19', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2021-06-02 18:04:47', '2021-06-02 16:04:47', '', 0, 'http://localhost/eth/?p=54', 4, 'nav_menu_item', '', 0),
(55, 1, '2021-06-02 18:02:23', '2021-06-02 16:02:23', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Prvi korak za prelaz na novi sistem i algoritam je lansiranje Beacon chaina. Beacon chain će dirigovati i uskladiti proširenu mrežu krhotina. Beacon chain je započeo testiranje u julu 2020. godine, a 01. decembra je pokrenuta i testna faza za prve korisnike sa pravim ETH novčićima. Moguće je postati validator tako što se uloži 32 ETH novčića. Nakon što se novčići prebace na Ethereum 2.0 nema povratka nazad. Čak nisu dostupne ni transakcije između korisnika U ovoj fazi su postali dostupni sledeći aspekti :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"fontSize\":\"medium\"} -->\n<ul class=\"has-medium-font-size\"><li>Upravljanje grupom stejkera (PoS rudara)</li><li>Upravljanje fondovima ulagača</li><li>Glasanje ulagača – njihova aktivnost – prijedlozi o veličini blokova</li><li>Raspodjela nagrada i kazni za ulagače</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Ukupan iznos uloženog ETH-a prelazi 4 miliona, trenutno vrijednih preko 11 miliona dolara. </p>\n<!-- /wp:paragraph -->', 'Faza 0', '', 'publish', 'open', 'open', '', 'faza-0', '', '', '2021-06-02 18:49:06', '2021-06-02 16:49:06', '', 0, 'http://localhost/eth/?p=55', 0, 'post', '', 0),
(56, 1, '2021-06-02 18:02:23', '2021-06-02 16:02:23', '', 'Faza 0', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2021-06-02 18:02:23', '2021-06-02 16:02:23', '', 55, 'http://localhost/eth/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-06-02 18:03:08', '2021-06-02 16:03:08', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Faza 1 će povezati blockchain krhotine sa Beacon chain. Za početak će postaviiti 64 krhotine i rješavaće se zadaci testiranja osnovnog modela. Odgovornost se prenosi na shardchain (lanac krhotina), provjeravanje, potvrđivanje transakcija i stanje računa. Paralelno će raditi 65 blockchaina unutar beacon chaina, koji postoji od faze 0. U ovoj fazi Ethereum blockchain za koji znamo će postati jedan od krhotina nove verzije mreže i službeno će se prebaciti na provjeru uloga.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Faza 1', '', 'publish', 'open', 'open', '', 'faza-1', '', '', '2021-06-02 18:13:12', '2021-06-02 16:13:12', '', 0, 'http://localhost/eth/?p=57', 0, 'post', '', 0),
(58, 1, '2021-06-02 18:03:08', '2021-06-02 16:03:08', '', 'Faza 1', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-06-02 18:03:08', '2021-06-02 16:03:08', '', 57, 'http://localhost/eth/?p=58', 0, 'revision', '', 0),
(59, 1, '2021-06-02 18:03:58', '2021-06-02 16:03:58', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">U posljednjoj fazi fragmenti mreže biće potpuno u funkciji kompatiblini sa pametnim ugovorima i moći će slobodno komunicirati. Ovo bi trebalo učiniti Ethereum 2.0 potpuno funkcionalnim i prolagodljivom za projekte. Krhotine će prestati biti samo pohrana podataka i postaće punopravni virtuelni slojevi i pametnih ugovora Ethereuma 1.0. Tehničke specifikacije za fazu 2 tek trebaju biti završene.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Faza 2', '', 'publish', 'open', 'open', '', 'faza-2', '', '', '2021-06-02 18:13:32', '2021-06-02 16:13:32', '', 0, 'http://localhost/eth/?p=59', 0, 'post', '', 0),
(60, 1, '2021-06-02 18:03:58', '2021-06-02 16:03:58', '', 'Faza 2', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2021-06-02 18:03:58', '2021-06-02 16:03:58', '', 59, 'http://localhost/eth/?p=60', 0, 'revision', '', 0),
(61, 1, '2021-06-02 18:04:48', '2021-06-02 16:04:48', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2021-06-02 18:04:48', '2021-06-02 16:04:48', '', 0, 'http://localhost/eth/?p=61', 5, 'nav_menu_item', '', 0),
(62, 1, '2021-06-02 18:04:48', '2021-06-02 16:04:48', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2021-06-02 18:04:48', '2021-06-02 16:04:48', '', 0, 'http://localhost/eth/?p=62', 6, 'nav_menu_item', '', 0),
(63, 1, '2021-06-02 18:04:48', '2021-06-02 16:04:48', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2021-06-02 18:04:48', '2021-06-02 16:04:48', '', 0, 'http://localhost/eth/?p=63', 7, 'nav_menu_item', '', 0),
(64, 1, '2021-06-02 18:06:50', '2021-06-02 16:06:50', '<!-- wp:paragraph -->\n<p>Prvi korak za prelaz na novi sistem i algoritam je lansiranje Beacon chaina. Beacon chain će dirigovati i uskladiti proširenu mrežu krhotina. Beacon chain je započeo testiranje u julu 2020. godine, a 01. decembra je pokrenuta i testna faza za prve korisnike sa pravim ETH novčićima. Moguće je postati validator tako što se uloži 32 ETH novčića. Nakon što se novčići prebace na Ethereum 2.0 nema povratka nazad. Čak nisu dostupne ni transakcije između korisnika U ovoj fazi su postali dostupni sledeći aspekti :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Upravljanje grupom stejkera (PoS rudara)</li><li>Upravljanje fondovima ulagača</li><li>Glasanje ulagača – njihova aktivnost – prijedlozi o veličini blokova</li><li>Raspodjela nagrada i kazni za ulagače</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Faza 0', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2021-06-02 18:06:50', '2021-06-02 16:06:50', '', 55, 'http://localhost/eth/?p=64', 0, 'revision', '', 0),
(65, 1, '2021-06-02 18:07:17', '2021-06-02 16:07:17', '<!-- wp:paragraph -->\n<p>Faza 1 će povezati blockchain krhotine sa Beacon chain. Za početak će postaviiti 64 krhotine i rješavaće se zadaci testiranja osnovnog modela. Odgovornost se prenosi na shardchain (lanac krhotina), provjeravanje, potvrđivanje transakcija i stanje računa. Paralelno će raditi 65 blockchaina unutar beacon chaina, koji postoji od faze 0. U ovoj fazi Ethereum blockchain za koji znamo će postati jedan od krhotina nove verzije mreže i službeno će se prebaciti na provjeru uloga.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Faza 1', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-06-02 18:07:17', '2021-06-02 16:07:17', '', 57, 'http://localhost/eth/?p=65', 0, 'revision', '', 0),
(66, 1, '2021-06-02 18:07:47', '2021-06-02 16:07:47', '<!-- wp:paragraph -->\n<p>U posljednjoj fazi fragmenti mreže biće potpuno u funkciji kompatiblini sa pametnim ugovorima i moći će slobodno komunicirati. Ovo bi trebalo učiniti Ethereum 2.0 potpuno funkcionalnim i prolagodljivom za projekte. Krhotine će prestati biti samo pohrana podataka i postaće punopravni virtuelni slojevi i pametnih ugovora Ethereuma 1.0. Tehničke specifikacije za fazu 2 tek trebaju biti završene.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Faza 2', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2021-06-02 18:07:47', '2021-06-02 16:07:47', '', 59, 'http://localhost/eth/?p=66', 0, 'revision', '', 0),
(67, 1, '2021-06-02 18:11:58', '2021-06-02 16:11:58', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Ethereum je decentralizovani blockchain (baza podataka koja se ne nalazi na jednom mjestu, već čine više manjih baza povezani digitalno koje sadrže informacije o digitalnim transakcijama). Ether (ETH) je kripto valuta druga po vrijednosti poslije Bitcoin-a. Ehtereum je više od jedne obične kripto valute. On predstavlja mrežu koja u svom sistemu ima internet pretraživač, programski jezik i sistem za plaćanje. Ethereum se nadovezuje na Bitcoinovu inovaciju uz neke razlike. Oba omogućavaju plaćanje preko digitalnog novca bez banaka i računa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Da bi dobili ETH novčiće koriste se Proof of Work (PoW) algoritam koji zahtjevaju od rudara da ulože trud (procersku moć) preko Rig mašine ili ASIC mašine. Mi ustvari ustupamo naš hardware na korištenje, a za uzvrat dobijamo dio od transakcija u vidu kripto valute ETH.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Za razvoj ethereuma skupljeno je 150 miliona dolara 2014. godine, a već 30. jula 2015. godine mreža je pušten u rad. U početku je pušteno 72 miliona novčića. 2016. godine desio se hakerski napad preko The DAO projekta i ukradeno je 50 miliona dolara u ETH novčićima. Poslije toga ethereum zajednica je glasala za potpuno promjenu mreže, kako bi preokrenuli krađu. Tada nastaje Ethereum Classic (ETC) koji nastavlja sa radom prvobitne mreže, a ETH nastavlja kao nova mreža.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Zbog malog protoka transakcija u sekundi (15 transakcija u sekundi) javlja se problem da troškovi transakcija poskupljuju i do nekoliko dolara. Zbog toga prelazi se na rad sa Proof of Stake (PoS) algoritmom rada i nastaje Ethereum 2.0. PoS algoritam rada je da validatori ulažu novčiće na neki vremenski period, a zauzvrat dobijaju kamatu od uloženih novčića na godišnjem nivou. Što je više validatora smanjuje kamata na godišnjem nivou.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":44,\"width\":262,\"height\":262,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/eth/wp-content/uploads/2021/06/eth-1024x1024.png\" alt=\"\" class=\"wp-image-44\" width=\"262\" height=\"262\"/></figure></div>\n<!-- /wp:image -->', 'Više o Ethereumu', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2021-06-02 18:11:58', '2021-06-02 16:11:58', '', 40, 'http://localhost/eth/?p=67', 0, 'revision', '', 0),
(68, 1, '2021-06-02 18:12:22', '2021-06-02 16:12:22', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Ethereum 2.0 je dugo planirana nadogradnja Ethereuma koja će pužiti skalabilnost i sigurnost. Osnovna ideja je smanjiti potrošnju energije promjenom algoritma i povećati propusnost mreže u odnosu na broj transakcija. Uz prelaz sa PoW na PoS algoritam rada mreža se implementirati koncept blockchain krhotina. To je ideja koja se već neko vrijeme postoji i biće testirana u novoj verziji protokola Ethereum. Ethereum 2.0 je još poznat pod nazivom Serenity. Postavljanje Ethereuma 2.0 odvijat će se u 3 faze.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":51,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/eth/wp-content/uploads/2021/06/rast.png\" alt=\"\" class=\"wp-image-51\"/><figcaption>Prikaz rasta ETH-a</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Ethereum 2.0', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2021-06-02 18:12:22', '2021-06-02 16:12:22', '', 49, 'http://localhost/eth/?p=68', 0, 'revision', '', 0),
(69, 1, '2021-06-02 18:12:49', '2021-06-02 16:12:49', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Prvi korak za prelaz na novi sistem i algoritam je lansiranje Beacon chaina. Beacon chain će dirigovati i uskladiti proširenu mrežu krhotina. Beacon chain je započeo testiranje u julu 2020. godine, a 01. decembra je pokrenuta i testna faza za prve korisnike sa pravim ETH novčićima. Moguće je postati validator tako što se uloži 32 ETH novčića. Nakon što se novčići prebace na Ethereum 2.0 nema povratka nazad. Čak nisu dostupne ni transakcije između korisnika U ovoj fazi su postali dostupni sledeći aspekti :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"fontSize\":\"medium\"} -->\n<ul class=\"has-medium-font-size\"><li>Upravljanje grupom stejkera (PoS rudara)</li><li>Upravljanje fondovima ulagača</li><li>Glasanje ulagača – njihova aktivnost – prijedlozi o veličini blokova</li><li>Raspodjela nagrada i kazni za ulagače</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Faza 0', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2021-06-02 18:12:49', '2021-06-02 16:12:49', '', 55, 'http://localhost/eth/?p=69', 0, 'revision', '', 0),
(70, 1, '2021-06-02 18:13:12', '2021-06-02 16:13:12', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Faza 1 će povezati blockchain krhotine sa Beacon chain. Za početak će postaviiti 64 krhotine i rješavaće se zadaci testiranja osnovnog modela. Odgovornost se prenosi na shardchain (lanac krhotina), provjeravanje, potvrđivanje transakcija i stanje računa. Paralelno će raditi 65 blockchaina unutar beacon chaina, koji postoji od faze 0. U ovoj fazi Ethereum blockchain za koji znamo će postati jedan od krhotina nove verzije mreže i službeno će se prebaciti na provjeru uloga.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Faza 1', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-06-02 18:13:12', '2021-06-02 16:13:12', '', 57, 'http://localhost/eth/?p=70', 0, 'revision', '', 0),
(71, 1, '2021-06-02 18:13:32', '2021-06-02 16:13:32', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">U posljednjoj fazi fragmenti mreže biće potpuno u funkciji kompatiblini sa pametnim ugovorima i moći će slobodno komunicirati. Ovo bi trebalo učiniti Ethereum 2.0 potpuno funkcionalnim i prolagodljivom za projekte. Krhotine će prestati biti samo pohrana podataka i postaće punopravni virtuelni slojevi i pametnih ugovora Ethereuma 1.0. Tehničke specifikacije za fazu 2 tek trebaju biti završene.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Faza 2', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2021-06-02 18:13:32', '2021-06-02 16:13:32', '', 59, 'http://localhost/eth/?p=71', 0, 'revision', '', 0),
(72, 1, '2021-06-02 18:17:16', '0000-00-00 00:00:00', '{\n    \"sydney::site_title_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 16:17:16\"\n    },\n    \"sydney::site_desc_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 16:17:16\"\n    },\n    \"sydney::top_items_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 16:17:16\"\n    },\n    \"sydney::submenu_items_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 16:17:16\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '2931990b-8e9e-4513-9cca-767a30f5b27c', '', '', '2021-06-02 18:17:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/eth/?p=72', 0, 'customize_changeset', '', 0),
(74, 1, '2021-06-02 18:35:14', '0000-00-00 00:00:00', '', 'Automatska skica', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-06-02 18:35:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/eth/?p=74', 0, 'post', '', 0),
(75, 1, '2021-06-02 18:36:47', '2021-06-02 16:36:47', '{\n    \"sydney::blog_layout\": {\n        \"value\": \"classic-alt\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-02 16:36:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7f7f3a37-59df-443c-a7c7-fdbced7156f4', '', '', '2021-06-02 18:36:47', '2021-06-02 16:36:47', '', 0, 'http://localhost/eth/7f7f3a37-59df-443c-a7c7-fdbced7156f4/', 0, 'customize_changeset', '', 0),
(76, 1, '2021-06-02 18:45:19', '2021-06-02 16:45:19', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Prvi korak za prelaz na novi sistem i algoritam je lansiranje Beacon chaina. Beacon chain će dirigovati i uskladiti proširenu mrežu krhotina. Beacon chain je započeo testiranje u julu 2020. godine, a 01. decembra je pokrenuta i testna faza za prve korisnike sa pravim ETH novčićima. Moguće je postati validator tako što se uloži 32 ETH novčića. Nakon što se novčići prebace na Ethereum 2.0 nema povratka nazad. Čak nisu dostupne ni transakcije između korisnika U ovoj fazi su postali dostupni sledeći aspekti :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"fontSize\":\"medium\"} -->\n<ul class=\"has-medium-font-size\"><li>Upravljanje grupom stejkera (PoS rudara)</li><li>Upravljanje fondovima ulagača</li><li>Glasanje ulagača – njihova aktivnost – prijedlozi o veličini blokova</li><li>Raspodjela nagrada i kazni za ulagače</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Ukupan iznos uloženog ETH-a prelazi 4 miliona, trenutno vrijednih preko 11 miliona dolara. </p>\n<!-- /wp:paragraph -->', 'Faza 0', '', 'inherit', 'closed', 'closed', '', '55-autosave-v1', '', '', '2021-06-02 18:45:19', '2021-06-02 16:45:19', '', 55, 'http://localhost/eth/?p=76', 0, 'revision', '', 0),
(77, 1, '2021-06-02 18:49:06', '2021-06-02 16:49:06', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Prvi korak za prelaz na novi sistem i algoritam je lansiranje Beacon chaina. Beacon chain će dirigovati i uskladiti proširenu mrežu krhotina. Beacon chain je započeo testiranje u julu 2020. godine, a 01. decembra je pokrenuta i testna faza za prve korisnike sa pravim ETH novčićima. Moguće je postati validator tako što se uloži 32 ETH novčića. Nakon što se novčići prebace na Ethereum 2.0 nema povratka nazad. Čak nisu dostupne ni transakcije između korisnika U ovoj fazi su postali dostupni sledeći aspekti :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"fontSize\":\"medium\"} -->\n<ul class=\"has-medium-font-size\"><li>Upravljanje grupom stejkera (PoS rudara)</li><li>Upravljanje fondovima ulagača</li><li>Glasanje ulagača – njihova aktivnost – prijedlozi o veličini blokova</li><li>Raspodjela nagrada i kazni za ulagače</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Ukupan iznos uloženog ETH-a prelazi 4 miliona, trenutno vrijednih preko 11 miliona dolara. </p>\n<!-- /wp:paragraph -->', 'Faza 0', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2021-06-02 18:49:06', '2021-06-02 16:49:06', '', 55, 'http://localhost/eth/?p=77', 0, 'revision', '', 0),
(78, 1, '2021-06-04 12:42:42', '2021-06-04 10:42:42', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"media_image-3\",\n            \"meta-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-04 10:42:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1ab08f53-ecad-4d68-a214-a15f1fa5d00a', '', '', '2021-06-04 12:42:42', '2021-06-04 10:42:42', '', 0, 'http://localhost/eth/1ab08f53-ecad-4d68-a214-a15f1fa5d00a/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Nekategorisano', 'nekategorisano', 0),
(2, 'Osnivač', 'osnivac', 0),
(3, 'Glavni meni', 'glavni-meni', 0),
(4, 'post-format-quote', 'post-format-quote', 0),
(5, 'Ethereum', 'ethereum', 0),
(6, 'Ethereum 2.0', 'ethereum-2-0', 0),
(7, 'Faze razvoja Ethereuma 2.0', 'faze-razvoja-ethereuma-2-0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(6, 4, 0),
(17, 3, 0),
(29, 3, 0),
(40, 5, 0),
(42, 3, 0),
(49, 6, 0),
(53, 3, 0),
(54, 3, 0),
(55, 7, 0),
(57, 7, 0),
(59, 7, 0),
(61, 3, 0),
(62, 3, 0),
(63, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 8),
(4, 4, 'post_format', '', 0, 1),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1622568599'),
(20, 1, 'nav_menu_recently_edited', '3'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'meta-box-order_', 'a:3:{s:6:\"normal\";s:18:\"suki_page_settings\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(24, 1, 'session_tokens', 'a:1:{s:64:\"888d121d44cce7e3fbdcde44b2ac778a6d5bdbe64ef06fa9d84b676766872a98\";a:4:{s:10:\"expiration\";i:1622823270;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\";s:5:\"login\";i:1622650470;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BxTrUDsK8WeT4ssRwkMoBFoyEU0cUW0', 'root', 'damjan.jankovic@student.pmf.unibl.org', 'http://localhost/eth', '2021-06-01 17:03:15', '', 0, 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
