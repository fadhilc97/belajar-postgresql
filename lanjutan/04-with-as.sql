SELECT * FROM "Siswa";

WITH "SiswaGender" AS (
  SELECT
    "jenis_kelamin",
    AVG("berat_badan") AS "rata_rata_berat_badan",
    AVG("tinggi_badan") AS "rata_rata_tinggi_badan"
  FROM
    "Siswa"
  GROUP BY "jenis_kelamin"
)
SELECT 
  "jenis_kelamin"
FROM 
  "SiswaGender"
WHERE
  "rata_rata_berat_badan" = (
    SELECT MAX("rata_rata_berat_badan") FROM "SiswaGender"
  );

-- TODO 1: Buat CTE yang mengembalikan rata-rata berat badan berdasarkan jenis kelamin
-- TODO 2: Siswa mana saja yang memiliki berat badan di atas rata-rata menurut jenis kelamin

WITH "SiswaGender" AS (
  SELECT
    "jenis_kelamin",
    AVG("berat_badan") AS "rata_rata_berat_badan"
  FROM
    "Siswa"
  GROUP BY
    "jenis_kelamin"
)
SELECT 
  "S"."nama_lengkap", 
  "S"."jenis_kelamin", 
  "S"."berat_badan"
FROM "Siswa" AS "S"
  JOIN "SiswaGender" AS "SG" ON "S"."jenis_kelamin" = "SG"."jenis_kelamin"
WHERE
  "S"."berat_badan" >= "SG"."rata_rata_berat_badan";