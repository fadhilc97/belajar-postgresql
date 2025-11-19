SELECT * FROM "Siswa";

-- Kasus 1: Data alamat siswa
CREATE VIEW "SiswaAlamat" AS
  SELECT
    "nama_lengkap",
    "alamat"
  FROM
    "Siswa";

SELECT * FROM "SiswaAlamat";

-- Kasus 2: Data BMI (Body Mass Index) siswa
-- BMI = Berat badan / (Tinggi badan dalam meter) ^ 2

CREATE VIEW "SiswaBMI" AS
  SELECT
    "nama_lengkap",
    "berat_badan",
    "tinggi_badan",
    ROUND(
      "berat_badan"::NUMERIC / POWER("tinggi_badan"::NUMERIC / 100, 2),
      2
    ) AS "bmi"
  FROM
    "Siswa";

SELECT "nama_lengkap", "bmi" 
FROM "SiswaBMI" 
WHERE "bmi" BETWEEN 18.5 AND 24.9;