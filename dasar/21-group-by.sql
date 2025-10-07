-- 1. Nilai agregasi keseluruhan
SELECT COUNT(*) FROM "Siswa";

-- 2. Nilai agregasi dikelompokkan menurut jenis kelamin
SELECT 
  "jenis_kelamin", 
  COUNT(*),
  AVG("berat_badan"),
  MIN("berat_badan"),
  MAX("berat_badan")
FROM "Siswa" 
GROUP BY 
  "jenis_kelamin"
ORDER BY
  "jenis_kelamin";