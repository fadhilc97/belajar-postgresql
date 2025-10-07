SELECT 
  "nama_lengkap", 
  "berat_badan",
  "tinggi_badan", 
  ROUND(
    ("berat_badan"::NUMERIC / ("tinggi_badan"::NUMERIC / 100) ^ 2),
  2)  AS "BMI"
FROM "Siswa"
ORDER BY "BMI" DESC;