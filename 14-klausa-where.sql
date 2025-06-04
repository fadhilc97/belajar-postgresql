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

-- Siswa mana saja yang berjenis kelamin pria ?

-- Siswa mana saja yang tinggi badannya minimal 150 cm ? 

-- Untuk keperluan seleksi pertandingan bola basket antar siswa di tingkat kabupaten kategori putra, pelatih menginginkan siswa yang berminat harus memiliki tinggi badan minimal 150 cm. Siapakah yang berpotensi memenuhi persyaratan tersebut ?

-- Siswa mana saja yang memiliki berat badan berkisar antara 41 sampai dengan 45 kg ?

-- Siswa mana saja yang belum terdata alamat tempat tinggalnya ?

-- Pelatih basket memiliki kendala dalam proses seleksi karena partisipasinya yang masih minim. Rupanya, ada beberapa siswa yang belum terdata tinggi badannya. Siapa saja siswa yang belum terdata tinggi badannya ?

-- Berat badan ideal diukur dengan Index Massa Tubuh atau Body Mass Index (BMI). Index tersebut diperoleh jika diketahui tinggi badan dan berat badan. Dengan data saat ini, siapa saja yang dapat diketahui nilai BMI terlebih dahulu ?

-- UKS di sekolah tersebut mengadakan pemeriksaan kesehatan rutin untuk seluruh siswa yang terdata. Namun terdapat beberapa siswa yang belum terdata baik tinggi badan maupun berat badannya dan siswa tersebut akan diprioritaskan. Siapa saja siswa yang mendapat prioritas tersebut ?