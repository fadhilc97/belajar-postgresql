-- MENAMBAHKAN FOREIGN KEY

-- Kasus: Setiap "Kelas" diisi oleh banyak "Siswa" (1-to-n)

-- Pra-syarat: Buat tabel referensi ("Kelas")
CREATE TABLE "Kelas" (
  "kode_kelas"  VARCHAR(10) PRIMARY KEY,
  "nama_kelas"  VARCHAR(20) NOT NULL
);

-- Tambahkan kolom "kode_kelas" di tabel "Siswa" sebagai FOREIGN KEY
ALTER TABLE "Siswa"
ADD COLUMN "kode_kelas" VARCHAR(10)
REFERENCES "Kelas"("kode_kelas");

-- Masukkan data di tabel referensi ("Kelas")
SELECT * FROM "Kelas";
INSERT INTO "Kelas" ("kode_kelas", "nama_kelas") 
VALUES ('10_A', '10 A'), ('10_B', '10 B'), ('11_IPA_1', '11 IPA 1'), ('11_IPA_2', '11 IPA 2'), ('12_IPA_1', '12 IPA 1'), ('12_IPA_2', '12 IPA 2');

-- Masukkan/ubah data di tabel "Siswa" yang mengandung foreign key
SELECT * FROM "Kelas";
SELECT "nomor_induk", "nama_lengkap", "kode_kelas" FROM "Siswa" ORDER BY "nomor_induk";

UPDATE "Siswa" SET "kode_kelas" = '10_C' WHERE "nomor_induk" = '10002';