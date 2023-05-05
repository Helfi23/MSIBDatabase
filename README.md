### Tugas 8 Database
## Query ketika memesan di table pembayaran akan update otomatis
DELIMITER $$
CREATE TRIGGER pesanan 
AFTER INSERT ON pesanan
  FOR EACH ROW
  BEGIN
	SET @kuitansi = CONCAT('INV-', NEW.id);
	SET @orderan = (SELECT COUNT(*) FROM pesanan WHERE id = NEW.id);
	SET @jumlah = (SELECT COUNT(*) FROM pesanan_items WHERE pesanan_id = NEW.id);
	INSERT INTO pembayaran(nokuitansi, tanggal, jumlah, ke, pesanan_id, status_pembayaran)
	VALUES (@kuitansi, NOW(), @jumlah, @orderan, NEW.id, 'Belum Lunas');
  END
  $$
DELIMITER ;
## Query jika sudah update jumlah di table pembayaran dan melebihi total harga maka akan update status pembayaran LUNAS
DELIMITER $$
 CREATE TRIGGER update_pembayaran_status
 BEFORE UPDATE ON pembayaran
 FOR EACH ROW
    BEGIN
    IF OLD.id = NEW.id THEN
      SET @total = (SELECT total FROM pesanan WHERE id = OLD.pesanan_id);
      SET @jumlah = NEW.jumlah;
      IF @total <= @jumlah THEN 
        SET NEW.status_pembayaran = 'LUNAS';
      ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Warning: pembayaran kurang';
      END IF;
    END IF;
  END
  $$
DELIMITER ;

![image](https://user-images.githubusercontent.com/55681352/236521982-6a41f7ce-6914-4ef6-a9af-7c332abe7694.png)
![image](https://user-images.githubusercontent.com/55681352/236522377-49b374b7-4713-4dd9-95d7-65e3a1f0b7aa.png)

