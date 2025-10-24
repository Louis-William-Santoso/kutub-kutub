CREATE DATABASE  IF NOT EXISTS `kutube_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `kutube_db`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kutube_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adsense`
--

DROP TABLE IF EXISTS `adsense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adsense` (
  `id_video` int(11) NOT NULL,
  `jumlah_iklan` int(11) NOT NULL,
  PRIMARY KEY (`id_video`),
  CONSTRAINT `fk_adsense_video1` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adsense`
--

LOCK TABLES `adsense` WRITE;
/*!40000 ALTER TABLE `adsense` DISABLE KEYS */;
INSERT INTO `adsense` VALUES (1,3),(2,2),(3,4),(4,2),(5,1),(6,3),(7,2),(8,4),(9,1),(10,2);
/*!40000 ALTER TABLE `adsense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocked_user`
--

DROP TABLE IF EXISTS `blocked_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocked_user` (
  `id_user` int(11) NOT NULL,
  `time_left` datetime NOT NULL,
  PRIMARY KEY (`id_user`),
  CONSTRAINT `fk_blocked_user_user1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocked_user`
--

LOCK TABLES `blocked_user` WRITE;
/*!40000 ALTER TABLE `blocked_user` DISABLE KEYS */;
INSERT INTO `blocked_user` VALUES (4,'2025-11-15 12:00:00'),(10,'2025-12-01 00:00:00');
/*!40000 ALTER TABLE `blocked_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocked_video`
--

DROP TABLE IF EXISTS `blocked_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocked_video` (
  `id_video` int(11) NOT NULL,
  `start_suspend` datetime NOT NULL,
  `end_suspend` datetime NOT NULL,
  PRIMARY KEY (`id_video`),
  CONSTRAINT `fk_blocked_video_video1` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocked_video`
--

LOCK TABLES `blocked_video` WRITE;
/*!40000 ALTER TABLE `blocked_video` DISABLE KEYS */;
INSERT INTO `blocked_video` VALUES (5,'2025-10-01 10:00:00','2025-11-01 10:00:00'),(9,'2025-09-20 08:00:00','2025-10-20 08:00:00');
/*!40000 ALTER TABLE `blocked_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id_comments` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  `isi_comment` longtext NOT NULL,
  PRIMARY KEY (`id_comments`),
  KEY `fk_comments_user1_idx` (`id_user`),
  KEY `fk_comments_video1_idx` (`id_video`),
  CONSTRAINT `fk_comments_user1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `fk_comments_video1` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,2,1,'Suaranya bagus banget!'),(2,4,2,'Makeup-nya natural banget.'),(3,6,3,'Gadget-nya keren, review lengkap.'),(4,8,4,'Lucu banget wkwk.'),(5,10,5,'Lagunya menyentuh.'),(6,2,6,'Penjelasannya mudah dimengerti.'),(7,4,7,'View Bali-nya cantik.'),(8,6,8,'Kameranya bagus banget hasilnya.'),(9,8,9,'Gameplay-nya keren!'),(10,10,10,'Motivasinya bikin semangat.');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hastag`
--

DROP TABLE IF EXISTS `hastag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hastag` (
  `id_hastag` int(11) NOT NULL AUTO_INCREMENT,
  `hastag_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_hastag`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hastag`
--

LOCK TABLES `hastag` WRITE;
/*!40000 ALTER TABLE `hastag` DISABLE KEYS */;
INSERT INTO `hastag` VALUES (1,'#fun'),(2,'#travel'),(3,'#music'),(4,'#tutorial'),(5,'#vlog'),(6,'#gaming'),(7,'#food'),(8,'#sport'),(9,'#life'),(10,'#tech');
/*!40000 ALTER TABLE `hastag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(45) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,'Musik'),(2,'Gaming'),(3,'Edukasi'),(4,'Travel'),(5,'Vlog'),(6,'Teknologi'),(7,'Kuliner'),(8,'Olahraga'),(9,'Film'),(10,'Berita');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_session`
--

DROP TABLE IF EXISTS `login_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_session` (
  `user_id_user` int(11) NOT NULL,
  `login_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id_user`),
  CONSTRAINT `fk_login_session_user1` FOREIGN KEY (`user_id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_session`
--

LOCK TABLES `login_session` WRITE;
/*!40000 ALTER TABLE `login_session` DISABLE KEYS */;
INSERT INTO `login_session` VALUES (1,'2025-10-23 07:47:02'),(2,'2025-10-23 07:47:02'),(3,'2025-10-23 07:47:02'),(4,'2025-10-23 07:47:02'),(5,'2025-10-23 07:47:02'),(6,'2025-10-23 07:47:02'),(7,'2025-10-23 07:47:02'),(8,'2025-10-23 07:47:02'),(9,'2025-10-23 07:47:02'),(10,'2025-10-23 07:47:02');
/*!40000 ALTER TABLE `login_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `id_playlist` int(11) NOT NULL AUTO_INCREMENT,
  `judul_playlist` varchar(255) NOT NULL DEFAULT 'New Playlist',
  `description` longtext DEFAULT NULL,
  PRIMARY KEY (`id_playlist`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,'Favorit Andi','Kumpulan video favorit Andi.'),(2,'Makeup Tips','Tutorial makeup dan kecantikan.'),(3,'Tech Reviews','Review gadget terbaru.'),(4,'Funny Moments','Kumpulan video lucu.'),(5,'Travel Goals','Video perjalanan terbaik.'),(6,'Belajar Online','Konten edukasi pilihan.'),(7,'Gaming World','Video seputar dunia gaming.'),(8,'Motivasi Hidup','Kumpulan video motivasi.'),(9,'Food Lovers','Video kuliner lezat.'),(10,'Daily Life','Vlog kegiatan sehari-hari.');
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_content`
--

DROP TABLE IF EXISTS `report_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_content` (
  `id_user` int(11) NOT NULL,
  `id_comments` int(11) NOT NULL,
  `description` longtext DEFAULT NULL,
  KEY `fk_report_content_comments1_idx` (`id_comments`),
  KEY `fk_report_content_user1` (`id_user`),
  CONSTRAINT `fk_report_content_comments1` FOREIGN KEY (`id_comments`) REFERENCES `comments` (`id_comments`),
  CONSTRAINT `fk_report_content_user1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_content`
--

LOCK TABLES `report_content` WRITE;
/*!40000 ALTER TABLE `report_content` DISABLE KEYS */;
INSERT INTO `report_content` VALUES (1,2,'Komentar mengandung kata tidak pantas'),(3,4,'Komentar spam'),(5,6,'Komentar menyinggung'),(7,8,'Komentar tidak relevan'),(9,10,'Komentar bermuatan SARA');
/*!40000 ALTER TABLE `report_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_video`
--

DROP TABLE IF EXISTS `report_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_video` (
  `id_user` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  `description` longtext DEFAULT NULL,
  KEY `fk_report_video_video1_idx` (`id_video`),
  KEY `fk_report_video_user1` (`id_user`),
  CONSTRAINT `fk_report_video_user1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `fk_report_video_video1` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_video`
--

LOCK TABLES `report_video` WRITE;
/*!40000 ALTER TABLE `report_video` DISABLE KEYS */;
INSERT INTO `report_video` VALUES (2,1,'Video berisi konten hak cipta'),(4,2,'Thumbnail menyesatkan'),(6,3,'Konten mengandung ujaran kebencian'),(8,4,'Video tidak pantas'),(10,5,'Spam promosi');
/*!40000 ALTER TABLE `report_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistic_chanel_log`
--

DROP TABLE IF EXISTS `statistic_chanel_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistic_chanel_log` (
  `id_user` int(11) NOT NULL,
  `jumlah_subs` int(11) NOT NULL DEFAULT 0,
  `watch_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_user`),
  CONSTRAINT `fk_statistic_channel_user1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistic_chanel_log`
--

LOCK TABLES `statistic_chanel_log` WRITE;
/*!40000 ALTER TABLE `statistic_chanel_log` DISABLE KEYS */;
INSERT INTO `statistic_chanel_log` VALUES (1,10000,250000),(2,100,5000),(3,12000,300000),(4,150,6000),(5,8000,200000),(6,200,8000),(7,9500,220000),(8,120,4000),(9,11000,270000),(10,90,3000);
/*!40000 ALTER TABLE `statistic_chanel_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trending_video`
--

DROP TABLE IF EXISTS `trending_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trending_video` (
  `jumlah_click` int(11) NOT NULL DEFAULT 0,
  `id_kategori` int(11) NOT NULL,
  `id_hastag` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  PRIMARY KEY (`id_kategori`,`id_hastag`,`id_video`),
  CONSTRAINT `fk_trending_video_video_has_hastag_kategori1` FOREIGN KEY (`id_kategori`, `id_hastag`, `id_video`) REFERENCES `video_has_hastag_kategori` (`kategori_id_kategori`, `hastag_id_hastag`, `video_id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trending_video`
--

LOCK TABLES `trending_video` WRITE;
/*!40000 ALTER TABLE `trending_video` DISABLE KEYS */;
INSERT INTO `trending_video` VALUES (1000,1,3,1),(640,1,3,5),(920,2,6,4),(850,3,4,2),(570,3,9,6),(690,4,2,7),(780,6,10,3),(810,6,10,8),(890,8,8,9),(990,9,9,10);
/*!40000 ALTER TABLE `trending_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `photo_url` tinytext DEFAULT NULL,
  `kota` varchar(45) NOT NULL,
  `pendidikan` char(3) NOT NULL,
  `user_type` enum('Penonton','Creator') DEFAULT 'Penonton',
  `no_ktp` varchar(16) DEFAULT NULL,
  `foto_ktp_url` varchar(100) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tanggal_daftar` date DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'andi123','pass123','andi@mail.com','Andi Pratama','1998-01-12',NULL,'Jakarta','S1','Creator','1234567890123456',NULL,1,'2025-10-23 07:47:02','2024-01-10'),(2,'budi456','pass123','budi@mail.com','Budi Santoso','1997-03-05',NULL,'Bandung','SMA','Penonton',NULL,NULL,0,'2025-10-23 07:47:02','2024-01-05'),(3,'citra789','pass123','citra@mail.com','Citra Dewi','2000-07-11',NULL,'Surabaya','S1','Creator','9876543210987654',NULL,1,'2025-10-23 07:47:02','2024-01-12'),(4,'dian999','pass123','dian@mail.com','Dian Lestari','1999-09-09',NULL,'Yogyakarta','SMA','Penonton',NULL,NULL,0,'2025-10-23 07:47:02','2024-02-01'),(5,'eko007','pass123','eko@mail.com','Eko Setiawan','1995-12-20',NULL,'Medan','D3','Creator','1111222233334444',NULL,1,'2025-10-23 07:47:02','2024-02-15'),(6,'farah888','pass123','farah@mail.com','Farah Nabila','1996-06-15',NULL,'Jakarta','S1','Penonton',NULL,NULL,0,'2025-10-23 07:47:02','2024-03-01'),(7,'galih333','pass123','galih@mail.com','Galih Rahman','1998-10-10',NULL,'Bogor','SMA','Creator','5555666677778888',NULL,1,'2025-10-23 07:47:02','2024-03-05'),(8,'hanna111','pass123','hanna@mail.com','Hanna Putri','2001-11-30',NULL,'Depok','S1','Penonton',NULL,NULL,0,'2025-10-23 07:47:02','2024-03-10'),(9,'indra222','pass123','indra@mail.com','Indra Wijaya','1994-04-22',NULL,'Bali','S2','Creator','2222333344445555',NULL,1,'2025-10-23 07:47:02','2024-03-20'),(10,'joko555','pass123','joko@mail.com','Joko Susilo','1992-08-19',NULL,'Semarang','SMA','Penonton',NULL,NULL,0,'2025-10-23 07:47:02','2024-03-25'),(11,'andi','123','andi@mail.com','Andi Saputra','2001-01-01',NULL,'Jakarta','S1','Penonton',NULL,NULL,1,'2024-01-01 03:00:00',NULL),(12,'budi','123','budi@mail.com','Budi Santoso','1995-05-10',NULL,'Bandung','SMA','Penonton',NULL,NULL,1,'2024-02-01 02:00:00',NULL),(13,'citra','123','citra@mail.com','Citra Dewi','1990-06-06',NULL,'Surabaya','S2','Creator',NULL,NULL,1,'2024-01-15 01:00:00',NULL),(14,'dina','123','dina@mail.com','Dina Anggraini','1998-03-03',NULL,'Medan','S1','Penonton',NULL,NULL,1,'2024-03-05 00:00:00',NULL),(15,'eko','123','eko@mail.com','Eko Prasetyo','1992-04-04',NULL,'Yogyakarta','S1','Creator',NULL,NULL,1,'2024-01-20 05:00:00',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_playlist`
--

DROP TABLE IF EXISTS `user_has_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_playlist` (
  `user_id_user` int(11) NOT NULL,
  `playlist_id_playlist` int(11) NOT NULL,
  PRIMARY KEY (`user_id_user`,`playlist_id_playlist`),
  KEY `fk_user_has_playlist_playlist1_idx` (`playlist_id_playlist`),
  CONSTRAINT `fk_user_has_playlist_playlist1` FOREIGN KEY (`playlist_id_playlist`) REFERENCES `playlist` (`id_playlist`),
  CONSTRAINT `fk_user_has_playlist_user1` FOREIGN KEY (`user_id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_playlist`
--

LOCK TABLES `user_has_playlist` WRITE;
/*!40000 ALTER TABLE `user_has_playlist` DISABLE KEYS */;
INSERT INTO `user_has_playlist` VALUES (1,1),(2,6),(3,2),(4,7),(5,3),(6,8),(7,4),(8,9),(9,5),(10,10);
/*!40000 ALTER TABLE `user_has_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `id_video` int(11) NOT NULL AUTO_INCREMENT,
  `id_uploader` int(11) NOT NULL,
  `uploaded_by` varchar(45) NOT NULL,
  `judul_video` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `video_type` enum('Panjang','Pendek') NOT NULL,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `dislike` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `views_total_time` int(11) NOT NULL DEFAULT 0,
  `upload_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Aktif','Diblokir') NOT NULL DEFAULT 'Aktif',
  PRIMARY KEY (`id_video`),
  KEY `fk_video_user_idx` (`id_uploader`),
  CONSTRAINT `fk_video_user` FOREIGN KEY (`id_uploader`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,1,'Andi Pratama','Cover Lagu Pop','Andi menyanyikan lagu populer dengan versi akustik.',180,'Pendek',1200,0,0,0,'2025-10-23 07:47:02','Aktif'),(2,3,'Citra Dewi','Tutorial Makeup Natural','Tutorial mudah untuk makeup sehari-hari.',420,'Panjang',950,0,0,0,'2025-10-23 07:47:02','Aktif'),(3,5,'Eko Setiawan','Review Gadget 2025','Ulasan HP terbaru dari brand ternama.',600,'Panjang',870,0,0,0,'2025-10-23 07:47:02','Aktif'),(4,7,'Galih Rahman','Gameplay PUBG Lucu','Kompilasi momen lucu saat main PUBG.',300,'Pendek',1500,0,0,0,'2025-10-23 07:47:02','Aktif'),(5,1,'Andi Pratama','Lagu Galau Original','Lagu ciptaan sendiri dengan tema patah hati.',200,'Pendek',400,0,0,0,'2025-10-23 07:47:02','Aktif'),(6,9,'Indra Wijaya','Cara Investasi Saham','Panduan singkat investasi bagi pemula.',480,'Panjang',1050,0,0,0,'2025-10-23 07:47:02','Aktif'),(7,3,'Citra Dewi','Daily Vlog ke Bali','Perjalanan seru selama liburan di Bali.',360,'Pendek',980,0,0,0,'2025-10-23 07:47:02','Aktif'),(8,5,'Eko Setiawan','Tes Kamera Baru','Eksperimen dengan kamera mirrorless terbaru.',540,'Panjang',660,0,0,0,'2025-10-23 07:47:02','Aktif'),(9,7,'Galih Rahman','Highlight Mobile Legends','Gameplay intens turnamen ML.',420,'Panjang',890,0,0,0,'2025-10-23 07:47:02','Aktif'),(10,9,'Indra Wijaya','Motivasi Hidup Sehat','Ceramah inspiratif tentang hidup sehat.',300,'Pendek',720,0,0,0,'2025-10-23 07:47:02','Aktif');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_ads_log`
--

DROP TABLE IF EXISTS `video_ads_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_ads_log` (
  `id_ads` int(11) NOT NULL AUTO_INCREMENT,
  `id_video` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_iklan` datetime NOT NULL,
  PRIMARY KEY (`id_ads`),
  KEY `id_video` (`id_video`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `video_ads_log_ibfk_1` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`) ON DELETE CASCADE,
  CONSTRAINT `video_ads_log_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_ads_log`
--

LOCK TABLES `video_ads_log` WRITE;
/*!40000 ALTER TABLE `video_ads_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_ads_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_block_log`
--

DROP TABLE IF EXISTS `video_block_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_block_log` (
  `id_block` int(11) NOT NULL AUTO_INCREMENT,
  `id_video` int(11) NOT NULL,
  `alasan` varchar(100) DEFAULT NULL,
  `tanggal_blok` datetime NOT NULL,
  PRIMARY KEY (`id_block`),
  KEY `id_video` (`id_video`),
  CONSTRAINT `video_block_log_ibfk_1` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_block_log`
--

LOCK TABLES `video_block_log` WRITE;
/*!40000 ALTER TABLE `video_block_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_block_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_has_hastag_kategori`
--

DROP TABLE IF EXISTS `video_has_hastag_kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_has_hastag_kategori` (
  `kategori_id_kategori` int(11) NOT NULL,
  `hastag_id_hastag` int(11) NOT NULL,
  `video_id_video` int(11) NOT NULL,
  PRIMARY KEY (`kategori_id_kategori`,`hastag_id_hastag`,`video_id_video`),
  KEY `fk_kategori_has_hastag_hastag1_idx` (`hastag_id_hastag`),
  KEY `fk_kategori_has_hastag_video1_idx` (`video_id_video`),
  CONSTRAINT `fk_video_has_kategori_hastag_hastag1` FOREIGN KEY (`hastag_id_hastag`) REFERENCES `hastag` (`id_hastag`),
  CONSTRAINT `fk_video_has_kategori_hastag_kategori1` FOREIGN KEY (`kategori_id_kategori`) REFERENCES `kategori` (`id_kategori`),
  CONSTRAINT `fk_video_has_kategori_hastag_video1` FOREIGN KEY (`video_id_video`) REFERENCES `video` (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_has_hastag_kategori`
--

LOCK TABLES `video_has_hastag_kategori` WRITE;
/*!40000 ALTER TABLE `video_has_hastag_kategori` DISABLE KEYS */;
INSERT INTO `video_has_hastag_kategori` VALUES (1,3,1),(1,3,5),(2,6,4),(3,4,2),(3,9,6),(4,2,7),(6,10,3),(6,10,8),(8,8,9),(9,9,10);
/*!40000 ALTER TABLE `video_has_hastag_kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_has_playlist`
--

DROP TABLE IF EXISTS `video_has_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_has_playlist` (
  `video_id_video` int(11) NOT NULL,
  `playlist_id_playlist` int(11) NOT NULL,
  PRIMARY KEY (`video_id_video`,`playlist_id_playlist`),
  KEY `fk_video_has_playlist_playlist1_idx` (`playlist_id_playlist`),
  CONSTRAINT `fk_video_has_playlist_playlist1` FOREIGN KEY (`playlist_id_playlist`) REFERENCES `playlist` (`id_playlist`),
  CONSTRAINT `fk_video_has_playlist_video1` FOREIGN KEY (`video_id_video`) REFERENCES `video` (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_has_playlist`
--

LOCK TABLES `video_has_playlist` WRITE;
/*!40000 ALTER TABLE `video_has_playlist` DISABLE KEYS */;
INSERT INTO `video_has_playlist` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `video_has_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_views_log`
--

DROP TABLE IF EXISTS `video_views_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_views_log` (
  `id_view` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  `tanggal_nonton` datetime NOT NULL,
  `durasi_tonton` int(11) NOT NULL,
  PRIMARY KEY (`id_view`),
  KEY `id_user` (`id_user`),
  KEY `id_video` (`id_video`),
  CONSTRAINT `video_views_log_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE,
  CONSTRAINT `video_views_log_ibfk_2` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_views_log`
--

LOCK TABLES `video_views_log` WRITE;
/*!40000 ALTER TABLE `video_views_log` DISABLE KEYS */;
INSERT INTO `video_views_log` VALUES (1,1,1,'2025-01-05 13:20:00',120),(2,1,2,'2025-01-06 09:45:00',180),(3,2,3,'2025-02-01 14:30:00',200),(4,2,1,'2025-02-01 15:00:00',90),(5,3,2,'2025-03-10 19:20:00',60),(6,3,4,'2025-03-12 20:00:00',240),(7,4,1,'2025-03-15 10:00:00',300),(8,4,2,'2025-04-01 08:00:00',150),(9,5,3,'2025-05-02 11:00:00',400);
/*!40000 ALTER TABLE `video_views_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watch_history`
--

DROP TABLE IF EXISTS `watch_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watch_history` (
  `id_user` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  `click_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `on_duration` int(11) NOT NULL,
  PRIMARY KEY (`id_user`,`id_video`),
  KEY `fk_watch_history_video1_idx` (`id_video`),
  CONSTRAINT `fk_watch_history_user1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `fk_watch_history_video1` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watch_history`
--

LOCK TABLES `watch_history` WRITE;
/*!40000 ALTER TABLE `watch_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `watch_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-24 15:06:35
