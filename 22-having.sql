SELECT 
  "alamat", 
  AVG("berat_badan") 
FROM "Siswa"
GROUP BY "alamat"
HAVING AVG("berat_badan") >= 50;