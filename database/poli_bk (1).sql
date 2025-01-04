-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2025 at 05:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poli_bk`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_poli`
--

CREATE TABLE `daftar_poli` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_pasien` int(11) UNSIGNED NOT NULL,
  `id_jadwal` int(11) UNSIGNED NOT NULL,
  `keluhan` text NOT NULL,
  `no_antrian` int(10) UNSIGNED NOT NULL,
  `status_periksa` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_poli`
--

INSERT INTO `daftar_poli` (`id`, `id_pasien`, `id_jadwal`, `keluhan`, `no_antrian`, `status_periksa`) VALUES
(4, 16, 11, 'Gigi Ngilu', 1, '0'),
(5, 13, 9, 'Bahu sulit digerakkan', 1, '1'),
(6, 16, 9, 'Kaki Sakit digerakkan', 2, '0'),
(7, 17, 9, 'Gigi geraham sakit', 3, '1'),
(8, 17, 19, 'Anak Demam', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `detail_periksa`
--

CREATE TABLE `detail_periksa` (
  `id` int(11) NOT NULL,
  `id_periksa` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_periksa`
--

INSERT INTO `detail_periksa` (`id`, `id_periksa`, `id_obat`) VALUES
(5, 4, 20),
(6, 4, 23),
(7, 5, 26);

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `id_poli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `nama`, `password`, `alamat`, `no_hp`, `id_poli`) VALUES
(24, 'Dr. Ahmadd', '$2y$10$oIaYSjAcZ8ep4JCdGAUnNuk6E7WcAO9egQxHaR3zOjKsNO0x5629a', 'Jl. Merdeka No. 90', '0812345678901', 10),
(25, 'Dr. Bella', '$2y$10$XKNgTP/BYyPK7j1WPOMYPO8EhB/GqyHXVfwv57rE/feaxjYW5LeXC', 'Jl. Kenanga No. 2', '081234567891', 10),
(26, 'Dr. Citra', '$2y$10$rzp.zaOk9Jd71ZDuUz5mPe2B9TyIY9n2MKWFIvevpap4vZCkU1.K2', 'Jl. Mawar No. 3', '081234567892', 12),
(27, 'Dr. Dimas', '$2y$10$63x1zbq9xoXXGXWNgHev6uZMb2qbqz.CoGHSdWX34Gr9D681C7YW6', 'Jl. Melati No. 4', '081234567893', 18),
(28, 'Dr. Eka', '$2y$10$4DfB6kyJlNUXRtr.9Yz7CO6WG0iUw7HhJVJPyX1Zise92y10.KGAm', 'Jl. Anggrek No. 5', '081234567894', 19),
(29, 'Dr. Hasan', '$2y$10$fW94YqAm3iDfdwgsMexJ/.JkNQ7Oivgrd5NRuTllNIBiZWVeQmKqe', 'Jl. Pinus No. 8', '081234567897', 17),
(30, 'Dr. Indah', '$2y$10$K1rWTTFz8sjNyi8e9ekIXeYu0HijaWVfyE2aLYhEhZd3e8A.E7itC', 'Jl. Cendana No. 9', '081234567898', 20),
(32, 'Dr. Tompi', '$2y$10$ihChWa7XlQKUYg/eeqT5S.L2j7kwcDLYHr7nxJXSzvsvEI9NHKN3i', 'qwerty', '0987654', 21),
(33, 'Dr. Joko', '$2y$10$IgYcpliPJ9UXtLsvCkUzjuSuJqRaHgVSL2xDrODtemFiWl5UOhqwG', 'asd', '123123', 19);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_periksa`
--

CREATE TABLE `jadwal_periksa` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu') NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `aktif` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal_periksa`
--

INSERT INTO `jadwal_periksa` (`id`, `id_dokter`, `hari`, `jam_mulai`, `jam_selesai`, `aktif`) VALUES
(8, 24, 'Senin', '09:35:00', '12:00:00', 'N'),
(9, 24, 'Rabu', '09:35:00', '12:00:00', 'Y'),
(10, 24, 'Jumat', '08:00:00', '11:00:00', 'N'),
(11, 25, 'Selasa', '09:00:00', '12:00:00', 'Y'),
(12, 25, 'Rabu', '09:00:00', '12:00:00', 'N'),
(13, 25, 'Kamis', '09:00:00', '12:00:00', 'N'),
(14, 26, 'Senin', '08:00:00', '14:00:00', 'N'),
(15, 26, 'Selasa', '08:00:00', '14:00:00', 'N'),
(16, 26, 'Rabu', '08:00:00', '14:00:00', 'N'),
(17, 26, 'Kamis', '08:00:00', '14:00:00', 'N'),
(18, 26, 'Jumat', '08:00:00', '14:00:00', 'N'),
(19, 26, 'Sabtu', '09:00:00', '13:00:00', 'Y'),
(20, 32, 'Selasa', '12:00:00', '14:00:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `kemasan` varchar(35) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama_obat`, `kemasan`, `harga`) VALUES
(11, 'Paracetamol', 'Kapsul', 40000),
(12, 'Ibuprofen', 'Kapsul', 52000),
(13, 'Amoxicillin', 'Tablet', 95500),
(14, 'Amoxicillin', 'Syrup', 50000),
(15, 'Ibuprofen', 'Syrup', 77000),
(16, 'Metronidazole', 'Syrup', 71000),
(17, 'Metronidazole', 'Salep', 28600),
(18, 'Paracetamol', 'Injeksi', 57000),
(19, 'Clindamycin', 'Salep', 88000),
(20, 'Vitamin C ', 'Syrup', 67700),
(21, 'Duloxetine', 'Injeksi', 36200),
(22, 'Pregabalin', 'Injeksi', 97500),
(23, 'Aspirin', 'Syrup', 7000),
(24, 'Theophylline', 'Tablet', 60000),
(26, 'Panadol', 'Tablet', 7000);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_ktp` varchar(255) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `no_rm` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `password`, `alamat`, `no_ktp`, `no_hp`, `no_rm`) VALUES
(12, 'Andi', '202cb962ac59075b964b07152d234b70', 'Jl. Merpati No. 1', '3301010000001', '081234500001', '202412-001'),
(13, 'Budi', '202cb962ac59075b964b07152d234b70', 'Jl. Rajawali No. 2', '3301010000002', '081234500002', '202412-002'),
(14, 'Citra', '202cb962ac59075b964b07152d234b70', 'Jl. Kutilang No. 3', '3301010000003', '081234500003', '202412-003'),
(16, 'Zaki', '202cb962ac59075b964b07152d234b70', 'Jl. Gelatik No. 100', '3301010000100', '081234500100', '202412-005'),
(17, 'Rejka', '202cb962ac59075b964b07152d234b70', 'qwerty', '00012093021932', '109247105410', '202412-006');

-- --------------------------------------------------------

--
-- Table structure for table `periksa`
--

CREATE TABLE `periksa` (
  `id` int(11) NOT NULL,
  `id_daftar_poli` int(11) UNSIGNED NOT NULL,
  `tgl_periksa` datetime NOT NULL,
  `catatan` text NOT NULL,
  `biaya_periksa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `periksa`
--

INSERT INTO `periksa` (`id`, `id_daftar_poli`, `tgl_periksa`, `catatan`, `biaya_periksa`) VALUES
(4, 7, '2024-12-13 23:18:00', 'Sikat gigi 2x sehari pagi ddan malam', 224700),
(5, 5, '2024-12-13 23:19:00', 'Olahraga', 157000);

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `id` int(11) NOT NULL,
  `nama_poli` varchar(25) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poli`
--

INSERT INTO `poli` (`id`, `nama_poli`, `keterangan`) VALUES
(10, 'Poli Gigi', 'Melayani perawatan gigi dan mulut seperti tambal gigi, cabut gigi, dan konsultasi kesehatan gigi.'),
(11, 'Poli Umum', 'Melayani pemeriksaan kesehatan umum seperti demam, batuk, flu, dan penyakit ringan lainnya.'),
(12, 'Poli Anak', 'Melayani kesehatan anak-anak, termasuk imunisasi, tumbuh kembang, dan penyakit anak.'),
(13, 'Poli Bedah', 'Lorem Ipsum dolor amet Lorem Ipsum dolor amet Lorem Ipsum dolor amet'),
(14, 'Poli Saraf', 'Melayani penyakit yang berhubungan dengan sistem saraf seperti migrain dan gangguan saraf lainnya.'),
(15, 'Poli Fisiotheraphy', 'asd'),
(16, 'Poli Hemo', 'qpwoeiqwour'),
(17, 'Poli Jantung', 'Menangani masalah kesehatan jantung seperti hipertensi dan gangguan irama jantung.'),
(18, 'Poli Kulit', 'Menangani masalah kulit seperti alergi, infeksi kulit, dan penyakit kulit lainnya.'),
(19, 'Poli THT', 'Melayani pemeriksaan telinga, hidung, dan tenggorokan, termasuk infeksi dan gangguan pendengaran.'),
(20, 'Poli Paru', 'Melayani penyakit saluran pernapasan seperti asma, bronkitis, dan TBC.'),
(21, 'Poli Mata', 'Menangani pemeriksaan mata, gangguan penglihatan, dan penyakit mata lainnya.'),
(22, 'Poli Penyakit Dalam', 'Menangani penyakit organ dalam seperti diabetes, hipertensi, dan gangguan pencernaan.'),
(23, 'Poli Radang', 'asfd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_poli`
--
ALTER TABLE `daftar_poli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_daftarPoli_jadwal` (`id_jadwal`),
  ADD KEY `fk_daftarPoli_pasien` (`id_pasien`);

--
-- Indexes for table `detail_periksa`
--
ALTER TABLE `detail_periksa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detailPeriksa_periksa` (`id_periksa`),
  ADD KEY `fk_detailPeriksa_obat` (`id_obat`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dokter_poli` (`id_poli`);

--
-- Indexes for table `jadwal_periksa`
--
ALTER TABLE `jadwal_periksa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_jadwal_dokter` (`id_dokter`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_periksa_daftarPoli` (`id_daftar_poli`);

--
-- Indexes for table `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_poli`
--
ALTER TABLE `daftar_poli`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `detail_periksa`
--
ALTER TABLE `detail_periksa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `jadwal_periksa`
--
ALTER TABLE `jadwal_periksa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `periksa`
--
ALTER TABLE `periksa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `poli`
--
ALTER TABLE `poli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar_poli`
--
ALTER TABLE `daftar_poli`
  ADD CONSTRAINT `fk_daftarPoli_jadwal` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal_periksa` (`id`),
  ADD CONSTRAINT `fk_daftarPoli_pasien` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id`);

--
-- Constraints for table `detail_periksa`
--
ALTER TABLE `detail_periksa`
  ADD CONSTRAINT `fk_detailPeriksa_obat` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id`),
  ADD CONSTRAINT `fk_detailPeriksa_periksa` FOREIGN KEY (`id_periksa`) REFERENCES `periksa` (`id`);

--
-- Constraints for table `dokter`
--
ALTER TABLE `dokter`
  ADD CONSTRAINT `fk_dokter_poli` FOREIGN KEY (`id_poli`) REFERENCES `poli` (`id`);

--
-- Constraints for table `jadwal_periksa`
--
ALTER TABLE `jadwal_periksa`
  ADD CONSTRAINT `fk_jadwal_dokter` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id`);

--
-- Constraints for table `periksa`
--
ALTER TABLE `periksa`
  ADD CONSTRAINT `fk_periksa_daftarPoli` FOREIGN KEY (`id_daftar_poli`) REFERENCES `daftar_poli` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
