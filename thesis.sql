-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Bulan Mei 2018 pada 13.49
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thesis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(281, 'admin', '2018-04-26 16:59:10', 'Add device Detail id 3&nbspName&nbspPower cord'),
(282, 'admin', '2018-04-26 17:00:08', 'Edit device info Power cord'),
(283, 'admin', '2018-04-26 17:00:25', 'Assign Device id 122&nbspName&nbspPower cord to location id 22&nbspName&nbspComlab A'),
(284, 'admin', '2018-04-26 18:46:19', 'Add device Type Printer'),
(285, 'admin', '2018-04-26 18:46:57', 'Add device Detail id 10&nbspName&nbspPrinter'),
(286, 'admin', '2018-04-26 18:48:45', 'Edit device info Printer'),
(287, 'admin', '2018-04-26 18:49:33', 'Assign Device id 123&nbspName&nbspPrinter to location id 24&nbspName&nbspPCID'),
(288, 'admin', '2018-04-26 18:52:53', 'Edit location R EDP'),
(289, 'admin', '2018-04-26 18:53:07', 'Edit location Poli Spesialis'),
(290, 'admin', '2018-04-26 18:54:08', 'Add device Type Hard Disk'),
(291, 'admin', '2018-04-26 18:54:14', 'Add device Type RAM'),
(292, 'admin', '2018-04-26 18:55:01', 'Edit location Front Office');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `adminthumbnails` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `lastname`, `username`, `password`, `adminthumbnails`) VALUES
(4, 'Jonald', 'Sevellejo', 'jonremus', 'me', 'uploads/442048-samsung-galaxy-s5-vs-galaxy-note-3-specs-and-price-comparison-in-austr.jpg'),
(5, 'Hector Neil', 'Cornea', 'admin', 'admin', 'uploads/Edit-Finis.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `client`
--

CREATE TABLE `client` (
  `client_id` int(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `thumbnails` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `client`
--

INSERT INTO `client` (`client_id`, `username`, `password`, `firstname`, `lastname`, `thumbnails`) VALUES
(10, 'oting', 'oting', 'Reynaldo', 'Tianzon', 'uploads/141113161942-large.jpg'),
(11, 'kiritosan23', 'kirito', 'Joecel', 'Ongsip', 'uploads/10933713_756692371081917_31846816310386324_n.jpg'),
(12, 'asylum1121', 'kevineleven11', 'Kevin Jone', 'Camparecio', 'images/NO-IMAGE-AVAILABLE.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\n<span style=\"font-size:16px\"><strong>Mission</strong></span></pre>\n\n<p style=\"text-align:left\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:medium\"><span style=\"font-size:large\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style=\"font-size:18px\"> &nbsp; &nbsp; &nbsp;Respecting the human dignity and unique talents of each person, Southland College is dedicated in helping its students actualizetheir potentials for the enchancementof their own lives and or nationals Development.&nbsp;</span></p>\n\n<p style=\"text-align:left\">&nbsp;</p>\n'),
(2, 'Vision', '<pre><span style=\"font-size: large;\"><strong>Vision</strong></span></pre>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: large;\">&nbsp; A progressive educational community where the individual is at the core of his own learning </span><br /><br /></p>'),
(3, 'History', '<pre><span style=\"font-size: large;\">HISTORY &nbsp;</span> </pre>\n<p style=\"text-align: justify;\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:medium\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The southland college story is the intermingling of imposibilities and unbelief, against optimism and faith.the story of this new school is a beatifull retelling of god\'s goodness; his hands helping shape the foundation of southland college.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Amid Challeges, stumbling blocks, and interfering forces, southland college was established-a shining testamentof God\'s wondrous ways and his helping hand for those who trust in Him.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Deeply saddened by the anticipated mass resignation of the faculty and staff with the change of leadership of a private school where he was the former president, DR. Anecito D. Villaluz, Jr. Decided to put up his own school where he could freely make use of his publicity acknowledged and admired managerial skills and organizational expertise.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;the preparations for the new school started in March 2009. The incorporators who compose the Board of directors are Dr.Villaluz, Chairman; Mrs. Annette Z. Villaluz, vice-chairman; Dr. Emiliano L. Sama,Jr.,corporate secretary; Mrs.Yvonne Z. Rocha, Treasurer; and Dr.Rhoda J. Amor,Dr. Grace A. Badrina, Dr. Henly S. Pahilagao, and Mr. Miguel M. Zayco, directors.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The securities and Exchange Commision (DepEd) issurd the school registration permiton March 24,2009.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The department of Education (DepEd) Western Visayas Regional office issued the permit for the basic education on June 1. 2009. The school established the consortium with the Northern Negros state College of Science and Technology (NONESCOST) for the Nursing Degree program, and with the Negros Oriental State Accounting Technology, BS Business Administrators, BS Hospiitality Management, and the 2-year Midwifery course. The administrators, faculty and staff, parents and strengthen the new school. Each of them undertook the assigned task without expecting any personal reward. it was evidend that God is shaping the southland destiny throught the hearts, hands and minds of these people.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Regional Quality Assesment Team (RQUAT) and Commission on Higher Education (CHEd) Supersvisors readily issuad permits for all degree programs After validating the requirements and inspecting the facilities.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The school was formerly launched on May 13, 2009. It was followed by the a grand caravan. The following days saw the advertisements and promotion blitz in variious towns and cities.<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;By the end of the enrolment period, God gave soutland collegeits needed initial number of students. Enrolled during the school year 2009-2010 were: pre school, 69; elementary, 130; and High school, 122. During the first semester of the same school year, college enrolment reached 177. it was an impressive number for a new school which opened within a few months time after its inception.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A thanksgiving service with the theme \"Triumph Amid Trials\" was held on August 28, 2009 morning. It was immediatly followed by the school\'s very first academic convocation. The officers of student councils, faculty and staff club, and the parents and teachers assembleis were inducted in the afternoon. aquaintance parties in all levels followed.<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;amid the trials, Southland College is seen to Survive and Prevail for its story in a tapestry of good relationships, great resposibilities, and God\'s redemption<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Indeed, at Southland College the foundation of God stand\'s sure!\n</p>'),
(4, 'Footer', '<p style=\"text-align:center\">Technology Resource Inventory System (T.R.S) Copyright 2015</p>\n\n<p style=\"text-align:center\">All Rights Reserved &reg;2015</p>\n'),
(5, 'Title', '<p><span style=\"font-family:trebuchet ms,geneva\">Technology Resource Inventory System</span></p>\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `device_name`
--

CREATE TABLE `device_name` (
  `dev_id` int(11) NOT NULL,
  `dev_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `device_name`
--

INSERT INTO `device_name` (`dev_id`, `dev_name`) VALUES
(2, 'kyboard'),
(4, 'mouse'),
(5, 'Central Processing unit (CPU)'),
(8, 'Monitor'),
(10, 'Printer'),
(11, 'Hard Disk'),
(12, 'RAM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `location_details`
--

CREATE TABLE `location_details` (
  `ld_id` int(11) NOT NULL,
  `stdev_id` int(11) NOT NULL,
  `date_deployment` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `location_details`
--

INSERT INTO `location_details` (`ld_id`, `stdev_id`, `date_deployment`, `id`) VALUES
(49, 22, '2018-04-26', 122),
(50, 24, '2018-04-26', 123);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `fullname` varchar(128) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stdevice`
--

CREATE TABLE `stdevice` (
  `id` int(11) NOT NULL,
  `dev_id` int(11) NOT NULL,
  `dev_desc` varchar(128) NOT NULL,
  `dev_serial` varchar(128) NOT NULL,
  `dev_brand` varchar(128) NOT NULL,
  `dev_model` varchar(128) NOT NULL,
  `dev_status` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stdevice`
--

INSERT INTO `stdevice` (`id`, `dev_id`, `dev_desc`, `dev_serial`, `dev_brand`, `dev_model`, `dev_status`) VALUES
(122, 3, '<p>fdfdfd</p>\r\n', 'dfd', 'dfdf', 'fdfdfd', 'New'),
(123, 10, '', 'PRIN', 'Epson ', 'L310', 'New');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stlocation`
--

CREATE TABLE `stlocation` (
  `stdev_id` int(11) NOT NULL,
  `stdev_location_name` varchar(128) NOT NULL,
  `thumbnails` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stlocation`
--

INSERT INTO `stlocation` (`stdev_id`, `stdev_location_name`, `thumbnails`) VALUES
(22, 'R EDP', 'images/thumbnails.jpg'),
(23, 'Poli Spesialis', 'images/thumbnails.jpg'),
(24, 'Front Office', 'images/thumbnails.jpg'),
(27, 'Admin Office', 'images/thumbnails.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(128) NOT NULL,
  `admin_id` int(128) NOT NULL,
  `client_id` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `admin_id`, `client_id`) VALUES
(190, 'admin', '2018-04-26 16:57:37', '2018-05-04', 5, 0),
(191, 'admin', '2018-04-26 17:02:10', '2018-05-04', 5, 0),
(192, 'admin', '2018-05-04 18:42:47', '2018-05-04', 5, 0),
(193, 'admin', '2018-05-04 18:42:48', '2018-05-04', 5, 0),
(194, 'admin', '2018-05-04 18:44:05', '2018-05-04', 5, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indeks untuk tabel `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indeks untuk tabel `device_name`
--
ALTER TABLE `device_name`
  ADD PRIMARY KEY (`dev_id`);

--
-- Indeks untuk tabel `location_details`
--
ALTER TABLE `location_details`
  ADD PRIMARY KEY (`ld_id`);

--
-- Indeks untuk tabel `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indeks untuk tabel `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indeks untuk tabel `stdevice`
--
ALTER TABLE `stdevice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stlocation`
--
ALTER TABLE `stlocation`
  ADD PRIMARY KEY (`stdev_id`);

--
-- Indeks untuk tabel `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `device_name`
--
ALTER TABLE `device_name`
  MODIFY `dev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `location_details`
--
ALTER TABLE `location_details`
  MODIFY `ld_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stdevice`
--
ALTER TABLE `stdevice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `stlocation`
--
ALTER TABLE `stlocation`
  MODIFY `stdev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
