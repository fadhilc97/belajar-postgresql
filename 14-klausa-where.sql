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
  "tinggi_badan"  INT
);

-- Masukkan beberapa data
INSERT INTO "Siswa" VALUES
  ('10001', 'Andi', 'pria', NULL, 51, NULL),
  ('10002', 'Ani', 'wanita', 'Jl. Nangka', NULL, 155),
  ('10003', 'Budi', 'pria', 'Jl. Elang', 50, 157),
  ('10004', 'Cici', 'wanita', 'Jl. Apel', 41, 138),
  ('10005', 'Dony', 'pria', 'Jl. Manggis', NULL, NULL),
  ('10006', 'Elyn', 'wanita', NULL, 55, 159),
  ('10007', 'Bagas', 'pria', 'Jl. Kucing', 60, 150),
  ('10008', 'Chandra', 'pria', NULL, NULL, NULL),
  ('10009', 'Fifi', 'wanita', NULL, NULL, 142),
  ('10010', 'Bella', 'wanita', 'Jl. Mawar', 43, 140);

-- Pilih semua data siswa
SELECT * FROM "Siswa";

/* 1. Siswa mana saja yang berjenis kelamin pria ? */
SELECT "nama_lengkap", "jenis_kelamin" FROM "Siswa" WHERE "jenis_kelamin" = 'pria';

/* 2. Siswa mana saja yang tinggi badannya minimal 150 cm ? */ 
SELECT "nama_lengkap", "tinggi_badan" FROM "Siswa" WHERE "tinggi_badan" >= 150;

/* 3. Untuk keperluan seleksi pertandingan bola basket antar siswa di tingkat kabupaten kategori putra, 
pelatih menginginkan siswa yang berminat harus memiliki tinggi badan minimal 150 cm. 
Siapakah yang berpotensi memenuhi persyaratan tersebut ? */
SELECT 
  "nama_lengkap", 
  "jenis_kelamin", 
  "tinggi_badan"
FROM "Siswa"
WHERE 
  "jenis_kelamin" = 'pria' 
  AND "tinggi_badan" >= 150;

/* 4. Siswa mana saja yang memiliki berat badan berkisar antara 41 sampai dengan 45 kg ? */
SELECT
  "nama_lengkap",
  "berat_badan"
FROM "Siswa"
WHERE
  "berat_badan" BETWEEN 41 AND 45;

/* 5. Siswa mana saja yang belum terdata alamat tempat tinggalnya ? */
SELECT
  "nama_lengkap",
  "alamat"
FROM
  "Siswa"
WHERE
  "alamat" IS NULL;

/* 6. Pelatih basket memiliki kendala dalam proses seleksi karena partisipasinya yang masih minim. 
Rupanya, ada beberapa siswa yang belum terdata tinggi badannya. 
Siapa saja siswa yang belum terdata tinggi badannya ? */
SELECT 
  "nama_lengkap",
  "tinggi_badan"
FROM "Siswa"
WHERE
  "tinggi_badan" IS NULL;

/* 7. Berat badan ideal diukur dengan Index Massa Tubuh atau Body Mass Index (BMI). 
Index tersebut diperoleh jika diketahui tinggi badan dan berat badan. 
Dengan data saat ini, siapa saja yang dapat diketahui nilai BMI terlebih dahulu ? */
SELECT
  "nama_lengkap",
  "tinggi_badan",
  "berat_badan"
FROM "Siswa"
WHERE
  "tinggi_badan" IS NOT NULL
  AND "berat_badan" IS NOT NULL;

/* 8. UKS di sekolah tersebut mengadakan pemeriksaan kesehatan rutin untuk seluruh siswa yang terdata. 
Namun terdapat beberapa siswa yang belum terdata baik tinggi badan maupun berat badannya dan siswa tersebut akan diprioritaskan. 
Siapa saja siswa yang mendapat prioritas tersebut ? */
SELECT
  "nama_lengkap",
  "tinggi_badan",
  "berat_badan"
FROM "Siswa"
WHERE
  "tinggi_badan" IS NULL
  OR "berat_badan" IS NULL;