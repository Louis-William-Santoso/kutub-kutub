# a. Tampilkan seluruh video yang terdaftar pada sistem dan urutkan video tersebut berdasarkan like terbanyak hingga tersedikit.
select v.id_video, v.judul_video, u.username as uploader, v.likes
from kutube_db.video v left join kutube_db.user u on v.id_uploader =u.id_user
order by v.likes desc;

# b. Tampilkan apa saja jenjang usia yang tercatat dalam sistem dan jumlah pengguna pada masing-masing jenjang usia tersebut.
select pendidikan, min(year(now())-year(tanggal_lahir)) as min_year, max(year(now())-year(tanggal_lahir)) as max_year
from kutube_db.user 
group by pendidikan ;

# c. Tampilkan playlist yang dimiliki oleh pengguna dengan jenis penonton yang mendaftar pertama kali pada platform kutube.
select id_playlist, (date(u.created_at)) as tanggalBuatAkun,u.username, play.judul_playlist
from kutube_db.playlist play, kutube_db.user u 
inner join kutube_db.user_has_playlist up
on u.id_user=up.user_id_user
group by play.judul_playlist
having min(year(u.created_at))
order by id_playlist asc limit 1;

# d. Tampilkan pengguna dengan jumlah video ditonton terbanyak dan tampilkan dari yang paling sedikit ke paling banyak.
select video.id_video, video.judul_video, video.views
from kutube_db.video
order by video.views asc;

# e. Tampilkan siapa saja penyedia video yang telah memenuhi persyaratan untuk mendapatkan adsense.
select username, user_type, is_verified
from kutube_db.user
where is_verified=1 and user_type='Creator';

# f. (Lanjutan 4g) Tampilkan berapa banyak video iklan yang diperoleh oleh orang-orang pada soal 4g dalam bulan September 2025 – Oktober 2025.
select v.judul_video, v.upload_time, ads.jumlah_iklan
from kutube_db.video v inner join kutube_db.adsense ads
on v.id_video=ads.id_video
where upload_time<='2025-10-31' and upload_time>='2025-09-01';

# g. Tampilkan top 5 viewer video sepanjang tahun 2025
select video.judul_video, video.views
from kutube_db.video
where upload_time>=2025-01-01
order by video.views desc limit 5;

# h. Tampilkan top 5 kategori video yang paling sering diblokir
select k.nama_kategori, count(bv.id_video) as jumlah_blokir
from kutube_db.kategori k,kutube_db.blocked_video bv 
inner join kutube_db.video_has_hastag_kategori vhhk
on bv.id_video=vhhk.video_id_video
group by k.nama_kategori;

# i. Menampilkan top donatur dari setiap channel
# j. buat 