-- 1. Alias nama kolom
SELECT
  "nomor_induk" AS "Nomor Induk",
  "nama_lengkap" AS "Nama Lengkap",
  "tinggi_badan" AS "Tinggi Badan",
  "berat_badan" AS "Berat Badan"
FROM "Siswa";

-- 2. Alias kolom agregasi
SELECT
  SUM("tinggi_badan") AS "Jumlah tinggi badan",
  SUM("berat_badan") AS "Jumlah berat badan"
FROM "Siswa";

-- 3. Alias nama tabel yang menggunakan JOIN
SELECT
  "s"."nomor_induk" AS "Nomor Induk",
  "s"."nama_lengkap" AS "Nama Lengkap",
  "k"."nama_kelas" AS "Kelas"
FROM 
  "Siswa" AS "s"
  JOIN "Kelas" AS "k" ON "s"."kode_kelas" = "k"."kode_kelas"