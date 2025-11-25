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
  "nomor_induk",
  "nama_lengkap",
  NULLIF("alamat", '') AS "alamat"
FROM "Siswa"
ORDER BY "nomor_induk";

-- 4. GREATEST and LEAST
SELECT
  "nama_lengkap",
  "berat_badan",
  "tinggi_badan",
  GREATEST("berat_badan")
FROM
  "Siswa";