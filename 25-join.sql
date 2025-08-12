-- Ambil data masing-masing tabel
SELECT * FROM "Kelas" ORDER BY "kode_kelas";
SELECT * FROM "Siswa" ORDER BY "nomor_induk";

-- 1. INNER JOIN
SELECT * 
FROM "Kelas" INNER JOIN "Siswa"
  ON "Kelas"."kode_kelas" = "Siswa"."kode_kelas"
ORDER BY "Kelas"."kode_kelas";

-- 2. LEFT JOIN
SELECT * 
FROM "Kelas" LEFT JOIN "Siswa"
  ON "Kelas"."kode_kelas" = "Siswa"."kode_kelas"
ORDER BY "Kelas"."kode_kelas";

-- 3. RIGHT JOIN
SELECT * 
FROM "Kelas" RIGHT JOIN "Siswa"
  ON "Kelas"."kode_kelas" = "Siswa"."kode_kelas"
ORDER BY "Siswa"."nomor_induk";

-- 4. FULL JOIN
SELECT * 
FROM "Kelas" FULL JOIN "Siswa"
  ON "Kelas"."kode_kelas" = "Siswa"."kode_kelas"
ORDER BY 
  "Kelas"."kode_kelas", 
  "Siswa"."nomor_induk";

-- 5. CROSS JOIN (tidak praktis)
SELECT * 
FROM "Kelas" CROSS JOIN "Siswa"
ORDER BY 
  "Kelas"."kode_kelas", 
  "Siswa"."nomor_induk";