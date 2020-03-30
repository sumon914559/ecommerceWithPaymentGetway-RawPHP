-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 29, 2018 at 11:52 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-08 07:27:19', '2018-09-08 07:27:19', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 220, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-31 08:19:42', '2018-05-31 08:19:42', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\" rel=\"nofollow\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=359 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp', 'yes'),
(2, 'home', 'http://localhost/wp', 'yes'),
(3, 'blogname', 'wp', 'yes'),
(4, 'blogdescription', 'Holborn Beauty', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sumon@r-cis.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=20&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:35:\"acme-demo-setup/acme-demo-setup.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:39:\"so-widgets-bundle/so-widgets-bundle.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'beauty-studio', 'yes'),
(41, 'stylesheet', 'beauty-studio', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:29:\"wpdatatables/wpdatatables.php\";s:12:\"wdtUninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '22', 'yes'),
(84, 'page_on_front', '20', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:21:\"beauty-studio-sidebar\";a:6:{i:0;s:8:\"search-3\";i:1;s:14:\"recent-posts-3\";i:2;s:17:\"recent-comments-3\";i:3;s:10:\"archives-3\";i:4;s:12:\"categories-3\";i:5;s:6:\"meta-3\";}s:18:\"beauty-studio-home\";a:8:{i:0;s:23:\"beauty_studio_service-1\";i:1;s:23:\"beauty_studio_feature-1\";i:2;s:23:\"beauty_studio_gallery-1\";i:3;s:20:\"beauty_studio_team-1\";i:4;s:27:\"beauty_studio_testimonial-1\";i:5;s:23:\"beauty_studio_contact-1\";i:6;s:25:\"beauty_studio_accordion-1\";i:7;s:25:\"beauty_studio_posts_col-1\";}s:26:\"beauty-studio-sidebar-left\";a:0:{}s:14:\"footer-col-one\";a:1:{i:0;s:13:\"custom_html-1\";}s:14:\"footer-col-two\";a:1:{i:0;s:13:\"custom_html-2\";}s:16:\"footer-col-three\";a:1:{i:0;s:13:\"custom_html-3\";}s:15:\"footer-col-four\";a:1:{i:0;s:25:\"beauty_studio_posts_col-2\";}s:17:\"popup-widget-area\";a:1:{i:0;s:13:\"custom_html-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:5:{i:1;a:2:{s:5:\"title\";s:5:\"About\";s:7:\"content\";s:206:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem \";}i:2;a:2:{s:5:\"title\";s:13:\"Opening Hours\";s:7:\"content\";s:89:\"Mon – Wed : 8:00am – 06:00pm <br>Thu – Sat : 10:00am – 10:00pm <br>Sunday : Close\";}i:3;a:2:{s:5:\"title\";s:12:\"Contact Info\";s:7:\"content\";s:110:\"176 W street name, New York, NY 10014\r\n<br>\r\n<br>\r\n\r\nEmail: info@example.com\r\n<br>\r\nTelephone: +1(800)123-4566\";}i:4;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:46:\"[contact-form-7 id=\"5\" title=\"Contact form 1\"]\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1538224071;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1538249240;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1538292453;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1536408552;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1538221919;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(355, '_site_transient_timeout_theme_roots', '1538223721', 'no'),
(356, '_site_transient_theme_roots', 'a:4:{s:13:\"beauty-studio\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(126, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:15:\"sumon@r-cis.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1536391663;}', 'no'),
(271, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(357, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1538221924;s:7:\"checked\";a:4:{s:13:\"beauty-studio\";s:5:\"1.0.0\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:4:{s:13:\"beauty-studio\";a:4:{s:5:\"theme\";s:13:\"beauty-studio\";s:11:\"new_version\";s:5:\"1.0.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/beauty-studio/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/beauty-studio.1.0.2.zip\";}s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.0.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.5.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(358, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1538221926;s:7:\"checked\";a:7:{s:35:\"acme-demo-setup/acme-demo-setup.php\";s:5:\"1.0.7\";s:19:\"akismet/akismet.php\";s:5:\"4.0.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.4\";s:44:\"data-tables-generator-by-supsystic/index.php\";s:5:\"1.9.0\";s:9:\"hello.php\";s:3:\"1.6\";s:39:\"so-widgets-bundle/so-widgets-bundle.php\";s:6:\"1.12.1\";s:29:\"wpdatatables/wpdatatables.php\";s:10:\"2.0.3 Lite\";}s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:39:\"so-widgets-bundle/so-widgets-bundle.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/so-widgets-bundle\";s:4:\"slug\";s:17:\"so-widgets-bundle\";s:6:\"plugin\";s:39:\"so-widgets-bundle/so-widgets-bundle.php\";s:11:\"new_version\";s:6:\"1.13.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/so-widgets-bundle/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/so-widgets-bundle.1.13.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/so-widgets-bundle/assets/icon-256x256.png?rev=1044942\";s:2:\"1x\";s:70:\"https://ps.w.org/so-widgets-bundle/assets/icon-128x128.png?rev=1044942\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/so-widgets-bundle/assets/banner-772x250.jpg?rev=1044942\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"wpdatatables/wpdatatables.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wpdatatables\";s:4:\"slug\";s:12:\"wpdatatables\";s:6:\"plugin\";s:29:\"wpdatatables/wpdatatables.php\";s:11:\"new_version\";s:10:\"2.0.4 Lite\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpdatatables/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wpdatatables.2.0.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/wpdatatables/assets/icon-128x128.png?rev=1297568\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/wpdatatables/assets/banner-772x250.png?rev=1299078\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:35:\"acme-demo-setup/acme-demo-setup.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/acme-demo-setup\";s:4:\"slug\";s:15:\"acme-demo-setup\";s:6:\"plugin\";s:35:\"acme-demo-setup/acme-demo-setup.php\";s:11:\"new_version\";s:5:\"1.0.7\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/acme-demo-setup/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/acme-demo-setup.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/acme-demo-setup/assets/icon-128x128.jpg?rev=1724782\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/acme-demo-setup/assets/banner-772x250.jpg?rev=1724790\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:44:\"data-tables-generator-by-supsystic/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/data-tables-generator-by-supsystic\";s:4:\"slug\";s:34:\"data-tables-generator-by-supsystic\";s:6:\"plugin\";s:44:\"data-tables-generator-by-supsystic/index.php\";s:11:\"new_version\";s:5:\"1.9.0\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/data-tables-generator-by-supsystic/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/data-tables-generator-by-supsystic.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/data-tables-generator-by-supsystic/assets/icon-256x256.png?rev=1158691\";s:2:\"1x\";s:87:\"https://ps.w.org/data-tables-generator-by-supsystic/assets/icon-128x128.png?rev=1158690\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/data-tables-generator-by-supsystic/assets/banner-772x250.png?rev=1158688\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(314, '_site_transient_timeout_browser_8651940b33fd1e958c905441aa40a03d', '1538290431', 'no'),
(315, '_site_transient_browser_8651940b33fd1e958c905441aa40a03d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(144, 'recently_activated', 'a:2:{s:29:\"wpdatatables/wpdatatables.php\";i:1536734260;s:44:\"data-tables-generator-by-supsystic/index.php\";i:1536734254;}', 'yes'),
(203, 'widget_beauty_studio_accordion', 'a:2:{i:1;a:6:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:26:\"Frequently asked questiona\";s:17:\"at_all_page_items\";a:5:{i:0;a:1:{s:7:\"page_id\";i:118;}i:1;a:1:{s:7:\"page_id\";i:120;}i:2;a:1:{s:7:\"page_id\";i:114;}i:3;a:1:{s:7:\"page_id\";i:116;}i:4;a:1:{s:7:\"page_id\";i:122;}}s:12:\"content_from\";s:7:\"excerpt\";s:14:\"content_number\";i:-1;s:18:\"background_options\";s:4:\"gray\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(148, 'wdtMySqlHost', '', 'yes'),
(149, 'wdtMySqlDB', '', 'yes'),
(150, 'wdtMySqlUser', '', 'yes'),
(151, 'wdtMySqlPwd', '', 'yes'),
(152, 'wdtMySqlPort', '3306', 'yes'),
(153, 'wdtRenderCharts', 'below', 'yes'),
(154, 'wdtRenderFilter', 'footer', 'yes'),
(155, 'wdtLeftOffset', '0', 'yes'),
(156, 'wdtBaseSkin', 'skin1', 'yes'),
(157, 'wdtTimeFormat', 'h:i A', 'yes'),
(158, 'wdtInterfaceLanguage', '', 'yes'),
(159, 'wdtTablesPerPage', '10', 'yes'),
(160, 'wdtNumberFormat', '1', 'yes'),
(161, 'wdtDecimalPlaces', '2', 'yes'),
(162, 'wdtCSVDelimiter', ',', 'yes'),
(163, 'wdtDateFormat', 'd/m/Y', 'yes'),
(164, 'wdtNumbersAlign', '1', 'yes'),
(165, 'wdtFontColorSettings', '', 'yes'),
(166, 'wdtCustomJs', '', 'yes'),
(167, 'wdtCustomCss', '', 'yes'),
(168, 'wdtMinifiedJs', '1', 'yes'),
(169, 'wdtTabletWidth', '1024', 'yes'),
(170, 'wdtMobileWidth', '480', 'yes'),
(171, 'wdtPurchaseCode', '', 'yes'),
(172, 'wdtIncludeBootstrap', '1', 'yes'),
(173, 'wdtIncludeBootstrapBackEnd', '1', 'yes'),
(174, 'wdtSiteLink', '1', 'yes'),
(204, 'widget_beauty_studio_posts_col', 'a:3:{i:1;a:15:{s:9:\"unique_id\";s:0:\"\";s:26:\"beauty_studio_widget_title\";s:8:\"Our blog\";s:20:\"post_advanced_option\";s:6:\"recent\";s:22:\"beauty_studio_post_cat\";s:1:\"1\";s:22:\"beauty_studio_post_tag\";s:0:\"\";s:11:\"post_number\";i:3;s:12:\"content_from\";s:7:\"excerpt\";s:13:\"content_words\";i:21;s:13:\"column_number\";i:2;s:12:\"display_type\";s:8:\"carousel\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"DESC\";s:16:\"enable_prev_next\";i:0;s:22:\"beauty_studio_img_size\";s:5:\"large\";s:18:\"background_options\";s:7:\"default\";}i:2;a:15:{s:9:\"unique_id\";s:0:\"\";s:26:\"beauty_studio_widget_title\";s:12:\"Recent Posts\";s:20:\"post_advanced_option\";s:6:\"recent\";s:22:\"beauty_studio_post_cat\";s:1:\"5\";s:22:\"beauty_studio_post_tag\";s:0:\"\";s:11:\"post_number\";i:2;s:12:\"content_from\";s:7:\"excerpt\";s:13:\"content_words\";i:0;s:13:\"column_number\";i:2;s:12:\"display_type\";s:6:\"column\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"DESC\";s:16:\"enable_prev_next\";i:1;s:22:\"beauty_studio_img_size\";s:5:\"large\";s:18:\"background_options\";s:7:\"default\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(183, 'supsystic_tbl_plugin_version', '1.9.0', 'yes'),
(184, '_supsystic_tables_rev', '60', 'yes'),
(185, 'widget_tables_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(187, 'supsystic_tbl_reviewNotice', 'a:2:{s:4:\"time\";i:1537003475;s:5:\"shown\";b:0;}', 'yes'),
(188, 'supsystic_tbl_welcome_page_was_showed', '1', 'yes'),
(205, 'widget_beauty_studio_contact', 'a:2:{i:1;a:7:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:15:\"Get Appointment\";s:9:\"shortcode\";s:46:\"[contact-form-7 id=\"5\" title=\"Contact form 1\"]\";s:7:\"page_id\";i:110;s:24:\"single_page_content_from\";s:7:\"content\";s:26:\"single_page_content_number\";i:-1;s:18:\"background_options\";s:7:\"default\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(206, 'widget_beauty_studio_service', 'a:2:{i:1;a:7:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:12:\"Our Services\";s:17:\"at_all_page_items\";a:3:{i:0;a:1:{s:7:\"page_id\";i:58;}i:1;a:1:{s:7:\"page_id\";i:60;}i:2;a:1:{s:7:\"page_id\";i:62;}}s:12:\"content_from\";s:7:\"excerpt\";s:14:\"content_number\";i:-1;s:13:\"column_number\";s:1:\"3\";s:18:\"background_options\";s:7:\"default\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(207, 'widget_beauty_studio_gallery', 'a:2:{i:1;a:6:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:11:\"Our Gallery\";s:17:\"at_all_page_items\";a:6:{i:0;a:1:{s:7:\"page_id\";i:85;}i:1;a:1:{s:7:\"page_id\";i:87;}i:2;a:1:{s:7:\"page_id\";i:74;}i:3;a:1:{s:7:\"page_id\";i:77;}i:4;a:1:{s:7:\"page_id\";i:71;}i:5;a:1:{s:7:\"page_id\";i:80;}}s:13:\"column_number\";s:1:\"3\";s:22:\"beauty_studio_img_size\";s:5:\"large\";s:16:\"image_popup_type\";s:7:\"gallery\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(208, 'widget_beauty_studio_social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(209, 'widget_beauty_studio_team', 'a:2:{i:1;a:7:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:8:\"Our Team\";s:17:\"at_all_page_items\";a:3:{i:0;a:1:{s:7:\"page_id\";i:93;}i:1;a:1:{s:7:\"page_id\";i:95;}i:2;a:1:{s:7:\"page_id\";i:97;}}s:12:\"content_from\";s:7:\"excerpt\";s:14:\"content_number\";i:-1;s:13:\"column_number\";s:1:\"3\";s:18:\"background_options\";s:4:\"gray\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(210, 'widget_beauty_studio_testimonial', 'a:2:{i:1;a:6:{s:9:\"unique_id\";s:0:\"\";s:8:\"bg_image\";s:112:\"http://demo.acmethemes.com/beauty-studio/wp-content/uploads/2018/06/mystical-portrait-of-a-girl-1344632_1920.jpg\";s:5:\"title\";s:13:\"Happy Clients\";s:17:\"at_all_page_items\";a:2:{i:0;a:1:{s:7:\"page_id\";i:105;}i:1;a:1:{s:7:\"page_id\";i:107;}}s:12:\"content_from\";s:7:\"excerpt\";s:14:\"content_number\";i:-1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(211, 'widget_beauty_studio_feature', 'a:2:{i:1;a:8:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:8:\"Book Now\";s:9:\"sub_title\";s:176:\"<strong>Want to Make a Booking or Have a Question?</strong>\r\n<br/>\r\nCall me : <em>002-6666-8888</em> or fill out our online booking\r\n& equiry form and <br/> we’ll contact you\";s:8:\"bg_image\";s:91:\"http://demo.acmethemes.com/beauty-studio/wp-content/uploads/2018/06/brush-791305_1920-1.jpg\";s:15:\"button_one_text\";s:8:\"Book Now\";s:14:\"button_one_url\";s:1:\"#\";s:15:\"button_two_text\";s:10:\"Learn More\";s:14:\"button_two_url\";s:1:\"#\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(228, 'category_children', 'a:0:{}', 'yes'),
(229, 'nav_menus_created_posts', 'a:0:{}', 'yes'),
(215, 'current_theme', 'Beauty Studio', 'yes'),
(216, 'theme_switched', '', 'yes'),
(230, 'theme_mods_beauty-studio', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:11:\"footer-menu\";i:7;s:7:\"primary\";i:8;s:8:\"top-menu\";i:9;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:16;s:27:\"beauty_studio_theme_options\";a:16:{s:31:\"beauty-studio-display-site-logo\";b:1;s:32:\"beauty-studio-display-site-title\";b:0;s:34:\"beauty-studio-display-site-tagline\";b:0;s:25:\"beauty-studio-slides-data\";s:227:\"[{\"selectpage\":53,\"button_1_text\":\"View More\",\"button_1_link\":\"#\",\"button_2_text\":\"Book Now\",\"button_2_link\":\"#\"},{\"selectpage\":49,\"button_1_text\":\"Read More\",\"button_1_link\":\"#\",\"button_2_text\":\"Book Now\",\"button_2_link\":\"#\"}]\";s:31:\"beauty-studio-enable-header-top\";b:0;s:25:\"beauty-studio-social-data\";s:201:\"[{\"icon\":\"fa-facebook\",\"link\":\"#\",\"checkbox\":true},{\"icon\":\"fa-twitter\",\"link\":\"#\",\"checkbox\":true},{\"icon\":\"fa-instagram\",\"link\":\"#\",\"checkbox\":true},{\"icon\":\"fa-linkedin\",\"link\":\"#\",\"checkbox\":true}]\";s:37:\"beauty-studio-hide-front-page-content\";b:1;s:47:\"beauty-studio-header-top-menu-display-selection\";s:4:\"left\";s:39:\"beauty-studio-menu-right-button-options\";s:7:\"booking\";s:37:\"beauty-studio-menu-right-button-title\";s:11:\"Appointment\";s:32:\"beauty-studio-popup-widget-title\";s:15:\"Get Appointment\";s:28:\"beauty-studio-enable-feature\";b:1;s:42:\"beauty-studio-feature-info-display-options\";s:4:\"hide\";s:44:\"beauty-studio-footer-copyright-beside-option\";s:6:\"social\";s:34:\"beauty-studio-header-image-display\";s:8:\"bg-image\";s:30:\"beauty-studio-footer-copyright\";s:29:\"© Recursion Technologies Ltd\";}}', 'yes'),
(263, 'widget_sow-button', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'widget_sow-google-map', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(265, 'widget_sow-image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_sow-slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(258, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1536734068;s:7:\"version\";s:5:\"5.0.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(267, 'widget_sow-post-carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_sow-editor', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'siteorigin_widget_bundle_version', '1.12.1', 'yes'),
(270, 'siteorigin_widgets_old_widgets', 'C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/accordion/accordion.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/button/button.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/cta/cta.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/contact/contact.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/editor/editor.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/features/features.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/google-map/google-map.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/headline/headline.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/hero/hero.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/icon/icon.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/image/image.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/image-grid/image-grid.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/slider/slider.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/layout-slider/layout-slider.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/post-carousel/post-carousel.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/price-table/price-table.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/simple-masonry/simple-masonry.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/social-media-buttons/social-media-buttons.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/tabs/tabs.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/taxonomy/taxonomy.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/testimonial/testimonial.php,C:\\wamp64\\www\\wp\\wp-content\\plugins\\so-widgets-bundle/widgets/video/video.php', 'yes'),
(330, 'WPLANG', '', 'yes'),
(331, 'new_admin_email', 'sumon@r-cis.com', 'yes'),
(344, '_transient_is_multi_author', '0', 'yes'),
(345, '_transient_beauty_studio_categories', '2', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=326 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(7, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:163;s:6:\"height\";i:53;s:4:\"file\";s:34:\"2018/06/beauty-studio-freelogo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"beauty-studio-freelogo-150x53.png\";s:5:\"width\";i:150;s:6:\"height\";i:53;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 16, '_wp_attached_file', '2018/06/beauty-studio-freelogo.png'),
(8, 50, '_wp_attached_file', '2018/06/portrait-1360829_1920.jpg'),
(9, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1381;s:4:\"file\";s:33:\"2018/06/portrait-1360829_1920.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"portrait-1360829_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"portrait-1360829_1920-300x216.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:216;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"portrait-1360829_1920-768x552.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:552;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"portrait-1360829_1920-1024x737.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:737;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:33:\"portrait-1360829_1920-340x240.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 51, '_wp_attached_file', '2018/06/woman-835219_1920.jpg'),
(11, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1295;s:4:\"file\";s:29:\"2018/06/woman-835219_1920.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"woman-835219_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"woman-835219_1920-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"woman-835219_1920-768x518.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:518;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"woman-835219_1920-1024x691.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:691;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"woman-835219_1920-340x240.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 69, '_wp_attached_file', '2018/06/brush-791305_1920-1.jpg'),
(13, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:31:\"2018/06/brush-791305_1920-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"brush-791305_1920-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"brush-791305_1920-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"brush-791305_1920-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"brush-791305_1920-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:31:\"brush-791305_1920-1-340x240.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 72, '_wp_attached_file', '2018/06/beautiful-bouquet-bridal-247295.jpg'),
(15, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4096;s:6:\"height\";i:2731;s:4:\"file\";s:43:\"2018/06/beautiful-bouquet-bridal-247295.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"beautiful-bouquet-bridal-247295-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"beautiful-bouquet-bridal-247295-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"beautiful-bouquet-bridal-247295-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"beautiful-bouquet-bridal-247295-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:43:\"beautiful-bouquet-bridal-247295-340x240.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 75, '_wp_attached_file', '2018/06/lips-3068344_1920.jpg'),
(17, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:29:\"2018/06/lips-3068344_1920.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"lips-3068344_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"lips-3068344_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"lips-3068344_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"lips-3068344_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"lips-3068344_1920-340x240.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 78, '_wp_attached_file', '2018/06/demonstration-hair-model-show-52499.jpeg'),
(19, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:48:\"2018/06/demonstration-hair-model-show-52499.jpeg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"demonstration-hair-model-show-52499-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"demonstration-hair-model-show-52499-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"demonstration-hair-model-show-52499-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"demonstration-hair-model-show-52499-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:48:\"demonstration-hair-model-show-52499-340x240.jpeg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 81, '_wp_attached_file', '2018/06/cosmetics-1543271_1920.jpg'),
(21, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:34:\"2018/06/cosmetics-1543271_1920.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cosmetics-1543271_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"cosmetics-1543271_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"cosmetics-1543271_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"cosmetics-1543271_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:34:\"cosmetics-1543271_1920-340x240.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 82, '_wp_attached_file', '2018/06/nail-art-2688565_1920.jpg'),
(23, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:33:\"2018/06/nail-art-2688565_1920.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"nail-art-2688565_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"nail-art-2688565_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"nail-art-2688565_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"nail-art-2688565_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:33:\"nail-art-2688565_1920-340x240.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 83, '_wp_attached_file', '2018/06/pexels-photo-259810.jpeg'),
(25, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:32:\"2018/06/pexels-photo-259810.jpeg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"pexels-photo-259810-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"pexels-photo-259810-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"pexels-photo-259810-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"pexels-photo-259810-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"pexels-photo-259810-340x240.jpeg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 90, '_wp_attached_file', '2018/06/team1.1.jpg'),
(27, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:273;s:4:\"file\";s:19:\"2018/06/team1.1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"team1.1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"team1.1-270x240.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 91, '_wp_attached_file', '2018/06/team2.jpg'),
(29, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:273;s:4:\"file\";s:17:\"2018/06/team2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"team2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"team2-270x240.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 92, '_wp_attached_file', '2018/06/team3.jpg'),
(31, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:273;s:4:\"file\";s:17:\"2018/06/team3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"team3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"team3-270x240.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 103, '_wp_attached_file', '2018/06/mystical-portrait-of-a-girl-1344632_1920.jpg'),
(33, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:52:\"2018/06/mystical-portrait-of-a-girl-1344632_1920.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"mystical-portrait-of-a-girl-1344632_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"mystical-portrait-of-a-girl-1344632_1920-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"mystical-portrait-of-a-girl-1344632_1920-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"mystical-portrait-of-a-girl-1344632_1920-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:52:\"mystical-portrait-of-a-girl-1344632_1920-340x240.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 128, '_wp_attached_file', '2018/06/wellness-massage-relax-relaxing-56884.jpeg'),
(35, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:50:\"2018/06/wellness-massage-relax-relaxing-56884.jpeg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"wellness-massage-relax-relaxing-56884-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"wellness-massage-relax-relaxing-56884-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"wellness-massage-relax-relaxing-56884-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"wellness-massage-relax-relaxing-56884-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:50:\"wellness-massage-relax-relaxing-56884-340x240.jpeg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 148, '_wp_attached_file', '2018/06/beauty-studio-inner-banner1920x600.jpg'),
(37, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:46:\"2018/06/beauty-studio-inner-banner1920x600.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"beauty-studio-inner-banner1920x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"beauty-studio-inner-banner1920x600-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"beauty-studio-inner-banner1920x600-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"beauty-studio-inner-banner1920x600-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:46:\"beauty-studio-inner-banner1920x600-340x240.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 205, '_wp_attached_file', '2018/06/e40b661adf.jpg'),
(39, 205, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:400;s:4:\"file\";s:22:\"2018/06/e40b661adf.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"e40b661adf-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"e40b661adf-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"e40b661adf-340x240.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 20, '_wp_page_template', 'default'),
(41, 20, 'beauty-studio-featured-icon', ''),
(42, 20, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(43, 22, '_wp_page_template', 'default'),
(44, 22, 'beauty-studio-featured-icon', ''),
(45, 22, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(46, 24, '_wp_page_template', 'page-templates/template-builder.php'),
(47, 24, 'beauty-studio-featured-icon', ''),
(48, 24, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(49, 24, 'panels_data', 'a:3:{s:7:\"widgets\";a:5:{i:0;a:16:{s:13:\"attachment_id\";i:148;s:3:\"url\";s:106:\"http://demo.acmethemes.com/beauty-studio/wp-content/uploads/2018/06/beauty-studio-inner-banner1920x600.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:1920;s:6:\"height\";i:600;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:0:\"\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:21:\"WP_Widget_Media_Image\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"b82b5486-559b-4320-a394-5f18e5f5cab7\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}i:1;a:8:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:8:\"Our Team\";s:17:\"at_all_page_items\";a:3:{i:0;a:1:{s:7:\"page_id\";i:95;}i:1;a:1:{s:7:\"page_id\";i:97;}i:2;a:1:{s:7:\"page_id\";i:93;}}s:12:\"content_from\";s:7:\"excerpt\";s:14:\"content_number\";i:-1;s:13:\"column_number\";s:1:\"3\";s:18:\"background_options\";s:7:\"default\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:18:\"Beauty_Studio_Team\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:1;s:9:\"widget_id\";s:36:\"66cec27d-f656-463b-8097-3b073dc6b903\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}i:2;a:7:{s:9:\"unique_id\";s:0:\"\";s:8:\"bg_image\";s:112:\"http://demo.acmethemes.com/beauty-studio/wp-content/uploads/2018/06/mystical-portrait-of-a-girl-1344632_1920.jpg\";s:5:\"title\";s:13:\"Happy Clients\";s:17:\"at_all_page_items\";a:2:{i:0;a:1:{s:7:\"page_id\";i:105;}i:1;a:1:{s:7:\"page_id\";i:107;}}s:12:\"content_from\";s:7:\"excerpt\";s:14:\"content_number\";i:-1;s:11:\"panels_info\";a:7:{s:5:\"class\";s:25:\"Beauty_Studio_Testimonial\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:2;s:9:\"widget_id\";s:36:\"b5c67f2f-fca2-4c6c-a0b1-26cd12cba78e\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}i:3;a:7:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:5:\"Faq\'s\";s:17:\"at_all_page_items\";a:5:{i:0;a:1:{s:7:\"page_id\";i:118;}i:1;a:1:{s:7:\"page_id\";i:120;}i:2;a:1:{s:7:\"page_id\";i:122;}i:3;a:1:{s:7:\"page_id\";i:116;}i:4;a:1:{s:7:\"page_id\";i:114;}}s:12:\"content_from\";s:7:\"excerpt\";s:14:\"content_number\";i:-1;s:18:\"background_options\";s:7:\"default\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:23:\"Beauty_Studio_Accordion\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:3;s:9:\"widget_id\";s:36:\"4645c4d2-f196-45ab-9387-f0be60123dc2\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}i:4;a:9:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:8:\"Book Now\";s:9:\"sub_title\";s:173:\"<strong>Want to Make a Booking or Have a Question?</strong>\n<br/>\nCall me : <em>002-6666-8888</em> or fill out our online booking\n& equiry form and <br/> we’ll contact you\";s:8:\"bg_image\";s:91:\"http://demo.acmethemes.com/beauty-studio/wp-content/uploads/2018/06/brush-791305_1920-1.jpg\";s:15:\"button_one_text\";s:8:\"Book Now\";s:14:\"button_one_url\";s:1:\"#\";s:15:\"button_two_text\";s:10:\"Learn More\";s:14:\"button_two_url\";s:1:\"#\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:21:\"Beauty_Studio_Feature\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:4;s:9:\"widget_id\";s:36:\"854436e3-9ccd-4d9a-8fa5-edb47191b3d5\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(50, 26, '_wp_page_template', 'page-templates/template-builder.php'),
(51, 26, 'beauty-studio-featured-icon', ''),
(52, 26, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(53, 26, 'panels_data', 'a:3:{s:7:\"widgets\";a:2:{i:0;a:16:{s:13:\"attachment_id\";i:148;s:3:\"url\";s:106:\"http://demo.acmethemes.com/beauty-studio/wp-content/uploads/2018/06/beauty-studio-inner-banner1920x600.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:1920;s:6:\"height\";i:600;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:0:\"\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:21:\"WP_Widget_Media_Image\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"9390d1f9-845c-4177-be46-9136d6c04fff\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}i:1;a:8:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:13:\"Stay In Touch\";s:9:\"shortcode\";s:46:\"[contact-form-7 id=\"5\" title=\"Contact form 1\"]\";s:7:\"page_id\";i:168;s:24:\"single_page_content_from\";s:7:\"content\";s:26:\"single_page_content_number\";i:-1;s:18:\"background_options\";s:7:\"default\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:21:\"Beauty_Studio_Contact\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:1;s:9:\"widget_id\";s:36:\"7effd6b2-fa79-4400-87d8-ccdb19bd9f12\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(54, 28, '_wp_page_template', 'page-templates/template-builder.php'),
(55, 28, 'beauty-studio-featured-icon', ''),
(56, 28, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(57, 28, 'panels_data', 'a:3:{s:7:\"widgets\";a:4:{i:0;a:16:{s:13:\"attachment_id\";i:148;s:3:\"url\";s:106:\"http://demo.acmethemes.com/beauty-studio/wp-content/uploads/2018/06/beauty-studio-inner-banner1920x600.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:1920;s:6:\"height\";i:600;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:4:\"none\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:21:\"WP_Widget_Media_Image\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"9dd24970-4e04-4af2-bcd5-aeaae0d0467d\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}i:1;a:8:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:12:\"Our Services\";s:17:\"at_all_page_items\";a:3:{i:0;a:1:{s:7:\"page_id\";i:58;}i:1;a:1:{s:7:\"page_id\";i:60;}i:2;a:1:{s:7:\"page_id\";i:62;}}s:12:\"content_from\";s:7:\"excerpt\";s:14:\"content_number\";i:-1;s:13:\"column_number\";s:1:\"3\";s:18:\"background_options\";s:7:\"default\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:21:\"Beauty_Studio_Service\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:1;s:9:\"widget_id\";s:36:\"9b89f70a-f018-47cf-95de-fb578e13f3b5\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}i:2;a:8:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:8:\"Book Now\";s:9:\"shortcode\";s:46:\"[contact-form-7 id=\"5\" title=\"Contact form 1\"]\";s:7:\"page_id\";i:110;s:24:\"single_page_content_from\";s:7:\"content\";s:26:\"single_page_content_number\";i:-1;s:18:\"background_options\";s:4:\"gray\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:21:\"Beauty_Studio_Contact\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:2;s:9:\"widget_id\";s:36:\"230961f1-b2f0-4681-9522-9791d327522b\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}i:3;a:8:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:8:\"Our Team\";s:17:\"at_all_page_items\";a:3:{i:0;a:1:{s:7:\"page_id\";i:93;}i:1;a:1:{s:7:\"page_id\";i:95;}i:2;a:1:{s:7:\"page_id\";i:105;}}s:12:\"content_from\";s:7:\"excerpt\";s:14:\"content_number\";i:-1;s:13:\"column_number\";s:1:\"3\";s:18:\"background_options\";s:7:\"default\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:18:\"Beauty_Studio_Team\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:3;s:9:\"widget_id\";s:36:\"3ccaf162-a9e1-4b06-8c85-7d7e90a4ddbd\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(58, 30, '_wp_page_template', 'page-templates/template-builder.php'),
(59, 30, 'beauty-studio-featured-icon', ''),
(60, 30, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(61, 30, 'panels_data', 'a:3:{s:7:\"widgets\";a:2:{i:0;a:16:{s:13:\"attachment_id\";i:148;s:3:\"url\";s:106:\"http://demo.acmethemes.com/beauty-studio/wp-content/uploads/2018/06/beauty-studio-inner-banner1920x600.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:1920;s:6:\"height\";i:600;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:0:\"\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:21:\"WP_Widget_Media_Image\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"d4dda9df-6665-4f04-8e69-bf8ed86b543c\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}i:1;a:7:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:11:\"Our Gallery\";s:17:\"at_all_page_items\";a:6:{i:0;a:1:{s:7:\"page_id\";i:87;}i:1;a:1:{s:7:\"page_id\";i:77;}i:2;a:1:{s:7:\"page_id\";i:74;}i:3;a:1:{s:7:\"page_id\";i:80;}i:4;a:1:{s:7:\"page_id\";i:71;}i:5;a:1:{s:7:\"page_id\";i:85;}}s:13:\"column_number\";s:1:\"3\";s:16:\"image_popup_type\";s:7:\"gallery\";s:22:\"beauty_studio_img_size\";s:5:\"large\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:21:\"Beauty_Studio_Gallery\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:1;s:9:\"widget_id\";s:36:\"b6387d86-26d5-4d96-bb85-7dfa033097de\";s:5:\"style\";a:4:{s:7:\"padding\";s:18:\"0px 50px 50px 50px\";s:14:\"mobile_padding\";s:18:\"0px 10px 10px 10px\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(62, 206, '_menu_item_type', 'post_type'),
(63, 206, '_menu_item_menu_item_parent', '0'),
(64, 206, '_menu_item_object_id', '24'),
(65, 206, '_menu_item_object', 'page'),
(66, 206, '_menu_item_target', ''),
(67, 206, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 206, '_menu_item_xfn', ''),
(69, 206, '_menu_item_url', ''),
(70, 207, '_menu_item_type', 'post_type'),
(71, 207, '_menu_item_menu_item_parent', '0'),
(72, 207, '_menu_item_object_id', '22'),
(73, 207, '_menu_item_object', 'page'),
(74, 207, '_menu_item_target', ''),
(75, 207, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 207, '_menu_item_xfn', ''),
(77, 207, '_menu_item_url', ''),
(78, 208, '_menu_item_type', 'post_type'),
(79, 208, '_menu_item_menu_item_parent', '0'),
(80, 208, '_menu_item_object_id', '20'),
(81, 208, '_menu_item_object', 'page'),
(82, 208, '_menu_item_target', ''),
(83, 208, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 208, '_menu_item_xfn', ''),
(85, 208, '_menu_item_url', ''),
(86, 209, '_menu_item_type', 'post_type'),
(87, 209, '_menu_item_menu_item_parent', '0'),
(88, 209, '_menu_item_object_id', '30'),
(89, 209, '_menu_item_object', 'page'),
(90, 209, '_menu_item_target', ''),
(91, 209, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 209, '_menu_item_xfn', ''),
(93, 209, '_menu_item_url', ''),
(94, 210, '_menu_item_type', 'post_type'),
(95, 210, '_menu_item_menu_item_parent', '0'),
(96, 210, '_menu_item_object_id', '28'),
(97, 210, '_menu_item_object', 'page'),
(98, 210, '_menu_item_target', ''),
(99, 210, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 210, '_menu_item_xfn', ''),
(101, 210, '_menu_item_url', ''),
(102, 211, '_menu_item_type', 'post_type'),
(103, 211, '_menu_item_menu_item_parent', '0'),
(104, 211, '_menu_item_object_id', '26'),
(105, 211, '_menu_item_object', 'page'),
(106, 211, '_menu_item_target', ''),
(107, 211, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 211, '_menu_item_xfn', ''),
(109, 211, '_menu_item_url', ''),
(110, 212, '_menu_item_type', 'post_type'),
(111, 212, '_menu_item_menu_item_parent', '0'),
(112, 212, '_menu_item_object_id', '24'),
(113, 212, '_menu_item_object', 'page'),
(114, 212, '_menu_item_target', ''),
(115, 212, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(116, 212, '_menu_item_xfn', ''),
(117, 212, '_menu_item_url', ''),
(118, 213, '_menu_item_type', 'post_type'),
(119, 213, '_menu_item_menu_item_parent', '0'),
(120, 213, '_menu_item_object_id', '22'),
(121, 213, '_menu_item_object', 'page'),
(122, 213, '_menu_item_target', ''),
(123, 213, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(124, 213, '_menu_item_xfn', ''),
(125, 213, '_menu_item_url', ''),
(126, 214, '_menu_item_type', 'post_type'),
(127, 214, '_menu_item_menu_item_parent', '0'),
(128, 214, '_menu_item_object_id', '20'),
(129, 214, '_menu_item_object', 'page'),
(130, 214, '_menu_item_target', ''),
(131, 214, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 214, '_menu_item_xfn', ''),
(133, 214, '_menu_item_url', ''),
(309, 226, '_wp_trash_meta_time', '1536735708'),
(308, 226, '_wp_trash_meta_status', 'publish'),
(307, 226, '_edit_lock', '1536735678:1'),
(306, 225, '_wp_trash_meta_time', '1536735066'),
(305, 225, '_wp_trash_meta_status', 'publish'),
(304, 225, '_edit_lock', '1536735053:1'),
(142, 216, '_menu_item_type', 'post_type'),
(143, 216, '_menu_item_menu_item_parent', '0'),
(144, 216, '_menu_item_object_id', '20'),
(145, 216, '_menu_item_object', 'page'),
(146, 216, '_menu_item_target', ''),
(147, 216, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 216, '_menu_item_xfn', ''),
(149, 216, '_menu_item_url', ''),
(150, 217, '_menu_item_type', 'post_type'),
(151, 217, '_menu_item_menu_item_parent', '0'),
(152, 217, '_menu_item_object_id', '24'),
(153, 217, '_menu_item_object', 'page'),
(154, 217, '_menu_item_target', ''),
(155, 217, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(156, 217, '_menu_item_xfn', ''),
(157, 217, '_menu_item_url', ''),
(158, 218, '_menu_item_type', 'post_type'),
(159, 218, '_menu_item_menu_item_parent', '0'),
(160, 218, '_menu_item_object_id', '22'),
(161, 218, '_menu_item_object', 'page'),
(162, 218, '_menu_item_target', ''),
(163, 218, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(164, 218, '_menu_item_xfn', ''),
(165, 218, '_menu_item_url', ''),
(166, 219, '_menu_item_type', 'post_type'),
(167, 219, '_menu_item_menu_item_parent', '0'),
(168, 219, '_menu_item_object_id', '26'),
(169, 219, '_menu_item_object', 'page'),
(170, 219, '_menu_item_target', ''),
(171, 219, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(172, 219, '_menu_item_xfn', ''),
(173, 219, '_menu_item_url', ''),
(174, 49, '_thumbnail_id', '51'),
(175, 49, '_wp_page_template', 'default'),
(176, 49, 'beauty-studio-featured-icon', ''),
(177, 49, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(178, 53, '_thumbnail_id', '50'),
(179, 53, '_wp_page_template', 'default'),
(180, 53, 'beauty-studio-featured-icon', ''),
(181, 53, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(182, 58, '_wp_page_template', 'default'),
(183, 58, 'beauty-studio-featured-icon', 'fa-scissors'),
(184, 58, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(185, 60, '_wp_page_template', 'default'),
(186, 60, 'beauty-studio-featured-icon', 'fa-leaf'),
(187, 60, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(188, 62, '_wp_page_template', 'default'),
(189, 62, 'beauty-studio-featured-icon', 'fa-paint-brush'),
(190, 62, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(191, 64, '_wp_page_template', 'default'),
(192, 64, 'beauty-studio-featured-icon', 'fa-magic'),
(193, 64, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(194, 71, '_thumbnail_id', '72'),
(195, 71, '_wp_page_template', 'default'),
(196, 71, 'beauty-studio-featured-icon', ''),
(197, 71, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(198, 74, '_thumbnail_id', '75'),
(199, 74, '_wp_page_template', 'default'),
(200, 74, 'beauty-studio-featured-icon', ''),
(201, 74, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(202, 77, '_thumbnail_id', '78'),
(203, 77, '_wp_page_template', 'default'),
(204, 77, 'beauty-studio-featured-icon', ''),
(205, 77, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(206, 80, '_thumbnail_id', '83'),
(207, 80, '_wp_page_template', 'default'),
(208, 80, 'beauty-studio-featured-icon', ''),
(209, 80, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(210, 85, '_thumbnail_id', '81'),
(211, 85, '_wp_page_template', 'default'),
(212, 85, 'beauty-studio-featured-icon', ''),
(213, 85, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(214, 87, '_thumbnail_id', '82'),
(215, 87, '_wp_page_template', 'default'),
(216, 87, 'beauty-studio-featured-icon', ''),
(217, 87, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(218, 93, '_thumbnail_id', '90'),
(219, 93, '_wp_page_template', 'default'),
(220, 93, 'beauty-studio-featured-icon', ''),
(221, 93, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(222, 95, '_thumbnail_id', '91'),
(223, 95, '_wp_page_template', 'default'),
(224, 95, 'beauty-studio-featured-icon', ''),
(225, 95, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(226, 97, '_thumbnail_id', '92'),
(227, 97, '_wp_page_template', 'default'),
(228, 97, 'beauty-studio-featured-icon', ''),
(229, 97, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(230, 105, '_thumbnail_id', '92'),
(231, 105, '_wp_page_template', 'default'),
(232, 105, 'beauty-studio-featured-icon', ''),
(233, 105, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(234, 107, '_thumbnail_id', '91'),
(235, 107, '_wp_page_template', 'default'),
(236, 107, 'beauty-studio-featured-icon', ''),
(237, 107, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(238, 110, '_wp_page_template', 'default'),
(239, 110, 'beauty-studio-featured-icon', ''),
(240, 110, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(241, 114, '_wp_page_template', 'default'),
(242, 114, 'beauty-studio-featured-icon', ''),
(243, 114, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(244, 116, '_wp_page_template', 'default'),
(245, 116, 'beauty-studio-featured-icon', ''),
(246, 116, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(249, 118, '_wp_page_template', 'default'),
(250, 118, 'beauty-studio-featured-icon', ''),
(251, 118, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(252, 120, '_wp_page_template', 'default'),
(253, 120, 'beauty-studio-featured-icon', ''),
(254, 120, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(255, 122, '_wp_page_template', 'default'),
(256, 122, 'beauty-studio-featured-icon', ''),
(257, 122, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(260, 127, '_thumbnail_id', '128'),
(261, 127, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(264, 130, '_thumbnail_id', '81'),
(265, 130, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(298, 224, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Date\n    [date* Date] </label>\n\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(268, 132, '_thumbnail_id', '78'),
(269, 132, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(270, 168, '_wp_page_template', 'default'),
(271, 168, 'beauty-studio-featured-icon', ''),
(272, 168, 'beauty_studio_sidebar_layout', 'default-sidebar'),
(273, 168, 'panels_data', 'a:3:{s:7:\"widgets\";a:6:{i:0;a:3:{s:5:\"title\";s:8:\"Location\";s:7:\"content\";s:65:\"<div>\n	<span>176 W street name, New York, NY 10014 </span>\n</div>\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:21:\"WP_Widget_Custom_HTML\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"b5f5ef12-eeae-4008-89c8-f262f4c97750\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}i:1;a:3:{s:5:\"title\";s:13:\"Email Address\";s:7:\"content\";s:68:\"<div>\n	<a href=\"mailto:info@example.com\">info@example.com</a>\n</div>\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:21:\"WP_Widget_Custom_HTML\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:1;s:9:\"widget_id\";s:36:\"8e1ef27a-ac93-4a34-896a-b84179216a72\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}i:2;a:3:{s:5:\"title\";s:12:\"Phone Number\";s:7:\"content\";s:42:\"<div>\n	<span>+1(800)123-4566</span>\n</div>\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:21:\"WP_Widget_Custom_HTML\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:2;s:9:\"widget_id\";s:36:\"c1250fae-6bb5-4b24-b986-96c17437da9b\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}i:3;a:3:{s:5:\"title\";s:13:\"Working Hours\";s:7:\"content\";s:148:\"<div>\n	<ul>\n 	<li>Mon - Wed : 8:00am - 06:00pm</li>\n 	<li>Thu - Sat : 10:00am - 10:00pm</li>\n 	<li><strong>Sunday : Close</strong></li>\n</ul>\n</div>\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:21:\"WP_Widget_Custom_HTML\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:3;s:9:\"widget_id\";s:36:\"8b1217ae-04b3-4ea5-8319-3801be38b09f\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}i:4;a:3:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:0:\"\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:21:\"WP_Widget_Custom_HTML\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:4;s:9:\"widget_id\";s:36:\"b264432e-613c-47d0-9520-f99a8d250389\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}i:5;a:3:{s:9:\"unique_id\";s:0:\"\";s:5:\"title\";s:12:\"Social Links\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:20:\"Beauty_Studio_Social\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:5;s:9:\"widget_id\";s:36:\"7291e662-593c-41dc-b2aa-bdf5b2fe0335\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:2:{s:5:\"cells\";i:1;s:5:\"style\";a:0:{}}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(274, 221, '_menu_item_type', 'post_type'),
(275, 221, '_menu_item_menu_item_parent', '0'),
(276, 221, '_menu_item_object_id', '30'),
(277, 221, '_menu_item_object', 'page'),
(278, 221, '_menu_item_target', ''),
(279, 221, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(280, 221, '_menu_item_xfn', ''),
(281, 221, '_menu_item_url', ''),
(282, 222, '_menu_item_type', 'post_type'),
(283, 222, '_menu_item_menu_item_parent', '0'),
(284, 222, '_menu_item_object_id', '28'),
(285, 222, '_menu_item_object', 'page'),
(286, 222, '_menu_item_target', ''),
(287, 222, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(288, 222, '_menu_item_xfn', ''),
(289, 222, '_menu_item_url', ''),
(290, 223, '_menu_item_type', 'post_type'),
(291, 223, '_menu_item_menu_item_parent', '0'),
(292, 223, '_menu_item_object_id', '26'),
(293, 223, '_menu_item_object', 'page'),
(294, 223, '_menu_item_target', ''),
(295, 223, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(296, 223, '_menu_item_xfn', ''),
(297, 223, '_menu_item_url', ''),
(299, 224, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:19:\"wp \"[your-subject]\"\";s:6:\"sender\";s:29:\"[your-name] <sumon@r-cis.com>\";s:9:\"recipient\";s:15:\"sumon@r-cis.com\";s:4:\"body\";s:160:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on wp (http://localhost/wp)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(300, 224, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:19:\"wp \"[your-subject]\"\";s:6:\"sender\";s:20:\"wp <sumon@r-cis.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:102:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on wp (http://localhost/wp)\";s:18:\"additional_headers\";s:25:\"Reply-To: sumon@r-cis.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(301, 224, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(302, 224, '_additional_settings', ''),
(303, 224, '_locale', 'en_US'),
(310, 227, '_edit_lock', '1536736215:1'),
(311, 227, '_wp_trash_meta_status', 'publish'),
(312, 227, '_wp_trash_meta_time', '1536736247'),
(313, 228, '_wp_trash_meta_status', 'publish'),
(314, 228, '_wp_trash_meta_time', '1536736475'),
(315, 26, '_edit_lock', '1536739864:1'),
(316, 168, '_edit_lock', '1536739855:1'),
(317, 230, '_wp_attached_file', '2018/09/Holborn-Beauty-logo-163x53.jpg'),
(318, 230, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:163;s:6:\"height\";i:53;s:4:\"file\";s:38:\"2018/09/Holborn-Beauty-logo-163x53.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Holborn-Beauty-logo-163x53-150x53.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:53;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(319, 231, '_wp_attached_file', '2018/09/cropped-Holborn-Beauty-logo-163x53.jpg'),
(320, 231, '_wp_attachment_context', 'custom-logo');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(321, 231, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:163;s:6:\"height\";i:39;s:4:\"file\";s:46:\"2018/09/cropped-Holborn-Beauty-logo-163x53.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"cropped-Holborn-Beauty-logo-163x53-150x39.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:39;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(322, 232, '_wp_trash_meta_status', 'publish'),
(323, 232, '_wp_trash_meta_time', '1537702609'),
(324, 233, '_wp_trash_meta_status', 'publish'),
(325, 233, '_wp_trash_meta_time', '1537702698');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-08 07:27:19', '2018-09-08 07:27:19', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-09-08 07:27:19', '2018-09-08 07:27:19', '', 0, 'http://localhost/wp/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-08 07:27:19', '2018-09-08 07:27:19', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-09-08 07:27:19', '2018-09-08 07:27:19', '', 0, 'http://localhost/wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-08 07:27:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-08 07:27:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=3', 0, 'post', '', 0),
(50, 1, '2018-06-01 07:45:34', '2018-06-01 07:45:34', '', 'portrait-1360829_1920', '', 'inherit', 'open', 'closed', '', 'portrait-1360829_1920', '', '', '2018-06-01 07:45:34', '2018-06-01 07:45:34', '', 49, 'http://localhost/wp/wp-content/uploads/2018/06/portrait-1360829_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-06-01 07:34:27', '2018-06-01 07:34:27', '', 'beauty-studio-freelogo', '', 'inherit', 'open', 'closed', '', 'beauty-studio-freelogo', '', '', '2018-06-01 07:34:27', '2018-06-01 07:34:27', '', 0, 'http://localhost/wp/wp-content/uploads/2018/06/beauty-studio-freelogo.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2018-06-01 07:45:36', '2018-06-01 07:45:36', '', 'woman-835219_1920', '', 'inherit', 'open', 'closed', '', 'woman-835219_1920', '', '', '2018-06-01 07:45:36', '2018-06-01 07:45:36', '', 49, 'http://localhost/wp/wp-content/uploads/2018/06/woman-835219_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-06-01 07:51:26', '2018-06-01 07:51:26', '', 'brush-791305_1920-1', '', 'inherit', 'open', 'closed', '', 'brush-791305_1920-1', '', '', '2018-06-01 07:51:26', '2018-06-01 07:51:26', '', 0, 'http://localhost/wp/wp-content/uploads/2018/06/brush-791305_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2018-06-01 07:53:42', '2018-06-01 07:53:42', '', 'beautiful-bouquet-bridal-247295', '', 'inherit', 'open', 'closed', '', 'beautiful-bouquet-bridal-247295', '', '', '2018-06-01 07:53:42', '2018-06-01 07:53:42', '', 71, 'http://localhost/wp/wp-content/uploads/2018/06/beautiful-bouquet-bridal-247295.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-06-01 07:54:15', '2018-06-01 07:54:15', '', 'lips-3068344_1920', '', 'inherit', 'open', 'closed', '', 'lips-3068344_1920', '', '', '2018-06-01 07:54:15', '2018-06-01 07:54:15', '', 74, 'http://localhost/wp/wp-content/uploads/2018/06/lips-3068344_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-06-01 07:54:47', '2018-06-01 07:54:47', '', 'demonstration-hair-model-show-52499', '', 'inherit', 'open', 'closed', '', 'demonstration-hair-model-show-52499', '', '', '2018-06-01 07:54:47', '2018-06-01 07:54:47', '', 77, 'http://localhost/wp/wp-content/uploads/2018/06/demonstration-hair-model-show-52499.jpeg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-06-01 07:55:28', '2018-06-01 07:55:28', '', 'cosmetics-1543271_1920', '', 'inherit', 'open', 'closed', '', 'cosmetics-1543271_1920', '', '', '2018-06-01 07:55:28', '2018-06-01 07:55:28', '', 80, 'http://localhost/wp/wp-content/uploads/2018/06/cosmetics-1543271_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2018-06-01 07:55:29', '2018-06-01 07:55:29', '', 'nail-art-2688565_1920', '', 'inherit', 'open', 'closed', '', 'nail-art-2688565_1920', '', '', '2018-06-01 07:55:29', '2018-06-01 07:55:29', '', 80, 'http://localhost/wp/wp-content/uploads/2018/06/nail-art-2688565_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2018-06-01 07:55:30', '2018-06-01 07:55:30', '', 'pexels-photo-259810', '', 'inherit', 'open', 'closed', '', 'pexels-photo-259810', '', '', '2018-06-01 07:55:30', '2018-06-01 07:55:30', '', 80, 'http://localhost/wp/wp-content/uploads/2018/06/pexels-photo-259810.jpeg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2018-06-01 07:58:49', '2018-06-01 07:58:49', '', 'team1.1', '', 'inherit', 'open', 'closed', '', 'team1-1', '', '', '2018-06-01 07:58:49', '2018-06-01 07:58:49', '', 0, 'http://localhost/wp/wp-content/uploads/2018/06/team1.1.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2018-06-01 07:58:49', '2018-06-01 07:58:49', '', 'team2', '', 'inherit', 'open', 'closed', '', 'team2', '', '', '2018-06-01 07:58:49', '2018-06-01 07:58:49', '', 0, 'http://localhost/wp/wp-content/uploads/2018/06/team2.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2018-06-01 07:58:50', '2018-06-01 07:58:50', '', 'team3', '', 'inherit', 'open', 'closed', '', 'team3', '', '', '2018-06-01 07:58:50', '2018-06-01 07:58:50', '', 0, 'http://localhost/wp/wp-content/uploads/2018/06/team3.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2018-06-01 08:06:47', '2018-06-01 08:06:47', '', 'mystical-portrait-of-a-girl-1344632_1920', '', 'inherit', 'open', 'closed', '', 'mystical-portrait-of-a-girl-1344632_1920', '', '', '2018-06-01 08:06:47', '2018-06-01 08:06:47', '', 0, 'http://localhost/wp/wp-content/uploads/2018/06/mystical-portrait-of-a-girl-1344632_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2018-06-01 08:18:55', '2018-06-01 08:18:55', '', 'wellness-massage-relax-relaxing-56884', '', 'inherit', 'open', 'closed', '', 'wellness-massage-relax-relaxing-56884', '', '', '2018-06-01 08:18:55', '2018-06-01 08:18:55', '', 127, 'http://localhost/wp/wp-content/uploads/2018/06/wellness-massage-relax-relaxing-56884.jpeg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2018-06-01 09:29:42', '2018-06-01 09:29:42', '', 'beauty-studio-inner-banner(1920x600)', '', 'inherit', 'open', 'closed', '', 'beauty-studio-inner-banner1920x600', '', '', '2018-06-01 09:29:42', '2018-06-01 09:29:42', '', 28, 'http://localhost/wp/wp-content/uploads/2018/06/beauty-studio-inner-banner1920x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2018-06-01 11:28:11', '2018-06-01 11:28:11', '', 'e40b661adf', '', 'inherit', 'open', 'closed', '', 'e40b661adf', '', '', '2018-06-01 11:28:11', '2018-06-01 11:28:11', '', 20, 'http://localhost/wp/wp-content/uploads/2018/06/e40b661adf.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-06-01 07:37:06', '2018-06-01 07:37:06', '', 'Front Page', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-06-01 07:37:06', '2018-06-01 07:37:06', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=20', 0, 'page', '', 0),
(22, 1, '2018-06-01 07:37:16', '2018-06-01 07:37:16', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-06-01 07:37:16', '2018-06-01 07:37:16', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=22', 0, 'page', '', 0),
(24, 1, '2018-06-01 07:37:23', '2018-06-01 07:37:23', '<div id=\"pl-24\"  class=\"panel-layout\" ><div id=\"pg-24-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-24-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-24-0-0-0\" class=\"so-panel widget widget_media_image panel-first-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"WP_Widget_Media_Image\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;attachment_id&quot;:148,&quot;url&quot;:&quot;http:\\/\\/demo.acmethemes.com\\/beauty-studio\\/wp-content\\/uploads\\/2018\\/06\\/beauty-studio-inner-banner1920x600.jpg&quot;,&quot;title&quot;:&quot;&quot;,&quot;size&quot;:&quot;full&quot;,&quot;width&quot;:1920,&quot;height&quot;:600,&quot;caption&quot;:&quot;&quot;,&quot;alt&quot;:&quot;&quot;,&quot;link_type&quot;:&quot;&quot;,&quot;link_url&quot;:&quot;&quot;,&quot;image_classes&quot;:&quot;&quot;,&quot;link_classes&quot;:&quot;&quot;,&quot;link_rel&quot;:&quot;&quot;,&quot;link_target_blank&quot;:false,&quot;image_title&quot;:&quot;&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-24-0-0-0\\&quot; class=\\&quot;so-panel widget widget_media_image panel-first-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-24-0-0-1\" class=\"so-panel widget widget_beauty_studio_team\" data-index=\"1\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"Beauty_Studio_Team\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;unique_id&quot;:&quot;&quot;,&quot;title&quot;:&quot;Our Team&quot;,&quot;at_all_page_items&quot;:[{&quot;page_id&quot;:95},{&quot;page_id&quot;:97},{&quot;page_id&quot;:93}],&quot;content_from&quot;:&quot;excerpt&quot;,&quot;content_number&quot;:-1,&quot;column_number&quot;:&quot;3&quot;,&quot;background_options&quot;:&quot;default&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-24-0-0-1\\&quot; class=\\&quot;so-panel widget widget_beauty_studio_team\\&quot; data-index=\\&quot;1\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-1&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-24-0-0-2\" class=\"so-panel widget widget_beauty_studio_testimonial\" data-index=\"2\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"Beauty_Studio_Testimonial\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;unique_id&quot;:&quot;&quot;,&quot;bg_image&quot;:&quot;http:\\/\\/demo.acmethemes.com\\/beauty-studio\\/wp-content\\/uploads\\/2018\\/06\\/mystical-portrait-of-a-girl-1344632_1920.jpg&quot;,&quot;title&quot;:&quot;Happy Clients&quot;,&quot;at_all_page_items&quot;:[{&quot;page_id&quot;:105},{&quot;page_id&quot;:107}],&quot;content_from&quot;:&quot;excerpt&quot;,&quot;content_number&quot;:-1},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-24-0-0-2\\&quot; class=\\&quot;so-panel widget widget_beauty_studio_testimonial\\&quot; data-index=\\&quot;2\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-2&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-24-0-0-3\" class=\"so-panel widget widget_beauty_studio_accordion\" data-index=\"3\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"Beauty_Studio_Accordion\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;unique_id&quot;:&quot;&quot;,&quot;title&quot;:&quot;Faq&#039;s&quot;,&quot;at_all_page_items&quot;:[{&quot;page_id&quot;:118},{&quot;page_id&quot;:120},{&quot;page_id&quot;:122},{&quot;page_id&quot;:116},{&quot;page_id&quot;:114}],&quot;content_from&quot;:&quot;excerpt&quot;,&quot;content_number&quot;:-1,&quot;background_options&quot;:&quot;default&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-24-0-0-3\\&quot; class=\\&quot;so-panel widget widget_beauty_studio_accordion\\&quot; data-index=\\&quot;3\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-3&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-24-0-0-4\" class=\"so-panel widget widget_beauty_studio_feature panel-last-child\" data-index=\"4\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"Beauty_Studio_Feature\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;unique_id&quot;:&quot;&quot;,&quot;title&quot;:&quot;Book Now&quot;,&quot;sub_title&quot;:&quot;&lt;strong&gt;Want to Make a Booking or Have a Question?&lt;\\/strong&gt;\\n&lt;br\\/&gt;\\nCall me : &lt;em&gt;002-6666-8888&lt;\\/em&gt; or fill out our online booking\\n&amp; equiry form and &lt;br\\/&gt; we\\u2019ll contact you&quot;,&quot;bg_image&quot;:&quot;http:\\/\\/demo.acmethemes.com\\/beauty-studio\\/wp-content\\/uploads\\/2018\\/06\\/brush-791305_1920-1.jpg&quot;,&quot;button_one_text&quot;:&quot;Book Now&quot;,&quot;button_one_url&quot;:&quot;#&quot;,&quot;button_two_text&quot;:&quot;Learn More&quot;,&quot;button_two_url&quot;:&quot;#&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-24-0-0-4\\&quot; class=\\&quot;so-panel widget widget_beauty_studio_feature panel-last-child\\&quot; data-index=\\&quot;4\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-4&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-06-01 07:37:23', '2018-06-01 07:37:23', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=24', 0, 'page', '', 0),
(26, 1, '2018-06-01 07:37:34', '2018-06-01 07:37:34', '<div id=\"pl-26\"  class=\"panel-layout\" ><div id=\"pg-26-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-26-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-26-0-0-0\" class=\"so-panel widget widget_media_image panel-first-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"WP_Widget_Media_Image\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;attachment_id&quot;:148,&quot;url&quot;:&quot;http:\\/\\/demo.acmethemes.com\\/beauty-studio\\/wp-content\\/uploads\\/2018\\/06\\/beauty-studio-inner-banner1920x600.jpg&quot;,&quot;title&quot;:&quot;&quot;,&quot;size&quot;:&quot;full&quot;,&quot;width&quot;:1920,&quot;height&quot;:600,&quot;caption&quot;:&quot;&quot;,&quot;alt&quot;:&quot;&quot;,&quot;link_type&quot;:&quot;&quot;,&quot;link_url&quot;:&quot;&quot;,&quot;image_classes&quot;:&quot;&quot;,&quot;link_classes&quot;:&quot;&quot;,&quot;link_rel&quot;:&quot;&quot;,&quot;link_target_blank&quot;:false,&quot;image_title&quot;:&quot;&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-26-0-0-0\\&quot; class=\\&quot;so-panel widget widget_media_image panel-first-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-26-0-0-1\" class=\"so-panel widget widget_beauty_studio_contact panel-last-child\" data-index=\"1\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"Beauty_Studio_Contact\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;unique_id&quot;:&quot;&quot;,&quot;title&quot;:&quot;Stay In Touch&quot;,&quot;shortcode&quot;:&quot;[contact-form-7 id=\\&quot;5\\&quot; title=\\&quot;Contact form 1\\&quot;]&quot;,&quot;page_id&quot;:168,&quot;single_page_content_from&quot;:&quot;content&quot;,&quot;single_page_content_number&quot;:-1,&quot;background_options&quot;:&quot;default&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-26-0-0-1\\&quot; class=\\&quot;so-panel widget widget_beauty_studio_contact panel-last-child\\&quot; data-index=\\&quot;1\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-1&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-06-01 07:37:34', '2018-06-01 07:37:34', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=26', 0, 'page', '', 0),
(28, 1, '2018-06-01 07:37:42', '2018-06-01 07:37:42', '<div id=\"pl-28\"  class=\"panel-layout\" ><div id=\"pg-28-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-28-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-28-0-0-0\" class=\"so-panel widget widget_media_image panel-first-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"WP_Widget_Media_Image\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;attachment_id&quot;:148,&quot;url&quot;:&quot;http:\\/\\/demo.acmethemes.com\\/beauty-studio\\/wp-content\\/uploads\\/2018\\/06\\/beauty-studio-inner-banner1920x600.jpg&quot;,&quot;title&quot;:&quot;&quot;,&quot;size&quot;:&quot;full&quot;,&quot;width&quot;:1920,&quot;height&quot;:600,&quot;caption&quot;:&quot;&quot;,&quot;alt&quot;:&quot;&quot;,&quot;link_type&quot;:&quot;none&quot;,&quot;link_url&quot;:&quot;&quot;,&quot;image_classes&quot;:&quot;&quot;,&quot;link_classes&quot;:&quot;&quot;,&quot;link_rel&quot;:&quot;&quot;,&quot;link_target_blank&quot;:false,&quot;image_title&quot;:&quot;&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-28-0-0-0\\&quot; class=\\&quot;so-panel widget widget_media_image panel-first-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-28-0-0-1\" class=\"so-panel widget widget_beauty_studio_service\" data-index=\"1\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"Beauty_Studio_Service\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;unique_id&quot;:&quot;&quot;,&quot;title&quot;:&quot;Our Services&quot;,&quot;at_all_page_items&quot;:[{&quot;page_id&quot;:58},{&quot;page_id&quot;:60},{&quot;page_id&quot;:62}],&quot;content_from&quot;:&quot;excerpt&quot;,&quot;content_number&quot;:-1,&quot;column_number&quot;:&quot;3&quot;,&quot;background_options&quot;:&quot;default&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-28-0-0-1\\&quot; class=\\&quot;so-panel widget widget_beauty_studio_service\\&quot; data-index=\\&quot;1\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-1&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-28-0-0-2\" class=\"so-panel widget widget_beauty_studio_contact\" data-index=\"2\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"Beauty_Studio_Contact\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;unique_id&quot;:&quot;&quot;,&quot;title&quot;:&quot;Book Now&quot;,&quot;shortcode&quot;:&quot;[contact-form-7 id=\\&quot;5\\&quot; title=\\&quot;Contact form 1\\&quot;]&quot;,&quot;page_id&quot;:110,&quot;single_page_content_from&quot;:&quot;content&quot;,&quot;single_page_content_number&quot;:-1,&quot;background_options&quot;:&quot;gray&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-28-0-0-2\\&quot; class=\\&quot;so-panel widget widget_beauty_studio_contact\\&quot; data-index=\\&quot;2\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-2&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-28-0-0-3\" class=\"so-panel widget widget_beauty_studio_team panel-last-child\" data-index=\"3\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"Beauty_Studio_Team\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;unique_id&quot;:&quot;&quot;,&quot;title&quot;:&quot;Our Team&quot;,&quot;at_all_page_items&quot;:[{&quot;page_id&quot;:93},{&quot;page_id&quot;:95},{&quot;page_id&quot;:105}],&quot;content_from&quot;:&quot;excerpt&quot;,&quot;content_number&quot;:-1,&quot;column_number&quot;:&quot;3&quot;,&quot;background_options&quot;:&quot;default&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-28-0-0-3\\&quot; class=\\&quot;so-panel widget widget_beauty_studio_team panel-last-child\\&quot; data-index=\\&quot;3\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-3&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2018-06-01 07:37:42', '2018-06-01 07:37:42', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=28', 0, 'page', '', 0),
(30, 1, '2018-06-01 07:39:29', '2018-06-01 07:39:29', '<div id=\"pl-30\"  class=\"panel-layout\" ><div id=\"pg-30-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-30-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-30-0-0-0\" class=\"so-panel widget widget_media_image panel-first-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"WP_Widget_Media_Image\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;attachment_id&quot;:148,&quot;url&quot;:&quot;http:\\/\\/demo.acmethemes.com\\/beauty-studio\\/wp-content\\/uploads\\/2018\\/06\\/beauty-studio-inner-banner1920x600.jpg&quot;,&quot;title&quot;:&quot;&quot;,&quot;size&quot;:&quot;full&quot;,&quot;width&quot;:1920,&quot;height&quot;:600,&quot;caption&quot;:&quot;&quot;,&quot;alt&quot;:&quot;&quot;,&quot;link_type&quot;:&quot;&quot;,&quot;link_url&quot;:&quot;&quot;,&quot;image_classes&quot;:&quot;&quot;,&quot;link_classes&quot;:&quot;&quot;,&quot;link_rel&quot;:&quot;&quot;,&quot;link_target_blank&quot;:false,&quot;image_title&quot;:&quot;&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-30-0-0-0\\&quot; class=\\&quot;so-panel widget widget_media_image panel-first-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-30-0-0-1\" class=\"so-panel widget widget_beauty_studio_gallery panel-last-child\" data-index=\"1\" data-style=\"{&quot;padding&quot;:&quot;0px 50px 50px 50px&quot;,&quot;mobile_padding&quot;:&quot;0px 10px 10px 10px&quot;,&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"panel-widget-style panel-widget-style-for-30-0-0-1\" >[siteorigin_widget class=\"Beauty_Studio_Gallery\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;unique_id&quot;:&quot;&quot;,&quot;title&quot;:&quot;Our Gallery&quot;,&quot;at_all_page_items&quot;:[{&quot;page_id&quot;:87},{&quot;page_id&quot;:77},{&quot;page_id&quot;:74},{&quot;page_id&quot;:80},{&quot;page_id&quot;:71},{&quot;page_id&quot;:85}],&quot;column_number&quot;:&quot;3&quot;,&quot;image_popup_type&quot;:&quot;gallery&quot;,&quot;beauty_studio_img_size&quot;:&quot;large&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-30-0-0-1\\&quot; class=\\&quot;so-panel widget widget_beauty_studio_gallery panel-last-child\\&quot; data-index=\\&quot;1\\&quot; data-style=\\&quot;{&amp;quot;padding&amp;quot;:&amp;quot;0px 50px 50px 50px&amp;quot;,&amp;quot;mobile_padding&amp;quot;:&amp;quot;0px 10px 10px 10px&amp;quot;,&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&lt;div class=\\&quot;panel-widget-style panel-widget-style-for-30-0-0-1\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-1&quot;}}\" />[/siteorigin_widget]</div></div></div></div></div>', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2018-06-01 07:39:29', '2018-06-01 07:39:29', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=30', 0, 'page', '', 0),
(206, 1, '2018-09-08 12:42:24', '2018-09-08 12:42:24', ' ', '', '', 'publish', 'closed', 'closed', '', '206', '', '', '2018-09-12 06:45:32', '2018-09-12 06:45:32', '', 0, 'http://localhost/wp/2018/09/08/', 2, 'nav_menu_item', '', 0),
(207, 1, '2018-09-08 12:42:24', '2018-09-08 12:42:24', ' ', '', '', 'publish', 'closed', 'closed', '', '207', '', '', '2018-09-12 06:45:32', '2018-09-12 06:45:32', '', 0, 'http://localhost/wp/2018/09/08/', 5, 'nav_menu_item', '', 0),
(208, 1, '2018-09-08 12:42:24', '2018-09-08 12:42:24', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-09-12 06:45:32', '2018-09-12 06:45:32', '', 0, 'http://localhost/wp/2018/09/08/home/', 1, 'nav_menu_item', '', 0),
(209, 1, '2018-09-08 12:42:24', '2018-09-08 12:42:24', ' ', '', '', 'publish', 'closed', 'closed', '', '209', '', '', '2018-09-08 12:42:24', '2018-09-08 12:42:24', '', 0, 'http://localhost/wp/2018/09/08/', 3, 'nav_menu_item', '', 0),
(210, 1, '2018-09-08 12:42:24', '2018-09-08 12:42:24', ' ', '', '', 'publish', 'closed', 'closed', '', '210', '', '', '2018-09-08 12:42:24', '2018-09-08 12:42:24', '', 0, 'http://localhost/wp/2018/09/08/', 4, 'nav_menu_item', '', 0),
(211, 1, '2018-09-08 12:42:24', '2018-09-08 12:42:24', ' ', '', '', 'publish', 'closed', 'closed', '', '211', '', '', '2018-09-08 12:42:24', '2018-09-08 12:42:24', '', 0, 'http://localhost/wp/2018/09/08/', 5, 'nav_menu_item', '', 0),
(212, 1, '2018-09-08 12:42:24', '2018-09-08 12:42:24', ' ', '', '', 'publish', 'closed', 'closed', '', '212', '', '', '2018-09-08 12:42:24', '2018-09-08 12:42:24', '', 0, 'http://localhost/wp/2018/09/08/', 2, 'nav_menu_item', '', 0),
(213, 1, '2018-09-08 12:42:25', '2018-09-08 12:42:25', ' ', '', '', 'publish', 'closed', 'closed', '', '213', '', '', '2018-09-08 12:42:25', '2018-09-08 12:42:25', '', 0, 'http://localhost/wp/2018/09/08/', 6, 'nav_menu_item', '', 0),
(214, 1, '2018-09-08 12:42:25', '2018-09-08 12:42:25', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2018-09-08 12:42:25', '2018-09-08 12:42:25', '', 0, 'http://localhost/wp/2018/09/08/home-2/', 1, 'nav_menu_item', '', 0),
(225, 1, '2018-09-12 06:51:06', '2018-09-12 06:51:06', '{\n    \"beauty-studio::beauty_studio_theme_options[beauty-studio-footer-copyright]\": {\n        \"value\": \"\\u00a9Recursion Technologies Ltd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 06:51:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ec13d485-1926-44d3-9193-825dbe891215', '', '', '2018-09-12 06:51:06', '2018-09-12 06:51:06', '', 0, 'http://localhost/wp/?p=225', 0, 'customize_changeset', '', 0),
(216, 1, '2018-09-08 12:42:25', '2018-09-08 12:42:25', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-3', '', '', '2018-09-08 12:42:25', '2018-09-08 12:42:25', '', 0, 'http://localhost/wp/2018/09/08/home-3/', 1, 'nav_menu_item', '', 0),
(217, 1, '2018-09-08 12:42:25', '2018-09-08 12:42:25', ' ', '', '', 'publish', 'closed', 'closed', '', '217', '', '', '2018-09-08 12:42:25', '2018-09-08 12:42:25', '', 0, 'http://localhost/wp/2018/09/08/', 2, 'nav_menu_item', '', 0),
(218, 1, '2018-09-08 12:42:25', '2018-09-08 12:42:25', ' ', '', '', 'publish', 'closed', 'closed', '', '218', '', '', '2018-09-08 12:42:25', '2018-09-08 12:42:25', '', 0, 'http://localhost/wp/2018/09/08/', 3, 'nav_menu_item', '', 0),
(219, 1, '2018-09-08 12:42:25', '2018-09-08 12:42:25', ' ', '', '', 'publish', 'closed', 'closed', '', '219', '', '', '2018-09-08 12:42:25', '2018-09-08 12:42:25', '', 0, 'http://localhost/wp/2018/09/08/', 4, 'nav_menu_item', '', 0),
(49, 1, '2018-06-01 07:45:41', '2018-06-01 07:45:41', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis', 'Beautiful Makeup', '', 'publish', 'closed', 'closed', '', 'beautiful-makeup', '', '', '2018-06-01 07:45:41', '2018-06-01 07:45:41', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=49', 0, 'page', '', 0),
(53, 1, '2018-06-01 07:45:57', '2018-06-01 07:45:57', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis', 'Hair Color', '', 'publish', 'closed', 'closed', '', 'hair-color', '', '', '2018-06-01 07:45:57', '2018-06-01 07:45:57', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=53', 0, 'page', '', 0),
(58, 1, '2018-06-01 07:48:06', '2018-06-01 07:48:06', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis', 'Hair Cut', '', 'publish', 'closed', 'closed', '', 'hair-cut', '', '', '2018-06-01 07:48:06', '2018-06-01 07:48:06', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=58', 0, 'page', '', 0),
(60, 1, '2018-06-01 07:48:29', '2018-06-01 07:48:29', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis', 'Spa', '', 'publish', 'closed', 'closed', '', 'spa', '', '', '2018-06-01 07:48:29', '2018-06-01 07:48:29', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=60', 0, 'page', '', 0),
(62, 1, '2018-06-01 07:48:46', '2018-06-01 07:48:46', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis', 'Makeup', '', 'publish', 'closed', 'closed', '', 'makeup', '', '', '2018-06-01 07:48:46', '2018-06-01 07:48:46', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=62', 0, 'page', '', 0),
(64, 1, '2018-06-01 07:49:06', '2018-06-01 07:49:06', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis', 'Facial', '', 'publish', 'closed', 'closed', '', 'facial', '', '', '2018-06-01 07:49:06', '2018-06-01 07:49:06', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=64', 0, 'page', '', 0),
(71, 1, '2018-06-01 07:53:47', '2018-06-01 07:53:47', '', 'Bridal Makeup', '', 'publish', 'closed', 'closed', '', 'bridal-makeup', '', '', '2018-06-01 07:53:47', '2018-06-01 07:53:47', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=71', 0, 'page', '', 0),
(74, 1, '2018-06-01 07:54:18', '2018-06-01 07:54:18', '', 'Facial Touchup', '', 'publish', 'closed', 'closed', '', 'facial-touchup', '', '', '2018-06-01 07:54:18', '2018-06-01 07:54:18', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=74', 0, 'page', '', 0),
(77, 1, '2018-06-01 07:54:50', '2018-06-01 07:54:50', '', 'Hair Straight', '', 'publish', 'closed', 'closed', '', 'hair-straight', '', '', '2018-06-01 07:54:50', '2018-06-01 07:54:50', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=77', 0, 'page', '', 0),
(80, 1, '2018-06-01 07:55:40', '2018-06-01 07:55:40', '', 'Aromatic Spa', '', 'publish', 'closed', 'closed', '', 'aromatic-spa', '', '', '2018-06-01 07:55:40', '2018-06-01 07:55:40', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=80', 0, 'page', '', 0),
(85, 1, '2018-06-01 07:55:55', '2018-06-01 07:55:55', '', 'Makeup Kits', '', 'publish', 'closed', 'closed', '', 'makeup-kits', '', '', '2018-06-01 07:55:55', '2018-06-01 07:55:55', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=85', 0, 'page', '', 0),
(87, 1, '2018-06-01 07:56:13', '2018-06-01 07:56:13', '', 'Nail Arts', '', 'publish', 'closed', 'closed', '', 'nail-arts', '', '', '2018-06-01 07:56:13', '2018-06-01 07:56:13', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=87', 0, 'page', '', 0),
(93, 1, '2018-06-01 07:59:57', '2018-06-01 07:59:57', '', 'Emma Watson', 'Founder/Makeup Artist', 'publish', 'closed', 'closed', '', 'emma-watson', '', '', '2018-06-01 07:59:57', '2018-06-01 07:59:57', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=93', 0, 'page', '', 0),
(95, 1, '2018-06-01 08:00:39', '2018-06-01 08:00:39', '', 'Peter Parker', 'Senior Specialist', 'publish', 'closed', 'closed', '', 'peter-parker', '', '', '2018-06-01 08:00:39', '2018-06-01 08:00:39', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=95', 0, 'page', '', 0),
(97, 1, '2018-06-01 08:01:19', '2018-06-01 08:01:19', '', 'Jeniffer Clark', 'Hair Stylist', 'publish', 'closed', 'closed', '', 'jeniffer-clark', '', '', '2018-06-01 08:01:19', '2018-06-01 08:01:19', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=97', 0, 'page', '', 0),
(105, 1, '2018-06-01 08:09:43', '2018-06-01 08:09:43', '', 'Saraha Williams', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis', 'publish', 'closed', 'closed', '', 'saraha-williams', '', '', '2018-06-01 08:09:43', '2018-06-01 08:09:43', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=105', 0, 'page', '', 0),
(107, 1, '2018-06-01 08:10:18', '2018-06-01 08:10:18', '', 'Jhon Doe', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis', 'publish', 'closed', 'closed', '', 'jhon-doe', '', '', '2018-06-01 08:10:18', '2018-06-01 08:10:18', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=107', 0, 'page', '', 0),
(110, 1, '2018-06-01 08:11:49', '2018-06-01 08:11:49', '<h2>Working Hours</h2>\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis \n<ul>\n 	<li>Mon - Wed : 8:00am - 06:00pm</li>\n 	<li>Thu - Sat : 10:00am - 10:00pm</li>\n 	<li><strong>Sunday : Close</strong></li>\n</ul>', 'Time Schedule', '', 'publish', 'closed', 'closed', '', 'time-schedule', '', '', '2018-06-01 08:11:49', '2018-06-01 08:11:49', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=110', 0, 'page', '', 0),
(114, 1, '2018-06-01 08:13:42', '2018-06-01 08:13:42', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis', 'Why get a Good to Glow airbrush sunless tan?', '', 'publish', 'closed', 'closed', '', 'why-get-a-good-to-glow-airbrush-sunless-tan', '', '', '2018-06-01 08:13:42', '2018-06-01 08:13:42', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=114', 0, 'page', '', 0),
(116, 1, '2018-06-01 08:13:53', '2018-06-01 08:13:53', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis', 'What is the difference between being airbrushed and using cream or lotion sunless tanners?', '', 'publish', 'closed', 'closed', '', 'what-is-the-difference-between-being-airbrushed-and-using-cream-or-lotion-sunless-tanners', '', '', '2018-06-01 08:13:53', '2018-06-01 08:13:53', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=116', 0, 'page', '', 0),
(220, 1, '2018-05-31 08:19:42', '2018-05-31 08:19:42', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world-2', '', '', '2018-05-31 08:19:42', '2018-05-31 08:19:42', '', 0, 'http://demo.acmethemes.com/beauty-studio/?p=1', 0, 'post', '', 1),
(118, 1, '2018-06-01 08:14:10', '2018-06-01 08:14:10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem', 'How do I schedule an appointment?', '', 'publish', 'closed', 'closed', '', 'how-do-i-schedule-an-appointment', '', '', '2018-06-01 08:14:10', '2018-06-01 08:14:10', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=118', 0, 'page', '', 0),
(120, 1, '2018-06-01 08:14:23', '2018-06-01 08:14:23', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem', 'How long does it take?', '', 'publish', 'closed', 'closed', '', 'how-long-does-it-take', '', '', '2018-06-01 08:14:23', '2018-06-01 08:14:23', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=120', 0, 'page', '', 0),
(122, 1, '2018-06-01 08:14:36', '2018-06-01 08:14:36', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis', 'What can I expect from my service provider during my salon or spa treatment?', '', 'publish', 'closed', 'closed', '', 'what-can-i-expect-from-my-service-provider-during-my-salon-or-spa-treatment', '', '', '2018-06-01 08:14:36', '2018-06-01 08:14:36', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=122', 0, 'page', '', 0),
(127, 1, '2018-06-01 08:19:02', '2018-06-01 08:19:02', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis', 'Exotic Body Massage', '', 'publish', 'open', 'open', '', 'exotic-body-massage', '', '', '2018-06-01 08:19:02', '2018-06-01 08:19:02', '', 0, 'http://demo.acmethemes.com/beauty-studio/?p=127', 0, 'post', '', 0),
(130, 1, '2018-06-01 08:20:37', '2018-06-01 08:20:37', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis', 'Premium Cosmetic Kits', '', 'publish', 'open', 'open', '', 'premium-cosmetic-kits', '', '', '2018-06-01 08:20:37', '2018-06-01 08:20:37', '', 0, 'http://demo.acmethemes.com/beauty-studio/?p=130', 0, 'post', '', 0),
(132, 1, '2018-06-01 08:21:23', '2018-06-01 08:21:23', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores dolorem adipisci ipsa, quasi nostrum quos culpa, illo perferendis', 'Bridal Hair Style', '', 'publish', 'open', 'open', '', 'bridal-hair-style', '', '', '2018-06-01 08:21:23', '2018-06-01 08:21:23', '', 0, 'http://demo.acmethemes.com/beauty-studio/?p=132', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(168, 1, '2018-06-01 10:35:30', '2018-06-01 10:35:30', '<div id=\"pl-168\"  class=\"panel-layout\" ><div id=\"pg-168-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-168-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-168-0-0-0\" class=\"so-panel widget widget_custom_html panel-first-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"WP_Widget_Custom_HTML\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title&quot;:&quot;Location&quot;,&quot;content&quot;:&quot;&lt;div&gt;\\n\\t&lt;span&gt;176 W street name, New York, NY 10014 &lt;\\/span&gt;\\n&lt;\\/div&gt;&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-168-0-0-0\\&quot; class=\\&quot;so-panel widget widget_custom_html panel-first-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-168-0-0-1\" class=\"so-panel widget widget_custom_html\" data-index=\"1\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"WP_Widget_Custom_HTML\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title&quot;:&quot;Email Address&quot;,&quot;content&quot;:&quot;&lt;div&gt;\\n\\t&lt;a href=\\&quot;mailto:info@example.com\\&quot;&gt;info@example.com&lt;\\/a&gt;\\n&lt;\\/div&gt;&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-168-0-0-1\\&quot; class=\\&quot;so-panel widget widget_custom_html\\&quot; data-index=\\&quot;1\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-1&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-168-0-0-2\" class=\"so-panel widget widget_custom_html\" data-index=\"2\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"WP_Widget_Custom_HTML\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title&quot;:&quot;Phone Number&quot;,&quot;content&quot;:&quot;&lt;div&gt;\\n\\t&lt;span&gt;+1(800)123-4566&lt;\\/span&gt;\\n&lt;\\/div&gt;&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-168-0-0-2\\&quot; class=\\&quot;so-panel widget widget_custom_html\\&quot; data-index=\\&quot;2\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-2&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-168-0-0-3\" class=\"so-panel widget widget_custom_html\" data-index=\"3\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"WP_Widget_Custom_HTML\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title&quot;:&quot;Working Hours&quot;,&quot;content&quot;:&quot;&lt;div&gt;\\n\\t&lt;ul&gt;\\n \\t&lt;li&gt;Mon - Wed : 8:00am - 06:00pm&lt;\\/li&gt;\\n \\t&lt;li&gt;Thu - Sat : 10:00am - 10:00pm&lt;\\/li&gt;\\n \\t&lt;li&gt;&lt;strong&gt;Sunday : Close&lt;\\/strong&gt;&lt;\\/li&gt;\\n&lt;\\/ul&gt;\\n&lt;\\/div&gt;&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-168-0-0-3\\&quot; class=\\&quot;so-panel widget widget_custom_html\\&quot; data-index=\\&quot;3\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-3&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-168-0-0-4\" class=\"so-panel widget widget_custom_html\" data-index=\"4\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"WP_Widget_Custom_HTML\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title&quot;:&quot;&quot;,&quot;content&quot;:&quot;&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-168-0-0-4\\&quot; class=\\&quot;so-panel widget widget_custom_html\\&quot; data-index=\\&quot;4\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-4&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-168-0-0-5\" class=\"so-panel widget widget_beauty_studio_social panel-last-child\" data-index=\"5\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"Beauty_Studio_Social\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;unique_id&quot;:&quot;&quot;,&quot;title&quot;:&quot;Social Links&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-168-0-0-5\\&quot; class=\\&quot;so-panel widget widget_beauty_studio_social panel-last-child\\&quot; data-index=\\&quot;5\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-5&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'Contact Info', '', 'publish', 'closed', 'closed', '', 'contact-info', '', '', '2018-06-01 10:35:30', '2018-06-01 10:35:30', '', 0, 'http://demo.acmethemes.com/beauty-studio/?page_id=168', 0, 'page', '', 0),
(221, 1, '2018-09-08 12:42:26', '2018-09-08 12:42:26', ' ', '', '', 'publish', 'closed', 'closed', '', '221', '', '', '2018-09-12 06:45:32', '2018-09-12 06:45:32', '', 0, 'http://localhost/wp/2018/09/08/221/', 4, 'nav_menu_item', '', 0),
(222, 1, '2018-09-08 12:42:26', '2018-09-08 12:42:26', ' ', '', '', 'publish', 'closed', 'closed', '', '222', '', '', '2018-09-12 06:45:32', '2018-09-12 06:45:32', '', 0, 'http://localhost/wp/2018/09/08/222/', 3, 'nav_menu_item', '', 0),
(223, 1, '2018-09-08 12:42:26', '2018-09-08 12:42:26', ' ', '', '', 'publish', 'closed', 'closed', '', '223', '', '', '2018-09-12 06:45:32', '2018-09-12 06:45:32', '', 0, 'http://localhost/wp/2018/09/08/223/', 6, 'nav_menu_item', '', 0),
(224, 1, '2018-09-12 06:34:28', '2018-09-12 06:34:28', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Date\r\n    [date* Date] </label>\r\n\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\nwp \"[your-subject]\"\n[your-name] <sumon@r-cis.com>\nsumon@r-cis.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on wp (http://localhost/wp)\nReply-To: [your-email]\n\n\n\n\nwp \"[your-subject]\"\nwp <sumon@r-cis.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on wp (http://localhost/wp)\nReply-To: sumon@r-cis.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-09-12 08:19:17', '2018-09-12 08:19:17', '', 0, 'http://localhost/wp/?post_type=wpcf7_contact_form&#038;p=224', 0, 'wpcf7_contact_form', '', 0),
(226, 1, '2018-09-12 07:01:48', '2018-09-12 07:01:48', '{\n    \"beauty-studio::beauty_studio_theme_options[beauty-studio-footer-copyright-beside-option]\": {\n        \"value\": \"social\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 07:01:18\"\n    },\n    \"beauty-studio::beauty_studio_theme_options[beauty-studio-footer-copyright]\": {\n        \"value\": \"\\u00a9\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 07:01:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '30233ef8-a667-448c-888f-eebc26c5f6a1', '', '', '2018-09-12 07:01:48', '2018-09-12 07:01:48', '', 0, 'http://localhost/wp/?p=226', 0, 'customize_changeset', '', 0),
(227, 1, '2018-09-12 07:10:47', '2018-09-12 07:10:47', '{\n    \"beauty-studio::beauty_studio_theme_options[beauty-studio-footer-copyright]\": {\n        \"value\": \"\\u00a9Recursion Technologies Ltd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 07:03:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '62eb1283-11b3-479d-a002-f03670f64463', '', '', '2018-09-12 07:10:47', '2018-09-12 07:10:47', '', 0, 'http://localhost/wp/?p=227', 0, 'customize_changeset', '', 0),
(228, 1, '2018-09-12 07:14:35', '2018-09-12 07:14:35', '{\n    \"beauty-studio::beauty_studio_theme_options[beauty-studio-footer-copyright]\": {\n        \"value\": \"\\u00a9 Recursion Technologies Ltd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-12 07:14:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0cd70164-0d6a-4a81-930c-0ed846238d00', '', '', '2018-09-12 07:14:35', '2018-09-12 07:14:35', '', 0, 'http://localhost/wp/2018/09/12/0cd70164-0d6a-4a81-930c-0ed846238d00/', 0, 'customize_changeset', '', 0),
(229, 1, '2018-09-12 08:13:02', '2018-09-12 08:13:02', '<div id=\"pl-168\"  class=\"panel-layout\" ><div id=\"pg-168-0\"  class=\"panel-grid panel-no-style\" ><div id=\"pgc-168-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-168-0-0-0\" class=\"so-panel widget widget_custom_html panel-first-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"WP_Widget_Custom_HTML\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title&quot;:&quot;Location&quot;,&quot;content&quot;:&quot;&lt;div&gt;\\n\\t&lt;span&gt;176 W street name, New York, NY 10014 &lt;\\/span&gt;\\n&lt;\\/div&gt;&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-168-0-0-0\\&quot; class=\\&quot;so-panel widget widget_custom_html panel-first-child\\&quot; data-index=\\&quot;0\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-168-0-0-1\" class=\"so-panel widget widget_custom_html\" data-index=\"1\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"WP_Widget_Custom_HTML\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title&quot;:&quot;Email Address&quot;,&quot;content&quot;:&quot;&lt;div&gt;\\n\\t&lt;a href=\\&quot;mailto:info@example.com\\&quot;&gt;info@example.com&lt;\\/a&gt;\\n&lt;\\/div&gt;&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-168-0-0-1\\&quot; class=\\&quot;so-panel widget widget_custom_html\\&quot; data-index=\\&quot;1\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-1&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-168-0-0-2\" class=\"so-panel widget widget_custom_html\" data-index=\"2\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"WP_Widget_Custom_HTML\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title&quot;:&quot;Phone Number&quot;,&quot;content&quot;:&quot;&lt;div&gt;\\n\\t&lt;span&gt;+1(800)123-4566&lt;\\/span&gt;\\n&lt;\\/div&gt;&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-168-0-0-2\\&quot; class=\\&quot;so-panel widget widget_custom_html\\&quot; data-index=\\&quot;2\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-2&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-168-0-0-3\" class=\"so-panel widget widget_custom_html\" data-index=\"3\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"WP_Widget_Custom_HTML\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title&quot;:&quot;Working Hours&quot;,&quot;content&quot;:&quot;&lt;div&gt;\\n\\t&lt;ul&gt;\\n \\t&lt;li&gt;Mon - Wed : 8:00am - 06:00pm&lt;\\/li&gt;\\n \\t&lt;li&gt;Thu - Sat : 10:00am - 10:00pm&lt;\\/li&gt;\\n \\t&lt;li&gt;&lt;strong&gt;Sunday : Close&lt;\\/strong&gt;&lt;\\/li&gt;\\n&lt;\\/ul&gt;\\n&lt;\\/div&gt;&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-168-0-0-3\\&quot; class=\\&quot;so-panel widget widget_custom_html\\&quot; data-index=\\&quot;3\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-3&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-168-0-0-4\" class=\"so-panel widget widget_custom_html\" data-index=\"4\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"WP_Widget_Custom_HTML\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;title&quot;:&quot;&quot;,&quot;content&quot;:&quot;&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-168-0-0-4\\&quot; class=\\&quot;so-panel widget widget_custom_html\\&quot; data-index=\\&quot;4\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-4&quot;}}\" />[/siteorigin_widget]</div><div id=\"panel-168-0-0-5\" class=\"so-panel widget widget_beauty_studio_social panel-last-child\" data-index=\"5\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" >[siteorigin_widget class=\"Beauty_Studio_Social\"]<input type=\"hidden\" value=\"{&quot;instance&quot;:{&quot;unique_id&quot;:&quot;&quot;,&quot;title&quot;:&quot;Social Links&quot;},&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-168-0-0-5\\&quot; class=\\&quot;so-panel widget widget_beauty_studio_social panel-last-child\\&quot; data-index=\\&quot;5\\&quot; data-style=\\&quot;{&amp;quot;background_image_attachment&amp;quot;:false,&amp;quot;background_display&amp;quot;:&amp;quot;tile&amp;quot;}\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-5&quot;}}\" />[/siteorigin_widget]</div></div></div></div>', 'Contact Info', '', 'inherit', 'closed', 'closed', '', '168-autosave-v1', '', '', '2018-09-12 08:13:02', '2018-09-12 08:13:02', '', 168, 'http://localhost/wp/2018/09/12/168-autosave-v1/', 0, 'revision', '', 0),
(230, 1, '2018-09-23 11:36:16', '2018-09-23 11:36:16', '', 'Holborn-Beauty-logo-163x53', '', 'inherit', 'open', 'closed', '', 'holborn-beauty-logo-163x53', '', '', '2018-09-23 11:36:16', '2018-09-23 11:36:16', '', 0, 'http://localhost/wp/wp-content/uploads/2018/09/Holborn-Beauty-logo-163x53.jpg', 0, 'attachment', 'image/jpeg', 0),
(231, 1, '2018-09-23 11:36:36', '2018-09-23 11:36:36', 'http://localhost/wp/wp-content/uploads/2018/09/cropped-Holborn-Beauty-logo-163x53.jpg', 'cropped-Holborn-Beauty-logo-163x53.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-holborn-beauty-logo-163x53-jpg', '', '', '2018-09-23 11:36:36', '2018-09-23 11:36:36', '', 0, 'http://localhost/wp/wp-content/uploads/2018/09/cropped-Holborn-Beauty-logo-163x53.jpg', 0, 'attachment', 'image/jpeg', 0),
(232, 1, '2018-09-23 11:36:49', '2018-09-23 11:36:49', '{\n    \"beauty-studio::custom_logo\": {\n        \"value\": 231,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-23 11:36:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0e42ff96-9e5a-48ec-9948-2ca27282d089', '', '', '2018-09-23 11:36:49', '2018-09-23 11:36:49', '', 0, 'http://localhost/wp/2018/09/23/0e42ff96-9e5a-48ec-9948-2ca27282d089/', 0, 'customize_changeset', '', 0),
(233, 1, '2018-09-23 11:38:18', '2018-09-23 11:38:18', '{\n    \"beauty-studio::custom_logo\": {\n        \"value\": 16,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-23 11:38:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '40758c41-6f16-4af5-b50a-b4c7ac20e026', '', '', '2018-09-23 11:38:18', '2018-09-23 11:38:18', '', 0, 'http://localhost/wp/2018/09/23/40758c41-6f16-4af5-b50a-b4c7ac20e026/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_supsystic_tbl_columns`
--

DROP TABLE IF EXISTS `wp_supsystic_tbl_columns`;
CREATE TABLE IF NOT EXISTS `wp_supsystic_tbl_columns` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_id` int(10) UNSIGNED DEFAULT NULL,
  `index` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_supsystic_tbl_diagrams`
--

DROP TABLE IF EXISTS `wp_supsystic_tbl_diagrams`;
CREATE TABLE IF NOT EXISTS `wp_supsystic_tbl_diagrams` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_id` int(10) UNSIGNED DEFAULT NULL,
  `start_row` int(10) UNSIGNED DEFAULT NULL,
  `start_col` int(10) UNSIGNED DEFAULT NULL,
  `end_row` int(10) UNSIGNED DEFAULT NULL,
  `end_col` int(10) UNSIGNED DEFAULT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_supsystic_tbl_rows`
--

DROP TABLE IF EXISTS `wp_supsystic_tbl_rows`;
CREATE TABLE IF NOT EXISTS `wp_supsystic_tbl_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_id` int(10) UNSIGNED DEFAULT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_supsystic_tbl_rows`
--

INSERT INTO `wp_supsystic_tbl_rows` (`id`, `table_id`, `data`) VALUES
(48, 1, 'a:1:{s:5:\"cells\";a:7:{i:0;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:7:\"ID-0005\";s:2:\"cv\";N;s:2:\"fv\";s:7:\"ID-0005\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:11:\"Frozen Meat\";s:2:\"cv\";N;s:2:\"fv\";s:11:\"Frozen Meat\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:2:\"KG\";s:2:\"cv\";N;s:2:\"fv\";s:2:\"KG\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:7:\"$100.00\";s:2:\"cv\";N;s:2:\"fv\";s:7:\"$100.00\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:12:{s:1:\"y\";i:6;s:1:\"d\";s:1:\"3\";s:2:\"cv\";N;s:2:\"fv\";s:1:\"3\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:1:\"f\";s:0:\"\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:6:\"number\";s:1:\"m\";a:0:{}}i:5;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:3:\"ABC\";s:2:\"cv\";N;s:2:\"fv\";s:3:\"ABC\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:6;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:15:\"=VALUE(D6) * E6\";s:2:\"cv\";s:3:\"300\";s:2:\"fv\";s:3:\"300\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(49, 1, 'a:1:{s:5:\"cells\";a:7:{i:0;a:11:{s:1:\"y\";i:7;s:1:\"d\";s:7:\"ID-0006\";s:2:\"cv\";N;s:2:\"fv\";s:7:\"ID-0006\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:7;s:1:\"d\";s:14:\"TELEPHONE SETS\";s:2:\"cv\";N;s:2:\"fv\";s:14:\"TELEPHONE SETS\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:11:{s:1:\"y\";i:7;s:1:\"d\";s:3:\"PCS\";s:2:\"cv\";N;s:2:\"fv\";s:3:\"PCS\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:11:{s:1:\"y\";i:7;s:1:\"d\";s:6:\"$10.00\";s:2:\"cv\";N;s:2:\"fv\";s:6:\"$10.00\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:12:{s:1:\"y\";i:7;s:1:\"d\";s:1:\"3\";s:2:\"cv\";N;s:2:\"fv\";s:1:\"3\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:1:\"f\";s:0:\"\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:6:\"number\";s:1:\"m\";a:0:{}}i:5;a:11:{s:1:\"y\";i:7;s:1:\"d\";s:3:\"Dry\";s:2:\"cv\";N;s:2:\"fv\";s:3:\"Dry\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:6;a:11:{s:1:\"y\";i:7;s:1:\"d\";s:15:\"=VALUE(D7) * E7\";s:2:\"cv\";s:2:\"30\";s:2:\"fv\";s:2:\"30\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(47, 1, 'a:1:{s:5:\"cells\";a:7:{i:0;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:7:\"ID-0004\";s:2:\"cv\";N;s:2:\"fv\";s:7:\"ID-0004\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:11:\"Frozen Fish\";s:2:\"cv\";N;s:2:\"fv\";s:11:\"Frozen Fish\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:3:\"Ctn\";s:2:\"cv\";N;s:2:\"fv\";s:3:\"Ctn\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:9:\"$1,200.00\";s:2:\"cv\";N;s:2:\"fv\";s:9:\"$1,200.00\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:12:{s:1:\"y\";i:5;s:1:\"d\";s:2:\"30\";s:2:\"cv\";N;s:2:\"fv\";s:2:\"30\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:1:\"f\";s:0:\"\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:6:\"number\";s:1:\"m\";a:0:{}}i:5;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:8:\"anything\";s:2:\"cv\";N;s:2:\"fv\";s:8:\"anything\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:6;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:15:\"=VALUE(D5) * E5\";s:2:\"cv\";s:5:\"36000\";s:2:\"fv\";s:5:\"36000\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(46, 1, 'a:1:{s:5:\"cells\";a:7:{i:0;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:7:\"ID-0003\";s:2:\"cv\";N;s:2:\"fv\";s:7:\"ID-0003\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:14:\"TELEPHONE SETS\";s:2:\"cv\";N;s:2:\"fv\";s:14:\"TELEPHONE SETS\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:3:\"PCS\";s:2:\"cv\";N;s:2:\"fv\";s:3:\"PCS\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:6:\"$10.00\";s:2:\"cv\";N;s:2:\"fv\";s:6:\"$10.00\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:12:{s:1:\"y\";i:4;s:1:\"d\";s:1:\"3\";s:2:\"cv\";N;s:2:\"fv\";s:1:\"3\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:1:\"f\";s:0:\"\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:6:\"number\";s:1:\"m\";a:0:{}}i:5;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:7:\"General\";s:2:\"cv\";N;s:2:\"fv\";s:7:\"General\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:6;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:15:\"=VALUE(D4) * E4\";s:2:\"cv\";s:2:\"30\";s:2:\"fv\";s:2:\"30\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(43, 1, 'a:1:{s:5:\"cells\";a:7:{i:0;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:10:\"STOCK CODE\";s:2:\"cv\";N;s:2:\"fv\";s:10:\"STOCK CODE\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:11:\"DESCRIPTION\";s:2:\"cv\";N;s:2:\"fv\";s:11:\"DESCRIPTION\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:4:\"Unit\";s:2:\"cv\";N;s:2:\"fv\";s:4:\"Unit\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:10:\"Unit Price\";s:2:\"cv\";N;s:2:\"fv\";s:10:\"Unit Price\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:13:\"Stock In Hand\";s:2:\"cv\";N;s:2:\"fv\";s:13:\"Stock In Hand\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:5;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:8:\"Category\";s:2:\"cv\";N;s:2:\"fv\";s:8:\"Category\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:6;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:11:\"Stock Price\";s:2:\"cv\";N;s:2:\"fv\";s:11:\"Stock Price\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(45, 1, 'a:1:{s:5:\"cells\";a:7:{i:0;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:7:\"ID-0002\";s:2:\"cv\";N;s:2:\"fv\";s:7:\"ID-0002\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:11:\"Frozen Meat\";s:2:\"cv\";N;s:2:\"fv\";s:11:\"Frozen Meat\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:2:\"KG\";s:2:\"cv\";N;s:2:\"fv\";s:2:\"KG\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:7:\"$100.00\";s:2:\"cv\";N;s:2:\"fv\";s:7:\"$100.00\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:12:{s:1:\"y\";i:3;s:1:\"d\";s:1:\"3\";s:2:\"cv\";N;s:2:\"fv\";s:1:\"3\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:1:\"f\";s:0:\"\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:6:\"number\";s:1:\"m\";a:0:{}}i:5;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:3:\"Wet\";s:2:\"cv\";N;s:2:\"fv\";s:3:\"Wet\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:6;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:15:\"=VALUE(D3) * E3\";s:2:\"cv\";s:3:\"300\";s:2:\"fv\";s:3:\"300\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(44, 1, 'a:1:{s:5:\"cells\";a:7:{i:0;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:7:\"ID-0001\";s:2:\"cv\";N;s:2:\"fv\";s:7:\"ID-0001\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:11:\"Frozen Fish\";s:2:\"cv\";N;s:2:\"fv\";s:11:\"Frozen Fish\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:3:\"Ctn\";s:2:\"cv\";N;s:2:\"fv\";s:3:\"Ctn\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:9:\"$1,100.00\";s:2:\"cv\";N;s:2:\"fv\";s:9:\"$1,100.00\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:12:{s:1:\"y\";i:2;s:1:\"d\";s:2:\"30\";s:2:\"cv\";N;s:2:\"fv\";s:2:\"30\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:1:\"f\";s:0:\"\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:6:\"number\";s:1:\"m\";a:0:{}}i:5;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:6:\"Frozen\";s:2:\"cv\";N;s:2:\"fv\";s:6:\"Frozen\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:6;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:15:\"=VALUE(D2) * E2\";s:2:\"cv\";s:5:\"33000\";s:2:\"fv\";s:5:\"33000\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(52, 2, 'a:1:{s:5:\"cells\";a:7:{i:0;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:8:\"Supplier\";s:2:\"cv\";N;s:2:\"fv\";s:8:\"Supplier\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:5;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:6;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(51, 2, 'a:1:{s:5:\"cells\";a:7:{i:0;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:4:\"DATE\";s:2:\"cv\";N;s:2:\"fv\";s:4:\"DATE\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:5;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:6;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(55, 2, 'a:1:{s:5:\"cells\";a:7:{i:0;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:5;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:6;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(53, 2, 'a:1:{s:5:\"cells\";a:7:{i:0;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:5;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:6;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(54, 2, 'a:1:{s:5:\"cells\";a:7:{i:0;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:10:\"STOCK CODE\";s:2:\"cv\";N;s:2:\"fv\";s:10:\"STOCK CODE\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:11:\"DESCRIPTION\";s:2:\"cv\";N;s:2:\"fv\";s:11:\"DESCRIPTION\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:4:\"Unit\";s:2:\"cv\";N;s:2:\"fv\";s:4:\"Unit\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:10:\"Unit Price\";s:2:\"cv\";N;s:2:\"fv\";s:10:\"Unit Price\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:9:\"Order Qty\";s:2:\"cv\";N;s:2:\"fv\";s:9:\"Order Qty\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:5;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:8:\"Category\";s:2:\"cv\";N;s:2:\"fv\";s:8:\"Category\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:6;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:11:\"Stock Price\";s:2:\"cv\";N;s:2:\"fv\";s:11:\"Stock Price\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(50, 2, 'a:1:{s:5:\"cells\";a:7:{i:0;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:9:\"PO Number\";s:2:\"cv\";N;s:2:\"fv\";s:9:\"PO Number\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:1:\"3\";s:2:\"cv\";N;s:2:\"fv\";s:1:\"3\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:5;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:6;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_supsystic_tbl_tables`
--

DROP TABLE IF EXISTS `wp_supsystic_tbl_tables`;
CREATE TABLE IF NOT EXISTS `wp_supsystic_tbl_tables` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `meta` text,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_supsystic_tbl_tables`
--

INSERT INTO `wp_supsystic_tbl_tables` (`id`, `title`, `created_at`, `meta`, `settings`) VALUES
(1, 'stock', '2018-09-08 09:25:15', 'a:6:{s:11:&quot;mergedCells&quot;;a:0:{}s:12:&quot;columnsWidth&quot;;a:7:{i:0;i:115;i:1;i:131;i:2;i:62;i:3;i:111;i:4;i:103;i:5;i:131;i:6;i:145;}s:17:&quot;columnsFixedWidth&quot;;a:0:{}s:16:&quot;columnsSortOrder&quot;;a:0:{}s:21:&quot;columnsDisableSorting&quot;;a:0:{}s:3:&quot;css&quot;;s:340:&quot;/* Here you can add custom CSS for the current table */\n/* Lean more about CSS: https://en.wikipedia.org/wiki/Cascading_Style_Sheets */\n/*\nTo prevent the use of styles to other tables use &quot;#supsystic-table-1&quot; as a base selector\nfor example:\n#supsystic-table-1 { ... }\n#supsystic-table-1 tbody { ... }\n#supsystic-table-1 tbody tr { ... }\n*/\n&quot;;}', 'a:27:{s:8:&quot;elements&quot;;a:4:{s:7:&quot;caption&quot;;s:2:&quot;on&quot;;s:15:&quot;descriptionText&quot;;s:0:&quot;&quot;;s:13:&quot;signatureText&quot;;s:0:&quot;&quot;;s:4:&quot;head&quot;;s:2:&quot;on&quot;;}s:15:&quot;headerRowsCount&quot;;s:1:&quot;1&quot;;s:15:&quot;footerRowsCount&quot;;s:1:&quot;1&quot;;s:11:&quot;fixedHeader&quot;;s:2:&quot;on&quot;;s:11:&quot;fixedHeight&quot;;s:3:&quot;400&quot;;s:21:&quot;fixedLeftColumnsCount&quot;;s:1:&quot;1&quot;;s:22:&quot;fixedRightColumnsCount&quot;;s:1:&quot;0&quot;;s:9:&quot;autoIndex&quot;;s:3:&quot;off&quot;;s:12:&quot;numberFormat&quot;;s:8:&quot;1,000.00&quot;;s:14:&quot;currencyFormat&quot;;s:9:&quot;$1,000.00&quot;;s:13:&quot;percentFormat&quot;;s:6:&quot;10.00%&quot;;s:10:&quot;dateFormat&quot;;s:10:&quot;DD.MM.YYYY&quot;;s:18:&quot;timeDurationFormat&quot;;s:5:&quot;HH:mm&quot;;s:14:&quot;responsiveMode&quot;;s:1:&quot;0&quot;;s:12:&quot;sortingOrder&quot;;s:3:&quot;asc&quot;;s:18:&quot;sortingOrderColumn&quot;;s:1:&quot;1&quot;;s:20:&quot;paginationMenuLength&quot;;s:10:&quot;50,100,All&quot;;s:14:&quot;paginationSize&quot;;s:16:&quot;pagination-large&quot;;s:9:&quot;searching&quot;;a:1:{s:8:&quot;minChars&quot;;s:1:&quot;0&quot;;}s:8:&quot;features&quot;;a:1:{s:25:&quot;after_table_loaded_script&quot;;s:0:&quot;&quot;;}s:10:&quot;tableWidth&quot;;s:3:&quot;100&quot;;s:14:&quot;tableWidthType&quot;;s:1:&quot;%&quot;;s:16:&quot;tableWidthMobile&quot;;s:3:&quot;100&quot;;s:20:&quot;tableWidthMobileType&quot;;s:1:&quot;%&quot;;s:7:&quot;styling&quot;;a:1:{s:6:&quot;border&quot;;s:11:&quot;cell-border&quot;;}s:11:&quot;tableLoader&quot;;a:3:{s:8:&quot;iconName&quot;;s:7:&quot;default&quot;;s:9:&quot;iconItems&quot;;s:1:&quot;0&quot;;s:5:&quot;color&quot;;s:7:&quot;#000000&quot;;}s:8:&quot;language&quot;;a:9:{s:10:&quot;emptyTable&quot;;s:0:&quot;&quot;;s:4:&quot;info&quot;;s:0:&quot;&quot;;s:9:&quot;infoEmpty&quot;;s:0:&quot;&quot;;s:12:&quot;infoFiltered&quot;;s:0:&quot;&quot;;s:10:&quot;lengthMenu&quot;;s:0:&quot;&quot;;s:6:&quot;search&quot;;s:0:&quot;&quot;;s:11:&quot;zeroRecords&quot;;s:0:&quot;&quot;;s:11:&quot;exportLabel&quot;;s:0:&quot;&quot;;s:4:&quot;file&quot;;s:7:&quot;default&quot;;}}'),
(2, 'Order Placement', '2018-09-08 09:29:01', 'a:6:{s:11:&quot;mergedCells&quot;;a:0:{}s:12:&quot;columnsWidth&quot;;a:7:{i:0;i:162;i:1;i:62;i:2;i:62;i:3;i:99;i:4;i:100;i:5;i:143;i:6;i:143;}s:17:&quot;columnsFixedWidth&quot;;a:0:{}s:16:&quot;columnsSortOrder&quot;;a:0:{}s:21:&quot;columnsDisableSorting&quot;;a:0:{}s:3:&quot;css&quot;;s:340:&quot;/* Here you can add custom CSS for the current table */\n/* Lean more about CSS: https://en.wikipedia.org/wiki/Cascading_Style_Sheets */\n/*\nTo prevent the use of styles to other tables use &quot;#supsystic-table-2&quot; as a base selector\nfor example:\n#supsystic-table-2 { ... }\n#supsystic-table-2 tbody { ... }\n#supsystic-table-2 tbody tr { ... }\n*/\n&quot;;}', 'a:27:{s:8:&quot;elements&quot;;a:4:{s:15:&quot;descriptionText&quot;;s:0:&quot;&quot;;s:13:&quot;signatureText&quot;;s:0:&quot;&quot;;s:4:&quot;head&quot;;s:2:&quot;on&quot;;s:4:&quot;foot&quot;;s:2:&quot;on&quot;;}s:15:&quot;headerRowsCount&quot;;s:1:&quot;1&quot;;s:15:&quot;footerRowsCount&quot;;s:1:&quot;1&quot;;s:11:&quot;fixedHeader&quot;;s:2:&quot;on&quot;;s:11:&quot;fixedHeight&quot;;s:3:&quot;400&quot;;s:21:&quot;fixedLeftColumnsCount&quot;;s:1:&quot;1&quot;;s:22:&quot;fixedRightColumnsCount&quot;;s:1:&quot;0&quot;;s:9:&quot;autoIndex&quot;;s:3:&quot;off&quot;;s:12:&quot;numberFormat&quot;;s:8:&quot;1,000.00&quot;;s:14:&quot;currencyFormat&quot;;s:9:&quot;$1,000.00&quot;;s:13:&quot;percentFormat&quot;;s:6:&quot;10.00%&quot;;s:10:&quot;dateFormat&quot;;s:10:&quot;DD.MM.YYYY&quot;;s:18:&quot;timeDurationFormat&quot;;s:5:&quot;HH:mm&quot;;s:14:&quot;responsiveMode&quot;;s:1:&quot;0&quot;;s:12:&quot;sortingOrder&quot;;s:3:&quot;asc&quot;;s:18:&quot;sortingOrderColumn&quot;;s:1:&quot;1&quot;;s:20:&quot;paginationMenuLength&quot;;s:10:&quot;50,100,All&quot;;s:14:&quot;paginationSize&quot;;s:16:&quot;pagination-large&quot;;s:9:&quot;searching&quot;;a:1:{s:8:&quot;minChars&quot;;s:1:&quot;0&quot;;}s:8:&quot;features&quot;;a:1:{s:25:&quot;after_table_loaded_script&quot;;s:0:&quot;&quot;;}s:10:&quot;tableWidth&quot;;s:3:&quot;100&quot;;s:14:&quot;tableWidthType&quot;;s:1:&quot;%&quot;;s:16:&quot;tableWidthMobile&quot;;s:3:&quot;100&quot;;s:20:&quot;tableWidthMobileType&quot;;s:1:&quot;%&quot;;s:7:&quot;styling&quot;;a:1:{s:6:&quot;border&quot;;s:11:&quot;cell-border&quot;;}s:11:&quot;tableLoader&quot;;a:3:{s:8:&quot;iconName&quot;;s:7:&quot;default&quot;;s:9:&quot;iconItems&quot;;s:1:&quot;0&quot;;s:5:&quot;color&quot;;s:7:&quot;#000000&quot;;}s:8:&quot;language&quot;;a:9:{s:10:&quot;emptyTable&quot;;s:0:&quot;&quot;;s:4:&quot;info&quot;;s:0:&quot;&quot;;s:9:&quot;infoEmpty&quot;;s:0:&quot;&quot;;s:12:&quot;infoFiltered&quot;;s:0:&quot;&quot;;s:10:&quot;lengthMenu&quot;;s:0:&quot;&quot;;s:6:&quot;search&quot;;s:0:&quot;&quot;;s:11:&quot;zeroRecords&quot;;s:0:&quot;&quot;;s:11:&quot;exportLabel&quot;;s:0:&quot;&quot;;s:4:&quot;file&quot;;s:7:&quot;default&quot;;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Cosmetics', 'cosmetics', 0),
(3, 'Hair', 'hair', 0),
(4, 'Makeup', 'makeup', 0),
(5, 'Massage', 'massage', 0),
(6, 'Spa', 'spa', 0),
(7, 'Footer Menu', 'footer-menu', 0),
(8, 'Primary Menu', 'primary-menu', 0),
(9, 'Top Menu', 'top-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(206, 8, 0),
(207, 8, 0),
(208, 8, 0),
(209, 9, 0),
(210, 9, 0),
(211, 9, 0),
(212, 9, 0),
(213, 9, 0),
(214, 9, 0),
(216, 7, 0),
(217, 7, 0),
(218, 7, 0),
(219, 7, 0),
(220, 1, 0),
(221, 8, 0),
(127, 5, 0),
(127, 6, 0),
(130, 2, 0),
(130, 4, 0),
(132, 3, 0),
(222, 8, 0),
(223, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 0, 1),
(7, 7, 'nav_menu', '', 0, 4),
(8, 8, 'nav_menu', '', 0, 6),
(9, 9, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"9ccf3b69cdb89d86af14cb97a275b5c10108dead46d20293a5e30b62477f005c\";a:4:{s:10:\"expiration\";i:1537858429;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1537685629;}s:64:\"38c35d10c21bcbf538bc2e47acb7c48fd18065db95ea7dcd99fe42eadcfacdbc\";a:4:{s:10:\"expiration\";i:1537875237;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1537702437;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'supsystic-tables-tutorial_was_showed', '1'),
(19, 1, 'nav_menu_recently_edited', '9'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B/DFbeVydgFO/GQgd7LLQLvc4TxFst0', 'admin', 'sumon@r-cis.com', '', '2018-09-08 07:27:19', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpdatacharts`
--

DROP TABLE IF EXISTS `wp_wpdatacharts`;
CREATE TABLE IF NOT EXISTS `wp_wpdatacharts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wpdatatable_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `engine` enum('google','highcharts','chartjs') NOT NULL,
  `type` varchar(255) NOT NULL,
  `json_render_data` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpdatatables`
--

DROP TABLE IF EXISTS `wp_wpdatatables`;
CREATE TABLE IF NOT EXISTS `wp_wpdatatables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `table_type` varchar(55) NOT NULL,
  `content` text NOT NULL,
  `filtering` tinyint(1) NOT NULL DEFAULT '1',
  `filtering_form` tinyint(1) NOT NULL DEFAULT '0',
  `sorting` tinyint(1) NOT NULL DEFAULT '1',
  `tools` tinyint(1) NOT NULL DEFAULT '1',
  `server_side` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `inline_editing` tinyint(1) NOT NULL DEFAULT '0',
  `popover_tools` tinyint(1) NOT NULL DEFAULT '0',
  `editor_roles` varchar(255) NOT NULL DEFAULT '',
  `mysql_table_name` varchar(255) NOT NULL DEFAULT '',
  `edit_only_own_rows` tinyint(1) NOT NULL DEFAULT '0',
  `userid_column_id` int(11) NOT NULL DEFAULT '0',
  `display_length` int(3) NOT NULL DEFAULT '10',
  `auto_refresh` int(3) NOT NULL DEFAULT '0',
  `fixed_columns` tinyint(1) NOT NULL DEFAULT '-1',
  `fixed_layout` tinyint(1) NOT NULL DEFAULT '0',
  `responsive` tinyint(1) NOT NULL DEFAULT '0',
  `scrollable` tinyint(1) NOT NULL DEFAULT '0',
  `word_wrap` tinyint(1) NOT NULL DEFAULT '0',
  `hide_before_load` tinyint(1) NOT NULL DEFAULT '0',
  `var1` varchar(255) NOT NULL DEFAULT '',
  `var2` varchar(255) NOT NULL DEFAULT '',
  `var3` varchar(255) NOT NULL DEFAULT '',
  `tabletools_config` varchar(255) NOT NULL DEFAULT '',
  `advanced_settings` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpdatatables_columns`
--

DROP TABLE IF EXISTS `wp_wpdatatables_columns`;
CREATE TABLE IF NOT EXISTS `wp_wpdatatables_columns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `orig_header` varchar(255) NOT NULL,
  `display_header` varchar(255) NOT NULL,
  `filter_type` enum('none','null_str','text','number','number-range','date-range','datetime-range','time-range','select','checkbox') NOT NULL,
  `column_type` enum('autodetect','string','int','float','date','link','email','image','formula','datetime','time') NOT NULL,
  `input_type` enum('none','text','textarea','mce-editor','date','datetime','time','link','email','selectbox','multi-selectbox','attachment') NOT NULL DEFAULT 'text',
  `input_mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `id_column` tinyint(1) NOT NULL DEFAULT '0',
  `group_column` tinyint(1) NOT NULL DEFAULT '0',
  `sort_column` tinyint(1) NOT NULL DEFAULT '0',
  `hide_on_phones` tinyint(1) NOT NULL DEFAULT '0',
  `hide_on_tablets` tinyint(1) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `sum_column` tinyint(1) NOT NULL DEFAULT '0',
  `skip_thousands_separator` tinyint(1) NOT NULL DEFAULT '0',
  `width` varchar(4) NOT NULL DEFAULT '',
  `possible_values` text NOT NULL,
  `default_value` varchar(100) NOT NULL DEFAULT '',
  `css_class` varchar(255) NOT NULL DEFAULT '',
  `text_before` varchar(255) NOT NULL DEFAULT '',
  `text_after` varchar(255) NOT NULL DEFAULT '',
  `formatting_rules` text NOT NULL,
  `calc_formula` text NOT NULL,
  `color` varchar(255) NOT NULL DEFAULT '',
  `advanced_settings` text NOT NULL,
  `pos` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
