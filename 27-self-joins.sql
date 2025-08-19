CREATE TABLE "MataPelajaran" (
  "kode"  VARCHAR(5)   PRIMARY KEY,
  "nama"  VARCHAR(30)  NOT NULL,
  "kode_prasyarat"  VARCHAR(5)  REFERENCES "MataPelajaran"("kode")
);

INSERT INTO "MataPelajaran" VALUES 
  ('ENG', 'Bahasa Inggris', NULL),
  ('MTK', 'Matematika', NULL),
  ('IF', 'Informatika', NULL),
  ('FIS', 'Fisika', 'MTK'),
  ('KIM', 'Kimia', 'MTK');

SELECT * FROM "MataPelajaran";

SELECT
  "mp"."nama" AS "Mata Pelajaran",
  "mps"."nama" AS "Mata Pelajaran Pra-syarat"
FROM "MataPelajaran" AS "mp"
  LEFT JOIN "MataPelajaran" AS "mps" ON "mp"."kode_prasyarat" = "mps"."kode";
