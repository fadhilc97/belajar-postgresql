SELECT * FROM "Kelas";
SELECT * FROM "Siswa";

SELECT
  "K"."nama_kelas" AS "Kelas",
  "S"."nama_lengkap" AS "Nama Siswa"
FROM
  "Kelas" AS "K" JOIN "Siswa" AS "S"
    ON "S"."kode_kelas" = "K"."kode_kelas";

-- Buat tabel Guru
-- CREATE TYPE "JenisKelamin" AS ENUM('pria','wanita');
CREATE TABLE "Guru" (
  "kode_guru"     VARCHAR(3)      PRIMARY KEY,
  "nama_lengkap"  VARCHAR(50)     NOT NULL,
  "jenis_kelamin" "JenisKelamin"  NOT NULL
);

SELECT * FROM "Kelas";
SELECT * FROM "Guru";
SELECT * FROM "Siswa";

INSERT INTO "Guru" VALUES
  ('FL', 'Fadhil', 'pria'),
  ('WT', 'Wati', 'wanita'),
  ('AD', 'Andhika', 'pria');

-- Relasikan tabel Guru dengan Kelas dimana setiap kelas memiliki wali kelas (1-to-1)
ALTER TABLE "Kelas"
ADD COLUMN "kode_wali_kelas" VARCHAR(3) UNIQUE REFERENCES "Guru"("kode_guru");

-- Tempatkan wali kelas di suatu kelas
UPDATE "Kelas" 
SET "kode_wali_kelas" = 'FL' 
WHERE "kode_kelas" = '10_A';

UPDATE "Kelas" 
SET "kode_wali_kelas" = 'WT' 
WHERE "kode_kelas" = '10_B';

UPDATE "Kelas" 
SET "kode_wali_kelas" = 'AD' 
WHERE "kode_kelas" = '11_IPA_1';

-- JOIN dengan 3 tabel
SELECT
  "K"."nama_kelas" AS "Kelas",
  "G"."nama_lengkap" AS "Nama Wali Kelas",
  "S"."nama_lengkap" AS "Nama Siswa"
FROM
  "Kelas" AS "K" 
    JOIN "Siswa" AS "S"
      ON "S"."kode_kelas" = "K"."kode_kelas"
    JOIN "Guru" AS "G"
      ON "K"."kode_wali_kelas" = "G"."kode_guru";

-- Tampilkan seluruh data siswa, kelas yang ditempati dan wali kelas pada kelas tersebut, meskipun siswa belum menempati kelas dan kelas tersebut belum ada wali kelasnya
SELECT
  "S"."nama_lengkap" AS "Nama Siswa",
  "K"."nama_kelas" AS "Kelas",
  "G"."nama_lengkap" AS "Wali Kelas"
FROM
  "Siswa" AS "S"
    LEFT JOIN "Kelas" AS "K"
      ON "S"."kode_kelas" = "K"."kode_kelas"
    LEFT JOIN "Guru" AS "G"
      ON "K"."kode_wali_kelas" = "G"."kode_guru";
