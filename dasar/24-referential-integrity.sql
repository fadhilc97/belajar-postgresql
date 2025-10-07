-- Hapus constraint foreign key kolom kode_kelas
ALTER TABLE "Siswa" DROP CONSTRAINT "Siswa_kode_kelas_fkey";

-- Tambahkan constraint kode_kelas sebagai foreign key dengan aturan:
-- 1. Ketika data utama di tabel kelas dihapus, data foreign key siswa yang menggunakan kode kelas tersebut juga terhapus
-- 2. Ketika data primary key di tabel kelas diubah, data foreign key siswa yang menggunakan kode kelas tersebut juga ikut berubah
ALTER TABLE "Siswa"
ADD CONSTRAINT "Siswa_kode_kelas_fkey"
FOREIGN KEY ("kode_kelas")
REFERENCES "Kelas"("kode_kelas")
ON DELETE CASCADE
ON UPDATE CASCADE;

SELECT * FROM "Kelas";
SELECT "nomor_induk", "nama_lengkap", "kode_kelas" 
FROM "Siswa" 
ORDER BY "nomor_induk";

UPDATE "Siswa" 
SET "kode_kelas" = '10_A' 
WHERE "nomor_induk" IN ('10002','10003');

UPDATE "Siswa" 
SET "kode_kelas" = '10_B' 
WHERE "nomor_induk" IN ('10004','10005');

-- Buktikan ON DELETE CASCADE
DELETE FROM "Kelas" WHERE "kode_kelas" = '10_A';

-- Buktikan ON UPDATE CASCADE
UPDATE "Kelas" SET "kode_kelas" = 'X_B'
WHERE "kode_kelas" = '10_B';
