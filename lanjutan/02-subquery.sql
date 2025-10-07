SELECT "nama_lengkap","tinggi_badan"
FROM "Siswa";

-- Ambil data siswa yang tinggi badannya di atas rata-rata
SELECT AVG("tinggi_badan")
FROM "Siswa";

SELECT "nama_lengkap","tinggi_badan"
FROM "Siswa"
WHERE "tinggi_badan" > (
  SELECT AVG("tinggi_badan")
  FROM "Siswa"
);