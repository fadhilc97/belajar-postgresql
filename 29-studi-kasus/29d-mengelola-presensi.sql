-- RUANG LINGKUP --
-- Kelas: X A
-- Periode: Agustus 2025
-- Tahun ajaran: 2025/2026
-- Hari sekolah efektif: Senin - Jumat, tidak termasuk hari libur nasional

-- MATERI TAMBAHAN --

-- PENGELOLAAN KEHADIRAN --

-- Pembuatan data kehadiran
SELECT * FROM "Kelas";
SELECT * FROM "Kehadiran";

INSERT INTO "Kehadiran" ("tanggal", "kode_kelas", "kode_wali_kelas", "tahun_ajaran")
SELECT 
  "tanggal"::DATE, '10_A', 'AF', '2025/2026'
FROM 
  GENERATE_SERIES('2025-08-01'::DATE, '2025-08-31'::DATE, interval '1 day') AS "tanggal"
WHERE
  EXTRACT(DOW FROM "tanggal") BETWEEN 1 AND 5;

-- Pembuatan data kehadiran siswa
SELECT * FROM "Siswa";
SELECT * FROM "Kehadiran";
SELECT * FROM "SiswaKehadiran" ORDER BY "sesi_id";

INSERT INTO "SiswaKehadiran" ("kehadiran_id", "nomor_induk_siswa", "hadir", "alasan_tidak_hadir", "keterangan")
SELECT
  "K"."kehadiran_id",
  "S"."nomor_induk",
  TRUE,
  NULL,
  NULL
FROM "Kehadiran" AS "K"
  CROSS JOIN "Siswa" AS "S"
WHERE
  "K"."kode_kelas" = '10_A'
  AND "S"."kode_kelas_penempatan" = '10_A';

-- Ubah beberapa siswa yang tidak hadir karena sakit
UPDATE "SiswaKehadiran"
SET
  "hadir" = FALSE,
  "alasan_tidak_hadir" = 'sakit',
  "keterangan" = 'Batuk dan Pilek'
WHERE
  (
    "kehadiran_id" = 28
    AND "nomor_induk_siswa" IN ('10001', '10010')
  )
  OR
  (
    "kehadiran_id" = 32
    AND "nomor_induk_siswa" IN ('10002')
  )
  OR
  (
    "kehadiran_id" = 46
    AND "nomor_induk_siswa" IN ('10005')
  );

-- Ubah beberapa siswa yang tidak hadir karena izin
UPDATE "SiswaKehadiran"
SET
  "hadir" = FALSE,
  "alasan_tidak_hadir" = 'izin',
  "keterangan" = 'Kegiatan Ekstrakurikuler'
WHERE
  (
    "kehadiran_id" = 30
    AND "nomor_induk_siswa" IN ('10004', '10005')
  )
  OR
  (
    "kehadiran_id" = 40
    AND "nomor_induk_siswa" IN ('10004', '10005')
  );

-- Ubah beberapa siswa yang tidak hadir karena alpha
UPDATE "SiswaKehadiran"
SET
  "hadir" = FALSE,
  "alasan_tidak_hadir" = 'alpha',
  "keterangan" = 'Tidak ada pemberitahuan'
WHERE
  (
    "kehadiran_id" = 29
    AND "nomor_induk_siswa" IN ('10003')
  )
  OR
  (
    "kehadiran_id" = 35
    AND "nomor_induk_siswa" IN ('10007', '10008')
  );

-- REKAPITULASI KEHADIRAN --
SELECT * 
FROM "SiswaKehadiran" 
WHERE "hadir" = FALSE
ORDER BY "sesi_id";

-- 1. Banyak sakit, izin, dan alpha
SELECT "SK"."alasan_tidak_hadir", COUNT(*) AS "banyaknya"
FROM "SiswaKehadiran" AS "SK"
  JOIN "Kehadiran" AS "K" ON "SK"."kehadiran_id" = "K"."kehadiran_id"
WHERE 
  "SK"."hadir" = FALSE
  AND "K"."kode_kelas" = '10_A'
GROUP BY "SK"."alasan_tidak_hadir";

-- 1a. Pada periode Agustus 2025
SELECT "SK"."alasan_tidak_hadir", COUNT(*) AS "banyaknya"
FROM "SiswaKehadiran" AS "SK"
  JOIN "Kehadiran" AS "K" ON "SK"."kehadiran_id" = "K"."kehadiran_id"
WHERE 
  "SK"."hadir" = FALSE
  AND "K"."tanggal" BETWEEN '2025-08-01' AND '2025-08-31'
  AND "K"."kode_kelas" = '10_A'
GROUP BY "SK"."alasan_tidak_hadir";

-- 1b. Berdasarkan siswa pada periode Agustus 2025
SELECT "S"."nama_lengkap", COUNT(*) AS "banyaknya"
FROM "SiswaKehadiran" AS "SK"
  JOIN "Siswa" AS "S" ON "SK"."nomor_induk_siswa" = "S"."nomor_induk"
  JOIN "Kehadiran" AS "K" ON "SK"."kehadiran_id" = "K"."kehadiran_id"
WHERE 
  "SK"."hadir" = FALSE
  AND "K"."tanggal" BETWEEN '2025-08-01' AND '2025-08-31'
  AND "K"."kode_kelas" = '10_A'
GROUP BY "S"."nama_lengkap"
ORDER BY "banyaknya" DESC;