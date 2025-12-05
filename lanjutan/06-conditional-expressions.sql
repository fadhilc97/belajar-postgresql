-- 1. CASE
SELECT 
  "nama_lengkap",
  "tinggi_badan",
  CASE 
    WHEN "tinggi_badan" < 155 THEN 'Tidak terpenuhi'
    WHEN "tinggi_badan" BETWEEN 155 AND 160 THEN 'Dipertimbangkan'
    -- WHEN "tinggi_badan" > 160 THEN 'Terpenuhi'
    ELSE 'Terpenuhi'
  END AS "kriteria_seleksi"
FROM "Siswa";

-- 2. COALESCE
SELECT 
  "nama_lengkap", 
  COALESCE("kode_kelas", 'Belum diketahui') AS "kode_kelas"
FROM "Siswa";

-- 3. NULLIF
SELECT
  "nama_lengkap",
  NULLIF("alamat", '') AS "alamat"
FROM "Siswa";

-- 4. GREATEST and LEAST
CREATE TABLE "NilaiRaporSiswa" (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "nomor_induk_siswa" VARCHAR(10) NOT NULL REFERENCES "Siswa"("nomor_induk"),
  "nilai_1" INT,
  "nilai_2" INT,
  "nilai_3" INT,
  "nilai_4" INT,
  "nilai_5" INT,
  "nilai_6" INT
);

SELECT * FROM "Siswa" ORDER BY "nomor_induk";

INSERT INTO "NilaiRaporSiswa" ("nomor_induk_siswa", "nilai_1", "nilai_2", "nilai_3", "nilai_4", "nilai_5", "nilai_6")
VALUES 
  ('10004', 80, 92, 75, 78, 80, 40),
  ('10005', 70, 88, 45, 79, 50, 90),
  ('10006', 90, 78, 65, 48, 55, 80),
  ('10007', 83, 60, 95, 78, 89, 45),
  ('10008', 81, 50, 85, 68, 83, 42);

SELECT * FROM "NilaiRaporSiswa";

SELECT
  "nomor_induk_siswa",
  GREATEST("nilai_1", "nilai_2", "nilai_3", "nilai_4", "nilai_5", "nilai_6") AS "nilai_tertinggi",
  LEAST("nilai_1", "nilai_2", "nilai_3", "nilai_4", "nilai_5", "nilai_6") AS "nilai_terendah"
FROM "NilaiRaporSiswa";

-- Fungsi agregasi: mengagregatkan seluruh data
MIN()
MAX()