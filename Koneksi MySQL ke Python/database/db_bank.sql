CREATE DATABASE db_bank;

CREATE TABLE `audit` (
  `id` int(11) NOT NULL,
  `norek` int(11) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `noTelp` varchar(45) DEFAULT NULL,
  `saldo` decimal(9,2) DEFAULT NULL,
  `tgl_trans` datetime(6) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `nasabah`
--

CREATE TABLE `nasabah` (
  `norek` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `jenisKelamin` char(1) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `noTelp` varchar(45) DEFAULT NULL,
  `saldo` decimal(12,2) NOT NULL
);

--
-- Dumping data for table `nasabah`
--

INSERT INTO `nasabah` (`norek`, `nama`, `jenisKelamin`, `alamat`, `noTelp`, `saldo`) VALUES
(125486, 'John', 'L', 'Jakarta', '0812xxx', '2500000.00'),
(184582, 'Doe', 'L', 'Jakarta', '021584xxx', '890000.00'),
(548641, 'Juliet', 'P', 'Bekasi', '082100xxx', '1990000.00');
