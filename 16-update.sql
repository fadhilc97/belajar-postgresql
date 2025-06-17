/* 1. Buat data siswa baru sebagai berikut:
    - nomor induk = 10011
    - nama lengkap = Rioo
    - jenis_kelamin = pria
    - alamat = Jl. Semangka
    - berat badan = 49 kg
    - tinggi badan = 155 kg
    - tempat lahir = Bogor
    - tanggal lahir = 30 Mei 2010
*/
INSERT INTO "Siswa" VALUES ('10011', 'Rioo', 'pria', 'Jl. Semangka', 49, 155, 'Bogor', '2010-05-30');

/* 2. Namun, setelah data pada no.1 dimasukkan, terdapat kesalahan penilisan nama yang seharusnya 'Rio'. Perbaiki data tersebut */
UPDATE "Siswa"
SET
    "nama_lengkap" = 'Rio'
WHERE
    "nomor_induk" = '10011';

/* 3. Lengkapi data siswa yang bernama Andi,telah diketahui alamat tempat tinggal di Jl.Pahlawan dan tinggi badan setelah pemeriksaan kesehatan adalah 145 cm. */
UPDATE "Siswa"
SET
    "alamat" = 'Jl. Pahlawan',
    "tinggi_badan" = 145
WHERE
    "nomor_induk" = '10001';

/* 4. Lengkapi alamat siswa sebagai berikut:
    - Elyn dan Chandra bertempat tinggal di Jl.Kutilang
    - Fifi bertempat tinggal di Jl.Nangka
 */
UPDATE "Siswa"
SET
    "alamat" = 'Jl. Kutilang'
WHERE
    "nomor_induk" IN ('10006', '10008');
UPDATE "Siswa"
SET
    "alamat" = 'Jl. Nangka'
WHERE
    "nomor_induk" = '10009';

/* 5. Lengkapi data berat badan dan tinggi badan sebagai berikut:
    - Andi = 160 cm
    - Ani = 55 kg
    - Dony = 46 kg dan 157 cm
    - Chandra = 59 kg dan 155 cm
    - Fifi = 58 kg */
UPDATE "Siswa" SET "tinggi_badan" = 160 WHERE "nomor_induk" = '10001';
UPDATE "Siswa" SET "berat_badan" = 55 WHERE "nomor_induk" = '10002';
UPDATE "Siswa" SET "berat_badan" = 46, "tinggi_badan" = 157 WHERE "nomor_induk" = '10005';
UPDATE "Siswa" SET "berat_badan" = 59, "tinggi_badan" = 155 WHERE "nomor_induk" = '10008';
UPDATE "Siswa" SET "berat_badan" = 58 WHERE "nomor_induk" = '10009';

-- Pilih semua data Siswa
SELECT * FROM "Siswa";