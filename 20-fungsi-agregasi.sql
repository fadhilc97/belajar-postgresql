-- Pilih semua data
SELECT * FROM "Siswa";

-- 1. Banyak baris (COUNT)
SELECT COUNT(*) FROM "Siswa";

-- 2. Jumlah data (SUM)
SELECT SUM("tinggi_badan") from "Siswa";
SELECT SUM("berat_badan") from "Siswa";

-- 3. Rata-rata data (AVG)
SELECT AVG("tinggi_badan") from "Siswa";
SELECT AVG("berat_badan") from "Siswa";

-- 4. Nilai minimum (MIN)
SELECT MIN("tinggi_badan") from "Siswa";
SELECT MIN("berat_badan") from "Siswa";

-- 5. Nilai maksimum (MAX)
SELECT MAX("tinggi_badan") from "Siswa";
SELECT MAX("berat_badan") from "Siswa";
