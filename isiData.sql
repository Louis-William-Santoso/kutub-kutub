-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema kutube_db
-- -----------------------------------------------------
USE `kutube_db` ;

-- -----------------------------------------------------
-- Table `kutube_db`.`user`
-- (10 users: 5 Creators, 5 Penonton)
-- -----------------------------------------------------
INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `full_name`, `tanggal_lahir`, `photo_url`, `kota`, `pendidikan`, `user_type`, `no_ktp`, `foto_ktp_url`, `is_verified`, `created_at`, `is_prime`) VALUES
(1, 'budi_penonton', 'pass123', 'budi@example.com', 'Budi Santoso', '1995-03-15', 'http://example.com/img/budi.png', 'Jakarta', 'S1', 'Penonton', NULL, NULL, 0, '2023-01-10 08:00:00', 1),
(2, 'citra_creator', 'pass123', 'citra@example.com', 'Citra Lestari', '1992-07-20', 'http://example.com/img/citra.png', 'Bandung', 'S1', 'Creator', '3204123456780001', 'http://example.com/ktp/citra.png', 1, '2023-01-11 09:30:00', 0),
(3, 'doni_gamer', 'pass123', 'doni@example.com', 'Doni Wijaya', '2000-01-05', 'http://example.com/img/doni.png', 'Surabaya', 'SMA', 'Penonton', NULL, NULL, 0, '2023-02-05 14:15:00', 0),
(4, 'evelyn_vlog', 'pass123', 'evelyn@example.com', 'Evelyn Grace', '1998-11-30', 'http://example.com/img/evelyn.png', 'Yogyakarta', 'S1', 'Creator', '3402123456780002', 'http://example.com/ktp/evelyn.png', 1, '2023-02-15 11:00:00', 1),
(5, 'fajar_music', 'pass123', 'fajar@example.com', 'Fajar Nugroho', '1993-09-12', 'http://example.com/img/fajar.png', 'Medan', 'D3', 'Creator', '1271123456780003', 'http://example.com/ktp/fajar.png', 1, '2023-03-01 18:00:00', 0),
(6, 'gita_review', 'pass123', 'gita@example.com', 'Gita Permata', '1997-04-25', 'http://example.com/img/gita.png', 'Semarang', 'S2', 'Creator', '3374123456780004', 'http://example.com/ktp/gita.png', 1, '2023-03-20 20:45:00', 0),
(7, 'hari_nonton', 'pass123', 'hari@example.com', 'Hari Prasetyo', '1999-08-19', 'http://example.com/img/hari.png', 'Makassar', 'SMA', 'Penonton', NULL, NULL, 0, '2023-04-02 12:00:00', 0),
(8, 'indah_masak', 'pass123', 'indah@example.com', 'Indah Cahyani', '1990-12-01', 'http://example.com/img/indah.png', 'Denpasar', 'S1', 'Creator', '5171123456780005', 'http://example.com/ktp/indah.png', 1, '2023-04-10 16:30:00', 1),
(9, 'joni_aja', 'pass123', 'joni@example.com', 'Joni Iskandar', '2001-06-08', 'NULL', 'Palembang', 'SMA', 'Penonton', NULL, NULL, 0, '2023-05-01 07:00:00', 0),
(10, 'karin_daily', 'pass123', 'karin@example.com', 'Karin Novilda', '1996-02-14', 'http://example.com/img/karin.png', 'Jakarta', 'S1', 'Penonton', NULL, NULL, 0, '2023-05-15 22:00:00', 1);

-- -----------------------------------------------------
-- Table `kutube_db`.`kategori`
-- -----------------------------------------------------
INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Gaming'),
(2, 'Musik'),
(3, 'Vlog'),
(4, 'Edukasi'),
(5, 'Tutorial'),
(6, 'Review'),
(7, 'Kuliner');

-- -----------------------------------------------------
-- Table `kutube_db`.`hastag`
-- -----------------------------------------------------
INSERT INTO `hastag` (`id_hastag`, `hastag_name`) VALUES
(1, 'tutorial'),
(2, 'gaming'),
(3, 'vlogdaily'),
(4, 'reviewjujur'),
(5, 'masak'),
(6, 'edukasi'),
(7, 'musiccover');

-- -----------------------------------------------------
-- Table `kutube_db`.`playlist`
-- -----------------------------------------------------
INSERT INTO `playlist` (`id_playlist`, `judul_playlist`, `description`) VALUES
(1, 'Tonton Nanti', 'Video untuk ditonton nanti'),
(2, 'Favorit', 'Kumpulan video favorit saya'),
(3, 'Music Hits 2023', 'Lagu-lagu terbaik tahun ini'),
(4, 'Resep Masakan', 'Kumpulan resep masakan mudah');

-- -----------------------------------------------------
-- Table `kutube_db`.`video`
-- (10 Videos from different creators)
-- -----------------------------------------------------
INSERT INTO `video` (`id_video`, `id_uploader`, `judul_video`, `description`, `duration`, `video_type`, `likes`, `dislikes`, `views`, `views_total_time`, `upload_time`, `status`, `highlight`) VALUES
(1, 2, 'Tutorial Makeup Simpel', 'Cara makeup simpel untuk sehari-hari', 600, 'Panjang', 1500, 50, 25000, 15000000, '2023-02-01 10:00:00', 'Aktif', '00:02:30'),
(2, 4, 'Vlog Liburan ke Bali', 'Jalan-jalan seru di Bali!', 1200, 'Panjang', 3000, 100, 50000, 60000000, '2023-03-01 12:00:00', 'Aktif', NULL),
(3, 5, 'Cover Lagu "Hati-Hati di Jalan"', 'Cover akustik lagu Tulus', 240, 'Panjang', 5000, 20, 100000, 24000000, '2023-03-10 19:00:00', 'Aktif', '00:01:15'),
(4, 8, 'Resep Nasi Goreng Spesial', 'Resep rahasia nasi goreng seenak restoran', 480, 'Panjang', 2200, 30, 40000, 19200000, '2023-04-15 17:00:00', 'Aktif', NULL),
(5, 6, 'Review HP Gaming Terbaru', 'Worth it gak HP gaming ini?', 900, 'Panjang', 1800, 80, 30000, 27000000, '2023-04-20 20:00:00', 'Aktif', '00:05:00'),
(6, 2, 'Daily Skincare Routine', 'Skincare routine pagi hari', 55, 'Pendek', 500, 10, 15000, 825000, '2023-05-01 08:00:00', 'Aktif', NULL),
(7, 4, 'Sunset di Kuta (Short)', 'Indahnya sunset di Kuta', 45, 'Pendek', 1200, 5, 20000, 900000, '2023-05-05 18:30:00', 'Aktif', NULL),
(8, 8, 'Tips Memotong Bawang', 'Cara cepat motong bawang tanpa nangis', 60, 'Pendek', 800, 15, 18000, 1080000, '2023-05-10 09:00:00', 'Aktif', NULL),
(9, 5, 'Belajar Kunci Gitar C', 'Tutorial gitar untuk pemula', 300, 'Panjang', 4000, 25, 80000, 24000000, '2023-05-12 15:00:00', 'Aktif', NULL),
(10, 6, 'Unboxing Headset Murah', 'Unboxing headset 100ribuan', 420, 'Panjang', 900, 40, 22000, 9240000, '2023-05-20 13:00:00', 'Aktif', NULL),
(11, 1, 'Tutorial Belajar SQL Dasar Cepat', 'Video ini membahas dasar-dasar Structured Query Language untuk pemula.', 600, 'Panjang', 1200, 20, 15000, 4500000, '2024-01-15 10:00:00', 'Aktif', '00:02:30'),
(12, 3, 'Review Smartphone Terbaru 2024', 'Ulasan mendalam tentang ponsel andalan tahun ini.', 450, 'Panjang', 850, 15, 12000, 2700000, '2024-03-22 15:30:00', 'Aktif', '00:01:05'),
(13, 7, 'Vlog Liburan ke Bali Edisi Pantai', 'Keseruanku saat berlibur di pantai-pantai indah Bali.', 120, 'Pendek', 500, 5, 8000, 600000, '2024-05-10 18:00:00', 'Aktif', NULL),
(14, 5, 'Resep Masakan Sehat untuk Diet', 'Cara membuat makanan yang lezat dan rendah kalori.', 720, 'Panjang', 1500, 30, 20000, 8000000, '2024-07-01 11:45:00', 'Aktif', '00:03:40'),
(15, 10, 'Lagu Akustik Terbaru: Senja', 'Penampilan akustik lagu baru yang menenangkan jiwa.', 240, 'Pendek', 2100, 10, 35000, 5600000, '2024-09-05 20:15:00', 'Aktif', NULL),
(16, 2, 'Tips dan Trik Editing Video Cepat', 'Mempercepat alur kerja editing Anda dengan trik rahasia.', 550, 'Panjang', 900, 25, 10000, 3500000, '2024-11-11 09:30:00', 'Aktif', '00:01:50'),
(17, 9, 'Menjelajahi Keindahan Alam Indonesia', 'Dokumenter singkat tentang hutan dan gunung di Jawa.', 180, 'Pendek', 450, 2, 7500, 450000, '2025-01-20 14:00:00', 'Aktif', NULL),
(18, 4, 'Prediksi Teknologi Masa Depan 2030', 'Apa yang akan kita lihat di dunia teknologi beberapa tahun ke depan?', 650, 'Panjang', 1100, 40, 18000, 7000000, '2025-03-14 17:00:00', 'Aktif', '00:05:00'),
(19, 6, 'Kompilasi Momen Lucu Hewan Peliharaan', 'Kumpulan tingkah laku menggemaskan dari anjing dan kucing.', 90, 'Pendek', 700, 8, 11000, 400000, '2025-06-08 19:40:00', 'Aktif', NULL),
(20,1,'lah',NULL,3600,'Panjang',1000,0,10000000,321321321,'2025-09-01 10:00:00','Aktif',NULL),
(21,2,'loh',NULL,2000,'Panjang',0,0,0,0,'2025-09-01 11:10:00','Aktif',NULL),
(22,5,'leh',NULL,3000,'Panjang',0,0,0,0,'2025-09-02 00:00:00','Aktif',NULL),
(23, 8, 'Belajar Pemrograman Python untuk Data Science', 'Pengenalan Python dan aplikasinya di bidang data.', 800, 'Panjang', 1800, 50, 25000, 15000000, '2025-10-25 12:12:00', 'Aktif', '00:08:15');

-- -----------------------------------------------------
-- Table `kutube_db`.`post_image`
-- (Posts by creators)
-- -----------------------------------------------------
INSERT INTO `post_image` (`id_image`, `id_user`, `caption`, `likes`, `share`) VALUES
(1, 2, 'New video coming soon! Tutorial makeup baru.', 500, 50),
(2, 4, 'Thanks for 30k subscribers! Kalian luar biasa!', 1200, 100),
(3, 8, 'Kira-kira besok masak apa ya? Ada ide?', 800, 70),
(4, 2, 'Behind the scenes video skincare routine pagi ini.', 450, 30),
(5, 4, 'Bali vibes! Kangen liburan.', 1500, 200);

-- -----------------------------------------------------
-- Table `kutube_db`.`statistic_chanel_log`
-- (Stats for the 5 creators)
-- -----------------------------------------------------
INSERT INTO `statistic_chanel_log` (`id_user`, `jumlah_subs`, `watch_time`) VALUES
(2, 15000, 15825000),
(4, 30000, 60900000),
(5, 50000, 48000000),
(6, 25000, 36240000),
(8, 40000, 20280000);

-- -----------------------------------------------------
-- Table `kutube_db`.`login_session`
-- -----------------------------------------------------
INSERT INTO `login_session` (`user_id_user`, `login_timestamp`) VALUES
(1, '2023-05-22 10:00:00'),
(3, '2023-05-22 10:05:00'),
(4, '2023-05-22 10:02:00'),
(8, '2023-05-22 09:55:00');

-- -----------------------------------------------------
-- Table `kutube_db`.`blocked_user`
-- (User Joni (9) gets blocked)
-- -----------------------------------------------------
INSERT INTO `blocked_user` (`id_user`, `time_left`) VALUES
(9, '2025-12-31 23:59:59');

-- -----------------------------------------------------
-- Table `kutube_db`.`donation`
-- -----------------------------------------------------
INSERT INTO `donation` (`id_donation`, `id_sender`, `id_receiver`, `jumlah_donasi`) VALUES
(1, 1, 2, 50000),
(2, 3, 5, 20000),
(3, 10, 8, 100000),
(4, 4, 2, 25000);

-- -----------------------------------------------------
-- Table `kutube_db`.`user_has_playlist`
-- -----------------------------------------------------
INSERT INTO `user_has_playlist` (`user_id_user`, `playlist_id_playlist`) VALUES
(1, 1),
(1, 2),
(8, 4),
(5, 3),
(3, 1);

-- -----------------------------------------------------
-- Table `kutube_db`.`comments_video`
-- (10 Comments on various videos from various users)
-- -----------------------------------------------------
INSERT INTO `comments_video` (`id_comments`, `id_user`, `id_video`, `isi_comment`) VALUES
(1, 1, 1, 'Sangat membantu kak Citra! Makeupnya jadi cantik.'),
(2, 3, 5, 'Reviewnya jujur banget, jadi ragu mau beli.'),
(3, 7, 2, 'Wah, jadi pengen ke Bali!'),
(4, 10, 4, 'Auto laper! Kelihatannya enak banget nasgornya.'),
(5, 1, 3, 'Suaranya merdu banget kak Fajar!'),
(6, 4, 3, 'Keren covernya!'),
(7, 3, 7, 'Sunsetnya cantik parah!'),
(8, 9, 8, 'Akhirnya ada tips motong bawang, makasih!'),
(9, 1, 9, 'Penjelasannya mudah dimengerti, thanks!'),
(10, 7, 1,'Lumayan juga ya headsetnya buat harga segitu.'),
(11, 1, 4, 'Penjelasan yang sangat jelas! Terima kasih.'),
(12, 1, 5, 'Materi yang bagus, sangat membantu.'),
(13, 2, 7, 'Desainnya keren, tapi harganya terlalu mahal.'),
(14, 4, 8, 'Sudah coba resep ini, enak banget!'),
(15, 5, 9, 'Lagu yang menenangkan, sukses terus!'),
(16, 4, 9,'Contoh kasus untuk data science-nya sangat relevan.'),
(17, 7, 1, 'Pemandangannya luar biasa!'),
(18, 9, 2,'Hahaha, tingkah kucingnya bikin ngakak.');

-- -----------------------------------------------------
-- Table `kutube_db`.`watch_history`
-- (10 watch history entries)
-- -----------------------------------------------------
INSERT INTO `watch_history` (`id_user`, `id_video`, `click_time`, `on_duration`) VALUES
(1, 1, '2023-05-01 10:00:00', 600),
(1, 3, '2023-05-01 10:10:00', 240),
(3, 5, '2023-05-02 11:00:00', 900),
(7, 2, '2023-05-02 11:30:00', 1200),
(10, 4, '2023-05-03 12:00:00', 480),
(1, 7, '2023-05-03 14:00:00', 45),
(3, 7, '2023-05-04 15:00:00', 45),
(9, 8, '2023-05-11 09:30:00', 60),
(1, 9, '2023-05-13 16:00:00', 300),
(7, 10, '2023-05-21 10:00:00', 420),
(6, 1, '2025-01-20 12:30:00', 580), 
(6, 4, '2025-02-10 18:00:00', 720), 
(8, 2, '2025-04-05 10:15:00', 300), 
(8, 5, '2025-06-01 21:00:00', 240), 
(10, 10, '2025-10-28 13:45:00', 700); 

-- -----------------------------------------------------
-- Table `kutube_db`.`report_video`
-- -----------------------------------------------------
INSERT INTO `report_video` (`id_user`, `id_video`, `description`) VALUES
(3, 5, 'Reviewer terdengar bias dan dibayar'),
(9, 1, 'Konten ini menyesatkan, makeupnya tidak aman'),
(1, 2, 'Vlog ini mempromosikan perilaku tidak aman');

-- -----------------------------------------------------
-- Table `kutube_db`.`downloaded_video`
-- -----------------------------------------------------
INSERT INTO `downloaded_video` (`id_downloaded`, `id_user`, `id_video`, `downloaded_time`) VALUES
(1, 1, 2, '2023-05-20 11:00:00'),
(2, 4, 3, '2023-05-20 12:00:00'),
(3, 8, 4, '2023-05-20 13:00:00'),
(4, 10, 9, '2023-05-20 14:00:00');

-- -----------------------------------------------------
-- Table `kutube_db`.`adsense`
-- -----------------------------------------------------
INSERT INTO `adsense` (`id_video`, `jumlah_iklan`, `ads_aktif`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 2, 1),
(4, 2, 1),
(5, 3, 1),
(9, 2, 0),
(11, 1, 1),
(12, 3, 1),
(13, 2, 1),
(14, 2, 1),
(15, 3, 1),
(16, 1, 1),
(17, 2, 1),
(18, 2, 1),
(19, 2, 1),
(20, 2, 1),
(21, 4, 1),
(22, 1, 1),
(23, 3, 1);

-- -----------------------------------------------------
-- Table `kutube_db`.`blocked_video`
-- (Video 5 (Review HP) gets suspended)
-- -----------------------------------------------------
INSERT INTO `blocked_video` (`id_video`, `start_suspend`, `end_suspend`) VALUES
(5, '2023-05-21 00:00:00', '2023-05-28 00:00:00');

-- -----------------------------------------------------
-- Table `kutube_db`.`video_has_playlist`
-- -----------------------------------------------------
INSERT INTO `video_has_playlist` (`video_id_video`, `playlist_id_playlist`) VALUES
(5, 1),
(2, 1),
(3, 2),
(3, 3),
(4, 4),
(8, 4),
(9, 3);

-- -----------------------------------------------------
-- Table `kutube_db`.`video_has_hastag_kategori`
-- (CRITICAL: This is the 'parent' table for 'trending_video')
-- -----------------------------------------------------
INSERT INTO `video_has_hastag_kategori` (`kategori_id_kategori`, `hastag_id_hastag`, `video_id_video`) VALUES
(5, 1, 1),
(3, 3, 2),
(2, 7, 3),
(7, 5, 4),
(6, 2, 5),
(5, 1, 6),
(3, 3, 7),
(5, 5, 8),
(4, 1, 9),
(6, 4, 10),
(1, 1, 1), 
(1, 3, 4), 
(1, 5, 3), 
(1, 7, 2), 
(6, 4, 5); 

-- -----------------------------------------------------
-- Table `kutube_db`.`report_posting`
-- -----------------------------------------------------
INSERT INTO `report_posting` (`id_report`, `id_image`, `user_id_user`, `description`) VALUES
(1, 1, 7, 'Spam link di caption'),
(2, 5, 3, 'Foto tidak relevan dengan platform');

-- -----------------------------------------------------
-- Table `kutube_db`.`post_has_kategori_hastag`
-- -----------------------------------------------------
INSERT INTO `post_has_kategori_hastag` (`id_image`, `id_hastag`, `id_kategori`) VALUES
(1, 1, 5),
(2, 3, 3),
(3, 5, 7),
(4, 1, 5),
(5, 3, 3);

-- -----------------------------------------------------
-- Table `kutube_db`.`report_coment`
-- -----------------------------------------------------
INSERT INTO `report_coment` (`id_user`, `id_comments`, `description`) VALUES
(2, 2, 'Komentar ini mengandung spam dan link phising'),
(6, 7, 'Komentar ini tidak sopan dan mengandung ujaran kebencian');

-- -----------------------------------------------------
-- Table `kutube_db`.`trending_video`
-- (CRITICAL: These rows must match existing rows in 'video_has_hastag_kategori')
-- -----------------------------------------------------
INSERT INTO `trending_video` (`jumlah_click`, `id_kategori`, `id_hastag`, `id_video`) VALUES
(20000, 3, 3, 2),
(50000, 2, 7, 3),
(8000, 7, 5, 4),
(7500, 4, 1, 9),
(10500, 5, 1, 1);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;