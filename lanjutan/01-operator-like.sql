-- Mencocokkan awalan
SELECT 'abc' LIKE 'a%';

-- Mencocokkan akhiran
SELECT 'abc' LIKE '%bc';

-- Mencocokkan kandungan karakter
SELECT 'debc' LIKE '%bc%';
SELECT 'abcde' LIKE '%bd%';

-- Mencocokkan setiap karakter
SELECT 'abc' LIKE 'a__';
SELECT 'abc' LIKE 'a_%';
SELECT 'abc' LIKE '%b_';
SELECT 'Fadhil' LIKE 'Fadh_l';

-- Pencarian data siswa
SELECT * 
FROM "Siswa"
WHERE "nama_lengkap" LIKE '%niawa%'
ORDER BY "nama_lengkap";

SELECT * 
FROM "Siswa"
WHERE "nama_lengkap" ILIKE '%c%'
ORDER BY "nama_lengkap";