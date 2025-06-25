-- Pra-syarat
SELECT "nomor_induk","nama_lengkap","jenis_kelamin" FROM "Siswa" ORDER BY "nomor_induk";
ALTER TABLE "Siswa" DROP COLUMN "jenis_kelamin";

-- 1. Buat enum jenis kelamin
CREATE TYPE "JenisKelamin" AS ENUM('pria','wanita');

-- 2. Terapkan pada tabel siswa di kolom jenis kelamin
ALTER TABLE "Siswa" ADD COLUMN "jenis_kelamin" "JenisKelamin";

-- 3. Masukkan data dengan jenis kelamin yang sesuai
INSERT INTO "Siswa" VALUES ('10012','Kurniawan','Jl.Pramuka',55,170,'Bandung','2010-09-09','pria');
INSERT INTO "Siswa" VALUES ('10013','Kartika','Jl.Angsa',60,140,'Jakarta','2009-10-10','wanita');

-- 4. Ubah data dengan jenis kelamin yang sesuai
UPDATE "Siswa" SET "jenis_kelamin" = 'pria' WHERE "nomor_induk" IN ('10001','10005','10007','10008','10011');
UPDATE "Siswa" SET "jenis_kelamin" = 'wanita' WHERE "jenis_kelamin" IS NULL;
