-- Membuat data guru
INSERT INTO "Guru" VALUES
  ('AF', 'Ahmad Fauzi', 'pria', 'Matematika'),
  ('SA', 'Siti Aminah', 'wanita', 'Bahasa Indonesia'),
  ('BS', 'Budi Santoso', 'pria', 'Fisika'),
  ('DL', 'Dewi Lestari', 'wanita', 'Kimia'),
  ('RH', 'Rudi Hartono', 'pria', 'Biologi'),
  ('LM', 'Lina Marlina', 'wanita', 'Bahasa Inggris'),
  ('AS', 'Agus Salim', 'pria', 'Sejarah'),
  ('MS', 'Maya Sari', 'wanita', 'Geografi'),
  ('TS', 'Tono Supriyadi', 'pria', 'Ekonomi'),
  ('RW', 'Rina Wulandari', 'wanita', 'Sosiologi'),
  ('HG', 'Hendra Gunawan', 'pria', 'Seni Budaya'),
  ('YA', 'Yuni Astuti', 'wanita', 'Penjasorkes'),
  ('FP', 'Fajar Pratama', 'pria', 'TIK'),
  ('NK', 'Nina Kartika', 'wanita', 'PPKn'),
  ('DK', 'Dedi Kurniawan', 'pria', 'Matematika'),
  ('SD', 'Sari Dewanti', 'wanita', 'Bahasa Sunda'),
  ('IS', 'Imam Syafii', 'pria', 'Agama'),
  ('MP', 'Mega Putri', 'wanita', 'Kimia'),
  ('AW', 'Andi Wijaya', 'pria', 'Fisika'),
  ('F', 'Fitriani', 'wanita', 'Biologi');

-- Membuat data kelas
INSERT INTO "Kelas" VALUES
  -- Kelas 10
  ('10_A', 'Kelas X A', 'AF'),
  ('10_B', 'Kelas X B', 'SA'),
  ('10_C', 'Kelas X C', 'BS'),
  ('10_D', 'Kelas X D', 'DL'),
  ('10_E', 'Kelas X E', 'RH'),

  -- Kelas 11 IPA
  ('11_IPA_1', 'Kelas XI IPA 1', 'LM'),
  ('11_IPA_2', 'Kelas XI IPA 2', 'AS'),
  ('11_IPA_3', 'Kelas XI IPA 3', 'MS'),

  -- Kelas 11 IPS
  ('11_IPS_1', 'Kelas XI IPS 1', 'TS'),
  ('11_IPS_2', 'Kelas XI IPS 2', 'RW'),
  ('11_IPS_3', 'Kelas XI IPS 3', 'HG'),
  ('11_IPS_4', 'Kelas XI IPS 4', 'YA'),

  -- Kelas 12 IPA
  ('12_IPA_1', 'Kelas XII IPA 1', 'FP'),
  ('12_IPA_2', 'Kelas XII IPA 2', 'NK'),
  ('12_IPA_3', 'Kelas XII IPA 3', 'DK'),
  ('12_IPA_4', 'Kelas XII IPA 4', 'SD'),

  -- Kelas 12 IPS
  ('12_IPS_1', 'Kelas XII IPS 1', 'IS'),
  ('12_IPS_2', 'Kelas XII IPS 2', 'MP'),
  ('12_IPS_3', 'Kelas XII IPS 3', 'AW'),
  ('12_IPS_4', 'Kelas XII IPS 4', 'F');

INSERT INTO "Siswa" ("nomor_induk", "nama_lengkap", "jenis_kelamin", "kode_kelas_penempatan") VALUES
-- Kelas 10_A
('10001', 'Adi Pratama', 'pria', '10_A'),
('10002', 'Budi Hartono', 'pria', '10_A'),
('10003', 'Citra Dewi', 'wanita', '10_A'),
('10004', 'Dewi Lestari', 'wanita', '10_A'),
('10005', 'Eka Saputra', 'pria', '10_A'),
('10006', 'Fajar Ramadhan', 'pria', '10_A'),
('10007', 'Gita Sari', 'wanita', '10_A'),
('10008', 'Hendra Gunawan', 'pria', '10_A'),
('10009', 'Indah Permata', 'wanita', '10_A'),
('10010', 'Joko Susilo', 'pria', '10_A'),

-- Kelas 10_B
('10011', 'Kiki Amelia', 'wanita', '10_B'),
('10012', 'Lina Marlina', 'wanita', '10_B'),
('10013', 'Maya Sari', 'wanita', '10_B'),
('10014', 'Nina Kartika', 'wanita', '10_B'),
('10015', 'Oki Pratama', 'pria', '10_B'),
('10016', 'Putra Wijaya', 'pria', '10_B'),
('10017', 'Qori Rahma', 'wanita', '10_B'),
('10018', 'Rudi Hartono', 'pria', '10_B'),
('10019', 'Sari Dewanti', 'wanita', '10_B'),
('10020', 'Tono Supriyadi', 'pria', '10_B'),

-- Kelas 10_C
('10021', 'Umar Faruq', 'pria', '10_C'),
('10022', 'Vina Anggraini', 'wanita', '10_C'),
('10023', 'Wahyu Hidayat', 'pria', '10_C'),
('10024', 'Xenia Putri', 'wanita', '10_C'),
('10025', 'Yuni Astuti', 'wanita', '10_C'),
('10026', 'Zaki Ramadhan', 'pria', '10_C'),
('10027', 'Ayu Lestari', 'wanita', '10_C'),
('10028', 'Bambang Setiawan', 'pria', '10_C'),
('10029', 'Cici Paramitha', 'wanita', '10_C'),
('10030', 'Dedi Kurniawan', 'pria', '10_C'),

-- Kelas 10_D
('10031', 'Eka Putri', 'wanita', '10_D'),
('10032', 'Fajar Pratama', 'pria', '10_D'),
('10033', 'Gilang Saputra', 'pria', '10_D'),
('10034', 'Hanafi', 'pria', '10_D'),
('10035', 'Intan Permata', 'wanita', '10_D'),
('10036', 'Jihan Safitri', 'wanita', '10_D'),
('10037', 'Kurniawan', 'pria', '10_D'),
('10038', 'Laila Sari', 'wanita', '10_D'),
('10039', 'Mega Putri', 'wanita', '10_D'),
('10040', 'Naufal Rizki', 'pria', '10_D'),

-- Kelas 10_E
('10041', 'Oktaviani', 'wanita', '10_E'),
('10042', 'Putri Ayu', 'wanita', '10_E'),
('10043', 'Qomarudin', 'pria', '10_E'),
('10044', 'Rina Wulandari', 'wanita', '10_E'),
('10045', 'Satriawan', 'pria', '10_E'),
('10046', 'Tia Marlina', 'wanita', '10_E'),
('10047', 'Umi Kalsum', 'wanita', '10_E'),
('10048', 'Vino Pratama', 'pria', '10_E'),
('10049', 'Winda Sari', 'wanita', '10_E'),
('10050', 'Yusuf Maulana', 'pria', '10_E'),

-- Kelas 11_IPA_1
('11001', 'Aditia Pratama', 'pria', '11_IPA_1'),
('11002', 'Bella Safitri', 'wanita', '11_IPA_1'),
('11003', 'Cahya Ramadhan', 'pria', '11_IPA_1'),
('11004', 'Dian Lestari', 'wanita', '11_IPA_1'),
('11005', 'Erlangga', 'pria', '11_IPA_1'),
('11006', 'Fitria Sari', 'wanita', '11_IPA_1'),
('11007', 'Gilang Pratama', 'pria', '11_IPA_1'),
('11008', 'Hana Putri', 'wanita', '11_IPA_1'),
('11009', 'Irfan Maulana', 'pria', '11_IPA_1'),
('11010', 'Jihan Amelia', 'wanita', '11_IPA_1'),

-- Kelas 11_IPA_2
('11011', 'Kiki Ramadhan', 'pria', '11_IPA_2'),
('11012', 'Lina Sari', 'wanita', '11_IPA_2'),
('11013', 'Maya Putri', 'wanita', '11_IPA_2'),
('11014', 'Naufal Hidayat', 'pria', '11_IPA_2'),
('11015', 'Oktaviani', 'wanita', '11_IPA_2'),
('11016', 'Putra Pratama', 'pria', '11_IPA_2'),
('11017', 'Qori Safitri', 'wanita', '11_IPA_2'),
('11018', 'Rizki Maulana', 'pria', '11_IPA_2'),
('11019', 'Sari Amelia', 'wanita', '11_IPA_2'),
('11020', 'Tono Pratama', 'pria', '11_IPA_2'),

-- Kelas 11_IPA_3
('11021', 'Umar Hidayat', 'pria', '11_IPA_3'),
('11022', 'Vina Sari', 'wanita', '11_IPA_3'),
('11023', 'Wahyu Pratama', 'pria', '11_IPA_3'),
('11024', 'Xenia Amelia', 'wanita', '11_IPA_3'),
('11025', 'Yuni Marlina', 'wanita', '11_IPA_3'),
('11026', 'Zaki Pratama', 'pria', '11_IPA_3'),
('11027', 'Ayu Safitri', 'wanita', '11_IPA_3'),
('11028', 'Bambang Pratama', 'pria', '11_IPA_3'),
('11029', 'Cici Amelia', 'wanita', '11_IPA_3'),
('11030', 'Dedi Ramadhan', 'pria', '11_IPA_3'),

-- Kelas 11_IPS_1
('12001', 'Eka Pratama', 'pria', '11_IPS_1'),
('12002', 'Fitriani', 'wanita', '11_IPS_1'),
('12003', 'Gilang Sari', 'pria', '11_IPS_1'),
('12004', 'Hanafi', 'pria', '11_IPS_1'),
('12005', 'Intan Sari', 'wanita', '11_IPS_1'),
('12006', 'Jihan Putri', 'wanita', '11_IPS_1'),
('12007', 'Kurniawan', 'pria', '11_IPS_1'),
('12008', 'Laila Sari', 'wanita', '11_IPS_1'),
('12009', 'Mega Sari', 'wanita', '11_IPS_1'),
('12010', 'Naufal Pratama', 'pria', '11_IPS_1'),

-- Kelas 11_IPS_2
('12011', 'Oktaviani', 'wanita', '11_IPS_2'),
('12012', 'Putri Ayu', 'wanita', '11_IPS_2'),
('12013', 'Qomarudin', 'pria', '11_IPS_2'),
('12014', 'Rina Wulandari', 'wanita', '11_IPS_2'),
('12015', 'Satriawan', 'pria', '11_IPS_2'),
('12016', 'Tia Marlina', 'wanita', '11_IPS_2'),
('12017', 'Umi Kalsum', 'wanita', '11_IPS_2'),
('12018', 'Vino Pratama', 'pria', '11_IPS_2'),
('12019', 'Winda Sari', 'wanita', '11_IPS_2'),
('12020', 'Yusuf Maulana', 'pria', '11_IPS_2'),

-- Kelas 11_IPS_3
('12021', 'Aditia Pratama', 'pria', '11_IPS_3'),
('12022', 'Bella Safitri', 'wanita', '11_IPS_3'),
('12023', 'Cahya Ramadhan', 'pria', '11_IPS_3'),
('12024', 'Dian Lestari', 'wanita', '11_IPS_3'),
('12025', 'Erlangga', 'pria', '11_IPS_3'),
('12026', 'Fitria Sari', 'wanita', '11_IPS_3'),
('12027', 'Gilang Pratama', 'pria', '11_IPS_3'),
('12028', 'Hana Putri', 'wanita', '11_IPS_3'),
('12029', 'Irfan Maulana', 'pria', '11_IPS_3'),
('12030', 'Jihan Amelia', 'wanita', '11_IPS_3'),

-- Kelas 11_IPS_4
('12031', 'Kiki Ramadhan', 'pria', '11_IPS_4'),
('12032', 'Lina Sari', 'wanita', '11_IPS_4'),
('12033', 'Maya Putri', 'wanita', '11_IPS_4'),
('12034', 'Naufal Hidayat', 'pria', '11_IPS_4'),
('12035', 'Oktaviani', 'wanita', '11_IPS_4'),
('12036', 'Putra Pratama', 'pria', '11_IPS_4'),
('12037', 'Qori Safitri', 'wanita', '11_IPS_4'),
('12038', 'Rizki Maulana', 'pria', '11_IPS_4'),
('12039', 'Sari Amelia', 'wanita', '11_IPS_4'),
('12040', 'Tono Pratama', 'pria', '11_IPS_4'),

-- Kelas 12_IPA_1
('13001', 'Adi Wijaya', 'pria', '12_IPA_1'),
('13002', 'Bella Pratiwi', 'wanita', '12_IPA_1'),
('13003', 'Citra Anggraini', 'wanita', '12_IPA_1'),
('13004', 'Dewi Sartika', 'wanita', '12_IPA_1'),
('13005', 'Eka Pratama', 'pria', '12_IPA_1'),
('13006', 'Fajar Nugraha', 'pria', '12_IPA_1'),
('13007', 'Gita Permata', 'wanita', '12_IPA_1'),
('13008', 'Hendra Saputra', 'pria', '12_IPA_1'),
('13009', 'Indah Lestari', 'wanita', '12_IPA_1'),
('13010', 'Joko Santoso', 'pria', '12_IPA_1'),

-- Kelas 12_IPA_2
('13011', 'Kiki Amelia', 'wanita', '12_IPA_2'),
('13012', 'Lina Marlina', 'wanita', '12_IPA_2'),
('13013', 'Maya Sari', 'wanita', '12_IPA_2'),
('13014', 'Nina Kartika', 'wanita', '12_IPA_2'),
('13015', 'Oki Pratama', 'pria', '12_IPA_2'),
('13016', 'Putra Wijaya', 'pria', '12_IPA_2'),
('13017', 'Qori Rahma', 'wanita', '12_IPA_2'),
('13018', 'Rudi Hartono', 'pria', '12_IPA_2'),
('13019', 'Sari Dewanti', 'wanita', '12_IPA_2'),
('13020', 'Tono Supriyadi', 'pria', '12_IPA_2'),

-- Kelas 12_IPA_3
('13021', 'Umar Faruq', 'pria', '12_IPA_3'),
('13022', 'Vina Anggraini', 'wanita', '12_IPA_3'),
('13023', 'Wahyu Hidayat', 'pria', '12_IPA_3'),
('13024', 'Xenia Putri', 'wanita', '12_IPA_3'),
('13025', 'Yuni Astuti', 'wanita', '12_IPA_3'),
('13026', 'Zaki Ramadhan', 'pria', '12_IPA_3'),
('13027', 'Ayu Lestari', 'wanita', '12_IPA_3'),
('13028', 'Bambang Setiawan', 'pria', '12_IPA_3'),
('13029', 'Cici Paramitha', 'wanita', '12_IPA_3'),
('13030', 'Dedi Kurniawan', 'pria', '12_IPA_3'),

-- Kelas 12_IPA_4
('13031', 'Eka Putri', 'wanita', '12_IPA_4'),
('13032', 'Fajar Pratama', 'pria', '12_IPA_4'),
('13033', 'Gilang Saputra', 'pria', '12_IPA_4'),
('13034', 'Hanafi', 'pria', '12_IPA_4'),
('13035', 'Intan Permata', 'wanita', '12_IPA_4'),
('13036', 'Jihan Safitri', 'wanita', '12_IPA_4'),
('13037', 'Kurniawan', 'pria', '12_IPA_4'),
('13038', 'Laila Sari', 'wanita', '12_IPA_4'),
('13039', 'Mega Putri', 'wanita', '12_IPA_4'),
('13040', 'Naufal Rizki', 'pria', '12_IPA_4'),

-- Kelas 12_IPS_1
('14001', 'Oktaviani', 'wanita', '12_IPS_1'),
('14002', 'Putri Ayu', 'wanita', '12_IPS_1'),
('14003', 'Qomarudin', 'pria', '12_IPS_1'),
('14004', 'Rina Wulandari', 'wanita', '12_IPS_1'),
('14005', 'Satriawan', 'pria', '12_IPS_1'),
('14006', 'Tia Marlina', 'wanita', '12_IPS_1'),
('14007', 'Umi Kalsum', 'wanita', '12_IPS_1'),
('14008', 'Vino Pratama', 'pria', '12_IPS_1'),
('14009', 'Winda Sari', 'wanita', '12_IPS_1'),
('14010', 'Yusuf Maulana', 'pria', '12_IPS_1'),

-- Kelas 12_IPS_2
('14011', 'Aditia Pratama', 'pria', '12_IPS_2'),
('14012', 'Bella Safitri', 'wanita', '12_IPS_2'),
('14013', 'Cahya Ramadhan', 'pria', '12_IPS_2'),
('14014', 'Dian Lestari', 'wanita', '12_IPS_2'),
('14015', 'Erlangga', 'pria', '12_IPS_2'),
('14016', 'Fitria Sari', 'wanita', '12_IPS_2'),
('14017', 'Gilang Pratama', 'pria', '12_IPS_2'),
('14018', 'Hana Putri', 'wanita', '12_IPS_2'),
('14019', 'Irfan Maulana', 'pria', '12_IPS_2'),
('14020', 'Jihan Amelia', 'wanita', '12_IPS_2'),

-- Kelas 12_IPS_3
('14021', 'Kiki Ramadhan', 'pria', '12_IPS_3'),
('14022', 'Lina Sari', 'wanita', '12_IPS_3'),
('14023', 'Maya Putri', 'wanita', '12_IPS_3'),
('14024', 'Naufal Hidayat', 'pria', '12_IPS_3'),
('14025', 'Oktaviani', 'wanita', '12_IPS_3'),
('14026', 'Putra Pratama', 'pria', '12_IPS_3'),
('14027', 'Qori Safitri', 'wanita', '12_IPS_3'),
('14028', 'Rizki Maulana', 'pria', '12_IPS_3'),
('14029', 'Sari Amelia', 'wanita', '12_IPS_3'),
('14030', 'Tono Pratama', 'pria', '12_IPS_3'),

-- Kelas 12_IPS_4
('14031', 'Umar Hidayat', 'pria', '12_IPS_4'),
('14032', 'Vina Sari', 'wanita', '12_IPS_4'),
('14033', 'Wahyu Pratama', 'pria', '12_IPS_4'),
('14034', 'Xenia Amelia', 'wanita', '12_IPS_4'),
('14035', 'Yuni Marlina', 'wanita', '12_IPS_4'),
('14036', 'Zaki Pratama', 'pria', '12_IPS_4'),
('14037', 'Ayu Safitri', 'wanita', '12_IPS_4'),
('14038', 'Bambang Pratama', 'pria', '12_IPS_4'),
('14039', 'Cici Amelia', 'wanita', '12_IPS_4'),
('14040', 'Dedi Ramadhan', 'pria', '12_IPS_4');

SELECT * FROM "Guru";
SELECT * FROM "Kelas";
SELECT * FROM "Siswa";