-- RUANG LINGKUP --
-- Kelas: X A
-- Periode: Juli - Agustus 2025
-- Tahun ajaran: 2025/2026
-- Hari sekolah efektif: Senin - Jumat, tidak termasuk hari libur nasional

-- PENGELOLAAN KEHADIRAN --

SELECT 
  tanggal::date,
  '10_A',
  'AF',
  '2025/2026'
FROM generate_series('2025-08-01'::date, '2025-08-31'::date, INTERVAL '1 day') AS tanggal
WHERE EXTRACT(DOW FROM tanggal) NOT IN (0, 6);

-- Pembuatan data kehadiran
INSERT INTO "Kehadiran" ("tanggal", "kode_kelas", "kode_wali_kelas", "tahun_ajaran")
SELECT 
  tanggal::date,
  '10_A',
  'AF',
  '2025/2026'
FROM generate_series('2025-08-01'::date, '2025-08-31'::date, INTERVAL '1 day') AS tanggal
WHERE EXTRACT(DOW FROM tanggal) NOT IN (0, 6);

SELECT * FROM "Kehadiran";

-- Pembuatan data kehadiran siswa
SELECT 1, "nomor_induk", TRUE, NULL, NULL 
FROM "Siswa" 
WHERE "kode_kelas_penempatan" = '10_A';

INSERT INTO "SiswaKehadiran" ("kehadiran_id", "nomor_induk_siswa", "hadir", "alasan_tidak_hadir", "keterangan") 
SELECT "K"."kehadiran_id", "S"."nomor_induk", TRUE, NULL, NULL
FROM "Kehadiran" AS "K"
CROSS JOIN "Siswa" AS "S"
WHERE "S"."kode_kelas_penempatan" = '10_A';

SELECT * FROM "SiswaKehadiran" ORDER BY "sesi_id";

-- Ubah beberapa siswa yang tidak hadir karena sakit

UPDATE "SiswaKehadiran"
SET
  "hadir" = FALSE,
  "alasan_tidak_hadir" = 'sakit',
  "keterangan" = 'batuk, pilek dan demam'
WHERE 
("kehadiran_id" = 1 AND "nomor_induk_siswa" IN ('10003', '10010'))
OR ("kehadiran_id" = 5 AND "nomor_induk_siswa" IN ('10003', '10004'))
OR ("kehadiran_id" = 9 AND "nomor_induk_siswa" IN ('10001', '10002'))
OR ("kehadiran_id" = 10 AND "nomor_induk_siswa" IN ('10008'))
OR ("kehadiran_id" = 20 AND "nomor_induk_siswa" IN ('10003'));

-- Ubah beberapa siswa yang tidak hadir karena izin

UPDATE "SiswaKehadiran"
SET
  "hadir" = FALSE,
  "alasan_tidak_hadir" = 'izin',
  "keterangan" = 'Acara ekstrakurikuler'
WHERE 
("kehadiran_id" = 1 AND "nomor_induk_siswa" IN ('10002'))
OR ("kehadiran_id" = 5 AND "nomor_induk_siswa" IN ('10001', '10002'))
OR ("kehadiran_id" = 6 AND "nomor_induk_siswa" IN ('10001'))
OR ("kehadiran_id" = 15 AND "nomor_induk_siswa" IN ('10004', '10005'))
OR ("kehadiran_id" = 18 AND "nomor_induk_siswa" IN ('10010'))
OR ("kehadiran_id" = 20 AND "nomor_induk_siswa" IN ('10001', '10002', '10003'));

-- Ubah beberapa siswa yang tidak hadir karena alpha

UPDATE "SiswaKehadiran"
SET
  "hadir" = FALSE,
  "alasan_tidak_hadir" = 'alpha',
  "keterangan" = 'Tidak ada pemberitahuan'
WHERE 
("kehadiran_id" = 2 AND "nomor_induk_siswa" IN ('10003'))
OR ("kehadiran_id" = 3 AND "nomor_induk_siswa" IN ('10009'))
OR ("kehadiran_id" = 11 AND "nomor_induk_siswa" IN ('10001', '10002'))
OR ("kehadiran_id" = 19 AND "nomor_induk_siswa" IN ('10002'));


-- REKAPITULASI KEHADIRAN --

-- 1. Banyak sakit, izin, dan alpha
SELECT "SK"."alasan_tidak_hadir", COUNT(*)
FROM "SiswaKehadiran" AS "SK"
  JOIN "Kehadiran" AS "K" ON "SK"."kehadiran_id" = "K"."kehadiran_id"
WHERE 
  "K"."kode_kelas" = '10_A'
  AND "SK"."hadir" = FALSE
GROUP BY "SK"."alasan_tidak_hadir";

-- 1a. Pada periode Agustus 2025
SELECT "SK"."alasan_tidak_hadir", COUNT(*)
FROM "SiswaKehadiran" AS "SK"
  JOIN "Kehadiran" AS "K" ON "SK"."kehadiran_id" = "K"."kehadiran_id"
WHERE 
  "K"."kode_kelas" = '10_A'
  AND "SK"."hadir" = FALSE
  AND "K"."tanggal" BETWEEN '2025-08-01' AND '2025-08-31'
GROUP BY "SK"."alasan_tidak_hadir";

-- 1b. Berdasarkan siswa pada periode Agustus 2025
SELECT "S"."nama_lengkap", COUNT(*)
FROM "SiswaKehadiran" AS "SK"
  JOIN "Siswa" AS "S" ON "S"."nomor_induk" = "SK"."nomor_induk_siswa"
  JOIN "Kehadiran" AS "K" ON "K"."kehadiran_id" = "SK"."kehadiran_id"
WHERE 
  "K"."kode_kelas" = '10_A'
  AND "SK"."hadir" = FALSE
  AND "K"."tanggal" BETWEEN '2025-08-01' AND '2025-08-31'
GROUP BY "S"."nama_lengkap";