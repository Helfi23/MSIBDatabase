## Ada beberapa data yang di awal yang tidak singkron dengan data akhir soalnya ada tambah dan update data di pertengahan 


## 2.1 
SELECT * FROM produk ORDER BY harga_jual DESC;
![image](https://user-images.githubusercontent.com/55681352/231452305-13bd4d49-0869-4f9b-abc8-d5c657cf314f.png)
Select kode, nama_pelanggan, tmpt_lahir, tgl_lahir from pelanggan;
![image](https://user-images.githubusercontent.com/55681352/231455226-0209398a-8c52-4151-8110-3ec373e8ed4c.png)
 SELECT kode,nama, stok from produk WHERE stok=4;
 ![image](https://user-images.githubusercontent.com/55681352/231455614-4e578b0c-288a-47a5-a529-f2e15353f9ee.png)
SELECT * from pelanggan WHERE tmpt_lahir='jakarta';
![image](https://user-images.githubusercontent.com/55681352/231455688-1e7f5947-06f4-4b03-a136-5f0aed819067.png)
SELECT kode, nama_pelanggan, tmpt_lahir, tgl_lahir from pelanggan ORDER BY tgl_lahir DESC;
![image](https://user-images.githubusercontent.com/55681352/231455823-70c4f838-786c-4752-b49c-aaf2d4b8c58c.png)
## 2.2
SELECT * from produk WHERE stok=3 OR stok=10;
![image](https://user-images.githubusercontent.com/55681352/231455895-c66432ec-762e-42cb-8c18-e9d09de459ba.png)
SELECT * FROM produk WHERE harga_jual < 5000000 AND harga_jual > 500000;
![image](https://user-images.githubusercontent.com/55681352/231455975-458c25d6-87da-49ba-8fe4-a3f21b1d6df9.png)
 SELECT * FROM produk WHERE min_stok > stok;
![image](https://user-images.githubusercontent.com/55681352/231456374-86701a7c-e9ed-4746-9c1c-076b7e744c77.png)
SELECT * FROM pelanggan ORDER BY tgl_lahir DESC;
![image](https://user-images.githubusercontent.com/55681352/231456497-c3a1964d-001f-4ad1-8728-949b4f8836ce.png)
SELECT * FROM pelanggan WHERE tmpt_lahir='jakarta' AND jk='P';
![image](https://user-images.githubusercontent.com/55681352/231456711-53be85b9-0069-45b6-8cc9-5bb1bf8943ee.png)
SELECT * from pelanggan WHERE id IN (2,4,6);
![image](https://user-images.githubusercontent.com/55681352/231456764-7a1933a4-c88c-4e30-ac0c-16df0514379d.png)
SELECT * FROM produk WHERE harga_jual >= 500000 AND harga_jual<= 6000000;
![image](https://user-images.githubusercontent.com/55681352/231456846-686d9eba-8f3a-4315-8dbd-a755b6eb789c.png)
## 2.3
SELECT * FROM produk WHERE kode LIKE 'K%' OR kode LIKE 'M%';
![image](https://user-images.githubusercontent.com/55681352/231456934-46e78976-c7d3-4ed0-adde-213f65a628e5.png)
SELECT nama FROM produk WHERE nama NOT LIKE '%K%';
![image](https://user-images.githubusercontent.com/55681352/231457472-beae8966-63b6-4131-a6f6-f9f8fa7df090.png)
SELECT * FROM produk WHERE kode LIKE 'TV%';
![image](https://user-images.githubusercontent.com/55681352/231457696-57e125e2-e459-41ba-8963-128efcab1c8f.png)
SELECT nama FROM produk WHERE nama LIKE '%SA%'; 
![image](https://user-images.githubusercontent.com/55681352/231457781-0516a971-dbe1-4ee9-996a-80b5b1f1dcc6.png)
SELECT * FROM pelanggan WHERE tmpt_lahir not like '%Jakarta%' and nama_pelanggan LIKE '%yo';
![image](https://user-images.githubusercontent.com/55681352/231458754-83145561-e05c-47e2-9467-110c4766a9d5.png)
SELECT * FROM PELANGGAN where nama_pelanggan LIKE '_A%';
![image](https://user-images.githubusercontent.com/55681352/231458844-1827746b-a09b-4c37-9272-2aa249102d15.png)
## 2.4
SELECT *FROM produk ORDER BY harga_beli DESC LIMIT 2;
![image](https://user-images.githubusercontent.com/55681352/231458932-1027cb1f-cd27-4bb4-893b-5bb1f8ce417c.png)
SELECT MIN(harga_jual) AS produk_termurah FROM produk;
![image](https://user-images.githubusercontent.com/55681352/231458983-ed3ea357-02fa-42d7-870a-74e67e8adf18.png)
SELECT MAX(stok) as stok_terbanyak FROM produk;
![image](https://user-images.githubusercontent.com/55681352/231459033-e0a8ecd7-7a34-4613-8f7b-c4ef4680a0ed.png)
SELECT MIN(stok) as stok_sedikit FROM produk;
![image](https://user-images.githubusercontent.com/55681352/231459083-ee787cd1-986a-4094-9d68-695a45bd7fc7.png)
SELECT * FROM pelanggan ORDER BY tgl_lahir DESC;
![image](https://user-images.githubusercontent.com/55681352/231459169-e0450d71-07b4-4514-8f10-f7ae55c5c11a.png)
SELECT * FROM pelanggan ORDER BY tgl_lahir ASC LIMIT 5;
![image](https://user-images.githubusercontent.com/55681352/231459260-22cb1a76-3719-4a6a-a6fa-bf95b32dbc60.png)
