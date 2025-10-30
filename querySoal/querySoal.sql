-- a. Tampilkan seluruh video dan urutkan berdasarkan jumlah likes terbanyak hingga tersedikit
SELECT V.id_video AS ID_VIDEO, V.likes AS likes 
FROM video V 
ORDER BY likes DESC;


-- b. Tampilkan daftar umur pengguna dan jumlah pengguna pada masing-masing umur
SELECT FLOOR(DATEDIFF(CURDATE(), user.tanggal_lahir) / 365) AS Age, 
       COUNT(user.tanggal_lahir) AS amount 
FROM user 
GROUP BY Age 
ORDER BY Age ASC;


-- c. Tampilkan playlist yang dimiliki oleh pengguna dengan jenis penonton yang mendaftar pertama kali
SELECT U.id_user AS ID, 
       U.username AS Username, 
       U.created_at AS `User Creation Date`, 
       P.id_playlist AS ID_Playlist, 
       P.judul_playlist, 
       P.description 
FROM user U 
JOIN user_has_playlist UP ON UP.user_id_user = U.id_user 
JOIN playlist P ON P.id_playlist = UP.playlist_id_playlist 
WHERE U.user_type = 'Penonton' 
ORDER BY U.created_at ASC, UP.playlist_id_playlist ASC 
LIMIT 1;


-- d. Tampilkan pengguna berdasarkan jumlah video yang telah ditonton, dari paling sedikit ke paling banyak
SELECT U.id_user AS ID_USER, 
       U.username AS Name, 
       COUNT(W.id_video) AS Watched 
FROM user U 
JOIN watch_history W ON U.id_user = W.id_user 
GROUP BY U.id_user 
ORDER BY Watched ASC;


-- e. Tampilkan semua creator yang telah terverifikasi (memenuhi syarat untuk adsense)
SELECT username, user_type, is_verified 
FROM kutube_db.user 
WHERE is_verified = 1 AND user_type = 'Creator';


-- f. Tampilkan jumlah video iklan yang diperoleh oleh pengguna terverifikasi selama September–Oktober 2025
SELECT U.id_user as `ID User`, U.username as Username, SUM(A.jumlah_iklan) as `Jumlah Iklan`
FROM kutube_db.video V
LEFT JOIN adsense A ON A.id_video = V.id_video
JOIN kutube_db.user U ON U.id_user = V.id_uploader
WHERE YEAR(V.upload_time) = 2025 AND (MONTH(V.upload_time) = 8 OR MONTH(V.upload_time) = 9) AND U.is_verified = 1 GROUP BY `ID User`, U.Username;

-- g. Tampilkan 5 kategori video yang paling sering diblokir
SELECT VHH.kategori_id_kategori AS Category, 
       COUNT(BD.id_video) AS Blocked 
FROM blocked_video BD 
JOIN video V ON V.id_video = BD.id_video 
JOIN video_has_hastag_kategori VHH ON V.id_video = VHH.video_id_video 
GROUP BY Category 
ORDER BY Blocked DESC 
LIMIT 5;


-- h. Tampilkan 5 donatur dengan jumlah donasi terbesar (Top 5 biggest donation)
SELECT D.id_sender AS ID, 
       U.username AS Username, 
       D.jumlah_donasi AS `Jumlah Donasi` 
FROM donation D 
JOIN user U ON U.id_user = D.id_sender 
ORDER BY D.jumlah_donasi DESC 
LIMIT 5;


-- i. Tampilkan seluruh pengguna yang memiliki akun premium
SELECT * 
FROM user U 
WHERE U.is_prime = 1;