-- Pilih seluruh data siswa
SELECT * FROM "Siswa";

-- 1. Urutkan data siswa berdasarkan urutan abjad dari nama lengkap
SELECT "nama_lengkap", "jenis_kelamin"
FROM "Siswa"
ORDER BY "nama_lengkap";

-- 2. Urutkan data siswa berdasarkan berat badan dari terberat. Jika terdapat berat badan yang sama, maka diurutkan berdasarkan tinggi badan dari tertinggi.
SELECT "nama_lengkap", "jenis_kelamin", "berat_badan", "tinggi_badan"
FROM "Siswa"
ORDER BY "berat_badan" DESC, "tinggi_badan" DESC;

-- 3. Urutkan data siswa pria berdasarkan tinggi badan yang tertinggi
SELECT "nama_lengkap", "jenis_kelamin", "tinggi_badan"
FROM "Siswa"
WHERE "jenis_kelamin" = 'pria'
ORDER BY "tinggi_badan" DESC;