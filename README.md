Disarankan tidak memakai database yang sebelumnya karena ada beda data, menyesuaikan dengan soal
### Soal 3.1
## Tugas 3 Database MSIB 
## SELECT * FROM produk WHERE harga_beli * stok > 20000000; 
![image](https://user-images.githubusercontent.com/55681352/232046529-2ddb0376-617b-40ad-b412-16d51c31558c.png)
## SELECT SUM(stok - min_stok) as selisih from produk;
![image](https://user-images.githubusercontent.com/55681352/232046603-23a4afb9-819d-4bc5-bc29-6ff23777075f.png)
## SELECT sum(stok) as total_asset from produk;
![image](https://user-images.githubusercontent.com/55681352/232046708-b7021187-3f8e-4ce4-a044-a94ea51a4f19.png)
## SELECT * FROM pelanggan WHERE YEAR(tgl_lahir) BETWEEN 1999 AND 2004;
![image](https://user-images.githubusercontent.com/55681352/232046795-e6c533c1-4db0-447f-8fb9-4961d7219f30.png)
## SELECT * FROM pelanggan WHERE YEAR(tgl_lahir)=1998;
![image](https://user-images.githubusercontent.com/55681352/232047192-d6f81a80-af7d-424f-8041-a3c7070b4905.png)
## SELECT * FROM pelanggan WHERE MONTH(tgl_lahir)=08;
![image](https://user-images.githubusercontent.com/55681352/232048037-0bc81a13-24a1-419b-b2df-766297172618.png)
## SELECT nama_pelanggan, tmpt_lahir, tgl_lahir, (YEAR(NOW())-YEAR(tgl_lahir)) AS umur FROM pelanggan;
![image](https://user-images.githubusercontent.com/55681352/232048139-5111e46a-34e9-4b23-80e0-e0bca4ed0f4b.png)
### Soal 3.2
## SELECT COUNT(*) AS jumlah_pelanggan FROM pelanggan WHERE YEAR(tgl_lahir) = 1998;
![image](https://user-images.githubusercontent.com/55681352/232048261-4d7d4134-d76f-43fb-b2ed-9f837324ae24.png)
## SELECT COUNT(*) AS jumlah_perempuan FROM pelanggan where jk='P' and tmpt_lahir='Jakarta';
![image](https://user-images.githubusercontent.com/55681352/232048343-985eea69-5c2e-4c78-8adc-b6048303b70b.png)
## SELECT SUM(stok) from produk as jumlah_stok where harga_jual <= 10000;
![image](https://user-images.githubusercontent.com/55681352/232048409-68f709bd-527b-4884-a052-a62439d73b07.png)
## SELECT COUNT(*) as Jumlah_nama from produk where nama LIKE 'k%';
![image](https://user-images.githubusercontent.com/55681352/232048469-c3bde719-6a2d-4499-99ad-e245dee43593.png)
## SELECT AVG(harga_jual) AS AveragePrice FROM produk where harga_jual > 1000000;
![image](https://user-images.githubusercontent.com/55681352/232048590-00ed13ec-511d-4e5a-bfdb-e0b5fe410261.png)
## SELECT MAX(stok) AS jumlah_stok_terbesar FROM produk;
![image](https://user-images.githubusercontent.com/55681352/232048649-a1561a6b-8f1f-4f1d-a07c-962fcad3c53e.png)
## select count(*) as stok_habis from produk where min_stok > stok;
![image](https://user-images.githubusercontent.com/55681352/232048765-790e25a4-6291-42a3-8dae-295e47f49e1a.png)
## SELECT SUM(harga_beli * stok) as jumlah_asset from produk;
![image](https://user-images.githubusercontent.com/55681352/232048822-167264c9-7ee7-4174-8a76-b2697ee545eb.png)
### Soal 3.3
## SELECT id, nama, stok, IF(min_stok > stok, "Segera Belanja","Stok Aman") as informasi from produk;
![image](https://user-images.githubusercontent.com/55681352/232048912-98cb91d8-fa35-4397-a1d0-4a61bb18a68e.png)
## Select id, nama_pelanggan, (YEAR(NOW()) - Year(tgl_lahir)) as umur, IF ((YEAR(NOW()) - YEAR(TGL_LAHIR)) < 17,"Muda",  IF ((YEAR(NOW()) - YEAR(TGL_LAHIR)) BETWEEN 17 AND 55, "Dewasa","Tidak Ada")) as Kategori_Umur From Pelanggan;
![image](https://user-images.githubusercontent.com/55681352/232048984-bfb88cfa-f40c-46a8-a0b8-9e910062b4cd.png)
## Select id, kode, nama, IF(kode = 'TV01', 'DVD-Player', IF(kode = 'K001', 'Rice Cooker', 'Tidak Ada')) AS Bonus from produk;
![image](https://user-images.githubusercontent.com/55681352/232049048-609f83c6-ac9b-4bc3-afac-c5625fe45a08.png)
### Soal 3.4 
## SELECT tmpt_lahir, COUNT(*) AS jumlah_pelanggan FROM pelanggan GROUP BY tmpt_lahir;
![image](https://user-images.githubusercontent.com/55681352/232049181-d13fe0c4-3575-440d-9cbb-ead5c1ed48e9.png)
## Select jenis_produk_id, COUNT(*) as jumlah_produk FROM produk GROUP BY jenis_produk_id;
![image](https://user-images.githubusercontent.com/55681352/232049256-702fd59c-0112-4fc3-bd0d-9de05c169d8d.png)
## SELECT * FROM pelanggan WHERE tgl_lahir > DATE_SUB(NOW(), INTERVAL (SELECT AVG(YEAR(NOW()) - YEAR(tgl_lahir)) FROM pelanggan) YEAR);
![image](https://user-images.githubusercontent.com/55681352/232049366-05e3d98f-faf7-4de6-8ff7-dfc71c89b664.png)
## SELECT * FROM produk WHERE harga_jual > (SELECT AVG(harga_jual) FROM produk);
![image](https://user-images.githubusercontent.com/55681352/232049453-0047ac94-d447-48c7-a8de-2d779698bd4f.png)
## SELECT * FROM pelanggan WHERE kartu_id IN (SELECT id FROM kartu WHERE iuran > 1000);
![image](https://user-images.githubusercontent.com/55681352/232049553-0a1bde45-bc47-4dd8-9b20-5255e22a723d.png)
## SELECT COUNT(*) AS jumlah_produk, MIN(harga_jual) AS harga_terendah, MAX(harga_jual) AS harga_tertinggi, AVG(harga_jual) AS rata_harga FROM produk WHERE harga_jual < (SELECT AVG(harga_jual) FROM produk);
![image](https://user-images.githubusercontent.com/55681352/232049618-cb048cd5-654b-4f50-92d1-7c763c117216.png)
## SELECT * FROM pelanggan WHERE kartu_id IN (SELECT id FROM kartu WHERE diskon > 0.3);
![image](https://user-images.githubusercontent.com/55681352/232049704-a1c979e0-c9d9-4acc-bf9f-008aebe9dbe1.png)
