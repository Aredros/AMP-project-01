-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-12-09 10:11:51','2020-12-09 10:11:51','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=887 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10016','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10016','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','amp-test page','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:11:{i:0;s:60:\"ACF-Justified-Image-Grid-master/acf-justified-image-grid.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:11:\"amp/amp.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:5;s:49:\"dc-woocommerce-multi-vendor/dc_product_vendor.php\";i:6;s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";i:7;s:17:\"hotjar/hotjar.php\";i:9;s:51:\"static-html-output-plugin/wp-static-html-output.php\";i:10;s:42:\"stripe-payments/accept-stripe-payments.php\";i:11;s:24:\"wordpress-seo/wp-seo.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','Amptheme1','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','Amptheme1','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:1:{s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";s:32:\"exactmetrics_lite_uninstall_hook\";}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','20','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','2','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','12','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1623060683','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:10:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:17:\"dc_pending_vendor\";a:2:{s:4:\"name\";s:14:\"Pending Vendor\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;}}s:18:\"dc_rejected_vendor\";a:2:{s:4:\"name\";s:15:\"Rejected Vendor\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;}}s:9:\"dc_vendor\";a:2:{s:4:\"name\";s:6:\"Vendor\";s:12:\"capabilities\";a:15:{s:4:\"read\";b:1;s:14:\"manage_product\";b:1;s:9:\"edit_post\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:20:\"assign_product_terms\";b:1;s:12:\"upload_files\";b:1;s:12:\"read_product\";b:1;s:16:\"read_shop_coupon\";b:1;s:16:\"edit_shop_orders\";b:1;s:12:\"edit_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:15:\"delete_products\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:15:{i:1610917923;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1610918481;a:1:{s:31:\"amp_validated_url_stylesheet_gc\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1610921523;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1610921524;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1610964716;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610976080;a:1:{s:33:\"amp_monitor_css_transient_caching\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610976296;a:1:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610976297;a:1:{s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610991592;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610991595;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611020128;a:1:{s:32:\"exactmetrics_usage_tracking_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1611062700;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1611063054;a:1:{s:25:\"vendor_weekly_order_stats\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1611223916;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','2J[M;9Mv!@4oU6Q36f3P(Dhvo[|Mh7[t<;r}1V?TC0l9Z@G_9Fy$},SXue/zHne7','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','U=~@8bSB*1QF>c<|A@4lb4{w/du6b}.1Xb e`h|A<[Pkh~_Lari(Zg 6x;E$<izn','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1610891401;s:15:\"version_checked\";s:3:\"5.6\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (133,'_transient_health-check-site-status-result','{\"good\":\"10\",\"recommended\":\"8\",\"critical\":\"1\"}','yes');
INSERT INTO `wp_options` VALUES (137,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (152,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (153,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1607622506;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (154,'current_theme','AMP 1','yes');
INSERT INTO `wp_options` VALUES (155,'theme_mods_Amptheme1','a:13:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:16:\"tptf-footer-menu\";i:3;s:16:\"tptf-header-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1609337016;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:11:\"custom_logo\";i:78;s:16:\"background_image\";s:0:\"\";s:17:\"background_preset\";s:4:\"fill\";s:15:\"background_size\";s:5:\"cover\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:21:\"background_attachment\";s:5:\"fixed\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"center\";s:16:\"background_color\";s:6:\"fff9e7\";}','yes');
INSERT INTO `wp_options` VALUES (156,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (255,'theme_mods_aquila-master','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:18:\"aquila-header-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1609343107;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (256,'widget_clock_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (326,'theme_mods_twentytwenty','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"mobile\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1609337282;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (327,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (334,'simply-static','a:19:{s:18:\"destination_scheme\";s:0:\"\";s:16:\"destination_host\";s:1:\".\";s:14:\"temp_files_dir\";s:94:\"C:\\Users\\cheonew\\Local Sites\\amptest\\app\\public\\wp-content\\plugins\\simply-static/static-files/\";s:15:\"additional_urls\";s:61:\"http://localhost:10016/wp-includes/js/wp-emoji-release.min.js\";s:16:\"additional_files\";s:67:\"C:\\Users\\cheonew\\Local Sites\\amptest\\app\\public/wp-content/uploads/\";s:15:\"urls_to_exclude\";a:0:{}s:15:\"delivery_method\";s:3:\"zip\";s:9:\"local_dir\";s:0:\"\";s:17:\"delete_temp_files\";s:1:\"1\";s:13:\"relative_path\";s:0:\"\";s:20:\"destination_url_type\";s:7:\"offline\";s:23:\"archive_status_messages\";a:4:{s:5:\"setup\";a:2:{s:7:\"message\";s:10:\"Setting up\";s:8:\"datetime\";s:19:\"2020-12-30 14:33:55\";}s:10:\"fetch_urls\";a:2:{s:7:\"message\";s:28:\"Fetched 41 of 44 pages/files\";s:8:\"datetime\";s:19:\"2020-12-30 14:35:01\";}s:18:\"create_zip_archive\";a:2:{s:7:\"message\";s:158:\"ZIP archive created:  <a href=\"http://localhost:10016/wp-admin/admin.php?simply-static_zip_download=simply-static-1-1609338834.zip\">Click here to download</a>\";s:8:\"datetime\";s:19:\"2020-12-30 14:35:19\";}s:4:\"done\";a:2:{s:7:\"message\";s:26:\"Done! Finished in 00:01:25\";s:8:\"datetime\";s:19:\"2020-12-30 14:35:19\";}}s:12:\"archive_name\";s:26:\"simply-static-1-1609338834\";s:18:\"archive_start_time\";s:19:\"2020-12-30 14:33:54\";s:16:\"archive_end_time\";s:19:\"2020-12-30 14:35:19\";s:14:\"debugging_mode\";s:1:\"0\";s:22:\"http_basic_auth_digest\";N;s:19:\"system_status_issue\";b:0;s:7:\"version\";s:5:\"2.1.0\";}','yes');
INSERT INTO `wp_options` VALUES (335,'recently_activated','a:1:{s:31:\"simply-static/simply-static.php\";i:1610824287;}','yes');
INSERT INTO `wp_options` VALUES (357,'wp-static-html-output-options','a:10:{s:7:\"version\";s:5:\"1.1.1\";s:7:\"baseUrl\";s:22:\"http://localhost:10016\";s:14:\"additionalUrls\";s:0:\"\";s:11:\"generateZip\";N;s:17:\"retainStaticFiles\";N;s:10:\"sendViaFTP\";N;s:9:\"ftpServer\";N;s:11:\"ftpUsername\";N;s:11:\"ftpPassword\";s:0:\"\";s:13:\"ftpRemotePath\";N;}','yes');
INSERT INTO `wp_options` VALUES (358,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (388,'recovery_mode_email_last_sent','1609414351','yes');
INSERT INTO `wp_options` VALUES (402,'acf_version','5.9.4','yes');
INSERT INTO `wp_options` VALUES (468,'cptui_new_install','false','yes');
INSERT INTO `wp_options` VALUES (469,'cptui_post_types','a:3:{s:4:\"book\";a:30:{s:4:\"name\";s:4:\"book\";s:5:\"label\";s:5:\"books\";s:14:\"singular_label\";s:4:\"book\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:8:\"My books\";s:9:\"all_items\";s:9:\"All books\";s:7:\"add_new\";s:7:\"Add new\";s:12:\"add_new_item\";s:12:\"Add new book\";s:9:\"edit_item\";s:9:\"Edit book\";s:8:\"new_item\";s:8:\"New book\";s:9:\"view_item\";s:9:\"View book\";s:10:\"view_items\";s:10:\"View books\";s:12:\"search_items\";s:12:\"Search books\";s:9:\"not_found\";s:14:\"No books found\";s:18:\"not_found_in_trash\";s:23:\"No books found in trash\";s:6:\"parent\";s:12:\"Parent book:\";s:14:\"featured_image\";s:28:\"Featured image for this book\";s:18:\"set_featured_image\";s:32:\"Set featured image for this book\";s:21:\"remove_featured_image\";s:35:\"Remove featured image for this book\";s:18:\"use_featured_image\";s:35:\"Use as featured image for this book\";s:8:\"archives\";s:13:\"book archives\";s:16:\"insert_into_item\";s:16:\"Insert into book\";s:21:\"uploaded_to_this_item\";s:19:\"Upload to this book\";s:17:\"filter_items_list\";s:17:\"Filter books list\";s:21:\"items_list_navigation\";s:21:\"books list navigation\";s:10:\"items_list\";s:10:\"books list\";s:10:\"attributes\";s:16:\"books attributes\";s:14:\"name_admin_bar\";s:4:\"book\";s:14:\"item_published\";s:14:\"book published\";s:24:\"item_published_privately\";s:25:\"book published privately.\";s:22:\"item_reverted_to_draft\";s:23:\"book reverted to draft.\";s:14:\"item_scheduled\";s:14:\"book scheduled\";s:12:\"item_updated\";s:13:\"book updated.\";s:17:\"parent_item_colon\";s:12:\"Parent book:\";}s:15:\"custom_supports\";s:0:\"\";}s:5:\"store\";a:30:{s:4:\"name\";s:5:\"store\";s:5:\"label\";s:6:\"stores\";s:14:\"singular_label\";s:5:\"store\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:6:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";i:4;s:13:\"custom-fields\";i:5;s:8:\"comments\";}s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:9:\"My stores\";s:9:\"all_items\";s:10:\"All stores\";s:7:\"add_new\";s:7:\"Add new\";s:12:\"add_new_item\";s:13:\"Add new store\";s:9:\"edit_item\";s:10:\"Edit store\";s:8:\"new_item\";s:9:\"New store\";s:9:\"view_item\";s:10:\"View store\";s:10:\"view_items\";s:11:\"View stores\";s:12:\"search_items\";s:13:\"Search stores\";s:9:\"not_found\";s:15:\"No stores found\";s:18:\"not_found_in_trash\";s:24:\"No stores found in trash\";s:6:\"parent\";s:13:\"Parent store:\";s:14:\"featured_image\";s:29:\"Featured image for this store\";s:18:\"set_featured_image\";s:33:\"Set featured image for this store\";s:21:\"remove_featured_image\";s:36:\"Remove featured image for this store\";s:18:\"use_featured_image\";s:36:\"Use as featured image for this store\";s:8:\"archives\";s:14:\"store archives\";s:16:\"insert_into_item\";s:17:\"Insert into store\";s:21:\"uploaded_to_this_item\";s:20:\"Upload to this store\";s:17:\"filter_items_list\";s:18:\"Filter stores list\";s:21:\"items_list_navigation\";s:22:\"stores list navigation\";s:10:\"items_list\";s:11:\"stores list\";s:10:\"attributes\";s:17:\"stores attributes\";s:14:\"name_admin_bar\";s:5:\"store\";s:14:\"item_published\";s:15:\"store published\";s:24:\"item_published_privately\";s:26:\"store published privately.\";s:22:\"item_reverted_to_draft\";s:24:\"store reverted to draft.\";s:14:\"item_scheduled\";s:15:\"store scheduled\";s:12:\"item_updated\";s:14:\"store updated.\";s:17:\"parent_item_colon\";s:13:\"Parent store:\";}s:15:\"custom_supports\";s:0:\"\";}s:5:\"ville\";a:30:{s:4:\"name\";s:5:\"ville\";s:5:\"label\";s:6:\"villes\";s:14:\"singular_label\";s:5:\"ville\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:9:\"My villes\";s:9:\"all_items\";s:10:\"All villes\";s:7:\"add_new\";s:7:\"Add new\";s:12:\"add_new_item\";s:13:\"Add new ville\";s:9:\"edit_item\";s:10:\"Edit ville\";s:8:\"new_item\";s:9:\"New ville\";s:9:\"view_item\";s:10:\"View ville\";s:10:\"view_items\";s:11:\"View villes\";s:12:\"search_items\";s:13:\"Search villes\";s:9:\"not_found\";s:15:\"No villes found\";s:18:\"not_found_in_trash\";s:24:\"No villes found in trash\";s:6:\"parent\";s:13:\"Parent ville:\";s:14:\"featured_image\";s:29:\"Featured image for this ville\";s:18:\"set_featured_image\";s:33:\"Set featured image for this ville\";s:21:\"remove_featured_image\";s:36:\"Remove featured image for this ville\";s:18:\"use_featured_image\";s:36:\"Use as featured image for this ville\";s:8:\"archives\";s:14:\"ville archives\";s:16:\"insert_into_item\";s:17:\"Insert into ville\";s:21:\"uploaded_to_this_item\";s:20:\"Upload to this ville\";s:17:\"filter_items_list\";s:18:\"Filter villes list\";s:21:\"items_list_navigation\";s:22:\"villes list navigation\";s:10:\"items_list\";s:11:\"villes list\";s:10:\"attributes\";s:17:\"villes attributes\";s:14:\"name_admin_bar\";s:5:\"ville\";s:14:\"item_published\";s:15:\"ville published\";s:24:\"item_published_privately\";s:26:\"ville published privately.\";s:22:\"item_reverted_to_draft\";s:24:\"ville reverted to draft.\";s:14:\"item_scheduled\";s:15:\"ville scheduled\";s:12:\"item_updated\";s:14:\"ville updated.\";s:17:\"parent_item_colon\";s:13:\"Parent ville:\";}s:15:\"custom_supports\";s:0:\"\";}}','yes');
INSERT INTO `wp_options` VALUES (691,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.3.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1610457335;s:7:\"version\";s:5:\"5.3.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (694,'hotjar_version','1.0.9','yes');
INSERT INTO `wp_options` VALUES (697,'AcceptStripePayments-settings','a:32:{s:7:\"is_live\";i:0;s:16:\"debug_log_enable\";i:0;s:14:\"dont_save_card\";i:0;s:13:\"currency_code\";s:3:\"USD\";s:11:\"button_text\";s:7:\"Buy Now\";s:17:\"popup_button_text\";s:6:\"Pay %s\";s:21:\"use_new_button_method\";i:0;s:12:\"checkout_url\";s:46:\"http://localhost:10016/stripe-checkout-result/\";s:18:\"from_email_address\";s:37:\"amp-test page <sales@your-domain.com>\";s:19:\"buyer_email_subject\";s:26:\"Thank you for the purchase\";s:16:\"buyer_email_body\";s:93:\"Hello\r\n\r\nThank you for your purchase! You ordered the following item(s):\r\n\r\n{product_details}\";s:25:\"seller_notification_email\";s:24:\"dev-email@flywheel.local\";s:20:\"seller_email_subject\";s:28:\"Notification of product sale\";s:17:\"seller_email_body\";s:129:\"Dear Seller\r\n\r\nThis mail is to notify you of a product sale.\r\n\r\n{product_details}\r\n\r\nThe sale was made to {payer_email}\r\n\r\nThanks\";s:18:\"price_currency_pos\";s:4:\"left\";s:17:\"price_decimal_sep\";s:1:\".\";s:18:\"price_thousand_sep\";s:1:\",\";s:18:\"price_decimals_num\";s:1:\"2\";s:18:\"api_keys_separated\";b:1;s:20:\"stripe_receipt_email\";i:0;s:20:\"custom_field_enabled\";i:0;s:17:\"custom_field_name\";s:0:\"\";s:18:\"custom_field_descr\";s:0:\"\";s:17:\"custom_field_type\";s:4:\"text\";s:22:\"custom_field_mandatory\";i:0;s:19:\"send_email_on_error\";i:0;s:22:\"send_email_on_error_to\";s:24:\"dev-email@flywheel.local\";s:21:\"use_old_checkout_api1\";i:0;s:31:\"disable_buttons_before_js_loads\";i:0;s:8:\"tos_text\";s:105:\"I accept the <a href=\"https://example.com/terms-and-conditions/\" target=\"_blank\">Terms and Conditions</a>\";s:16:\"checkout_page_id\";i:122;s:16:\"products_page_id\";i:123;}','yes');
INSERT INTO `wp_options` VALUES (701,'amp-options','a:10:{s:13:\"theme_support\";s:6:\"reader\";s:20:\"supported_post_types\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:9:\"analytics\";a:0:{}s:23:\"all_templates_supported\";b:1;s:19:\"supported_templates\";a:1:{i:0;s:11:\"is_singular\";}s:7:\"version\";s:6:\"2.0.10\";s:12:\"reader_theme\";s:6:\"legacy\";s:17:\"plugin_configured\";b:0;s:15:\"mobile_redirect\";b:0;s:18:\"suppressed_plugins\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (703,'amp_css_transient_monitor_time_series','a:4:{i:20210112;i:0;i:20210113;i:0;i:20210116;i:0;i:20210117;i:0;}','no');
INSERT INTO `wp_options` VALUES (706,'wpseo','a:42:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:0;s:7:\"version\";s:6:\"15.6.1\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1610457900;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:22:\"http://localhost:10016\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:1:{s:20:\"amp_validation_error\";s:20:\"amp_validation_error\";}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (707,'yoast_migrations_free','a:1:{s:7:\"version\";s:6:\"15.6.1\";}','yes');
INSERT INTO `wp_options` VALUES (708,'wpseo_titles','a:91:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-asp-products\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-asp-products\";s:0:\"\";s:20:\"noindex-asp-products\";b:0;s:31:\"display-metabox-pt-asp-products\";b:1;s:31:\"post_types-asp-products-maintax\";i:0;s:29:\"schema-page-type-asp-products\";s:7:\"WebPage\";s:32:\"schema-article-type-asp-products\";s:4:\"None\";s:10:\"title-book\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-book\";s:0:\"\";s:12:\"noindex-book\";b:0;s:23:\"display-metabox-pt-book\";b:1;s:23:\"post_types-book-maintax\";i:0;s:21:\"schema-page-type-book\";s:7:\"WebPage\";s:24:\"schema-article-type-book\";s:4:\"None\";s:20:\"title-ptarchive-book\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:23:\"metadesc-ptarchive-book\";s:0:\"\";s:22:\"bctitle-ptarchive-book\";s:0:\"\";s:22:\"noindex-ptarchive-book\";b:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (709,'wpseo_social','a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (710,'wpseo_flush_rewrite','1','yes');
INSERT INTO `wp_options` VALUES (725,'wcmp_general_settings_name','a:4:{s:23:\"approve_vendor_manually\";s:6:\"Enable\";s:21:\"is_vendor_shipping_on\";s:6:\"Enable\";s:12:\"is_policy_on\";s:6:\"Enable\";s:27:\"is_singleproductmultiseller\";s:6:\"Enable\";}','yes');
INSERT INTO `wp_options` VALUES (726,'wcmp_capabilities_product_settings_name','a:8:{s:15:\"is_upload_files\";s:6:\"Enable\";s:17:\"is_submit_product\";s:6:\"Enable\";s:6:\"simple\";s:6:\"Enable\";s:8:\"variable\";s:6:\"Enable\";s:7:\"grouped\";s:6:\"Enable\";s:7:\"virtual\";s:6:\"Enable\";s:8:\"external\";s:6:\"Enable\";s:12:\"downloadable\";s:6:\"Enable\";}','yes');
INSERT INTO `wp_options` VALUES (727,'wcmp_payment_settings_name','a:4:{s:25:\"commission_include_coupon\";s:6:\"Enable\";s:8:\"give_tax\";s:6:\"Enable\";s:13:\"give_shipping\";s:6:\"Enable\";s:15:\"commission_type\";s:7:\"percent\";}','yes');
INSERT INTO `wp_options` VALUES (728,'wcmp_table_created','1','yes');
INSERT INTO `wp_options` VALUES (729,'wcmp_product_vendor_vendor_page_id','124','yes');
INSERT INTO `wp_options` VALUES (730,'wcmp_product_vendor_registration_page_id','125','yes');
INSERT INTO `wp_options` VALUES (731,'wcmp_vendor_general_settings_name','a:2:{s:11:\"wcmp_vendor\";i:124;s:19:\"vendor_registration\";i:125;}','yes');
INSERT INTO `wp_options` VALUES (732,'dc_product_vendor_plugin_page_install','1','yes');
INSERT INTO `wp_options` VALUES (735,'dc_product_vendor_plugin_installed','1','yes');
INSERT INTO `wp_options` VALUES (743,'widget_exactmetrics-popular-posts-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (744,'exactmetrics_usage_tracking_config','a:6:{s:3:\"day\";i:2;s:4:\"hour\";i:1;s:6:\"minute\";i:35;s:6:\"second\";i:28;s:6:\"offset\";i:178528;s:8:\"initsend\";i:1611020128;}','yes');
INSERT INTO `wp_options` VALUES (745,'exactmetrics_over_time','a:3:{s:17:\"installed_version\";s:5:\"6.4.0\";s:14:\"installed_date\";i:1610486724;s:13:\"installed_pro\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (746,'exactmetrics_db_version','1.0.0','yes');
INSERT INTO `wp_options` VALUES (747,'exactmetrics_current_version','6.4.0','yes');
INSERT INTO `wp_options` VALUES (748,'exactmetrics_settings','a:41:{s:22:\"enable_affiliate_links\";b:1;s:15:\"affiliate_links\";a:2:{i:0;a:2:{s:4:\"path\";s:4:\"/go/\";s:5:\"label\";s:9:\"affiliate\";}i:1;a:2:{s:4:\"path\";s:11:\"/recommend/\";s:5:\"label\";s:9:\"affiliate\";}}s:12:\"demographics\";i:1;s:12:\"ignore_users\";a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}s:19:\"dashboards_disabled\";i:0;s:13:\"anonymize_ips\";i:0;s:19:\"extensions_of_files\";s:34:\"doc,pdf,ppt,zip,xls,docx,pptx,xlsx\";s:18:\"subdomain_tracking\";s:0:\"\";s:16:\"link_attribution\";b:1;s:16:\"tag_links_in_rss\";b:1;s:12:\"allow_anchor\";i:0;s:16:\"add_allow_linker\";i:0;s:11:\"custom_code\";s:0:\"\";s:13:\"save_settings\";a:1:{i:0;s:13:\"administrator\";}s:12:\"view_reports\";a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}s:11:\"events_mode\";s:2:\"js\";s:13:\"tracking_mode\";s:9:\"analytics\";s:15:\"email_summaries\";s:2:\"on\";s:23:\"summaries_html_template\";s:3:\"yes\";s:25:\"summaries_email_addresses\";a:1:{i:0;a:1:{s:5:\"email\";s:24:\"dev-email@flywheel.local\";}}s:17:\"automatic_updates\";s:4:\"none\";s:26:\"popular_posts_inline_theme\";s:5:\"alpha\";s:26:\"popular_posts_widget_theme\";s:5:\"alpha\";s:28:\"popular_posts_products_theme\";s:5:\"alpha\";s:30:\"popular_posts_inline_placement\";s:6:\"manual\";s:34:\"popular_posts_widget_theme_columns\";s:1:\"2\";s:36:\"popular_posts_products_theme_columns\";s:1:\"2\";s:26:\"popular_posts_widget_count\";s:1:\"4\";s:28:\"popular_posts_products_count\";s:1:\"4\";s:38:\"popular_posts_widget_theme_meta_author\";s:2:\"on\";s:36:\"popular_posts_widget_theme_meta_date\";s:2:\"on\";s:40:\"popular_posts_widget_theme_meta_comments\";s:2:\"on\";s:39:\"popular_posts_products_theme_meta_price\";s:2:\"on\";s:40:\"popular_posts_products_theme_meta_rating\";s:2:\"on\";s:39:\"popular_posts_products_theme_meta_image\";s:2:\"on\";s:32:\"popular_posts_inline_after_count\";s:3:\"150\";s:36:\"popular_posts_inline_multiple_number\";s:1:\"3\";s:38:\"popular_posts_inline_multiple_distance\";s:3:\"250\";s:39:\"popular_posts_inline_multiple_min_words\";s:3:\"100\";s:31:\"popular_posts_inline_post_types\";a:1:{i:0;s:4:\"post\";}s:31:\"popular_posts_widget_post_types\";a:1:{i:0;s:4:\"post\";}}','yes');
INSERT INTO `wp_options` VALUES (749,'exactmetrics_notifications','a:4:{s:6:\"update\";i:1610914200;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (751,'exactmetrics_review','a:2:{s:4:\"time\";i:1610486727;s:9:\"dismissed\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (752,'exactmetrics_notifications_run','a:14:{s:34:\"exactmetrics_notification_visitors\";i:1610486731;s:34:\"exactmetrics_notification_audience\";i:1610486731;s:39:\"exactmetrics_notification_mobile_device\";i:1610486731;s:40:\"exactmetrics_notification_upgrade_to_pro\";i:1610486731;s:37:\"exactmetrics_notification_bounce_rate\";i:1610486731;s:44:\"exactmetrics_notification_returning_visitors\";i:1610486731;s:42:\"exactmetrics_notification_traffic_dropping\";i:1610486731;s:59:\"exactmetrics_notification_upgrade_for_search_console_report\";i:1610486731;s:53:\"exactmetrics_notification_upgrade_for_form_conversion\";i:1610486731;s:53:\"exactmetrics_notification_upgrade_for_email_summaries\";i:1610486731;s:53:\"exactmetrics_notification_upgrade_for_google_optimize\";i:1610486731;s:53:\"exactmetrics_notification_to_add_more_file_extensions\";i:1610486731;s:50:\"exactmetrics_notification_to_setup_affiliate_links\";i:1610486731;s:43:\"exactmetrics_notification_headline_analyzer\";i:1610486731;}','yes');
INSERT INTO `wp_options` VALUES (759,'asp_cache_key','0e68af1b6cc61cef0eb8fa692493deab','yes');
INSERT INTO `wp_options` VALUES (773,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1611154470','no');
INSERT INTO `wp_options` VALUES (774,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (775,'rewrite_rules','a:241:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:7:\"book/?$\";s:24:\"index.php?post_type=book\";s:37:\"book/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=book&feed=$matches[1]\";s:32:\"book/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=book&feed=$matches[1]\";s:24:\"book/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=book&paged=$matches[1]\";s:8:\"ville/?$\";s:25:\"index.php?post_type=ville\";s:38:\"ville/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=ville&feed=$matches[1]\";s:33:\"ville/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=ville&feed=$matches[1]\";s:25:\"ville/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=ville&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"asp-products/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"asp-products/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"asp-products/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"asp-products/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"asp-products/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"asp-products/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"asp-products/([^/]+)/embed/?$\";s:45:\"index.php?asp-products=$matches[1]&embed=true\";s:33:\"asp-products/([^/]+)/trackback/?$\";s:39:\"index.php?asp-products=$matches[1]&tb=1\";s:41:\"asp-products/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?asp-products=$matches[1]&paged=$matches[2]\";s:48:\"asp-products/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?asp-products=$matches[1]&cpage=$matches[2]\";s:35:\"asp-products/([^/]+)/amp(/(.*))?/?$\";s:50:\"index.php?asp-products=$matches[1]&amp=$matches[3]\";s:37:\"asp-products/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?asp-products=$matches[1]&page=$matches[2]\";s:29:\"asp-products/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"asp-products/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"asp-products/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"asp-products/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"asp-products/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"asp-products/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"stripe_order/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"stripe_order/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"stripe_order/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"stripe_order/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"stripe_order/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"stripe_order/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"stripe_order/([^/]+)/embed/?$\";s:45:\"index.php?stripe_order=$matches[1]&embed=true\";s:33:\"stripe_order/([^/]+)/trackback/?$\";s:39:\"index.php?stripe_order=$matches[1]&tb=1\";s:41:\"stripe_order/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?stripe_order=$matches[1]&paged=$matches[2]\";s:48:\"stripe_order/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?stripe_order=$matches[1]&cpage=$matches[2]\";s:35:\"stripe_order/([^/]+)/amp(/(.*))?/?$\";s:50:\"index.php?stripe_order=$matches[1]&amp=$matches[3]\";s:37:\"stripe_order/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?stripe_order=$matches[1]&page=$matches[2]\";s:29:\"stripe_order/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"stripe_order/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"stripe_order/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"stripe_order/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"stripe_order/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"stripe_order/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"amp_validated_url/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"amp_validated_url/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"amp_validated_url/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"amp_validated_url/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"amp_validated_url/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"amp_validated_url/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"amp_validated_url/([^/]+)/embed/?$\";s:50:\"index.php?amp_validated_url=$matches[1]&embed=true\";s:38:\"amp_validated_url/([^/]+)/trackback/?$\";s:44:\"index.php?amp_validated_url=$matches[1]&tb=1\";s:46:\"amp_validated_url/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?amp_validated_url=$matches[1]&paged=$matches[2]\";s:53:\"amp_validated_url/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?amp_validated_url=$matches[1]&cpage=$matches[2]\";s:40:\"amp_validated_url/([^/]+)/amp(/(.*))?/?$\";s:55:\"index.php?amp_validated_url=$matches[1]&amp=$matches[3]\";s:42:\"amp_validated_url/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?amp_validated_url=$matches[1]&page=$matches[2]\";s:34:\"amp_validated_url/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"amp_validated_url/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"amp_validated_url/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"amp_validated_url/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"amp_validated_url/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"amp_validated_url/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:61:\"amp_validation_error/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?amp_validation_error=$matches[1]&feed=$matches[2]\";s:56:\"amp_validation_error/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?amp_validation_error=$matches[1]&feed=$matches[2]\";s:37:\"amp_validation_error/([^/]+)/embed/?$\";s:53:\"index.php?amp_validation_error=$matches[1]&embed=true\";s:49:\"amp_validation_error/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?amp_validation_error=$matches[1]&paged=$matches[2]\";s:31:\"amp_validation_error/([^/]+)/?$\";s:42:\"index.php?amp_validation_error=$matches[1]\";s:32:\"book/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"book/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"book/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"book/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"book/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"book/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"book/([^/]+)/embed/?$\";s:37:\"index.php?book=$matches[1]&embed=true\";s:25:\"book/([^/]+)/trackback/?$\";s:31:\"index.php?book=$matches[1]&tb=1\";s:45:\"book/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?book=$matches[1]&feed=$matches[2]\";s:40:\"book/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?book=$matches[1]&feed=$matches[2]\";s:33:\"book/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?book=$matches[1]&paged=$matches[2]\";s:40:\"book/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?book=$matches[1]&cpage=$matches[2]\";s:27:\"book/([^/]+)/amp(/(.*))?/?$\";s:42:\"index.php?book=$matches[1]&amp=$matches[3]\";s:29:\"book/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?book=$matches[1]&page=$matches[2]\";s:21:\"book/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"book/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"book/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"book/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"book/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"book/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"store/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"store/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"store/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"store/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"store/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"store/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"store/([^/]+)/embed/?$\";s:38:\"index.php?store=$matches[1]&embed=true\";s:26:\"store/([^/]+)/trackback/?$\";s:32:\"index.php?store=$matches[1]&tb=1\";s:34:\"store/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?store=$matches[1]&paged=$matches[2]\";s:41:\"store/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?store=$matches[1]&cpage=$matches[2]\";s:28:\"store/([^/]+)/amp(/(.*))?/?$\";s:43:\"index.php?store=$matches[1]&amp=$matches[3]\";s:30:\"store/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?store=$matches[1]&page=$matches[2]\";s:22:\"store/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"store/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"store/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"store/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"store/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"store/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"ville/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"ville/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"ville/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"ville/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"ville/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"ville/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"ville/([^/]+)/embed/?$\";s:38:\"index.php?ville=$matches[1]&embed=true\";s:26:\"ville/([^/]+)/trackback/?$\";s:32:\"index.php?ville=$matches[1]&tb=1\";s:46:\"ville/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?ville=$matches[1]&feed=$matches[2]\";s:41:\"ville/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?ville=$matches[1]&feed=$matches[2]\";s:34:\"ville/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?ville=$matches[1]&paged=$matches[2]\";s:41:\"ville/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?ville=$matches[1]&cpage=$matches[2]\";s:28:\"ville/([^/]+)/amp(/(.*))?/?$\";s:43:\"index.php?ville=$matches[1]&amp=$matches[3]\";s:30:\"ville/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?ville=$matches[1]&page=$matches[2]\";s:22:\"ville/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"ville/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"ville/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"ville/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"ville/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"ville/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"asp_coupons/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"asp_coupons/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"asp_coupons/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"asp_coupons/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"asp_coupons/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"asp_coupons/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"asp_coupons/([^/]+)/embed/?$\";s:44:\"index.php?asp_coupons=$matches[1]&embed=true\";s:32:\"asp_coupons/([^/]+)/trackback/?$\";s:38:\"index.php?asp_coupons=$matches[1]&tb=1\";s:40:\"asp_coupons/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?asp_coupons=$matches[1]&paged=$matches[2]\";s:47:\"asp_coupons/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?asp_coupons=$matches[1]&cpage=$matches[2]\";s:34:\"asp_coupons/([^/]+)/amp(/(.*))?/?$\";s:49:\"index.php?asp_coupons=$matches[1]&amp=$matches[3]\";s:36:\"asp_coupons/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?asp_coupons=$matches[1]&page=$matches[2]\";s:28:\"asp_coupons/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"asp_coupons/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"asp_coupons/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"asp_coupons/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"asp_coupons/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"asp_coupons/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:22:\"([^/]+)/amp(/(.*))?/?$\";s:42:\"index.php?name=$matches[1]&amp=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (821,'_site_transient_timeout_browser_94fb6483abf307a4bafac80827dcc22a','1611425583','no');
INSERT INTO `wp_options` VALUES (822,'_site_transient_browser_94fb6483abf307a4bafac80827dcc22a','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"87.0.4280.141\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (855,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1610891417;s:7:\"checked\";a:5:{s:9:\"Amptheme1\";s:3:\"1.0\";s:13:\"aquila-master\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.8\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.0\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.1.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (856,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1610891402;s:8:\"response\";a:3:{s:42:\"stripe-payments/accept-stripe-payments.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/stripe-payments\";s:4:\"slug\";s:15:\"stripe-payments\";s:6:\"plugin\";s:42:\"stripe-payments/accept-stripe-payments.php\";s:11:\"new_version\";s:6:\"2.0.42\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/stripe-payments/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/stripe-payments.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/stripe-payments/assets/icon-128x128.png?rev=1105930\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/stripe-payments/assets/banner-772x250.png?rev=1650045\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.9.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:6:\"15.6.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wordpress-seo.15.6.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2363699\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"acf-extended/acf-extended.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/acf-extended\";s:4:\"slug\";s:12:\"acf-extended\";s:6:\"plugin\";s:29:\"acf-extended/acf-extended.php\";s:11:\"new_version\";s:7:\"0.8.7.6\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/acf-extended/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/acf-extended.0.8.7.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-256x256.png?rev=2071550\";s:2:\"1x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-128x128.png?rev=2071550\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-extended/assets/banner-1544x500.png?rev=2071550\";s:2:\"1x\";s:67:\"https://ps.w.org/acf-extended/assets/banner-772x250.png?rev=2071550\";}s:11:\"banners_rtl\";a:0:{}}s:11:\"amp/amp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:17:\"w.org/plugins/amp\";s:4:\"slug\";s:3:\"amp\";s:6:\"plugin\";s:11:\"amp/amp.php\";s:11:\"new_version\";s:6:\"2.0.10\";s:3:\"url\";s:34:\"https://wordpress.org/plugins/amp/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/amp.2.0.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:56:\"https://ps.w.org/amp/assets/icon-256x256.png?rev=2369906\";s:2:\"1x\";s:56:\"https://ps.w.org/amp/assets/icon-128x128.png?rev=2369906\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/amp/assets/banner-1544x500.png?rev=2369906\";s:2:\"1x\";s:58:\"https://ps.w.org/amp/assets/banner-772x250.png?rev=2369906\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.3.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.3.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.8.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:47:\"w.org/plugins/google-analytics-dashboard-for-wp\";s:4:\"slug\";s:33:\"google-analytics-dashboard-for-wp\";s:6:\"plugin\";s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";s:11:\"new_version\";s:5:\"6.4.0\";s:3:\"url\";s:64:\"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/plugin/google-analytics-dashboard-for-wp.6.4.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:86:\"https://ps.w.org/google-analytics-dashboard-for-wp/assets/icon-256x256.png?rev=2243225\";s:2:\"1x\";s:78:\"https://ps.w.org/google-analytics-dashboard-for-wp/assets/icon.svg?rev=2243225\";s:3:\"svg\";s:78:\"https://ps.w.org/google-analytics-dashboard-for-wp/assets/icon.svg?rev=2243225\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:89:\"https://ps.w.org/google-analytics-dashboard-for-wp/assets/banner-1544x500.png?rev=2243446\";s:2:\"1x\";s:88:\"https://ps.w.org/google-analytics-dashboard-for-wp/assets/banner-772x250.png?rev=2243446\";}s:11:\"banners_rtl\";a:0:{}}s:17:\"hotjar/hotjar.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:20:\"w.org/plugins/hotjar\";s:4:\"slug\";s:6:\"hotjar\";s:6:\"plugin\";s:17:\"hotjar/hotjar.php\";s:11:\"new_version\";s:5:\"1.0.9\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/hotjar/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/hotjar.1.0.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/hotjar/assets/icon-256x256.png?rev=2013407\";s:2:\"1x\";s:59:\"https://ps.w.org/hotjar/assets/icon-256x256.png?rev=2013407\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/hotjar/assets/banner-1544x500.jpg?rev=2292444\";s:2:\"1x\";s:61:\"https://ps.w.org/hotjar/assets/banner-772x250.jpg?rev=2292444\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"simply-static/simply-static.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/simply-static\";s:4:\"slug\";s:13:\"simply-static\";s:6:\"plugin\";s:31:\"simply-static/simply-static.php\";s:11:\"new_version\";s:5:\"2.1.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/simply-static/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/simply-static.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/simply-static/assets/icon-256x256.png?rev=2443263\";s:2:\"1x\";s:66:\"https://ps.w.org/simply-static/assets/icon-128x128.png?rev=2443263\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/simply-static/assets/banner-1544x500.jpg?rev=2443263\";s:2:\"1x\";s:68:\"https://ps.w.org/simply-static/assets/banner-772x250.jpg?rev=2443263\";}s:11:\"banners_rtl\";a:0:{}}s:49:\"dc-woocommerce-multi-vendor/dc_product_vendor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/dc-woocommerce-multi-vendor\";s:4:\"slug\";s:27:\"dc-woocommerce-multi-vendor\";s:6:\"plugin\";s:49:\"dc-woocommerce-multi-vendor/dc_product_vendor.php\";s:11:\"new_version\";s:6:\"3.5.16\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/dc-woocommerce-multi-vendor/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/dc-woocommerce-multi-vendor.3.5.16.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/dc-woocommerce-multi-vendor/assets/icon-256x256.png?rev=1636499\";s:2:\"1x\";s:80:\"https://ps.w.org/dc-woocommerce-multi-vendor/assets/icon-128x128.png?rev=1593013\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/dc-woocommerce-multi-vendor/assets/banner-772x250.jpg?rev=1601838\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (867,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1610934657','no');
INSERT INTO `wp_options` VALUES (868,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 0 out of 0 bytes received</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10001 milliseconds with 0 out of 0 bytes received</p></div>','no');
INSERT INTO `wp_options` VALUES (874,'_transient_timeout_wpseo_total_unindexed_posts','1611000080','no');
INSERT INTO `wp_options` VALUES (875,'_transient_wpseo_total_unindexed_posts','76','no');
INSERT INTO `wp_options` VALUES (876,'_transient_timeout_wpseo_total_unindexed_terms','1611000081','no');
INSERT INTO `wp_options` VALUES (877,'_transient_wpseo_total_unindexed_terms','1','no');
INSERT INTO `wp_options` VALUES (878,'_transient_timeout_wpseo_total_unindexed_post_type_archives','1611000082','no');
INSERT INTO `wp_options` VALUES (879,'_transient_wpseo_total_unindexed_post_type_archives','2','no');
INSERT INTO `wp_options` VALUES (880,'_transient_timeout_wpseo_unindexed_post_link_count','1611000083','no');
INSERT INTO `wp_options` VALUES (881,'_transient_wpseo_unindexed_post_link_count','16','no');
INSERT INTO `wp_options` VALUES (882,'_transient_timeout_wpseo_unindexed_term_link_count','1611000083','no');
INSERT INTO `wp_options` VALUES (883,'_transient_wpseo_unindexed_term_link_count','1','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (5,8,'_wp_attached_file','2020/12/log3.png');
INSERT INTO `wp_postmeta` VALUES (6,8,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:588;s:6:\"height\";i:259;s:4:\"file\";s:16:\"2020/12/log3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"log3-300x132.png\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"log3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (7,9,'_wp_attached_file','2020/12/cropped-log3.png');
INSERT INTO `wp_postmeta` VALUES (8,9,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (9,9,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2020/12/cropped-log3.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-log3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-log3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-log3-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-log3-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-log3-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-log3-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (10,10,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (11,10,'_wp_trash_meta_time','1609278972');
INSERT INTO `wp_postmeta` VALUES (12,11,'_wp_attached_file','2020/12/newlague.png');
INSERT INTO `wp_postmeta` VALUES (13,11,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:494;s:6:\"height\";i:493;s:4:\"file\";s:20:\"2020/12/newlague.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"newlague-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"newlague-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (14,12,'_wp_attached_file','2020/12/cropped-newlague.png');
INSERT INTO `wp_postmeta` VALUES (15,12,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (16,12,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:28:\"2020/12/cropped-newlague.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-newlague-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-newlague-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:28:\"cropped-newlague-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:28:\"cropped-newlague-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:28:\"cropped-newlague-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:26:\"cropped-newlague-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (17,13,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (18,13,'_wp_trash_meta_time','1609281942');
INSERT INTO `wp_postmeta` VALUES (19,14,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (20,14,'_wp_trash_meta_time','1609282148');
INSERT INTO `wp_postmeta` VALUES (21,15,'_edit_lock','1609337101:1');
INSERT INTO `wp_postmeta` VALUES (22,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (23,15,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (24,18,'_edit_lock','1609336976:1');
INSERT INTO `wp_postmeta` VALUES (25,20,'_edit_lock','1609500179:1');
INSERT INTO `wp_postmeta` VALUES (26,22,'_edit_lock','1609337033:1');
INSERT INTO `wp_postmeta` VALUES (27,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (28,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (29,24,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (30,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (31,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (32,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (33,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (34,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (36,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (37,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (38,25,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (39,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (40,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (41,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (42,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (43,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (45,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (46,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (47,26,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (48,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (49,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (50,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (51,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (52,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (54,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (55,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (56,27,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (57,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (58,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (59,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (60,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (61,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (65,29,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (66,29,'_wp_trash_meta_time','1609360647');
INSERT INTO `wp_postmeta` VALUES (67,30,'_wp_attached_file','2020/12/cropped-cropped-log3.png');
INSERT INTO `wp_postmeta` VALUES (68,30,'_wp_attachment_context','custom-logo');
INSERT INTO `wp_postmeta` VALUES (69,30,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:32:\"2020/12/cropped-cropped-log3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"cropped-cropped-log3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-cropped-log3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (70,31,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (71,31,'_wp_trash_meta_time','1609362248');
INSERT INTO `wp_postmeta` VALUES (72,32,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (73,32,'_wp_trash_meta_time','1609362260');
INSERT INTO `wp_postmeta` VALUES (74,33,'_wp_attached_file','2020/12/cropped-cropped-cropped-log3.png');
INSERT INTO `wp_postmeta` VALUES (75,33,'_wp_attachment_context','custom-logo');
INSERT INTO `wp_postmeta` VALUES (76,33,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:204;s:6:\"height\";i:159;s:4:\"file\";s:40:\"2020/12/cropped-cropped-cropped-log3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-cropped-cropped-log3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (77,34,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (78,34,'_wp_trash_meta_time','1609362561');
INSERT INTO `wp_postmeta` VALUES (79,12,'_wp_attachment_is_custom_background','Amptheme1');
INSERT INTO `wp_postmeta` VALUES (80,35,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (81,35,'_wp_trash_meta_time','1609364768');
INSERT INTO `wp_postmeta` VALUES (82,36,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (83,36,'_wp_trash_meta_time','1609364783');
INSERT INTO `wp_postmeta` VALUES (84,37,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (85,37,'_wp_trash_meta_time','1609364991');
INSERT INTO `wp_postmeta` VALUES (86,38,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (87,38,'_wp_trash_meta_time','1609365003');
INSERT INTO `wp_postmeta` VALUES (88,39,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (89,39,'_wp_trash_meta_time','1609365092');
INSERT INTO `wp_postmeta` VALUES (90,40,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (91,40,'_wp_trash_meta_time','1609365265');
INSERT INTO `wp_postmeta` VALUES (101,42,'_wp_attached_file','2020/12/logo-small.png');
INSERT INTO `wp_postmeta` VALUES (102,42,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:116;s:6:\"height\";i:51;s:4:\"file\";s:22:\"2020/12/logo-small.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (103,43,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (104,43,'_wp_trash_meta_time','1609453234');
INSERT INTO `wp_postmeta` VALUES (105,44,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (106,44,'_wp_trash_meta_time','1609499863');
INSERT INTO `wp_postmeta` VALUES (107,2,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (108,2,'_edit_lock','1609500333:1');
INSERT INTO `wp_postmeta` VALUES (109,1,'_edit_lock','1609694290:1');
INSERT INTO `wp_postmeta` VALUES (112,47,'_edit_lock','1609694302:1');
INSERT INTO `wp_postmeta` VALUES (115,49,'_edit_lock','1609775431:1');
INSERT INTO `wp_postmeta` VALUES (118,51,'_edit_lock','1609694323:1');
INSERT INTO `wp_postmeta` VALUES (121,53,'_edit_lock','1610839307:1');
INSERT INTO `wp_postmeta` VALUES (124,55,'_edit_lock','1610572474:1');
INSERT INTO `wp_postmeta` VALUES (127,57,'_edit_lock','1609594910:1');
INSERT INTO `wp_postmeta` VALUES (128,58,'_edit_lock','1610276834:1');
INSERT INTO `wp_postmeta` VALUES (129,59,'_edit_lock','1610276729:1');
INSERT INTO `wp_postmeta` VALUES (130,12,'_oembed_544cf5465a74f8c39961e8bea982706d','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (133,55,'_thumbnail_id','12');
INSERT INTO `wp_postmeta` VALUES (134,60,'_wp_attached_file','2021/01/Friperie-Lee-Berthy-1-Montpellier.jpeg');
INSERT INTO `wp_postmeta` VALUES (135,60,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:427;s:6:\"height\";i:640;s:4:\"file\";s:46:\"2021/01/Friperie-Lee-Berthy-1-Montpellier.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"Friperie-Lee-Berthy-1-Montpellier-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"Friperie-Lee-Berthy-1-Montpellier-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:12:\"Morgane Boem\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1549287456\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"55\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (136,61,'_wp_attached_file','2021/01/Friperie-Lee-Berthy-2-Montpellier.jpeg');
INSERT INTO `wp_postmeta` VALUES (137,61,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:427;s:4:\"file\";s:46:\"2021/01/Friperie-Lee-Berthy-2-Montpellier.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"Friperie-Lee-Berthy-2-Montpellier-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"Friperie-Lee-Berthy-2-Montpellier-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:12:\"Morgane Boem\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1549287596\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (138,62,'_wp_attached_file','2021/01/Friperie-Lee-Berthy-3-Montpellier.jpeg');
INSERT INTO `wp_postmeta` VALUES (139,62,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:427;s:6:\"height\";i:640;s:4:\"file\";s:46:\"2021/01/Friperie-Lee-Berthy-3-Montpellier.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"Friperie-Lee-Berthy-3-Montpellier-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"Friperie-Lee-Berthy-3-Montpellier-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:12:\"Morgane Boem\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1549287640\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (140,63,'_wp_attached_file','2021/01/gre-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (141,63,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:22:\"2021/01/gre-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"gre-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"gre-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"gre-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"gre-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"gre-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:17:\"gre-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"DMC-FZ18\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1252339669\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"8.3\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:7:\"gre.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (142,64,'_wp_attached_file','2021/01/Jean-Levis-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (143,64,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:29:\"2021/01/Jean-Levis-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Jean-Levis-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"Jean-Levis-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Jean-Levis-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Jean-Levis-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"Jean-Levis-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:24:\"Jean-Levis-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:13:\"o_penyoureyes\";s:6:\"camera\";s:14:\"Canon EOS 600D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1573959523\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:14:\"Jean-Levis.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (144,65,'_wp_attached_file','2021/01/Tenue-2-Lee-berthy-Sabrina-Hadjacene-2.jpeg');
INSERT INTO `wp_postmeta` VALUES (145,65,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:427;s:6:\"height\";i:640;s:4:\"file\";s:51:\"2021/01/Tenue-2-Lee-berthy-Sabrina-Hadjacene-2.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"Tenue-2-Lee-berthy-Sabrina-Hadjacene-2-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"Tenue-2-Lee-berthy-Sabrina-Hadjacene-2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (146,66,'_wp_attached_file','2021/01/Tenue-3-Lee-berthy-Sabrina-Hadjacene-2.jpeg');
INSERT INTO `wp_postmeta` VALUES (147,66,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:427;s:6:\"height\";i:640;s:4:\"file\";s:51:\"2021/01/Tenue-3-Lee-berthy-Sabrina-Hadjacene-2.jpeg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"Tenue-3-Lee-berthy-Sabrina-Hadjacene-2-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"Tenue-3-Lee-berthy-Sabrina-Hadjacene-2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D3100\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1486311004\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (150,1,'_thumbnail_id','66');
INSERT INTO `wp_postmeta` VALUES (153,47,'_thumbnail_id','64');
INSERT INTO `wp_postmeta` VALUES (156,49,'_thumbnail_id','63');
INSERT INTO `wp_postmeta` VALUES (159,51,'_thumbnail_id','60');
INSERT INTO `wp_postmeta` VALUES (160,9,'_oembed_d042bc3f24b01caa86157db8787c79b6','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (163,53,'_thumbnail_id','9');
INSERT INTO `wp_postmeta` VALUES (164,67,'_edit_lock','1609711283:1');
INSERT INTO `wp_postmeta` VALUES (165,67,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (166,67,'_wp_trash_meta_time','1609711300');
INSERT INTO `wp_postmeta` VALUES (167,68,'_wp_attached_file','2021/01/bk-accueil-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (168,68,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:29:\"2021/01/bk-accueil-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"bk-accueil-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"bk-accueil-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"bk-accueil-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"bk-accueil-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"bk-accueil-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:24:\"bk-accueil-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:15:\"Canon EOS 1200D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1581701114\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"17\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:14:\"bk-accueil.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (169,69,'_wp_attached_file','2021/01/bk-blog.jpg');
INSERT INTO `wp_postmeta` VALUES (170,69,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:397;s:4:\"file\";s:19:\"2021/01/bk-blog.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bk-blog-300x62.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:62;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"bk-blog-1024x212.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bk-blog-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"bk-blog-768x159.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"bk-blog-1536x318.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:318;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (171,70,'_wp_attached_file','2021/01/bk-img-form.jpg');
INSERT INTO `wp_postmeta` VALUES (172,70,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:911;s:4:\"file\";s:23:\"2021/01/bk-img-form.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"bk-img-form-300x142.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"bk-img-form-1024x486.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:486;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"bk-img-form-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"bk-img-form-768x364.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:364;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"bk-img-form-1536x729.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:729;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (173,71,'_wp_attached_file','2021/01/bk-newsletter.jpg');
INSERT INTO `wp_postmeta` VALUES (174,71,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2068;s:6:\"height\";i:475;s:4:\"file\";s:25:\"2021/01/bk-newsletter.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"bk-newsletter-300x69.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:69;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"bk-newsletter-1024x235.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"bk-newsletter-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"bk-newsletter-768x176.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"bk-newsletter-1536x353.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:353;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"bk-newsletter-2048x470.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (175,72,'_wp_attached_file','2021/01/Boutique-3-1024x683-1.jpg');
INSERT INTO `wp_postmeta` VALUES (176,72,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:33:\"2021/01/Boutique-3-1024x683-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Boutique-3-1024x683-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Boutique-3-1024x683-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Boutique-3-1024x683-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (177,73,'_wp_attached_file','2021/01/BRAD-1024x765-1.jpg');
INSERT INTO `wp_postmeta` VALUES (178,73,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:765;s:4:\"file\";s:27:\"2021/01/BRAD-1024x765-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"BRAD-1024x765-1-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"BRAD-1024x765-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"BRAD-1024x765-1-768x574.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:574;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (179,74,'_wp_attached_file','2021/01/Cover-brad-boutique.jpg');
INSERT INTO `wp_postmeta` VALUES (180,74,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:300;s:4:\"file\";s:31:\"2021/01/Cover-brad-boutique.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Cover-brad-boutique-300x50.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"Cover-brad-boutique-1024x171.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Cover-brad-boutique-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Cover-brad-boutique-768x128.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"Cover-brad-boutique-1536x256.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (181,75,'_wp_attached_file','2021/01/Img-banniere-montpellier.jpg');
INSERT INTO `wp_postmeta` VALUES (182,75,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:325;s:4:\"file\";s:36:\"2021/01/Img-banniere-montpellier.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Img-banniere-montpellier-300x51.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:51;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"Img-banniere-montpellier-1024x173.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Img-banniere-montpellier-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"Img-banniere-montpellier-768x130.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:37:\"Img-banniere-montpellier-1536x260.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (183,76,'_wp_attached_file','2021/01/IMG_2690-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (184,76,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2021/01/IMG_2690-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_2690-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_2690-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_2690-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_2690-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_2690-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_2690-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:15:\"Canon EOS 1200D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1581013199\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_2690.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (185,77,'_wp_attached_file','2021/01/IMG_20200119_192647_981-1320x540-1.jpg');
INSERT INTO `wp_postmeta` VALUES (186,77,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1320;s:6:\"height\";i:540;s:4:\"file\";s:46:\"2021/01/IMG_20200119_192647_981-1320x540-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"IMG_20200119_192647_981-1320x540-1-300x123.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"IMG_20200119_192647_981-1320x540-1-1024x419.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"IMG_20200119_192647_981-1320x540-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"IMG_20200119_192647_981-1320x540-1-768x314.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:314;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (187,78,'_wp_attached_file','2021/01/Logo-TPTF-cercle.png');
INSERT INTO `wp_postmeta` VALUES (188,78,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2174;s:6:\"height\";i:1651;s:4:\"file\";s:28:\"2021/01/Logo-TPTF-cercle.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Logo-TPTF-cercle-300x228.png\";s:5:\"width\";i:300;s:6:\"height\";i:228;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"Logo-TPTF-cercle-1024x778.png\";s:5:\"width\";i:1024;s:6:\"height\";i:778;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Logo-TPTF-cercle-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Logo-TPTF-cercle-768x583.png\";s:5:\"width\";i:768;s:6:\"height\";i:583;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"Logo-TPTF-cercle-1536x1166.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1166;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:30:\"Logo-TPTF-cercle-2048x1555.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1555;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (189,79,'_wp_attached_file','2021/01/LOGO-TPTF-blanc.png');
INSERT INTO `wp_postmeta` VALUES (190,79,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:482;s:6:\"height\";i:366;s:4:\"file\";s:27:\"2021/01/LOGO-TPTF-blanc.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"LOGO-TPTF-blanc-300x228.png\";s:5:\"width\";i:300;s:6:\"height\";i:228;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"LOGO-TPTF-blanc-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (191,80,'_wp_attached_file','2021/01/Nathan-Intemporel-002-1-1024x576-min.jpg');
INSERT INTO `wp_postmeta` VALUES (192,80,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:576;s:4:\"file\";s:48:\"2021/01/Nathan-Intemporel-002-1-1024x576-min.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Nathan-Intemporel-002-1-1024x576-min-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Nathan-Intemporel-002-1-1024x576-min-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"Nathan-Intemporel-002-1-1024x576-min-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (193,81,'_wp_attached_file','2021/01/P1350013-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (194,81,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1922;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2021/01/P1350013-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"P1350013-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"P1350013-769x1024.jpg\";s:5:\"width\";i:769;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"P1350013-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"P1350013-768x1023.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"P1350013-1153x1536.jpg\";s:5:\"width\";i:1153;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"P1350013-1538x2048.jpg\";s:5:\"width\";i:1538;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DMC-GM1\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1509733186\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"12\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"P1350013.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (195,82,'_wp_attached_file','2021/01/r7yedbfwnr_2_400.jpg');
INSERT INTO `wp_postmeta` VALUES (196,82,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:400;s:6:\"height\";i:225;s:4:\"file\";s:28:\"2021/01/r7yedbfwnr_2_400.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"r7yedbfwnr_2_400-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"r7yedbfwnr_2_400-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (197,83,'_wp_attached_file','2021/01/unnamed.jpg');
INSERT INTO `wp_postmeta` VALUES (198,83,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:608;s:4:\"file\";s:19:\"2021/01/unnamed.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"unnamed-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"unnamed-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"unnamed-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"unnamed-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (199,84,'_wp_attached_file','2021/01/whiteboys-210x210.jpg.png');
INSERT INTO `wp_postmeta` VALUES (200,84,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:210;s:6:\"height\";i:210;s:4:\"file\";s:33:\"2021/01/whiteboys-210x210.jpg.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"whiteboys-210x210.jpg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (201,85,'_wp_attached_file','2021/01/3.jpg');
INSERT INTO `wp_postmeta` VALUES (202,85,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:960;s:6:\"height\";i:592;s:4:\"file\";s:13:\"2021/01/3.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x185.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x474.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (203,86,'_wp_attached_file','2021/01/13-8-19062018-962A6768.jpg');
INSERT INTO `wp_postmeta` VALUES (204,86,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:672;s:6:\"height\";i:1024;s:4:\"file\";s:34:\"2021/01/13-8-19062018-962A6768.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"13-8-19062018-962A6768-197x300.jpg\";s:5:\"width\";i:197;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"13-8-19062018-962A6768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:6:\"LIONEL\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark IV\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1529406649\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"54\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (205,87,'_wp_attached_file','2021/01/116000661_158810465735542_4060089695266470516_n.jpg');
INSERT INTO `wp_postmeta` VALUES (206,87,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:720;s:6:\"height\";i:960;s:4:\"file\";s:59:\"2021/01/116000661_158810465735542_4060089695266470516_n.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"116000661_158810465735542_4060089695266470516_n-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"116000661_158810465735542_4060089695266470516_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (207,88,'_wp_attached_file','2021/01/bk-accueil-1-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (208,88,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:31:\"2021/01/bk-accueil-1-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"bk-accueil-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"bk-accueil-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"bk-accueil-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"bk-accueil-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"bk-accueil-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"bk-accueil-1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:15:\"Canon EOS 1200D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1581701114\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"17\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"bk-accueil-1.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (209,89,'_wp_attached_file','2021/01/unnamed-file.png');
INSERT INTO `wp_postmeta` VALUES (210,89,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:42;s:6:\"height\";i:43;s:4:\"file\";s:24:\"2021/01/unnamed-file.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (211,90,'_wp_attached_file','2021/01/btn-affichage-groupe-3.png');
INSERT INTO `wp_postmeta` VALUES (212,90,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:39;s:6:\"height\";i:35;s:4:\"file\";s:34:\"2021/01/btn-affichage-groupe-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (213,91,'_wp_attached_file','2021/01/btn-affichage-liste.png');
INSERT INTO `wp_postmeta` VALUES (214,91,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:45;s:6:\"height\";i:35;s:4:\"file\";s:31:\"2021/01/btn-affichage-liste.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (215,92,'_wp_attached_file','2021/01/bullhorn.png');
INSERT INTO `wp_postmeta` VALUES (216,92,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:107;s:6:\"height\";i:125;s:4:\"file\";s:20:\"2021/01/bullhorn.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (217,93,'_wp_attached_file','2021/01/cached-24px.png');
INSERT INTO `wp_postmeta` VALUES (218,93,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:185;s:6:\"height\";i:185;s:4:\"file\";s:23:\"2021/01/cached-24px.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cached-24px-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (219,94,'_wp_attached_file','2021/01/comment-icon.png');
INSERT INTO `wp_postmeta` VALUES (220,94,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:24:\"2021/01/comment-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (221,95,'_wp_attached_file','2021/01/euro_symbol-24px.png');
INSERT INTO `wp_postmeta` VALUES (222,95,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:146;s:6:\"height\";i:146;s:4:\"file\";s:28:\"2021/01/euro_symbol-24px.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (223,96,'_wp_attached_file','2021/01/facebook.png');
INSERT INTO `wp_postmeta` VALUES (224,96,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:52;s:6:\"height\";i:52;s:4:\"file\";s:20:\"2021/01/facebook.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (225,97,'_wp_attached_file','2021/01/factory.png');
INSERT INTO `wp_postmeta` VALUES (226,97,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:102;s:6:\"height\";i:110;s:4:\"file\";s:19:\"2021/01/factory.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (227,98,'_wp_attached_file','2021/01/fichier-icon.png');
INSERT INTO `wp_postmeta` VALUES (228,98,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:24:\"2021/01/fichier-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (229,99,'_wp_attached_file','2021/01/google.png');
INSERT INTO `wp_postmeta` VALUES (230,99,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:40;s:6:\"height\";i:40;s:4:\"file\";s:18:\"2021/01/google.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (231,100,'_wp_attached_file','2021/01/instagram.png');
INSERT INTO `wp_postmeta` VALUES (232,100,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:122;s:6:\"height\";i:122;s:4:\"file\";s:21:\"2021/01/instagram.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (233,101,'_wp_attached_file','2021/01/Menu-icon.png');
INSERT INTO `wp_postmeta` VALUES (234,101,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:38;s:6:\"height\";i:38;s:4:\"file\";s:21:\"2021/01/Menu-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (235,102,'_wp_attached_file','2021/01/money-icon.png');
INSERT INTO `wp_postmeta` VALUES (236,102,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:36;s:6:\"height\";i:36;s:4:\"file\";s:22:\"2021/01/money-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (237,103,'_wp_attached_file','2021/01/moon-icon.png');
INSERT INTO `wp_postmeta` VALUES (238,103,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:36;s:6:\"height\";i:36;s:4:\"file\";s:21:\"2021/01/moon-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (239,104,'_wp_attached_file','2021/01/sablier.png');
INSERT INTO `wp_postmeta` VALUES (240,104,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:205;s:6:\"height\";i:169;s:4:\"file\";s:19:\"2021/01/sablier.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sablier-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (241,105,'_wp_attached_file','2021/01/search-icon.png');
INSERT INTO `wp_postmeta` VALUES (242,105,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:39;s:6:\"height\";i:39;s:4:\"file\";s:23:\"2021/01/search-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (243,106,'_wp_attached_file','2021/01/shopping_cart-24px.png');
INSERT INTO `wp_postmeta` VALUES (244,106,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:36;s:6:\"height\";i:36;s:4:\"file\";s:30:\"2021/01/shopping_cart-24px.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (245,107,'_wp_attached_file','2021/01/smile-icon.png');
INSERT INTO `wp_postmeta` VALUES (246,107,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:36;s:6:\"height\";i:36;s:4:\"file\";s:22:\"2021/01/smile-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (247,108,'_wp_attached_file','2021/01/time-icon.png');
INSERT INTO `wp_postmeta` VALUES (248,108,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:21:\"2021/01/time-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (249,109,'_wp_attached_file','2021/01/tshirt.png');
INSERT INTO `wp_postmeta` VALUES (250,109,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:159;s:6:\"height\";i:144;s:4:\"file\";s:18:\"2021/01/tshirt.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"tshirt-150x144.png\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (251,110,'_wp_attached_file','2021/01/vintage-icon.png');
INSERT INTO `wp_postmeta` VALUES (252,110,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:36;s:6:\"height\";i:36;s:4:\"file\";s:24:\"2021/01/vintage-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (253,111,'_wp_attached_file','2021/01/visibility-24px.png');
INSERT INTO `wp_postmeta` VALUES (254,111,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:82;s:6:\"height\";i:82;s:4:\"file\";s:27:\"2021/01/visibility-24px.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (255,112,'_wp_attached_file','2021/01/volley-icon.png');
INSERT INTO `wp_postmeta` VALUES (256,112,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:35;s:6:\"height\";i:35;s:4:\"file\";s:23:\"2021/01/volley-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (257,113,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (258,113,'_wp_trash_meta_time','1609776289');
INSERT INTO `wp_postmeta` VALUES (259,115,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (260,115,'_edit_lock','1610824233:1');
INSERT INTO `wp_postmeta` VALUES (261,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (262,59,'store_name','nameitis');
INSERT INTO `wp_postmeta` VALUES (263,59,'_store_name','field_5ffadda646007');
INSERT INTO `wp_postmeta` VALUES (264,59,'gallery','');
INSERT INTO `wp_postmeta` VALUES (265,59,'_gallery','field_5ffaddb546008');
INSERT INTO `wp_postmeta` VALUES (266,59,'_','field_5ffade0d46009');
INSERT INTO `wp_postmeta` VALUES (267,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (268,58,'store_name','bookish');
INSERT INTO `wp_postmeta` VALUES (269,58,'_store_name','field_5ffadda646007');
INSERT INTO `wp_postmeta` VALUES (270,58,'gallery','');
INSERT INTO `wp_postmeta` VALUES (271,58,'_gallery','field_5ffaddb546008');
INSERT INTO `wp_postmeta` VALUES (272,58,'_','field_5ffade0d46009');
INSERT INTO `wp_postmeta` VALUES (273,119,'_edit_lock','1610295169:1');
INSERT INTO `wp_postmeta` VALUES (274,121,'_form','<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]');
INSERT INTO `wp_postmeta` VALUES (275,121,'_mail','a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <dev-email@flywheel.local>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (276,121,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <dev-email@flywheel.local>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (277,121,'_messages','a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}');
INSERT INTO `wp_postmeta` VALUES (278,121,'_additional_settings',NULL);
INSERT INTO `wp_postmeta` VALUES (279,121,'_locale','en_US');
INSERT INTO `wp_postmeta` VALUES (280,126,'_edit_lock','1610553590:1');
INSERT INTO `wp_postmeta` VALUES (281,126,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (282,126,'_yoast_wpseo_estimated-reading-time-minutes','');
INSERT INTO `wp_postmeta` VALUES (283,127,'_edit_lock','1610553741:1');
INSERT INTO `wp_postmeta` VALUES (284,127,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (285,127,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (286,127,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (287,128,'_edit_lock','1610836594:1');
INSERT INTO `wp_postmeta` VALUES (288,128,'_thumbnail_id','76');
INSERT INTO `wp_postmeta` VALUES (289,128,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (290,128,'_yoast_wpseo_content_score','90');
INSERT INTO `wp_postmeta` VALUES (291,128,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (292,127,'_thumbnail_id','73');
INSERT INTO `wp_postmeta` VALUES (293,129,'_edit_lock','1610566220:1');
INSERT INTO `wp_postmeta` VALUES (294,129,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (295,129,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (296,129,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (297,130,'_edit_lock','1610836607:1');
INSERT INTO `wp_postmeta` VALUES (298,130,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (299,130,'_yoast_wpseo_content_score','90');
INSERT INTO `wp_postmeta` VALUES (300,130,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (301,131,'_edit_lock','1610553838:1');
INSERT INTO `wp_postmeta` VALUES (302,132,'_edit_lock','1610824230:1');
INSERT INTO `wp_postmeta` VALUES (303,132,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (304,132,'_yoast_wpseo_content_score','90');
INSERT INTO `wp_postmeta` VALUES (305,132,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (306,132,'_thumbnail_id','88');
INSERT INTO `wp_postmeta` VALUES (307,130,'_thumbnail_id','70');
INSERT INTO `wp_postmeta` VALUES (308,129,'_thumbnail_id','60');
INSERT INTO `wp_postmeta` VALUES (313,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (314,53,'_pingme','1');
INSERT INTO `wp_postmeta` VALUES (315,53,'_encloseme','1');
INSERT INTO `wp_postmeta` VALUES (316,53,'_yoast_wpseo_content_score','30');
INSERT INTO `wp_postmeta` VALUES (317,53,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (318,164,'_edit_lock','1610917150:1');
INSERT INTO `wp_postmeta` VALUES (319,164,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (320,164,'_yoast_wpseo_estimated-reading-time-minutes','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-12-09 10:11:51','2020-12-09 10:11:51','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>hello</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>hello</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>blog post</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-01-03 17:20:32','2021-01-03 17:20:32','',0,'http://localhost:10016/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-12-09 10:11:51','2020-12-09 10:11:51','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10016/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','HOME','','publish','closed','closed','','home','','','2021-01-01 11:25:33','2021-01-01 11:25:33','',0,'http://localhost:10016/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-12-09 10:11:51','2020-12-09 10:11:51','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:10016.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2020-12-09 10:11:51','2020-12-09 10:11:51','',0,'http://localhost:10016/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-12-29 21:55:59','2020-12-29 21:55:59','','log3','','inherit','open','closed','','log3','','','2020-12-29 21:55:59','2020-12-29 21:55:59','',0,'http://localhost:10016/wp-content/uploads/2020/12/log3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-12-29 21:56:07','2020-12-29 21:56:07','http://localhost:10016/wp-content/uploads/2020/12/cropped-log3.png','cropped-log3.png','','inherit','open','closed','','cropped-log3-png','','','2020-12-29 21:56:07','2020-12-29 21:56:07','',0,'http://localhost:10016/wp-content/uploads/2020/12/cropped-log3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-12-29 21:56:12','2020-12-29 21:56:12','{\n    \"site_icon\": {\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-29 21:56:12\"\n    }\n}','','','trash','closed','closed','','c7b0026e-bc6b-4958-a0a7-81857d664afe','','','2020-12-29 21:56:12','2020-12-29 21:56:12','',0,'http://localhost:10016/c7b0026e-bc6b-4958-a0a7-81857d664afe/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-12-29 22:45:18','2020-12-29 22:45:18','','newlague','','inherit','open','closed','','newlague','','','2020-12-29 22:45:18','2020-12-29 22:45:18','',0,'http://localhost:10016/wp-content/uploads/2020/12/newlague.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-12-29 22:45:23','2020-12-29 22:45:23','http://localhost:10016/wp-content/uploads/2020/12/cropped-newlague.png','cropped-newlague.png','','inherit','open','closed','','cropped-newlague-png','','','2020-12-29 22:45:23','2020-12-29 22:45:23','',0,'http://localhost:10016/wp-content/uploads/2020/12/cropped-newlague.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-12-29 22:45:42','2020-12-29 22:45:42','{\n    \"site_icon\": {\n        \"value\": 12,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-29 22:45:42\"\n    }\n}','','','trash','closed','closed','','34424f51-dd57-4215-9769-82e5a2700f0a','','','2020-12-29 22:45:42','2020-12-29 22:45:42','',0,'http://localhost:10016/34424f51-dd57-4215-9769-82e5a2700f0a/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-12-29 22:49:07','2020-12-29 22:49:07','{\n    \"blogname\": {\n        \"value\": \"amp-test page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-29 22:49:07\"\n    }\n}','','','trash','closed','closed','','ffa354b5-2f61-4a65-abb4-d17ea84ecbe7','','','2020-12-29 22:49:07','2020-12-29 22:49:07','',0,'http://localhost:10016/ffa354b5-2f61-4a65-abb4-d17ea84ecbe7/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-12-30 14:04:18','2020-12-30 14:04:18','','Les villes','','publish','closed','closed','','les-villes','','','2020-12-30 14:05:01','2020-12-30 14:05:01','',0,'http://localhost:10016/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-12-30 14:04:18','2020-12-30 14:04:18','','Les friperies','','inherit','closed','closed','','15-revision-v1','','','2020-12-30 14:04:18','2020-12-30 14:04:18','',15,'http://localhost:10016/15-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-12-30 14:05:01','2020-12-30 14:05:01','','Les villes','','inherit','closed','closed','','15-revision-v1','','','2020-12-30 14:05:01','2020-12-30 14:05:01','',15,'http://localhost:10016/15-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-12-30 14:05:16','2020-12-30 14:05:16','','Philosophie','','publish','closed','closed','','philosophie','','','2020-12-30 14:05:16','2020-12-30 14:05:16','',0,'http://localhost:10016/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-12-30 14:05:16','2020-12-30 14:05:16','','Philosophie','','inherit','closed','closed','','18-revision-v1','','','2020-12-30 14:05:16','2020-12-30 14:05:16','',18,'http://localhost:10016/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-12-30 14:05:32','2020-12-30 14:05:32','','Blog','','publish','closed','closed','','blog','','','2020-12-30 14:05:32','2020-12-30 14:05:32','',0,'http://localhost:10016/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-12-30 14:05:32','2020-12-30 14:05:32','','Blog','','inherit','closed','closed','','20-revision-v1','','','2020-12-30 14:05:32','2020-12-30 14:05:32','',20,'http://localhost:10016/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-12-30 14:06:16','2020-12-30 14:06:16','','Contact','','publish','closed','closed','','contact','','','2020-12-30 14:06:16','2020-12-30 14:06:16','',0,'http://localhost:10016/?page_id=22',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-12-30 14:06:16','2020-12-30 14:06:16','','Contact','','inherit','closed','closed','','22-revision-v1','','','2020-12-30 14:06:16','2020-12-30 14:06:16','',22,'http://localhost:10016/22-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-12-30 14:07:52','2020-12-30 14:07:52',' ','','','publish','closed','closed','','24','','','2020-12-31 20:24:53','2020-12-31 20:24:53','',0,'http://localhost:10016/?p=24',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-12-30 14:07:52','2020-12-30 14:07:52',' ','','','publish','closed','closed','','25','','','2020-12-31 20:24:53','2020-12-31 20:24:53','',0,'http://localhost:10016/?p=25',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-12-30 14:07:51','2020-12-30 14:07:51',' ','','','publish','closed','closed','','26','','','2020-12-31 20:24:53','2020-12-31 20:24:53','',0,'http://localhost:10016/?p=26',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-12-30 14:07:50','2020-12-30 14:07:50',' ','','','publish','closed','closed','','27','','','2020-12-31 20:24:53','2020-12-31 20:24:53','',0,'http://localhost:10016/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-12-30 20:37:26','2020-12-30 20:37:26','{\n    \"Amptheme1::custom_logo\": {\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-30 20:37:26\"\n    }\n}','','','trash','closed','closed','','a16ae6d4-c2ac-45f4-a33f-889389e78d19','','','2020-12-30 20:37:26','2020-12-30 20:37:26','',0,'http://localhost:10016/a16ae6d4-c2ac-45f4-a33f-889389e78d19/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-12-30 21:04:01','2020-12-30 21:04:01','http://localhost:10016/wp-content/uploads/2020/12/cropped-cropped-log3.png','cropped-cropped-log3.png','','inherit','open','closed','','cropped-cropped-log3-png','','','2020-12-30 21:04:01','2020-12-30 21:04:01','',0,'http://localhost:10016/wp-content/uploads/2020/12/cropped-cropped-log3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-12-30 21:04:07','2020-12-30 21:04:07','{\n    \"Amptheme1::custom_logo\": {\n        \"value\": 30,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-30 21:04:07\"\n    }\n}','','','trash','closed','closed','','1baf3191-dd39-4128-9c0e-b7189771c4a5','','','2020-12-30 21:04:07','2020-12-30 21:04:07','',0,'http://localhost:10016/1baf3191-dd39-4128-9c0e-b7189771c4a5/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-12-30 21:04:20','2020-12-30 21:04:20','{\n    \"Amptheme1::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-30 21:04:20\"\n    }\n}','','','trash','closed','closed','','0c78cbba-6a44-4bf3-8c84-caf7a92024d0','','','2020-12-30 21:04:20','2020-12-30 21:04:20','',0,'http://localhost:10016/0c78cbba-6a44-4bf3-8c84-caf7a92024d0/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-12-30 21:09:18','2020-12-30 21:09:18','http://localhost:10016/wp-content/uploads/2020/12/cropped-cropped-cropped-log3.png','cropped-cropped-cropped-log3.png','','inherit','open','closed','','cropped-cropped-cropped-log3-png','','','2020-12-30 21:09:18','2020-12-30 21:09:18','',0,'http://localhost:10016/wp-content/uploads/2020/12/cropped-cropped-cropped-log3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-12-30 21:09:21','2020-12-30 21:09:21','{\n    \"Amptheme1::custom_logo\": {\n        \"value\": 33,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-30 21:09:21\"\n    }\n}','','','trash','closed','closed','','a71d1438-d6d5-4b98-8bbf-9bd07c62d7ea','','','2020-12-30 21:09:21','2020-12-30 21:09:21','',0,'http://localhost:10016/a71d1438-d6d5-4b98-8bbf-9bd07c62d7ea/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-12-30 21:46:07','2020-12-30 21:46:07','{\n    \"Amptheme1::background_image\": {\n        \"value\": \"http://localhost:10016/wp-content/uploads/2020/12/cropped-newlague.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-30 21:46:07\"\n    }\n}','','','trash','closed','closed','','d968cbff-23e9-4aef-8061-559f553e229a','','','2020-12-30 21:46:07','2020-12-30 21:46:07','',0,'http://localhost:10016/d968cbff-23e9-4aef-8061-559f553e229a/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-12-30 21:46:22','2020-12-30 21:46:22','{\n    \"Amptheme1::background_preset\": {\n        \"value\": \"fill\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-30 21:46:22\"\n    },\n    \"Amptheme1::background_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-30 21:46:22\"\n    },\n    \"Amptheme1::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-30 21:46:22\"\n    },\n    \"Amptheme1::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-30 21:46:22\"\n    }\n}','','','trash','closed','closed','','c57b19f8-8302-4784-894f-55622c25e8d5','','','2020-12-30 21:46:22','2020-12-30 21:46:22','',0,'http://localhost:10016/c57b19f8-8302-4784-894f-55622c25e8d5/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-12-30 21:49:50','2020-12-30 21:49:50','{\n    \"Amptheme1::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-30 21:49:50\"\n    },\n    \"Amptheme1::background_position_y\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-30 21:49:50\"\n    }\n}','','','trash','closed','closed','','aa874ebd-a7f6-4824-b260-fda7d3d901f4','','','2020-12-30 21:49:50','2020-12-30 21:49:50','',0,'http://localhost:10016/aa874ebd-a7f6-4824-b260-fda7d3d901f4/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-12-30 21:50:03','2020-12-30 21:50:03','{\n    \"Amptheme1::background_color\": {\n        \"value\": \"#dd3333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-30 21:50:03\"\n    }\n}','','','trash','closed','closed','','4a1797da-a932-4d40-9065-1a61d0954e9d','','','2020-12-30 21:50:03','2020-12-30 21:50:03','',0,'http://localhost:10016/4a1797da-a932-4d40-9065-1a61d0954e9d/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-12-30 21:51:32','2020-12-30 21:51:32','{\n    \"Amptheme1::background_color\": {\n        \"value\": \"#49239b\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-30 21:51:32\"\n    }\n}','','','trash','closed','closed','','a005fa83-3d7c-4432-adab-41e58becfb2a','','','2020-12-30 21:51:32','2020-12-30 21:51:32','',0,'http://localhost:10016/a005fa83-3d7c-4432-adab-41e58becfb2a/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-12-30 21:54:25','2020-12-30 21:54:25','{\n    \"Amptheme1::background_color\": {\n        \"value\": \"#5b1136\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-30 21:54:25\"\n    }\n}','','','trash','closed','closed','','ed7a142f-1783-4953-b500-2aff1799917f','','','2020-12-30 21:54:25','2020-12-30 21:54:25','',0,'http://localhost:10016/ed7a142f-1783-4953-b500-2aff1799917f/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-12-31 22:20:26','2020-12-31 22:20:26','','logo-small','','inherit','open','closed','','logo-small','','','2020-12-31 22:20:26','2020-12-31 22:20:26','',0,'http://localhost:10016/wp-content/uploads/2020/12/logo-small.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-12-31 22:20:34','2020-12-31 22:20:34','{\n    \"Amptheme1::custom_logo\": {\n        \"value\": 42,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-31 22:20:34\"\n    }\n}','','','trash','closed','closed','','866fa940-d67c-4bf1-ad7e-82a3c7311abc','','','2020-12-31 22:20:34','2020-12-31 22:20:34','',0,'http://localhost:10016/866fa940-d67c-4bf1-ad7e-82a3c7311abc/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-01-01 11:17:42','2021-01-01 11:17:42','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-01-01 11:17:42\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-01-01 11:17:42\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"20\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-01-01 11:17:42\"\n    }\n}','','','trash','closed','closed','','89fa4a3a-ef44-4c4a-948f-e83ee14c4032','','','2021-01-01 11:17:42','2021-01-01 11:17:42','',0,'http://localhost:10016/89fa4a3a-ef44-4c4a-948f-e83ee14c4032/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-01-01 11:25:33','2021-01-01 11:25:33','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10016/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','HOME','','inherit','closed','closed','','2-revision-v1','','','2021-01-01 11:25:33','2021-01-01 11:25:33','',2,'http://localhost:10016/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-01-01 18:30:44','2021-01-01 18:30:44','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>hello</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>hello</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>blog post</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2021-01-01 18:30:44','2021-01-01 18:30:44','',1,'http://localhost:10016/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-01-01 20:10:29','2021-01-01 20:10:29','<!-- wp:paragraph -->\n<p>This is the second post for this place to show This is the second post for this place to showThis is the second post for this place to showThis is the second post for this place to show</p>\n<!-- /wp:paragraph -->','post 1','','publish','open','open','','post-1','','','2021-01-03 17:20:44','2021-01-03 17:20:44','',0,'http://localhost:10016/?p=47',0,'post','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-01-01 20:10:29','2021-01-01 20:10:29','<!-- wp:paragraph -->\n<p>This is the second post for this place to show This is the second post for this place to showThis is the second post for this place to showThis is the second post for this place to show</p>\n<!-- /wp:paragraph -->','post 1','','inherit','closed','closed','','47-revision-v1','','','2021-01-01 20:10:29','2021-01-01 20:10:29','',47,'http://localhost:10016/47-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-01-01 20:11:11','2021-01-01 20:11:11','<!-- wp:paragraph -->\n<p>This is not real baby\'s name for you guys This is not real baby\'s name for you guysThis is not real baby\'s name for you guysThis is not real baby\'s name for you guysThis is not real baby\'s name for you guysThis is not real baby\'s name for you guysThis is not real baby\'s name for you guysThis is not real baby\'s name for you guysThis is not real baby\'s name for you guys</p>\n<!-- /wp:paragraph -->','Second Francis','','publish','open','open','','second-francis','','','2021-01-03 17:20:53','2021-01-03 17:20:53','',0,'http://localhost:10016/?p=49',0,'post','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-01-01 20:11:11','2021-01-01 20:11:11','<!-- wp:paragraph -->\n<p>This is not real baby\'s name for you guys This is not real baby\'s name for you guysThis is not real baby\'s name for you guysThis is not real baby\'s name for you guysThis is not real baby\'s name for you guysThis is not real baby\'s name for you guysThis is not real baby\'s name for you guysThis is not real baby\'s name for you guysThis is not real baby\'s name for you guys</p>\n<!-- /wp:paragraph -->','Second Francis','','inherit','closed','closed','','49-revision-v1','','','2021-01-01 20:11:11','2021-01-01 20:11:11','',49,'http://localhost:10016/49-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-01-01 21:05:20','2021-01-01 21:05:20','<!-- wp:paragraph -->\n<p>she is your sister and she wants the best for you she is your sister and she wants the best for youshe is your sister and she wants the best for youshe is your sister and she wants the best for youshe is your sister and she wants the best for youshe is your sister and she wants the best for youshe is your sister and she wants the best for you</p>\n<!-- /wp:paragraph -->','She cares bout you','','publish','open','open','','she-cares-bout-you','','','2021-01-03 17:21:05','2021-01-03 17:21:05','',0,'http://localhost:10016/?p=51',0,'post','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-01-01 21:05:20','2021-01-01 21:05:20','<!-- wp:paragraph -->\n<p>she is your sister and she wants the best for you she is your sister and she wants the best for youshe is your sister and she wants the best for youshe is your sister and she wants the best for youshe is your sister and she wants the best for youshe is your sister and she wants the best for youshe is your sister and she wants the best for you</p>\n<!-- /wp:paragraph -->','She cares bout you','','inherit','closed','closed','','51-revision-v1','','','2021-01-01 21:05:20','2021-01-01 21:05:20','',51,'http://localhost:10016/51-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-01-01 21:05:42','2021-01-01 21:05:42','<!-- wp:paragraph -->\n<p>arriba hombre vamos  arriba hombre vamos arriba hombre vamos arriba hombre vamos arriba hombre vamos arriba hombre vamos arriba hombre vamos arriba hombre vamos arriba hombre vamos arriba hombre vamos arriba hombre vamosarriba hombre vamosarriba hombre vamos</p>\n<!-- /wp:paragraph -->','Nuevo','','publish','open','open','','nuevo','','','2021-01-16 22:40:02','2021-01-16 22:40:02','',0,'http://localhost:10016/?p=53',0,'post','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-01-01 21:05:42','2021-01-01 21:05:42','<!-- wp:paragraph -->\n<p>arriba hombre vamos   arriba hombre vamosarriba hombre vamosarriba hombre vamosarriba hombre vamosarriba hombre vamosarriba hombre vamosarriba hombre vamosarriba hombre vamosarriba hombre vamosarriba hombre vamosarriba hombre vamosarriba hombre vamos</p>\n<!-- /wp:paragraph -->','Nuevo','','inherit','closed','closed','','53-revision-v1','','','2021-01-01 21:05:42','2021-01-01 21:05:42','',53,'http://localhost:10016/53-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-01-01 21:09:22','2021-01-01 21:09:22','<!-- wp:paragraph -->\n<p>Vale dame otra no seas asi dame otra columna muchacho  Vale dame otra no seas asi dame otra columna muchachoVale dame otra no seas asi dame otra columna muchachoVale dame otra no seas asi dame otra columna muchachoVale dame otra no seas asi dame otra columna muchachoVale dame otra no seas asi dame otra columna muchachoVale dame otra no seas asi dame otra columna muchacho</p>\n<!-- /wp:paragraph -->','Necesito otra columna vale','','publish','open','open','','necesito-otra-columna-vale','','','2021-01-03 17:17:18','2021-01-03 17:17:18','',0,'http://localhost:10016/?p=55',0,'post','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-01-01 21:09:22','2021-01-01 21:09:22','<!-- wp:paragraph -->\n<p>Vale dame otra no seas asi dame otra columna muchacho  Vale dame otra no seas asi dame otra columna muchachoVale dame otra no seas asi dame otra columna muchachoVale dame otra no seas asi dame otra columna muchachoVale dame otra no seas asi dame otra columna muchachoVale dame otra no seas asi dame otra columna muchachoVale dame otra no seas asi dame otra columna muchacho</p>\n<!-- /wp:paragraph -->','Necesito otra columna vale','','inherit','closed','closed','','55-revision-v1','','','2021-01-01 21:09:22','2021-01-01 21:09:22','',55,'http://localhost:10016/55-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-01-02 13:44:11','2021-01-02 13:44:11','<!-- wp:paragraph -->\n<p>hello book</p>\n<!-- /wp:paragraph -->','book One','','publish','closed','closed','','book-one','','','2021-01-02 13:44:11','2021-01-02 13:44:11','',0,'http://localhost:10016/?post_type=book&#038;p=57',0,'book','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-01-02 13:44:47','2021-01-02 13:44:47','<!-- wp:paragraph -->\n<p>or you la la la la</p>\n<!-- /wp:paragraph -->','Book 2','','publish','closed','closed','','book-2','','','2021-01-10 11:07:12','2021-01-10 11:07:12','',0,'http://localhost:10016/?post_type=book&#038;p=58',0,'book','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-01-02 13:45:09','2021-01-02 13:45:09','<!-- wp:paragraph -->\n<p>Here it is my third book</p>\n<!-- /wp:paragraph -->','Book 3','','publish','closed','closed','','book-3','','','2021-01-10 11:05:27','2021-01-10 11:05:27','',0,'http://localhost:10016/?post_type=book&#038;p=59',0,'book','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-01-03 17:18:06','2021-01-03 17:18:06','','Friperie Lee Berthy #1 Montpellier','','inherit','open','closed','','friperie-lee-berthy-1-montpellier','','','2021-01-03 17:18:06','2021-01-03 17:18:06','',0,'http://localhost:10016/wp-content/uploads/2021/01/Friperie-Lee-Berthy-1-Montpellier.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-01-03 17:18:07','2021-01-03 17:18:07','','Friperie Lee Berthy #2 Montpellier','','inherit','open','closed','','friperie-lee-berthy-2-montpellier','','','2021-01-03 17:18:07','2021-01-03 17:18:07','',0,'http://localhost:10016/wp-content/uploads/2021/01/Friperie-Lee-Berthy-2-Montpellier.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-01-03 17:18:08','2021-01-03 17:18:08','','Friperie Lee Berthy #3 Montpellier','','inherit','open','closed','','friperie-lee-berthy-3-montpellier','','','2021-01-03 17:18:08','2021-01-03 17:18:08','',0,'http://localhost:10016/wp-content/uploads/2021/01/Friperie-Lee-Berthy-3-Montpellier.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-01-03 17:18:09','2021-01-03 17:18:09','','gre','','inherit','open','closed','','gre','','','2021-01-03 17:18:09','2021-01-03 17:18:09','',0,'http://localhost:10016/wp-content/uploads/2021/01/gre.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-01-03 17:18:16','2021-01-03 17:18:16','','Jean Levi\'s','','inherit','open','closed','','jean-levis','','','2021-01-03 17:18:16','2021-01-03 17:18:16','',0,'http://localhost:10016/wp-content/uploads/2021/01/Jean-Levis.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-01-03 17:18:27','2021-01-03 17:18:27','','Tenue 2 Lee berthy Sabrina Hadjacene 2','','inherit','open','closed','','tenue-2-lee-berthy-sabrina-hadjacene-2','','','2021-01-03 17:18:27','2021-01-03 17:18:27','',0,'http://localhost:10016/wp-content/uploads/2021/01/Tenue-2-Lee-berthy-Sabrina-Hadjacene-2.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-01-03 17:18:28','2021-01-03 17:18:28','','Tenue 3 Lee berthy Sabrina Hadjacene 2','','inherit','open','closed','','tenue-3-lee-berthy-sabrina-hadjacene-2','','','2021-01-03 17:18:28','2021-01-03 17:18:28','',0,'http://localhost:10016/wp-content/uploads/2021/01/Tenue-3-Lee-berthy-Sabrina-Hadjacene-2.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-01-03 22:01:39','2021-01-03 22:01:39','{\n    \"Amptheme1::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-01-03 22:01:23\"\n    },\n    \"Amptheme1::background_color\": {\n        \"value\": \"#fff9e7\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-01-03 22:01:39\"\n    }\n}','','','trash','closed','closed','','95da2e98-cf70-41c9-b3a1-fedf6a0a47a4','','','2021-01-03 22:01:39','2021-01-03 22:01:39','',0,'http://localhost:10016/?p=67',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-01-03 23:27:43','2021-01-03 23:27:43','','bk accueil','','inherit','open','closed','','bk-accueil','','','2021-01-03 23:27:43','2021-01-03 23:27:43','',0,'http://localhost:10016/wp-content/uploads/2021/01/bk-accueil.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-01-04 09:26:52','2021-01-04 09:26:52','','bk blog','','inherit','open','closed','','bk-blog','','','2021-01-04 09:26:52','2021-01-04 09:26:52','',0,'http://localhost:10016/wp-content/uploads/2021/01/bk-blog.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-01-04 09:26:54','2021-01-04 09:26:54','','bk img form','','inherit','open','closed','','bk-img-form','','','2021-01-04 09:26:54','2021-01-04 09:26:54','',0,'http://localhost:10016/wp-content/uploads/2021/01/bk-img-form.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-01-04 09:26:58','2021-01-04 09:26:58','','bk newsletter','','inherit','open','closed','','bk-newsletter','','','2021-01-04 09:26:58','2021-01-04 09:26:58','',0,'http://localhost:10016/wp-content/uploads/2021/01/bk-newsletter.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-01-04 09:27:01','2021-01-04 09:27:01','','Boutique-3-1024x683','','inherit','open','closed','','boutique-3-1024x683','','','2021-01-04 09:27:01','2021-01-04 09:27:01','',0,'http://localhost:10016/wp-content/uploads/2021/01/Boutique-3-1024x683-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-01-04 09:27:02','2021-01-04 09:27:02','','BRAD-1024x765','','inherit','open','closed','','brad-1024x765','','','2021-01-04 09:27:02','2021-01-04 09:27:02','',0,'http://localhost:10016/wp-content/uploads/2021/01/BRAD-1024x765-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-01-04 09:27:04','2021-01-04 09:27:04','','Cover-brad-boutique','','inherit','open','closed','','cover-brad-boutique','','','2021-01-04 09:27:04','2021-01-04 09:27:04','',0,'http://localhost:10016/wp-content/uploads/2021/01/Cover-brad-boutique.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-01-04 09:27:05','2021-01-04 09:27:05','','Img banniere montpellier','','inherit','open','closed','','img-banniere-montpellier','','','2021-01-04 09:27:05','2021-01-04 09:27:05','',0,'http://localhost:10016/wp-content/uploads/2021/01/Img-banniere-montpellier.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-01-04 09:27:07','2021-01-04 09:27:07','','IMG_2690','','inherit','open','closed','','img_2690','','','2021-01-04 09:27:07','2021-01-04 09:27:07','',0,'http://localhost:10016/wp-content/uploads/2021/01/IMG_2690.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-01-04 09:27:19','2021-01-04 09:27:19','','IMG_20200119_192647_981-1320x540','','inherit','open','closed','','img_20200119_192647_981-1320x540','','','2021-01-04 09:27:19','2021-01-04 09:27:19','',0,'http://localhost:10016/wp-content/uploads/2021/01/IMG_20200119_192647_981-1320x540-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-01-04 09:27:21','2021-01-04 09:27:21','','Logo TPTF (cercle)','','inherit','open','closed','','logo-tptf-cercle','','','2021-01-04 09:27:21','2021-01-04 09:27:21','',0,'http://localhost:10016/wp-content/uploads/2021/01/Logo-TPTF-cercle.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-01-04 09:27:26','2021-01-04 09:27:26','','LOGO TPTF blanc','','inherit','open','closed','','logo-tptf-blanc','','','2021-01-04 09:27:26','2021-01-04 09:27:26','',0,'http://localhost:10016/wp-content/uploads/2021/01/LOGO-TPTF-blanc.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-01-04 09:27:27','2021-01-04 09:27:27','','Nathan-Intemporel-002-1-1024x576-min','','inherit','open','closed','','nathan-intemporel-002-1-1024x576-min','','','2021-01-04 09:27:27','2021-01-04 09:27:27','',0,'http://localhost:10016/wp-content/uploads/2021/01/Nathan-Intemporel-002-1-1024x576-min.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-01-04 09:27:29','2021-01-04 09:27:29','','P1350013','','inherit','open','closed','','p1350013','','','2021-01-04 09:27:29','2021-01-04 09:27:29','',0,'http://localhost:10016/wp-content/uploads/2021/01/P1350013.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-01-04 09:27:41','2021-01-04 09:27:41','','r7yedbfwnr_2_400','','inherit','open','closed','','r7yedbfwnr_2_400','','','2021-01-04 09:27:41','2021-01-04 09:27:41','',0,'http://localhost:10016/wp-content/uploads/2021/01/r7yedbfwnr_2_400.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (83,1,'2021-01-04 09:27:42','2021-01-04 09:27:42','','unnamed','','inherit','open','closed','','unnamed','','','2021-01-04 09:27:42','2021-01-04 09:27:42','',0,'http://localhost:10016/wp-content/uploads/2021/01/unnamed.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (84,1,'2021-01-04 09:27:45','2021-01-04 09:27:45','','whiteboys-210x210.jpg','','inherit','open','closed','','whiteboys-210x210-jpg','','','2021-01-04 09:27:45','2021-01-04 09:27:45','',0,'http://localhost:10016/wp-content/uploads/2021/01/whiteboys-210x210.jpg.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (85,1,'2021-01-04 09:27:46','2021-01-04 09:27:46','','#3','','inherit','open','closed','','3','','','2021-01-04 09:27:46','2021-01-04 09:27:46','',0,'http://localhost:10016/wp-content/uploads/2021/01/3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-01-04 09:27:48','2021-01-04 09:27:48','','13-8-19062018-962A6768','','inherit','open','closed','','13-8-19062018-962a6768','','','2021-01-04 09:27:48','2021-01-04 09:27:48','',0,'http://localhost:10016/wp-content/uploads/2021/01/13-8-19062018-962A6768.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-01-04 09:27:49','2021-01-04 09:27:49','','116000661_158810465735542_4060089695266470516_n','','inherit','open','closed','','116000661_158810465735542_4060089695266470516_n','','','2021-01-04 09:27:49','2021-01-04 09:27:49','',0,'http://localhost:10016/wp-content/uploads/2021/01/116000661_158810465735542_4060089695266470516_n.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (88,1,'2021-01-04 09:27:51','2021-01-04 09:27:51','','bk accueil','','inherit','open','closed','','bk-accueil-2','','','2021-01-04 09:27:51','2021-01-04 09:27:51','',0,'http://localhost:10016/wp-content/uploads/2021/01/bk-accueil-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (89,1,'2021-01-04 15:54:31','2021-01-04 15:54:31','','_','','inherit','open','closed','','_','','','2021-01-04 15:54:31','2021-01-04 15:54:31','',0,'http://localhost:10016/wp-content/uploads/2021/01/unnamed-file.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-01-04 15:54:31','2021-01-04 15:54:31','','btn affichage groupe 3','','inherit','open','closed','','btn-affichage-groupe-3','','','2021-01-04 15:54:31','2021-01-04 15:54:31','',0,'http://localhost:10016/wp-content/uploads/2021/01/btn-affichage-groupe-3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-01-04 15:54:32','2021-01-04 15:54:32','','btn affichage liste','','inherit','open','closed','','btn-affichage-liste','','','2021-01-04 15:54:32','2021-01-04 15:54:32','',0,'http://localhost:10016/wp-content/uploads/2021/01/btn-affichage-liste.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-01-04 15:54:32','2021-01-04 15:54:32','','bullhorn','','inherit','open','closed','','bullhorn','','','2021-01-04 15:54:32','2021-01-04 15:54:32','',0,'http://localhost:10016/wp-content/uploads/2021/01/bullhorn.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-01-04 15:54:33','2021-01-04 15:54:33','','cached-24px','','inherit','open','closed','','cached-24px','','','2021-01-04 15:54:33','2021-01-04 15:54:33','',0,'http://localhost:10016/wp-content/uploads/2021/01/cached-24px.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-01-04 15:54:33','2021-01-04 15:54:33','','comment icon','','inherit','open','closed','','comment-icon','','','2021-01-04 15:54:33','2021-01-04 15:54:33','',0,'http://localhost:10016/wp-content/uploads/2021/01/comment-icon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (95,1,'2021-01-04 15:54:34','2021-01-04 15:54:34','','euro_symbol-24px','','inherit','open','closed','','euro_symbol-24px','','','2021-01-04 15:54:34','2021-01-04 15:54:34','',0,'http://localhost:10016/wp-content/uploads/2021/01/euro_symbol-24px.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (96,1,'2021-01-04 15:54:34','2021-01-04 15:54:34','','facebook','','inherit','open','closed','','facebook','','','2021-01-04 15:54:34','2021-01-04 15:54:34','',0,'http://localhost:10016/wp-content/uploads/2021/01/facebook.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (97,1,'2021-01-04 15:54:35','2021-01-04 15:54:35','','factory','','inherit','open','closed','','factory','','','2021-01-04 15:54:35','2021-01-04 15:54:35','',0,'http://localhost:10016/wp-content/uploads/2021/01/factory.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-01-04 15:54:35','2021-01-04 15:54:35','','fichier icon','','inherit','open','closed','','fichier-icon','','','2021-01-04 15:54:35','2021-01-04 15:54:35','',0,'http://localhost:10016/wp-content/uploads/2021/01/fichier-icon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (99,1,'2021-01-04 15:54:35','2021-01-04 15:54:35','','google','','inherit','open','closed','','google','','','2021-01-04 15:54:35','2021-01-04 15:54:35','',0,'http://localhost:10016/wp-content/uploads/2021/01/google.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (100,1,'2021-01-04 15:54:36','2021-01-04 15:54:36','','instagram','','inherit','open','closed','','instagram','','','2021-01-04 15:54:36','2021-01-04 15:54:36','',0,'http://localhost:10016/wp-content/uploads/2021/01/instagram.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (101,1,'2021-01-04 15:54:36','2021-01-04 15:54:36','','Menu icon','','inherit','open','closed','','menu-icon','','','2021-01-04 15:54:36','2021-01-04 15:54:36','',0,'http://localhost:10016/wp-content/uploads/2021/01/Menu-icon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (102,1,'2021-01-04 15:54:37','2021-01-04 15:54:37','','money icon','','inherit','open','closed','','money-icon','','','2021-01-04 15:54:37','2021-01-04 15:54:37','',0,'http://localhost:10016/wp-content/uploads/2021/01/money-icon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (103,1,'2021-01-04 15:54:37','2021-01-04 15:54:37','','moon icon','','inherit','open','closed','','moon-icon','','','2021-01-04 15:54:37','2021-01-04 15:54:37','',0,'http://localhost:10016/wp-content/uploads/2021/01/moon-icon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (104,1,'2021-01-04 15:54:38','2021-01-04 15:54:38','','sablier','','inherit','open','closed','','sablier','','','2021-01-04 15:54:38','2021-01-04 15:54:38','',0,'http://localhost:10016/wp-content/uploads/2021/01/sablier.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (105,1,'2021-01-04 15:54:38','2021-01-04 15:54:38','','search icon','','inherit','open','closed','','search-icon','','','2021-01-04 15:54:38','2021-01-04 15:54:38','',0,'http://localhost:10016/wp-content/uploads/2021/01/search-icon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (106,1,'2021-01-04 15:54:39','2021-01-04 15:54:39','','shopping_cart-24px','','inherit','open','closed','','shopping_cart-24px','','','2021-01-04 15:54:39','2021-01-04 15:54:39','',0,'http://localhost:10016/wp-content/uploads/2021/01/shopping_cart-24px.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (107,1,'2021-01-04 15:54:39','2021-01-04 15:54:39','','smile icon','','inherit','open','closed','','smile-icon','','','2021-01-04 15:54:39','2021-01-04 15:54:39','',0,'http://localhost:10016/wp-content/uploads/2021/01/smile-icon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (108,1,'2021-01-04 15:54:40','2021-01-04 15:54:40','','time icon','','inherit','open','closed','','time-icon','','','2021-01-04 15:54:40','2021-01-04 15:54:40','',0,'http://localhost:10016/wp-content/uploads/2021/01/time-icon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (109,1,'2021-01-04 15:54:40','2021-01-04 15:54:40','','tshirt','','inherit','open','closed','','tshirt','','','2021-01-04 15:54:40','2021-01-04 15:54:40','',0,'http://localhost:10016/wp-content/uploads/2021/01/tshirt.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (110,1,'2021-01-04 15:54:41','2021-01-04 15:54:41','','vintage icon','','inherit','open','closed','','vintage-icon','','','2021-01-04 15:54:41','2021-01-04 15:54:41','',0,'http://localhost:10016/wp-content/uploads/2021/01/vintage-icon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (111,1,'2021-01-04 15:54:41','2021-01-04 15:54:41','','visibility-24px','','inherit','open','closed','','visibility-24px','','','2021-01-04 15:54:41','2021-01-04 15:54:41','',0,'http://localhost:10016/wp-content/uploads/2021/01/visibility-24px.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (112,1,'2021-01-04 15:54:41','2021-01-04 15:54:41','','volley icon','','inherit','open','closed','','volley-icon','','','2021-01-04 15:54:41','2021-01-04 15:54:41','',0,'http://localhost:10016/wp-content/uploads/2021/01/volley-icon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (113,1,'2021-01-04 16:04:49','2021-01-04 16:04:49','{\n    \"Amptheme1::custom_logo\": {\n        \"value\": 78,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-01-04 16:04:49\"\n    }\n}','','','trash','closed','closed','','195fc64d-3295-45ac-bc3e-ab6ba22c3864','','','2021-01-04 16:04:49','2021-01-04 16:04:49','',0,'http://localhost:10016/195fc64d-3295-45ac-bc3e-ab6ba22c3864/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2021-01-10 10:59:37','2021-01-10 10:59:37','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"store\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:8:\"comments\";}s:11:\"description\";s:0:\"\";}','store','store','publish','closed','closed','','group_5ffadd9acd78d','','','2021-01-16 19:09:04','2021-01-16 19:09:04','',0,'http://localhost:10016/?post_type=acf-field-group&#038;p=115',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2021-01-10 10:59:37','2021-01-10 10:59:37','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store name','store_name','publish','closed','closed','','field_5ffadda646007','','','2021-01-10 10:59:37','2021-01-10 10:59:37','',115,'http://localhost:10016/?post_type=acf-field&p=116',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2021-01-10 10:59:37','2021-01-10 10:59:37','a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}','gallery','gallery','publish','closed','closed','','field_5ffaddb546008','','','2021-01-10 10:59:37','2021-01-10 10:59:37','',115,'http://localhost:10016/?post_type=acf-field&p=117',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2021-01-10 16:15:09','2021-01-10 16:15:09','','Rejoignez-nous','','publish','closed','closed','','rejoignez-nous','','','2021-01-10 16:15:09','2021-01-10 16:15:09','',0,'http://localhost:10016/?page_id=119',0,'page','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2021-01-10 16:15:09','2021-01-10 16:15:09','','Rejoignez-nous','','inherit','closed','closed','','119-revision-v1','','','2021-01-10 16:15:09','2021-01-10 16:15:09','',119,'http://localhost:10016/119-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2021-01-12 13:15:34','2021-01-12 13:15:34','<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <dev-email@flywheel.local>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <dev-email@flywheel.local>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2021-01-12 13:15:34','2021-01-12 13:15:34','',0,'http://localhost:10016/?post_type=wpcf7_contact_form&p=121',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2021-01-12 13:18:03','2021-01-12 13:18:03','[accept_stripe_payment_checkout]','Checkout-Result','','publish','closed','closed','','stripe-checkout-result','','','2021-01-12 13:18:03','2021-01-12 13:18:03','',0,'http://localhost:10016/stripe-checkout-result/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2021-01-12 13:18:04','2021-01-12 13:18:04','[asp_show_all_products]','Products','','publish','closed','closed','','products','','','2021-01-12 13:18:04','2021-01-12 13:18:04','',0,'http://localhost:10016/products/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2021-01-12 13:30:52','2021-01-12 13:30:52','[wcmp_vendor]','Vendor Dashboard','','publish','closed','closed','','dashboard','','','2021-01-12 13:30:52','2021-01-12 13:30:52','',0,'http://localhost:10016/dashboard/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2021-01-12 13:30:53','2021-01-12 13:30:53','[vendor_registration]','Vendor Registration','','publish','closed','closed','','vendor-registration','','','2021-01-12 13:30:53','2021-01-12 13:30:53','',0,'http://localhost:10016/vendor-registration/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2021-01-13 15:59:47','2021-01-13 15:59:47','','montpellier','','publish','closed','closed','','montpellier','','','2021-01-13 15:59:48','2021-01-13 15:59:48','',0,'http://localhost:10016/?post_type=ville&#038;p=126',0,'ville','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2021-01-13 16:00:57','2021-01-13 16:00:57','<!-- wp:paragraph -->\n<p>fgd fg trt dfgdf jkuit sdfsdf hola gola</p>\n<!-- /wp:paragraph -->','Brad boutique','','publish','open','closed','','brad-boutique','','','2021-01-13 16:02:19','2021-01-13 16:02:19','',0,'http://localhost:10016/?post_type=store&#038;p=127',0,'store','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2021-01-13 16:01:57','2021-01-13 16:01:57','<!-- wp:paragraph -->\n<p>The is a now a new mcdonalds in moscow for you and for me guys</p>\n<!-- /wp:paragraph -->','Mcdonalds','','publish','open','closed','','mcdonalds','','','2021-01-13 16:01:58','2021-01-13 16:01:58','',0,'http://localhost:10016/?post_type=store&#038;p=128',0,'store','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2021-01-13 16:02:58','2021-01-13 16:02:58','<!-- wp:paragraph -->\n<p>Gorbachev was destituted with a coup after the kgb decided not to follow the guy anymore, so you can see</p>\n<!-- /wp:paragraph -->','A good old coup','','publish','open','closed','','a-good-old-coup','','','2021-01-13 19:30:19','2021-01-13 19:30:19','',0,'http://localhost:10016/?post_type=store&#038;p=129',0,'store','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2021-01-13 16:03:43','2021-01-13 16:03:43','<!-- wp:paragraph -->\n<p>There is a new guy in town that you will see in the next days</p>\n<!-- /wp:paragraph -->','The new guy in town','','publish','open','closed','','the-new-guy-in-town','','','2021-01-13 19:30:03','2021-01-13 19:30:03','',0,'http://localhost:10016/?post_type=store&#038;p=130',0,'store','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2021-01-13 16:03:57','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2021-01-13 16:03:57','0000-00-00 00:00:00','',0,'http://localhost:10016/?post_type=store&p=131',0,'store','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2021-01-13 16:04:37','2021-01-13 16:04:37','<!-- wp:paragraph -->\n<p>This yt channel is something very weird but very nice with all these changes happening</p>\n<!-- /wp:paragraph -->','This youtube channel','','publish','open','closed','','this-youtube-channel','','','2021-01-13 19:29:44','2021-01-13 19:29:44','',0,'http://localhost:10016/?post_type=store&#038;p=132',0,'store','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2021-01-13 19:28:13','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-01-13 19:28:13','0000-00-00 00:00:00','',0,'http://localhost:10016/?p=133',0,'post','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2021-01-16 19:04:22','2021-01-16 19:04:22','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Store subtitle','store_subtitle','publish','closed','closed','','field_6003336206f88','','','2021-01-16 19:04:22','2021-01-16 19:04:22','',115,'http://localhost:10016/?post_type=acf-field&p=134',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (135,1,'2021-01-16 19:04:23','2021-01-16 19:04:23','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Store region','store_region','publish','closed','closed','','field_6003336906f89','','','2021-01-16 19:04:23','2021-01-16 19:04:23','',115,'http://localhost:10016/?post_type=acf-field&p=135',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (136,1,'2021-01-16 19:04:24','2021-01-16 19:04:24','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:18:\"to show a friperie\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:8:\"friperie\";s:8:\"friperie\";s:12:\"ressourcerie\";s:12:\"ressourcerie\";s:13:\"dépôt-vente\";s:13:\"dépôt-vente\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Store type','Store_type','publish','closed','closed','','field_6003338906f8a','','','2021-01-16 19:04:24','2021-01-16 19:04:24','',115,'http://localhost:10016/?post_type=acf-field&p=136',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (137,1,'2021-01-16 19:04:24','2021-01-16 19:04:24','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:5:\"Femme\";s:5:\"Femme\";s:5:\"Homme\";s:5:\"Homme\";s:14:\"Femme et Homme\";s:14:\"Femme et Homme\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Store genre','store_genre','publish','closed','closed','','field_600333e406f8b','','','2021-01-16 19:04:24','2021-01-16 19:04:24','',115,'http://localhost:10016/?post_type=acf-field&p=137',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (138,1,'2021-01-16 19:04:25','2021-01-16 19:04:25','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:3:\"€\";s:3:\"€\";s:6:\"€€\";s:6:\"€€\";s:9:\"€€€\";s:9:\"€€€\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Store prix','store_prix','publish','closed','closed','','field_600333f306f8c','','','2021-01-16 19:04:25','2021-01-16 19:04:25','',115,'http://localhost:10016/?post_type=acf-field&p=138',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2021-01-16 19:04:25','2021-01-16 19:04:25','a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:20:\"Casual/Décontracté\";s:20:\"Casual/Décontracté\";s:9:\"Classique\";s:9:\"Classique\";s:4:\"Luxe\";s:4:\"Luxe\";s:7:\"Vintage\";s:7:\"Vintage\";s:13:\"Street/Sports\";s:13:\"Street/Sports\";s:18:\"Gothic/Underground\";s:18:\"Gothic/Underground\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}','Store Style','store_style','publish','closed','closed','','field_6003340b06f8d','','','2021-01-16 19:04:25','2021-01-16 19:04:25','',115,'http://localhost:10016/?post_type=acf-field&p=139',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2021-01-16 19:04:26','2021-01-16 19:04:26','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store address','store_address','publish','closed','closed','','field_6003343906f8e','','','2021-01-16 19:04:26','2021-01-16 19:04:26','',115,'http://localhost:10016/?post_type=acf-field&p=140',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (141,1,'2021-01-16 19:04:26','2021-01-16 19:04:26','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store schedule lundi','store_schedule_lundi','publish','closed','closed','','field_6003344306f8f','','','2021-01-16 19:04:26','2021-01-16 19:04:26','',115,'http://localhost:10016/?post_type=acf-field&p=141',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2021-01-16 19:04:27','2021-01-16 19:04:27','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store schedule mardi','store_schedule_mardi','publish','closed','closed','','field_600334d906f90','','','2021-01-16 19:04:27','2021-01-16 19:04:27','',115,'http://localhost:10016/?post_type=acf-field&p=142',10,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (143,1,'2021-01-16 19:04:27','2021-01-16 19:04:27','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store schedule mercredi','store_schedule_mercredi','publish','closed','closed','','field_600334e406f91','','','2021-01-16 19:04:27','2021-01-16 19:04:27','',115,'http://localhost:10016/?post_type=acf-field&p=143',11,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (144,1,'2021-01-16 19:04:28','2021-01-16 19:04:28','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store schedule jeudi','store_schedule_jeudi','publish','closed','closed','','field_600334f106f92','','','2021-01-16 19:04:28','2021-01-16 19:04:28','',115,'http://localhost:10016/?post_type=acf-field&p=144',12,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (145,1,'2021-01-16 19:04:28','2021-01-16 19:04:28','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store schedule vendredi','store_schedule_vendredi','publish','closed','closed','','field_6003350a06f93','','','2021-01-16 19:04:28','2021-01-16 19:04:28','',115,'http://localhost:10016/?post_type=acf-field&p=145',13,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (146,1,'2021-01-16 19:04:29','2021-01-16 19:04:29','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store schedule samedi','store_schedule_samedi','publish','closed','closed','','field_6003351506f94','','','2021-01-16 19:04:29','2021-01-16 19:04:29','',115,'http://localhost:10016/?post_type=acf-field&p=146',14,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (147,1,'2021-01-16 19:04:29','2021-01-16 19:04:29','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store schedule dimanche','store_schedule_dimanche','publish','closed','closed','','field_6003352006f95','','','2021-01-16 19:04:29','2021-01-16 19:04:29','',115,'http://localhost:10016/?post_type=acf-field&p=147',15,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (148,1,'2021-01-16 19:04:30','2021-01-16 19:04:30','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store city','store_city','publish','closed','closed','','field_6003353406f96','','','2021-01-16 19:04:30','2021-01-16 19:04:30','',115,'http://localhost:10016/?post_type=acf-field&p=148',16,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (149,1,'2021-01-16 19:04:30','2021-01-16 19:04:30','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store email','store_email','publish','closed','closed','','field_6003357806f97','','','2021-01-16 19:04:30','2021-01-16 19:04:30','',115,'http://localhost:10016/?post_type=acf-field&p=149',17,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (150,1,'2021-01-16 19:04:31','2021-01-16 19:04:31','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store phone','store_phone','publish','closed','closed','','field_6003358b06f98','','','2021-01-16 19:04:31','2021-01-16 19:04:31','',115,'http://localhost:10016/?post_type=acf-field&p=150',18,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (151,1,'2021-01-16 19:04:31','2021-01-16 19:04:31','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store url','store_url','publish','closed','closed','','field_6003359f06f99','','','2021-01-16 19:04:31','2021-01-16 19:04:31','',115,'http://localhost:10016/?post_type=acf-field&p=151',19,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (152,1,'2021-01-16 19:04:31','2021-01-16 19:04:31','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store facebook','store_facebook','publish','closed','closed','','field_600335a506f9a','','','2021-01-16 19:04:31','2021-01-16 19:04:31','',115,'http://localhost:10016/?post_type=acf-field&p=152',20,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (153,1,'2021-01-16 19:04:32','2021-01-16 19:04:32','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','store instagram','store_instagram','publish','closed','closed','','field_600335d006f9b','','','2021-01-16 19:04:32','2021-01-16 19:04:32','',115,'http://localhost:10016/?post_type=acf-field&p=153',21,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (154,1,'2021-01-16 19:04:32','2021-01-16 19:04:32','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','ville banner','ville_banner','publish','closed','closed','','field_600335d306f9c','','','2021-01-16 19:04:32','2021-01-16 19:04:32','',115,'http://localhost:10016/?post_type=acf-field&p=154',22,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (155,1,'2021-01-16 19:04:33','2021-01-16 19:04:33','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','store logo','store_logo','publish','closed','closed','','field_6003368906f9d','','','2021-01-16 19:04:33','2021-01-16 19:04:33','',115,'http://localhost:10016/?post_type=acf-field&p=155',23,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (156,1,'2021-01-16 19:04:33','2021-01-16 19:04:33','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:13:\"Non-specified\";s:13:\"Non-specified\";s:4:\"Paid\";s:4:\"Paid\";s:8:\"Non-paid\";s:8:\"Non-paid\";}s:13:\"default_value\";s:8:\"Non-paid\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','store client type','store_client_type','publish','closed','closed','','field_600336d206f9e','','','2021-01-16 19:04:33','2021-01-16 19:04:33','',115,'http://localhost:10016/?post_type=acf-field&p=156',24,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (157,1,'2021-01-16 19:04:34','2021-01-16 19:04:34','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_600336d206f9e\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"Paid\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:11:\"a - No Plan\";s:11:\"a - No Plan\";s:16:\"b - Pack soutien\";s:16:\"b - Pack soutien\";s:19:\"c - Pack partenaire\";s:19:\"c - Pack partenaire\";s:16:\"d - Pack complet\";s:16:\"d - Pack complet\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','store client type plan','store_client_type_plan','publish','closed','closed','','field_6003376e06f9f','','','2021-01-16 19:04:34','2021-01-16 19:04:34','',115,'http://localhost:10016/?post_type=acf-field&p=157',25,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (158,1,'2021-01-16 19:04:35','2021-01-16 19:04:35','a:7:{s:4:\"type\";s:6:\"oembed\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_600336d206f9e\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"Paid\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','store video','store_video','publish','closed','closed','','field_600337a306fa0','','','2021-01-16 19:04:35','2021-01-16 19:04:35','',115,'http://localhost:10016/?post_type=acf-field&p=158',26,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (159,1,'2021-01-16 19:04:35','2021-01-16 19:04:35','a:20:{s:4:\"type\";s:20:\"justified_image_grid\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:12:\"preview_size\";s:9:\"thumbnail\";s:10:\"row_height\";i:120;s:14:\"max_row_height\";i:0;s:7:\"lastrow\";s:9:\"nojustify\";s:12:\"fixed_height\";s:5:\"false\";s:13:\"show_captions\";s:4:\"true\";s:6:\"margin\";i:5;s:6:\"border\";i:0;s:9:\"backcolor\";s:0:\"\";s:9:\"randomize\";s:5:\"false\";s:11:\"image_sizes\";s:0:\"\";s:8:\"swipebox\";s:3:\"yes\";s:7:\"library\";s:3:\"all\";}','lookbook','lookbook','publish','closed','closed','','field_600337d206fa1','','','2021-01-16 19:09:04','2021-01-16 19:09:04','',115,'http://localhost:10016/?post_type=acf-field&#038;p=159',27,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (160,1,'2021-01-16 19:04:36','2021-01-16 19:04:36','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:3:\"Non\";s:3:\"Non\";s:3:\"Oui\";s:3:\"Oui\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','store boutique online','store_boutique_online','publish','closed','closed','','field_6003387e06fa2','','','2021-01-16 19:04:36','2021-01-16 19:04:36','',115,'http://localhost:10016/?post_type=acf-field&p=160',28,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (162,1,'2021-01-16 19:06:36','2021-01-16 19:06:36','{{unknown}}','','','publish','closed','closed','','968eef19ae7d7f716eab001c34ffdd8e','','','2021-01-16 19:06:36','2021-01-16 19:06:36','',0,'http://localhost:10016/968eef19ae7d7f716eab001c34ffdd8e/',0,'oembed_cache','',0);
INSERT INTO `wp_posts` VALUES (163,1,'2021-01-16 22:39:59','2021-01-16 22:39:59','<!-- wp:paragraph -->\n<p>arriba hombre vamos  arriba hombre vamos arriba hombre vamos arriba hombre vamos arriba hombre vamos arriba hombre vamos arriba hombre vamos arriba hombre vamos arriba hombre vamos arriba hombre vamos arriba hombre vamosarriba hombre vamosarriba hombre vamos</p>\n<!-- /wp:paragraph -->','Nuevo','','inherit','closed','closed','','53-revision-v1','','','2021-01-16 22:39:59','2021-01-16 22:39:59','',53,'http://localhost:10016/53-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (164,1,'2021-01-17 20:52:00','2021-01-17 20:52:00','','map','','publish','closed','closed','','map','','','2021-01-17 20:52:01','2021-01-17 20:52:01','',0,'http://localhost:10016/?page_id=164',0,'page','',0);
INSERT INTO `wp_posts` VALUES (165,1,'2021-01-17 20:52:00','2021-01-17 20:52:00','','map','','inherit','closed','closed','','164-revision-v1','','','2021-01-17 20:52:00','2021-01-17 20:52:00','',164,'http://localhost:10016/164-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_simply_static_pages`
--

DROP TABLE IF EXISTS `wp_simply_static_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_simply_static_pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `found_on_id` bigint(20) unsigned DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `redirect_url` text COLLATE utf8mb4_unicode_520_ci,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `http_status_code` smallint(20) DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `content_hash` binary(20) DEFAULT NULL,
  `error_message` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status_message` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `last_checked_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_transferred_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  KEY `last_checked_at` (`last_checked_at`),
  KEY `last_modified_at` (`last_modified_at`),
  KEY `last_transferred_at` (`last_transferred_at`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_simply_static_pages`
--

LOCK TABLES `wp_simply_static_pages` WRITE;
/*!40000 ALTER TABLE `wp_simply_static_pages` DISABLE KEYS */;
INSERT INTO `wp_simply_static_pages` VALUES (44,0,'http://localhost:10016/',NULL,NULL,NULL,NULL,NULL,'An error occurred: cURL error 28: Operation timed out after 30000 milliseconds with 0 bytes received','Origin URL','2020-12-30 14:33:58','0000-00-00 00:00:00','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:34:28');
INSERT INTO `wp_simply_static_pages` VALUES (45,0,'http://localhost:10016/',NULL,NULL,NULL,NULL,NULL,'An error occurred: cURL error 28: Operation timed out after 30001 milliseconds with 0 bytes received','Origin URL','2020-12-30 14:34:28','0000-00-00 00:00:00','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:34:58');
INSERT INTO `wp_simply_static_pages` VALUES (46,0,'http://localhost:10016/wp-includes/js/wp-emoji-release.min.js',NULL,'/wp-includes/js/wp-emoji-release.min.js',200,'application/x-javascript',_binary '80b17d30a5e36f28c203',NULL,'Additional URL','2020-12-30 14:34:58','2020-12-30 14:34:59','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:34:59');
INSERT INTO `wp_simply_static_pages` VALUES (47,0,'http://localhost:10016/wp-includes/js/wp-emoji-release.min.js',NULL,'/wp-includes/js/wp-emoji-release.min.js',200,'application/x-javascript',_binary '80b17d30a5e36f28c203',NULL,'Additional URL','2020-12-30 14:34:59','2020-12-30 14:34:59','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:34:59');
INSERT INTO `wp_simply_static_pages` VALUES (48,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-log3-150x150.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-log3-150x150.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:34:59','2020-12-30 14:34:59','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:34:59');
INSERT INTO `wp_simply_static_pages` VALUES (49,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-log3-150x150.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-log3-150x150.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:34:59','2020-12-30 14:35:00','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:35:00');
INSERT INTO `wp_simply_static_pages` VALUES (50,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-log3-180x180.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-log3-180x180.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:00','2020-12-30 14:35:00','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:35:00');
INSERT INTO `wp_simply_static_pages` VALUES (51,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-log3-180x180.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-log3-180x180.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:00','2020-12-30 14:35:01','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:35:01');
INSERT INTO `wp_simply_static_pages` VALUES (52,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-log3-192x192.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-log3-192x192.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:01','2020-12-30 14:35:01','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:35:01');
INSERT INTO `wp_simply_static_pages` VALUES (53,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-log3-192x192.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-log3-192x192.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:01','2020-12-30 14:35:01','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:35:01');
INSERT INTO `wp_simply_static_pages` VALUES (54,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-log3-270x270.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-log3-270x270.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:04','2020-12-30 14:35:04','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:35:04');
INSERT INTO `wp_simply_static_pages` VALUES (55,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-log3-270x270.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-log3-270x270.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:04','2020-12-30 14:35:05','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:35:05');
INSERT INTO `wp_simply_static_pages` VALUES (56,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-log3-300x300.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-log3-300x300.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:05','2020-12-30 14:35:05','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:35:05');
INSERT INTO `wp_simply_static_pages` VALUES (57,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-log3-300x300.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-log3-300x300.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:05','2020-12-30 14:35:06','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:35:06');
INSERT INTO `wp_simply_static_pages` VALUES (58,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-log3-32x32.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-log3-32x32.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:06','2020-12-30 14:35:06','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:35:06');
INSERT INTO `wp_simply_static_pages` VALUES (59,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-log3-32x32.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-log3-32x32.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:06','2020-12-30 14:35:07','0000-00-00 00:00:00','2020-12-30 14:33:56','2020-12-30 14:35:07');
INSERT INTO `wp_simply_static_pages` VALUES (60,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-log3.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-log3.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:07','2020-12-30 14:35:07','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:07');
INSERT INTO `wp_simply_static_pages` VALUES (61,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-log3.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-log3.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:07','2020-12-30 14:35:07','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:07');
INSERT INTO `wp_simply_static_pages` VALUES (62,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-newlague-150x150.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-newlague-150x150.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:07','2020-12-30 14:35:08','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:08');
INSERT INTO `wp_simply_static_pages` VALUES (63,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-newlague-150x150.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-newlague-150x150.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:08','2020-12-30 14:35:08','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:08');
INSERT INTO `wp_simply_static_pages` VALUES (64,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-newlague-180x180.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-newlague-180x180.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:08','2020-12-30 14:35:09','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:09');
INSERT INTO `wp_simply_static_pages` VALUES (65,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-newlague-180x180.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-newlague-180x180.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:09','2020-12-30 14:35:09','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:09');
INSERT INTO `wp_simply_static_pages` VALUES (66,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-newlague-192x192.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-newlague-192x192.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:09','2020-12-30 14:35:09','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:09');
INSERT INTO `wp_simply_static_pages` VALUES (67,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-newlague-192x192.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-newlague-192x192.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:10','2020-12-30 14:35:10','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:10');
INSERT INTO `wp_simply_static_pages` VALUES (68,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-newlague-270x270.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-newlague-270x270.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:10','2020-12-30 14:35:10','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:10');
INSERT INTO `wp_simply_static_pages` VALUES (69,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-newlague-270x270.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-newlague-270x270.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:10','2020-12-30 14:35:11','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:11');
INSERT INTO `wp_simply_static_pages` VALUES (70,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-newlague-300x300.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-newlague-300x300.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:11','2020-12-30 14:35:11','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:11');
INSERT INTO `wp_simply_static_pages` VALUES (71,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-newlague-300x300.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-newlague-300x300.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:11','2020-12-30 14:35:11','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:11');
INSERT INTO `wp_simply_static_pages` VALUES (72,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-newlague-32x32.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-newlague-32x32.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:12','2020-12-30 14:35:12','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:12');
INSERT INTO `wp_simply_static_pages` VALUES (73,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-newlague-32x32.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-newlague-32x32.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:12','2020-12-30 14:35:12','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:12');
INSERT INTO `wp_simply_static_pages` VALUES (74,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-newlague.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-newlague.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:13','2020-12-30 14:35:13','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:13');
INSERT INTO `wp_simply_static_pages` VALUES (75,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\cropped-newlague.png',NULL,'/wp-content/uploads\\2020\\12\\cropped-newlague.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:13','2020-12-30 14:35:13','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:13');
INSERT INTO `wp_simply_static_pages` VALUES (76,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\log3-150x150.png',NULL,'/wp-content/uploads\\2020\\12\\log3-150x150.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:13','2020-12-30 14:35:14','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:14');
INSERT INTO `wp_simply_static_pages` VALUES (77,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\log3-150x150.png',NULL,'/wp-content/uploads\\2020\\12\\log3-150x150.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:14','2020-12-30 14:35:14','0000-00-00 00:00:00','2020-12-30 14:33:57','2020-12-30 14:35:14');
INSERT INTO `wp_simply_static_pages` VALUES (78,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\log3-300x132.png',NULL,'/wp-content/uploads\\2020\\12\\log3-300x132.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:14','2020-12-30 14:35:15','0000-00-00 00:00:00','2020-12-30 14:33:58','2020-12-30 14:35:15');
INSERT INTO `wp_simply_static_pages` VALUES (79,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\log3-300x132.png',NULL,'/wp-content/uploads\\2020\\12\\log3-300x132.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:15','2020-12-30 14:35:15','0000-00-00 00:00:00','2020-12-30 14:33:58','2020-12-30 14:35:15');
INSERT INTO `wp_simply_static_pages` VALUES (80,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\log3.png',NULL,'/wp-content/uploads\\2020\\12\\log3.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:15','2020-12-30 14:35:15','0000-00-00 00:00:00','2020-12-30 14:33:58','2020-12-30 14:35:15');
INSERT INTO `wp_simply_static_pages` VALUES (81,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\log3.png',NULL,'/wp-content/uploads\\2020\\12\\log3.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:16','2020-12-30 14:35:16','0000-00-00 00:00:00','2020-12-30 14:33:58','2020-12-30 14:35:16');
INSERT INTO `wp_simply_static_pages` VALUES (82,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\newlague-150x150.png',NULL,'/wp-content/uploads\\2020\\12\\newlague-150x150.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:16','2020-12-30 14:35:16','0000-00-00 00:00:00','2020-12-30 14:33:58','2020-12-30 14:35:16');
INSERT INTO `wp_simply_static_pages` VALUES (83,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\newlague-150x150.png',NULL,'/wp-content/uploads\\2020\\12\\newlague-150x150.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:16','2020-12-30 14:35:17','0000-00-00 00:00:00','2020-12-30 14:33:58','2020-12-30 14:35:17');
INSERT INTO `wp_simply_static_pages` VALUES (84,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\newlague-300x300.png',NULL,'/wp-content/uploads\\2020\\12\\newlague-300x300.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:17','2020-12-30 14:35:17','0000-00-00 00:00:00','2020-12-30 14:33:58','2020-12-30 14:35:17');
INSERT INTO `wp_simply_static_pages` VALUES (85,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\newlague-300x300.png',NULL,'/wp-content/uploads\\2020\\12\\newlague-300x300.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:17','2020-12-30 14:35:18','0000-00-00 00:00:00','2020-12-30 14:33:58','2020-12-30 14:35:18');
INSERT INTO `wp_simply_static_pages` VALUES (86,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\newlague.png',NULL,'/wp-content/uploads\\2020\\12\\newlague.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:18','2020-12-30 14:35:18','0000-00-00 00:00:00','2020-12-30 14:33:58','2020-12-30 14:35:18');
INSERT INTO `wp_simply_static_pages` VALUES (87,0,'http://localhost:10016/wp-content/uploads\\2020\\12\\newlague.png',NULL,'/wp-content/uploads\\2020\\12\\newlague.png',200,'image/png',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'Additional Dir','2020-12-30 14:35:18','2020-12-30 14:35:19','0000-00-00 00:00:00','2020-12-30 14:33:58','2020-12-30 14:35:19');
/*!40000 ALTER TABLE `wp_simply_static_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (24,2,0);
INSERT INTO `wp_term_relationships` VALUES (25,2,0);
INSERT INTO `wp_term_relationships` VALUES (26,2,0);
INSERT INTO `wp_term_relationships` VALUES (27,2,0);
INSERT INTO `wp_term_relationships` VALUES (47,1,0);
INSERT INTO `wp_term_relationships` VALUES (49,1,0);
INSERT INTO `wp_term_relationships` VALUES (51,1,0);
INSERT INTO `wp_term_relationships` VALUES (53,1,0);
INSERT INTO `wp_term_relationships` VALUES (55,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Header Menu','header-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Footer Menu','footer-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','cheo');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"6335b876d9089be8c1e6196858587a2b642179cfe6a4e99783eae133e9bc2769\";a:4:{s:10:\"expiration\";i:1610993577;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1610820777;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_user-settings','libraryContent=browse&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=479px&edit_element_vcUIPanelTop=76px&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings-time','1607621989');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_dashboard_quick_press_last_post_id','133');
INSERT INTO `wp_usermeta` VALUES (20,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_yoast_notifications','a:3:{i:0;a:2:{s:7:\"message\";O:61:\"Yoast\\WP\\SEO\\Presenters\\Admin\\Indexing_Notification_Presenter\":3:{s:18:\"\0*\0total_unindexed\";i:101;s:9:\"\0*\0reason\";s:13:\"first_install\";s:20:\"\0*\0short_link_helper\";O:38:\"Yoast\\WP\\SEO\\Helpers\\Short_Link_Helper\":2:{s:17:\"\0*\0options_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Options_Helper\":0:{}s:17:\"\0*\0product_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Product_Helper\":0:{}}}s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:4:\"cheo\";s:9:\"user_pass\";s:34:\"$P$BksImscfvAQVC7WDdezHef81Kx86QL0\";s:13:\"user_nicename\";s:4:\"cheo\";s:10:\"user_email\";s:24:\"dev-email@flywheel.local\";s:8:\"user_url\";s:22:\"http://localhost:10016\";s:15:\"user_registered\";s:19:\"2020-12-09 10:11:48\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:4:\"cheo\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.80000000000000004;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:590:\"<strong>New in Yoast SEO 15.6: </strong>In the latest version of Yoast SEO, you’ll find a number of bug fixes and performance enhancements. And install the free Yoast Duplicate Post plugin to unlock the Rewrite & Republish feature, offering you the possibility to update a post/page without taking it offline or having to take extra steps! <a href=\"https://yoa.st/yoast15-6?php_version=7.3&#038;platform=wordpress&#038;platform_version=5.6&#038;software=free&#038;software_version=15.6.1&#038;days_active=6-30&#038;user_language=en_US\" target=\"_blank\">Read all about version 15.6 here</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"updated\";s:2:\"id\";s:20:\"wpseo-plugin-updated\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:4:\"cheo\";s:9:\"user_pass\";s:34:\"$P$BksImscfvAQVC7WDdezHef81Kx86QL0\";s:13:\"user_nicename\";s:4:\"cheo\";s:10:\"user_email\";s:24:\"dev-email@flywheel.local\";s:8:\"user_url\";s:22:\"http://localhost:10016\";s:15:\"user_registered\";s:19:\"2020-12-09 10:11:48\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:4:\"cheo\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:1:{s:13:\"dismiss_value\";s:6:\"15.6.1\";}s:13:\"dismissal_key\";s:20:\"wpseo-plugin-updated\";s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:428:\"Yoast SEO and WooCommerce can work together a lot better by adding a helper plugin. Please install Yoast WooCommerce SEO to make your life better. <a href=\"https://yoa.st/1o0?php_version=7.3&platform=wordpress&platform_version=5.6&software=free&software_version=15.6.1&days_active=6-30&user_language=en_US\" aria-label=\"More information about Yoast WooCommerce SEO\" target=\"_blank\" rel=\"noopener noreferrer\">More information</a>.\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:44:\"wpseo-suggested-plugin-yoast-woocommerce-seo\";s:4:\"user\";r:108;s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');
INSERT INTO `wp_usermeta` VALUES (25,1,'enable_custom_fields','1');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'cheo','$P$BksImscfvAQVC7WDdezHef81Kx86QL0','cheo','dev-email@flywheel.local','http://localhost:10016','2020-12-09 10:11:48','',0,'cheo');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wcmp_cust_answers`
--

DROP TABLE IF EXISTS `wp_wcmp_cust_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wcmp_cust_answers` (
  `ans_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ques_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ans_details` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ans_by` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ans_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ans_vote` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`ans_ID`),
  UNIQUE KEY `ques_id` (`ques_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wcmp_cust_answers`
--

LOCK TABLES `wp_wcmp_cust_answers` WRITE;
/*!40000 ALTER TABLE `wp_wcmp_cust_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wcmp_cust_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wcmp_cust_questions`
--

DROP TABLE IF EXISTS `wp_wcmp_cust_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wcmp_cust_questions` (
  `ques_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ques_details` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ques_by` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ques_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ques_vote` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`ques_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wcmp_cust_questions`
--

LOCK TABLES `wp_wcmp_cust_questions` WRITE;
/*!40000 ALTER TABLE `wp_wcmp_cust_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wcmp_cust_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wcmp_products_map`
--

DROP TABLE IF EXISTS `wp_wcmp_products_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wcmp_products_map` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_map_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `product_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wcmp_products_map`
--

LOCK TABLES `wp_wcmp_products_map` WRITE;
/*!40000 ALTER TABLE `wp_wcmp_products_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wcmp_products_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wcmp_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_wcmp_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wcmp_shipping_zone_locations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `location_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wcmp_shipping_zone_locations`
--

LOCK TABLES `wp_wcmp_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_wcmp_shipping_zone_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wcmp_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wcmp_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_wcmp_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wcmp_shipping_zone_methods` (
  `instance_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `zone_id` int(11) unsigned NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `settings` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wcmp_shipping_zone_methods`
--

LOCK TABLES `wp_wcmp_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_wcmp_shipping_zone_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wcmp_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wcmp_vendor_ledger`
--

DROP TABLE IF EXISTS `wp_wcmp_vendor_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wcmp_vendor_ledger` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `ref_id` bigint(20) NOT NULL,
  `ref_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ref_info` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ref_status` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ref_updated` timestamp NULL DEFAULT NULL,
  `credit` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `debit` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `balance` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wcmp_vendor_ledger`
--

LOCK TABLES `wp_wcmp_vendor_ledger` WRITE;
/*!40000 ALTER TABLE `wp_wcmp_vendor_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wcmp_vendor_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wcmp_vendor_orders`
--

DROP TABLE IF EXISTS `wp_wcmp_vendor_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wcmp_vendor_orders` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `commission_id` bigint(20) NOT NULL,
  `commission_status` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'unpaid',
  `commission_paid_date` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `shipping_status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `line_item_type` longtext COLLATE utf8mb4_unicode_520_ci,
  `product_id` bigint(20) NOT NULL,
  `variation_id` bigint(20) NOT NULL DEFAULT '0',
  `quantity` bigint(20) NOT NULL DEFAULT '1',
  `commission_amount` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `shipping_tax_amount` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `is_trashed` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `vendor_orders` (`order_id`,`vendor_id`,`commission_id`,`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wcmp_vendor_orders`
--

LOCK TABLES `wp_wcmp_vendor_orders` WRITE;
/*!40000 ALTER TABLE `wp_wcmp_vendor_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wcmp_vendor_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wcmp_visitors_stats`
--

DROP TABLE IF EXISTS `wp_wcmp_visitors_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wcmp_visitors_stats` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_cookie` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lat` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lon` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionCode` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `region` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `countryCode` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `country` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `isp` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `visitor` (`vendor_id`,`session_id`),
  KEY `vendor_id` (`vendor_id`),
  KEY `user_id` (`user_id`),
  KEY `user_cookie` (`user_cookie`(191)),
  KEY `session_id` (`session_id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wcmp_visitors_stats`
--

LOCK TABLES `wp_wcmp_visitors_stats` WRITE;
/*!40000 ALTER TABLE `wp_wcmp_visitors_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wcmp_visitors_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable`
--

LOCK TABLES `wp_yoast_indexable` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable` VALUES (1,'http://localhost:10016/dashboard/','33:5a090a656f444c1f15bdc404f7722dd1',124,'post','page',1,0,NULL,NULL,'Vendor Dashboard','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-12 13:30:53','2021-01-12 12:30:53',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (2,'http://localhost:10016/vendor-registration/','43:fd849a10f6d12dc30edf491cfbc5a9f7',125,'post','page',1,0,NULL,NULL,'Vendor Registration','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-12 13:30:53','2021-01-12 12:30:53',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (3,'http://localhost:10016/ville/montpellier/','41:9bdb1c1d7f971881ec0fef34123e5d2d',126,'post','ville',1,0,NULL,NULL,'montpellier','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-13 15:59:29','2021-01-13 14:59:48',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (4,'http://localhost:10016/store/brad-boutique/','43:4a73c99660e464e09a058abdc263cc9f',127,'post','store',1,0,NULL,NULL,'Brad boutique','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,60,0,NULL,0,NULL,NULL,NULL,NULL,'http://localhost:10016/wp-content/uploads/2021/01/BRAD-1024x765-1.jpg',NULL,'73','featured-image',NULL,NULL,'http://localhost:10016/wp-content/uploads/2021/01/BRAD-1024x765-1.jpg','73','featured-image','{\n    \"width\": 1024,\n    \"height\": 765,\n    \"url\": \"http://localhost:10016/wp-content/uploads/2021/01/BRAD-1024x765-1.jpg\",\n    \"path\": \"C:\\\\Users\\\\cheonew\\\\Local Sites\\\\amptest\\\\app\\\\public/wp-content/uploads/2021/01/BRAD-1024x765-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 73,\n    \"alt\": \"\",\n    \"pixels\": 783360,\n    \"type\": \"image/jpeg\"\n}',0,NULL,NULL,'2021-01-13 15:59:59','2021-01-13 15:02:19',1,NULL,NULL,NULL,NULL,0,1);
INSERT INTO `wp_yoast_indexable` VALUES (5,'http://localhost:10016/store/mcdonalds/','39:c677b3a5dfe3915da5865812a4be8bc2',128,'post','store',1,0,NULL,NULL,'Mcdonalds','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,90,0,NULL,0,NULL,NULL,NULL,NULL,'http://localhost:10016/wp-content/uploads/2021/01/IMG_2690-scaled.jpg',NULL,'76','featured-image',NULL,NULL,'http://localhost:10016/wp-content/uploads/2021/01/IMG_2690-scaled.jpg','76','featured-image','{\n    \"width\": 2560,\n    \"height\": 1707,\n    \"url\": \"http://localhost:10016/wp-content/uploads/2021/01/IMG_2690-scaled.jpg\",\n    \"path\": \"C:\\\\Users\\\\cheonew\\\\Local Sites\\\\amptest\\\\app\\\\public/wp-content/uploads/2021/01/IMG_2690-scaled.jpg\",\n    \"size\": \"full\",\n    \"id\": 76,\n    \"alt\": \"\",\n    \"pixels\": 4369920,\n    \"type\": \"image/jpeg\"\n}',0,NULL,NULL,'2021-01-13 16:01:09','2021-01-13 15:01:58',1,NULL,NULL,NULL,NULL,0,1);
INSERT INTO `wp_yoast_indexable` VALUES (6,'http://localhost:10016/store/a-good-old-coup/','45:403a0e6a1190c8a15305d8eec8f4041a',129,'post','store',1,0,NULL,NULL,'A good old coup','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,60,0,NULL,0,NULL,NULL,NULL,NULL,'http://localhost:10016/wp-content/uploads/2021/01/Friperie-Lee-Berthy-1-Montpellier.jpeg',NULL,'60','featured-image',NULL,NULL,'http://localhost:10016/wp-content/uploads/2021/01/Friperie-Lee-Berthy-1-Montpellier.jpeg','60','featured-image','{\n    \"width\": 427,\n    \"height\": 640,\n    \"url\": \"http://localhost:10016/wp-content/uploads/2021/01/Friperie-Lee-Berthy-1-Montpellier.jpeg\",\n    \"path\": \"C:\\\\Users\\\\cheonew\\\\Local Sites\\\\amptest\\\\app\\\\public/wp-content/uploads/2021/01/Friperie-Lee-Berthy-1-Montpellier.jpeg\",\n    \"size\": \"full\",\n    \"id\": 60,\n    \"alt\": \"\",\n    \"pixels\": 273280,\n    \"type\": \"image/jpeg\"\n}',0,NULL,NULL,'2021-01-13 16:02:24','2021-01-13 18:30:19',1,NULL,NULL,NULL,NULL,0,1);
INSERT INTO `wp_yoast_indexable` VALUES (7,'http://localhost:10016/store/the-new-guy-in-town/','49:dcec43b8e98fb84e2d4c5b517f143150',130,'post','store',1,0,NULL,NULL,'The new guy in town','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,90,0,NULL,0,NULL,NULL,NULL,NULL,'http://localhost:10016/wp-content/uploads/2021/01/bk-img-form.jpg',NULL,'70','featured-image',NULL,NULL,'http://localhost:10016/wp-content/uploads/2021/01/bk-img-form.jpg','70','featured-image','{\n    \"width\": 1920,\n    \"height\": 911,\n    \"url\": \"http://localhost:10016/wp-content/uploads/2021/01/bk-img-form.jpg\",\n    \"path\": \"C:\\\\Users\\\\cheonew\\\\Local Sites\\\\amptest\\\\app\\\\public/wp-content/uploads/2021/01/bk-img-form.jpg\",\n    \"size\": \"full\",\n    \"id\": 70,\n    \"alt\": \"\",\n    \"pixels\": 1749120,\n    \"type\": \"image/jpeg\"\n}',0,NULL,NULL,'2021-01-13 16:03:08','2021-01-13 18:30:04',1,NULL,NULL,NULL,NULL,0,1);
INSERT INTO `wp_yoast_indexable` VALUES (8,'http://localhost:10016/?post_type=store&p=131','45:b4a580515ee9c287a3ccdb4fdc0b6d35',131,'post','store',1,0,NULL,NULL,'Auto Draft','auto-draft',0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-13 16:03:57','2021-01-13 15:03:57',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (9,'http://localhost:10016/store/this-youtube-channel/','50:e40cf8408576fca13592569dd4a6d3e5',132,'post','store',1,0,NULL,NULL,'This youtube channel','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,90,0,NULL,0,NULL,NULL,NULL,NULL,'http://localhost:10016/wp-content/uploads/2021/01/bk-accueil-1-scaled.jpg',NULL,'88','featured-image',NULL,NULL,'http://localhost:10016/wp-content/uploads/2021/01/bk-accueil-1-scaled.jpg','88','featured-image','{\n    \"width\": 2560,\n    \"height\": 1707,\n    \"url\": \"http://localhost:10016/wp-content/uploads/2021/01/bk-accueil-1-scaled.jpg\",\n    \"path\": \"C:\\\\Users\\\\cheonew\\\\Local Sites\\\\amptest\\\\app\\\\public/wp-content/uploads/2021/01/bk-accueil-1-scaled.jpg\",\n    \"size\": \"full\",\n    \"id\": 88,\n    \"alt\": \"\",\n    \"pixels\": 4369920,\n    \"type\": \"image/jpeg\"\n}',0,NULL,NULL,'2021-01-13 16:03:57','2021-01-13 18:29:44',1,NULL,NULL,NULL,NULL,0,1);
INSERT INTO `wp_yoast_indexable` VALUES (10,'http://localhost:10016/?p=133','29:97558f345970f8614dc9fd3515a5a6f4',133,'post','post',1,0,NULL,NULL,'Auto Draft','auto-draft',0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-13 19:28:13','2021-01-13 18:28:13',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (11,'http://localhost:10016/?post_type=acf-field&p=134','49:b79368d35d50679d06be914a9693d798',134,'post','acf-field',1,115,NULL,NULL,'Store subtitle','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:23','2021-01-16 18:04:23',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (12,'http://localhost:10016/?post_type=acf-field&p=135','49:3ec25c719571f9911257e47d78d2026c',135,'post','acf-field',1,115,NULL,NULL,'Store region','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:23','2021-01-16 18:04:23',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (13,'http://localhost:10016/?post_type=acf-field&p=136','49:3821c0be566239d8999e94e8629faca0',136,'post','acf-field',1,115,NULL,NULL,'Store type','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:24','2021-01-16 18:04:24',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (14,'http://localhost:10016/?post_type=acf-field&p=137','49:372bff3d26083008c37ce09120ee3cff',137,'post','acf-field',1,115,NULL,NULL,'Store genre','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:25','2021-01-16 18:04:25',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (15,'http://localhost:10016/?post_type=acf-field&p=138','49:8cb3e07c874bce8ac1652986dcf48d07',138,'post','acf-field',1,115,NULL,NULL,'Store prix','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:25','2021-01-16 18:04:25',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (16,'http://localhost:10016/?post_type=acf-field&p=139','49:1d167f3e1497db1cf9c77939e098a1c8',139,'post','acf-field',1,115,NULL,NULL,'Store Style','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:26','2021-01-16 18:04:26',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (17,'http://localhost:10016/?post_type=acf-field&p=140','49:cdfca6f87842b90b4c14c07d3da1eb28',140,'post','acf-field',1,115,NULL,NULL,'store address','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:26','2021-01-16 18:04:26',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (18,'http://localhost:10016/?post_type=acf-field&p=141','49:1601c71da8cfec5a385c01819f6cd910',141,'post','acf-field',1,115,NULL,NULL,'store schedule lundi','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:26','2021-01-16 18:04:26',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (19,'http://localhost:10016/?post_type=acf-field&p=142','49:2612d7f715e65a0f252d6476e36594ab',142,'post','acf-field',1,115,NULL,NULL,'store schedule mardi','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:27','2021-01-16 18:04:27',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (20,'http://localhost:10016/?post_type=acf-field&p=143','49:f6e4fef2e9701730a0b69ccfbae9458a',143,'post','acf-field',1,115,NULL,NULL,'store schedule mercredi','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:27','2021-01-16 18:04:27',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (21,'http://localhost:10016/?post_type=acf-field&p=144','49:7434864fd65e1e81220e7258b42dc610',144,'post','acf-field',1,115,NULL,NULL,'store schedule jeudi','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:28','2021-01-16 18:04:28',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (22,'http://localhost:10016/?post_type=acf-field&p=145','49:4ca9d3aa553df84289f4dc485f6951c1',145,'post','acf-field',1,115,NULL,NULL,'store schedule vendredi','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:28','2021-01-16 18:04:28',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (23,'http://localhost:10016/?post_type=acf-field&p=146','49:42d858167b12f1541a7ed07b2d3e1db5',146,'post','acf-field',1,115,NULL,NULL,'store schedule samedi','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:29','2021-01-16 18:04:29',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (24,'http://localhost:10016/?post_type=acf-field&p=147','49:f537a40fea5628e663c0ede1377b6954',147,'post','acf-field',1,115,NULL,NULL,'store schedule dimanche','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:29','2021-01-16 18:04:29',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (25,'http://localhost:10016/?post_type=acf-field&p=148','49:b9942074d42d63ab56346599afbc829e',148,'post','acf-field',1,115,NULL,NULL,'store city','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:30','2021-01-16 18:04:30',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (26,'http://localhost:10016/?post_type=acf-field&p=149','49:ac89e3d4a1fd597822f7b8cd845d9d6e',149,'post','acf-field',1,115,NULL,NULL,'store email','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:30','2021-01-16 18:04:30',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (27,'http://localhost:10016/?post_type=acf-field&p=150','49:ba083d8fa4acf060ae6b3cee2b3ff171',150,'post','acf-field',1,115,NULL,NULL,'store phone','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:31','2021-01-16 18:04:31',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (28,'http://localhost:10016/?post_type=acf-field&p=151','49:8f61dc2b8574b02a0e33ef2318457599',151,'post','acf-field',1,115,NULL,NULL,'store url','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:31','2021-01-16 18:04:31',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (29,'http://localhost:10016/?post_type=acf-field&p=152','49:d6347197779b019efa722822e102e031',152,'post','acf-field',1,115,NULL,NULL,'store facebook','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:32','2021-01-16 18:04:32',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (30,'http://localhost:10016/?post_type=acf-field&p=153','49:d78aa9c213fa55a0a6c8bc5bcc4d7ed6',153,'post','acf-field',1,115,NULL,NULL,'store instagram','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:32','2021-01-16 18:04:32',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (31,'http://localhost:10016/?post_type=acf-field&p=154','49:b5d849482e302bde9f38422c8d93fda0',154,'post','acf-field',1,115,NULL,NULL,'ville banner','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:33','2021-01-16 18:04:33',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (32,'http://localhost:10016/?post_type=acf-field&p=155','49:e428d90b7c88a226dcd1ffdcb498a7a7',155,'post','acf-field',1,115,NULL,NULL,'store logo','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:33','2021-01-16 18:04:33',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (33,'http://localhost:10016/?post_type=acf-field&p=156','49:7e74cef6ba47d5fcd723863691aee57a',156,'post','acf-field',1,115,NULL,NULL,'store client type','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:34','2021-01-16 18:04:34',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (34,'http://localhost:10016/?post_type=acf-field&p=157','49:791543d05b5f9988decfe468d2546ec2',157,'post','acf-field',1,115,NULL,NULL,'store client type plan','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:34','2021-01-16 18:04:34',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (35,'http://localhost:10016/?post_type=acf-field&p=158','49:38e2f6bb190de39679c4bbab6329c665',158,'post','acf-field',1,115,NULL,NULL,'store video','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:35','2021-01-16 18:04:35',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (36,'http://localhost:10016/?post_type=acf-field&p=159','49:d31ef48c5ce87ff375d317cdd25b5317',159,'post','acf-field',1,115,NULL,NULL,'lookbook','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:35','2021-01-16 18:09:04',1,NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (37,'http://localhost:10016/?post_type=acf-field&p=160','49:198ff8a5100f6628942fdce34c7e9875',160,'post','acf-field',1,115,NULL,NULL,'store boutique online','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:36','2021-01-16 18:04:36',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (38,'http://localhost:10016/?post_type=acf-field-group&p=115','55:9537d951d01089892de99606c8a7a9b2',115,'post','acf-field-group',1,0,NULL,NULL,'store','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-16 19:04:37','2021-01-16 18:09:04',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (40,'http://localhost:10016/author/cheo/','35:ccd9d327d37d4561afa0f7887823df37',1,'user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'https://0.gravatar.com/avatar/c2b06ae950033b392998ada50767b50e?s=500&d=mm&r=g',NULL,NULL,'gravatar-image',NULL,NULL,'https://0.gravatar.com/avatar/c2b06ae950033b392998ada50767b50e?s=500&d=mm&r=g',NULL,'gravatar-image',NULL,NULL,NULL,NULL,'2021-01-16 19:06:42','2021-01-16 18:06:42',1,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `wp_yoast_indexable` VALUES (41,'http://localhost:10016/nuevo/','29:734c6c87c53c5be10eeec5fe023bff7c',53,'post','post',1,0,NULL,NULL,'Nuevo','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,30,0,NULL,0,NULL,NULL,NULL,NULL,'http://localhost:10016/wp-content/uploads/2020/12/cropped-log3.png',NULL,'9','featured-image',NULL,NULL,'http://localhost:10016/wp-content/uploads/2020/12/cropped-log3.png','9','featured-image','{\n    \"width\": 512,\n    \"height\": 512,\n    \"url\": \"http://localhost:10016/wp-content/uploads/2020/12/cropped-log3.png\",\n    \"path\": \"C:\\\\Users\\\\cheonew\\\\Local Sites\\\\amptest\\\\app\\\\public/wp-content/uploads/2020/12/cropped-log3.png\",\n    \"size\": \"full\",\n    \"id\": 9,\n    \"alt\": \"\",\n    \"pixels\": 262144,\n    \"type\": \"image/png\"\n}',0,NULL,NULL,'2021-01-16 22:40:00','2021-01-16 21:40:03',1,NULL,NULL,NULL,NULL,0,1);
INSERT INTO `wp_yoast_indexable` VALUES (42,'http://localhost:10016/map/','27:aaf0668cee23a80d16c867c578d2d3ec',164,'post','page',1,0,NULL,NULL,'map','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-01-17 20:51:41','2021-01-17 19:52:01',1,NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `wp_yoast_indexable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

LOCK TABLES `wp_yoast_indexable_hierarchy` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (36,38,1,1);
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_migrations`
--

LOCK TABLES `wp_yoast_migrations` WRITE;
/*!40000 ALTER TABLE `wp_yoast_migrations` DISABLE KEYS */;
INSERT INTO `wp_yoast_migrations` VALUES (1,'20171228151840');
INSERT INTO `wp_yoast_migrations` VALUES (2,'20171228151841');
INSERT INTO `wp_yoast_migrations` VALUES (3,'20190529075038');
INSERT INTO `wp_yoast_migrations` VALUES (4,'20191011111109');
INSERT INTO `wp_yoast_migrations` VALUES (5,'20200408101900');
INSERT INTO `wp_yoast_migrations` VALUES (6,'20200420073606');
INSERT INTO `wp_yoast_migrations` VALUES (7,'20200428123747');
INSERT INTO `wp_yoast_migrations` VALUES (8,'20200428194858');
INSERT INTO `wp_yoast_migrations` VALUES (9,'20200429105310');
INSERT INTO `wp_yoast_migrations` VALUES (10,'20200430075614');
INSERT INTO `wp_yoast_migrations` VALUES (11,'20200430150130');
INSERT INTO `wp_yoast_migrations` VALUES (12,'20200507054848');
INSERT INTO `wp_yoast_migrations` VALUES (13,'20200513133401');
INSERT INTO `wp_yoast_migrations` VALUES (14,'20200609154515');
INSERT INTO `wp_yoast_migrations` VALUES (15,'20200616130143');
INSERT INTO `wp_yoast_migrations` VALUES (16,'20200617122511');
INSERT INTO `wp_yoast_migrations` VALUES (17,'20200702141921');
INSERT INTO `wp_yoast_migrations` VALUES (18,'20200728095334');
INSERT INTO `wp_yoast_migrations` VALUES (19,'20201202144329');
INSERT INTO `wp_yoast_migrations` VALUES (20,'20201216124002');
INSERT INTO `wp_yoast_migrations` VALUES (21,'20201216141134');
/*!40000 ALTER TABLE `wp_yoast_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_primary_term`
--

LOCK TABLES `wp_yoast_primary_term` WRITE;
/*!40000 ALTER TABLE `wp_yoast_primary_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_primary_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-17 21:59:19
