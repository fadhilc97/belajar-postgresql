CREATE TYPE "JenisKelamin" AS ENUM('pria','wanita');
CREATE TYPE "AlasanTidakHadir" AS ENUM('sakit', 'izin', 'alpha');

CREATE TABLE "Guru" (
  "kode_guru"       VARCHAR(3)      PRIMARY KEY,
  "nama_lengkap"    VARCHAR(50)     NOT NULL,
  "jenis_kelamin"   "JenisKelamin"  NOT NULL,
  "bidang_keahlian" VARCHAR(20)     NOT NULL
);

CREATE TABLE "Kelas" (
  "kode_kelas"      VARCHAR(10)      PRIMARY KEY,
  "nama"            VARCHAR(50)      NOT NULL,
  "kode_wali_kelas" VARCHAR(3)       UNIQUE REFERENCES "Guru"("kode_guru") ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE "Siswa" (
  "nomor_induk"           VARCHAR(10)      PRIMARY KEY,
  "nama_lengkap"          VARCHAR(50)      NOT NULL,
  "jenis_kelamin"         "JenisKelamin"   NOT NULL,
  "kode_kelas_penempatan" VARCHAR(10)      REFERENCES "Kelas" ("kode_kelas") ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE "Kehadiran" (
  "kehadiran_id"    SERIAL      PRIMARY KEY,
  "tanggal"         DATE        NOT NULL,
  "kode_kelas"      VARCHAR(10) NOT NULL REFERENCES "Kelas"("kode_kelas") ON DELETE SET NULL ON UPDATE CASCADE,
  "kode_wali_kelas" VARCHAR(3)  NOT NULL REFERENCES "Guru"("kode_guru") ON DELETE SET NULL ON UPDATE CASCADE,
  "tahun_ajaran"    VARCHAR(15) NOT NULL
);

CREATE TABLE "SiswaKehadiran" (
  "sesi_id"             SERIAL        PRIMARY KEY,
  "kehadiran_id"        INT           REFERENCES "Kehadiran"("kehadiran_id") ON DELETE CASCADE,
  "nomor_induk_siswa"   VARCHAR(10)   REFERENCES "Siswa"("nomor_induk") ON DELETE CASCADE ON UPDATE CASCADE,
  "hadir"               BOOLEAN,
  "alasan_tidak_hadir"  "AlasanTidakHadir",
  "keterangan"          TEXT
);
