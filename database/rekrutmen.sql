-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Jul 2023 pada 16.27
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rekrutmen_karyawan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `apply_job`
--

CREATE TABLE `apply_job` (
  `id_apply_job` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pelamar` int(11) NOT NULL,
  `id_lowongan` int(11) NOT NULL,
  `hasil_test` int(11) DEFAULT NULL,
  `hasil_psikotes` int(11) DEFAULT NULL,
  `status_hasil` varchar(255) NOT NULL,
  `tgl_lamar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `apply_job`
--

INSERT INTO `apply_job` (`id_apply_job`, `id_user`, `id_pelamar`, `id_lowongan`, `hasil_test`, `hasil_psikotes`, `status_hasil`, `tgl_lamar`) VALUES
(1, 13, 1, 5, 0, 0, 'Diterima', '2023-07-14'),
(2, 13, 1, 3, 100, 0, 'Diterima', '2023-07-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahasa`
--

CREATE TABLE `bahasa` (
  `id_bahasa` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bahasa_asing` varchar(255) NOT NULL,
  `tingkat_keahlian_bahasa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bahasa`
--

INSERT INTO `bahasa` (`id_bahasa`, `id_user`, `bahasa_asing`, `tingkat_keahlian_bahasa`) VALUES
(1, 13, 'inggris', 'Ahli');

-- --------------------------------------------------------

--
-- Struktur dari tabel `departement`
--

CREATE TABLE `departement` (
  `id_departement` int(11) NOT NULL,
  `nama_departement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `departement`
--

INSERT INTO `departement` (`id_departement`, `nama_departement`) VALUES
(1, 'IT'),
(2, 'DIGITAL MARKETING'),
(3, 'CYBER SECURITY');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(2, 'Web Development'),
(3, 'Digital Adsense'),
(4, 'Penetration Testing');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keahlian`
--

CREATE TABLE `keahlian` (
  `id_keahlian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `keterampilan` varchar(255) NOT NULL,
  `tingkat_keahlian_keterampilan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keahlian`
--

INSERT INTO `keahlian` (`id_keahlian`, `id_user`, `keterampilan`, `tingkat_keahlian_keterampilan`) VALUES
(6, 13, 'ngoding', 'Ahli');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lowongan`
--

CREATE TABLE `lowongan` (
  `id_lowongan` int(11) NOT NULL,
  `nama_lowongan` varchar(255) NOT NULL,
  `id_departement` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `max_usia` int(11) NOT NULL,
  `min_pend` varchar(255) NOT NULL,
  `jurusan_pend` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `kriteria` varchar(255) NOT NULL,
  `id_test` int(11) DEFAULT NULL,
  `id_psikotes` int(11) DEFAULT NULL,
  `tgl_close` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lowongan`
--

INSERT INTO `lowongan` (`id_lowongan`, `nama_lowongan`, `id_departement`, `id_jabatan`, `max_usia`, `min_pend`, `jurusan_pend`, `salary`, `deskripsi`, `kriteria`, `id_test`, `id_psikotes`, `tgl_close`, `status`) VALUES
(3, 'Web Developer', 1, 2, 24, 'D4/S1', 'Teknik Informatika', 6000000, 'test', 'Web Development', 3, 3, '2023-07-20', 1),
(4, 'IT Programmer', 1, 2, 23, 'D3', 'Teknik Informatika', 6000000, 'Test', 'test', 4, 4, '2023-07-30', 1),
(5, 'Security Operations Center', 3, 4, 50, 'D4/S1', 'Teknik', 20000000, '', '', 5, 5, '2023-07-30', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelamar`
--

CREATE TABLE `pelamar` (
  `id_pelamar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_pelamar` varchar(255) NOT NULL,
  `no_ktp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hp` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(255) NOT NULL,
  `status_kawin` varchar(255) NOT NULL,
  `kewarganegaraan` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `no_npwp` varchar(255) NOT NULL,
  `sim` varchar(255) NOT NULL,
  `no_sim` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `alamat_domisili` varchar(255) NOT NULL,
  `status_tempat_tinggal` varchar(255) NOT NULL,
  `foto_pelamar` varchar(255) NOT NULL,
  `cv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelamar`
--

INSERT INTO `pelamar` (`id_pelamar`, `id_user`, `nama_pelamar`, `no_ktp`, `email`, `hp`, `tempat_lahir`, `tgl_lahir`, `jk`, `status_kawin`, `kewarganegaraan`, `agama`, `no_npwp`, `sim`, `no_sim`, `alamat`, `alamat_domisili`, `status_tempat_tinggal`, `foto_pelamar`, `cv`) VALUES
(1, 13, 'user', '676767', 'user@gmail.com', '08811188', 'jakarta', '2018-12-14', 'Perempuan', 'Lajang', 'WNI', 'Islam', '76767', 'SIM A', '676767', 'jakarta', 'jakarta', 'Milik Sendiri', 'student.jpg', 'CV.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `pendidikan_terakhir` varchar(255) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `start_year` varchar(255) NOT NULL,
  `end_year` varchar(255) NOT NULL,
  `nilai_pend` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`id_pendidikan`, `id_user`, `pendidikan_terakhir`, `nama_sekolah`, `kota`, `jurusan`, `start_year`, `end_year`, `nilai_pend`) VALUES
(1, 13, 'Strata Satu (S1)', 'univ to', 'jaksel', 'IT', '2023-01', '2023-12', '3.21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengalaman`
--

CREATE TABLE `pengalaman` (
  `id_pengalaman` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `posisi_terakhir` varchar(255) NOT NULL,
  `perusahaan` varchar(255) NOT NULL,
  `jabatan_terakhir` varchar(255) NOT NULL,
  `mulai_bekerja` varchar(255) NOT NULL,
  `berakhir_bekerja` varchar(255) NOT NULL,
  `gaji_pokok` int(11) NOT NULL,
  `gaji_insentif` int(11) NOT NULL,
  `fasilitas_terakhir` text NOT NULL,
  `alasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengalaman`
--

INSERT INTO `pengalaman` (`id_pengalaman`, `id_user`, `posisi_terakhir`, `perusahaan`, `jabatan_terakhir`, `mulai_bekerja`, `berakhir_bekerja`, `gaji_pokok`, `gaji_insentif`, `fasilitas_terakhir`, `alasan`) VALUES
(6, 13, 'produksi', 'pt xyz', 'produksi', '2023-01', '2023-07', 2000000, 1000000, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `psikotes`
--

CREATE TABLE `psikotes` (
  `id_psikotes` int(11) NOT NULL,
  `id_lowongan` int(11) NOT NULL,
  `pertanyaan_psikotes` varchar(255) NOT NULL,
  `option_a_psikotes` varchar(255) NOT NULL,
  `option_b_psikotes` varchar(255) NOT NULL,
  `option_c_psikotes` varchar(255) NOT NULL,
  `option_d_psikotes` varchar(255) NOT NULL,
  `kunjaw_psikotes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `psikotes`
--

INSERT INTO `psikotes` (`id_psikotes`, `id_lowongan`, `pertanyaan_psikotes`, `option_a_psikotes`, `option_b_psikotes`, `option_c_psikotes`, `option_d_psikotes`, `kunjaw_psikotes`) VALUES
(3, 5, 'Jika perusaan memindahkan bagian kerjaan bagaimana pendapat anda', 'setuju saja', 'tidak mau', 'berdiskusi agar tidak di pindahkan', 'setuju apa yang di perintah perusahaan', 'D');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `id_lowongan` int(11) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `kunjaw` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `id_lowongan`, `pertanyaan`, `option_a`, `option_b`, `option_c`, `option_d`, `kunjaw`) VALUES
(7, 3, 'Ini Contoh Pertanyaan 1', 'ayam', 'kucing', 'anjing', 'sapi', 'D'),
(8, 3, 'test pertanyaan 12', 'ini pilihan a2', 'ini pilihan b2', 'ini pilihan c2', 'ini pilihan d2', 'A'),
(9, 3, 'test pertanyaan 13', 'ini pilihan a3', 'ini pilihan b3', 'ini pilihan c3', 'ini pilihan d3', 'A'),
(10, 3, 'Test pertnyaan 14', 'ini pilihan a4', 'ini pilihan b4', 'ini pilihan c4', 'ini pilihan d4', 'C'),
(11, 3, 'test pertanyaan 15', 'ini pilihan a5', 'ini pilihan b5', 'ini pilihan c5', 'ini pilihan d5', 'B'),
(14, 5, 'Berapa pengalaman anda', '1 tahun', '2 tahun', '3 tahun', '4 tahun', 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `training`
--

CREATE TABLE `training` (
  `id_training` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `training` varchar(255) NOT NULL,
  `sertifikasi` varchar(255) NOT NULL,
  `penyelenggara` varchar(255) NOT NULL,
  `tahun_pelatihan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `training`
--

INSERT INTO `training` (`id_training`, `id_user`, `training`, `sertifikasi`, `penyelenggara`, `tahun_pelatihan`) VALUES
(4, 13, 'cyber', 'security', 'kominfo', '2022-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `role` enum('Admin','Supervisor','Manager','User') NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT 'default.png',
  `password` varchar(255) NOT NULL,
  `is_active` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `role`, `email`, `no_telp`, `foto`, `password`, `is_active`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', '088808', 'default.png', '$2y$10$5GYrZLiD01AJ.szx41a9weg4Jl2opacNB6TOlFLvbtObxq51rPsPa', '1'),
(2, 'Manager', 'Manager', 'manager@gmail.com', '088808', 'default.png', '$2y$10$JN7Sd3M17Lq93sH5kN7aUu.b049e.dkDGdvhuSlqvExhY8iWr6f/C', '1'),
(3, 'Supervisor', 'Supervisor', 'supervisor@gmail.com', '088808', 'default.png', '$2y$10$HMLmAAAOonttSzd4jr5kQei7mN3.K.yCElBWIzZLCvKZg0ENLsiSe', '1'),
(13, 'User', 'User', 'user@gmail.com', '088808', 'default.png', '$2y$10$QObpjKDchmgzQkuz8YgT..tC4VcsnWGYZb/zNKWmhY4QBNbfwrmta', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_job`
--
ALTER TABLE `apply_job`
  ADD PRIMARY KEY (`id_apply_job`);

--
-- Indexes for table `bahasa`
--
ALTER TABLE `bahasa`
  ADD PRIMARY KEY (`id_bahasa`);

--
-- Indexes for table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id_departement`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `keahlian`
--
ALTER TABLE `keahlian`
  ADD PRIMARY KEY (`id_keahlian`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id_lowongan`);

--
-- Indexes for table `pelamar`
--
ALTER TABLE `pelamar`
  ADD PRIMARY KEY (`id_pelamar`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `pengalaman`
--
ALTER TABLE `pengalaman`
  ADD PRIMARY KEY (`id_pengalaman`);

--
-- Indexes for table `psikotes`
--
ALTER TABLE `psikotes`
  ADD PRIMARY KEY (`id_psikotes`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id_training`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply_job`
--
ALTER TABLE `apply_job`
  MODIFY `id_apply_job` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bahasa`
--
ALTER TABLE `bahasa`
  MODIFY `id_bahasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `departement`
--
ALTER TABLE `departement`
  MODIFY `id_departement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `keahlian`
--
ALTER TABLE `keahlian`
  MODIFY `id_keahlian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id_lowongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pelamar`
--
ALTER TABLE `pelamar`
  MODIFY `id_pelamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pengalaman`
--
ALTER TABLE `pengalaman`
  MODIFY `id_pengalaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `psikotes`
--
ALTER TABLE `psikotes`
  MODIFY `id_psikotes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `id_training` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
