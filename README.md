##MSIB Database Tugas 7
# Buat fungsi inputPelanggan(), setelah itu panggil fungsinya
 DELIMITER $$
 CREATE PROCEDURE inputPelanggans(
    -> kode varchar(10), nama_pelanggan varchar(50), jk char(1), tmpt_lahir varchar(30), tgl_lahir date, email varchar(45), kartu_id int(11), alamat varchar(45))
    -> BEGIN
    -> INSERT INTO pelanggan(kode, nama_pelanggan,jk,tmpt_lahir,tgl_lahir,email,kartu_id,alamat)values(kode, nama_pelanggan,jk,tmpt_lahir,tgl_lahir,email,kartu_id,alamat);
    -> END$$
    DELIMITER ;
MariaDB [dbtoko]> call inputPelanggans('000001','Helfia','L','Sukabimi','2023-02-02','helfi@gmail.com','1','cicurug');
![image](https://user-images.githubusercontent.com/55681352/235922028-a78fdc1e-475a-4980-9c13-e878b4634a38.png)
![image](https://user-images.githubusercontent.com/55681352/235922057-b7e0332f-39f2-44b7-a746-2a77b209e9aa.png)
# Buat fungsi showPelanggan(), setelah itu panggil fungsinya
MariaDB [dbtoko]> DELIMITER $$
MariaDB [dbtoko]> CREATE PROCEDURE showPelanggan()
    -> BEGIN
    -> SELECT * FROM pelanggan;
    -> END$$
Query OK, 0 rows affected (0.032 sec)

MariaDB [dbtoko]> DELIMITER ;
MariaDB [dbtoko]> CALL showPelanggan;
![image](https://user-images.githubusercontent.com/55681352/235922649-6be8e71d-4b75-4cc5-add1-f11bcac70148.png)
# Buat fungsi inputProduk(), setelah itu panggil fungsinya
DELIMITER $$
MariaDB [dbtoko]> CREATE PROCEDURE inputProduk(
    -> kode varchar(10), nama varchar(45), harga_beli double, harga_jual double, stok int(11), min_stok int(11), jenis_produk_id int(11))
    -> BEGIN
    -> INSERT INTO produk(kode,nama,harga_beli,harga_jual,stok,min_stok,jenis_produk_id) values (kode,nama,harga_beli,harga_jual,stok,min_stok,jenis_produk_id);
    -> END$$
    MariaDB [dbtoko]> DELIMITER ;
    MariaDB [dbtoko]> call inputProduk(0110,Mizone,20000,50000,5,2,1);
    ![image](https://user-images.githubusercontent.com/55681352/235924571-2cbde98b-039e-4888-b692-a6ccf4dea4c5.png)
![image](https://user-images.githubusercontent.com/55681352/235924620-0bc8d3a0-fb94-4f96-b9b7-754c350d7240.png)
# Buat fungsi showProduk(), setelah itu panggil fungsinya
MariaDB [dbtoko]> DELIMITER $$
MariaDB [dbtoko]> CREATE PROCEDURE showProduk()
    -> BEGIN
    -> SELECT * FROM produk;
    -> END$$
Query OK, 0 rows affected (0.045 sec)

MariaDB [dbtoko]> DELIMITER ;
MariaDB [dbtoko]> call showProduk;
![image](https://user-images.githubusercontent.com/55681352/235925008-72a5adca-e8c6-4b01-8d54-6bd16a88526a.png)
# Buat fungsi totalPesanan(), setelah itu panggil fungsinya
MariaDB [dbtoko]> DELIMITER $$
MariaDB [dbtoko]> CREATE PROCEDURE totalPesanan()
    -> BEGIN
    -> SELECT COUNT(*) as jumlah_pesanan FROM pesanan;
    -> END$$
Query OK, 0 rows affected (0.025 sec)

MariaDB [dbtoko]> DELIMITER ;
MariaDB [dbtoko]> Call totalPesanan;
+----------------+
| jumlah_pesanan |
+----------------+
|              2 |
+----------------+
1 row in set (0.001 sec)

Query OK, 0 rows affected (0.002 sec)
![image](https://user-images.githubusercontent.com/55681352/235926565-41067832-a567-4a7f-a519-9514865385ff.png)
# tampilkan seluruh pesanan dari semua pelanggan

MariaDB [dbtoko]> DELIMITER $$
MariaDB [dbtoko]> CREATE PROCEDURE showPesanan()
    -> BEGIN
    -> SELECT * FROM pesanan;
    -> END$$
Query OK, 0 rows affected (0.042 sec)

MariaDB [dbtoko]> DELIMITER ;
MariaDB [dbtoko]> CALL showPesanan;
+----+------------+-------+--------------+
| id | tanggal    | total | pelanggan_id |
+----+------------+-------+--------------+
|  1 | 2020-01-01 | 20000 |            1 |
|  2 | 2020-02-01 |    10 |            1 |
+----+------------+-------+--------------+
2 rows in set (0.001 sec)

Query OK, 0 rows affected (0.004 sec)

MariaDB [dbtoko]>
![image](https://user-images.githubusercontent.com/55681352/235927468-e4d562fd-d4d9-4948-9c3b-bf53d05201c6.png)
#buatkan query panjang di atas menjadi sebuah view baru: pesanan_produk_vw (menggunakan join dari table pesanan,pelanggan dan produk)
