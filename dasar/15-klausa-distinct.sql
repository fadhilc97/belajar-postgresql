-- Hapus tabel siswa
/* DISCLAIMER: Kedepan tidak akan selalu diawali dengan menghapus tabel,
karena data yang sudah ada harus tetap dijaga. 
Ini bertujuan untuk mengulang perintah SQL pada pembahasan sebelumnya. */
DROP TABLE "Siswa";

-- Buat tabel siswa
CREATE TABLE "Siswa"(
  "nomor_induk"   VARCHAR(10)   PRIMARY KEY,
  "nama_lengkap"  VARCHAR(100)  NOT NULL,
  "jenis_kelamin" VARCHAR(6)    NOT NULL,
  "alamat"        TEXT,
  "berat_badan"   INT,
  "tinggi_badan"  INT,
  "tempat_lahir"  VARCHAR(100),
  "tanggal_lahir" DATE
);

-- Masukkan beberapa data
INSERT INTO "Siswa" VALUES
  ('10001', 'Andi', 'pria', NULL, 51, NULL, 'Jakarta', '2007-12-20'),
  ('10002', 'Ani', 'wanita', 'Jl. Nangka', NULL, 155, 'Bandung', '2008-01-05'),
  ('10003', 'Budi', 'pria', 'Jl. Elang', 50, 157, 'Bandung', '2007-05-09'),
  ('10004', 'Cici', 'wanita', 'Jl. Apel', 41, 138, 'Jakarta', '2009-10-10'),
  ('10005', 'Dony', 'pria', 'Jl. Manggis', NULL, NULL, 'Batam', '2008-09-30'),
  ('10006', 'Elyn', 'wanita', NULL, 55, 159, 'Batam', '2009-11-02'),
  ('10007', 'Bagas', 'pria', 'Jl. Kucing', 60, 150, 'Samarinda', '2008-03-31'),
  ('10008', 'Chandra', 'pria', NULL, NULL, NULL, 'Denpasar', '2010-08-24'),
  ('10009', 'Fifi', 'wanita', NULL, NULL, 142, 'Denpasar', '2010-10-02'),
  ('10010', 'Bella', 'wanita', 'Jl. Mawar', 43, 140, 'Surabaya', '2009-07-09');

-- Pilih semua data siswa
SELECT * FROM "Siswa";

-- Apa saja tempat kelahiran dari siswa yang terdaftar ?
SELECT DISTINCT("tempat_lahir") FROM "Siswa";