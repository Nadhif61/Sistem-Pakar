-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220530.a2456aa9a3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 12:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pakar_domba`
--

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_jawaban`
--

CREATE TABLE `riwayat_jawaban` (
  `id_jawaban` int(100) NOT NULL,
  `waktu` datetime NOT NULL,
  `jawaban` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat_jawaban`
--

INSERT INTO `riwayat_jawaban` (`id_jawaban`, `waktu`, `jawaban`) VALUES
(70, '2021-07-31 13:13:25', 'G1'),
(71, '2021-07-31 13:27:17', 'G1 G2 G3 G4 G5'),
(85, '2021-07-31 13:35:34', 'G1 G3 G5 G7 G9 G11 G13 G15 G17 G19 G21 G23 G25 G27 G29 G31 G33 G35'),
(86, '2021-07-31 13:40:26', ''),
(87, '2022-05-30 17:34:10', 'G1 G2 G3 G4 G5 G6 G7 G8 G9 G10 G11 G12 G13 G14 G15 G16 G17 G18 G19 G20 G21 G22 G23 G24 G25 G26 G27 G28 G29 G30 G31 G32 G33 G34 G35'),
(88, '2022-06-02 14:41:04', 'G1 G2 G3 G4 G5 G6 G7 G8 G9 G10 G11 G12 G13 G14 G15 G16 G17 G18 G19 G20 G21 G22 G23 G24 G25'),
(89, '2022-06-02 14:42:05', 'G1 G2'),
(90, '2022-06-02 20:26:53', 'G1 G2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id_gejala` int(10) NOT NULL,
  `gejala` varchar(300) NOT NULL,
  `kode_gejala` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`id_gejala`, `gejala`, `kode_gejala`) VALUES
(1, 'Layar Tidak Tampil', 'G1'),
(2, 'Terdapat Garis Pada Monitor', 'G2'),
(3, 'Tidak Ada Tampilan Awal Bios', 'G3'),
(4, 'Muncul Pesan Error Pada Bios', 'G4'),
(5, 'Alarm Bios Berbunyi', 'G5'),
(6, 'Terdengar Suara Dari Hard Disk', 'G6'),
(7, 'Sering Hang Atau Crash Saat Menjalankan Aplikasi', 'G7'),
(8, 'Selalu Scan Disk Saat Booting', 'G8'),
(9, 'Muncul Pesan Error Saat Menjalankan Game Atau Aplikasi Grafis', 'G9'),
(10, 'Device Driver Tidak Terdeteksi Dalam Device Manager Meski Sudah Instal Driver', 'G10'),
(11, 'Tiba-Tiba Bios Melakukan Restart Otomatis', 'G11'),
(12, 'Blue Screen', 'G12'),
(13, 'Suara Tidak Ada Meski Telah Instal Driver Dan Melakukan Settingan Dengan Benar', 'G13'),
(14, 'Muncul Pesan Error Pada Saat Menjalankan Aplikasi Audio', 'G14'),
(15, 'Muncul Pesan Error Saat Pertama Load Sistem Operasi Lewat Hard Disk', 'G15'),
(16, 'Mati Total', 'G16'),
(17, 'Tiba-Tiba Komputer Sering Mati', 'G17'),
(18, 'Muncul Pesan Error \"Windows Kekurangan Virtual Memory\"', 'G18'),
(19, 'Aplikasi Berjalan Lambat, Respon Lamban Terhadap Inputan', 'G19'),
(20, 'Kinerja Grafis Terasa Sangat Berat', 'G20'),
(21, 'Device Tidak Terdeteksi  Dalam Bios', 'G21'),
(22, 'Informasi Terdeteksi Salah Dalam Bios', 'G22'),
(23, 'Hanya Sebagian Perangkat Bekerja', 'G23'),
(24, 'Sebagian Atau Seluruh Inputan Mati', 'G24'),
(25, 'Pointer Mouse Tidak Merespon Gerakan Mouse', 'G25');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id_penyakit` int(10) NOT NULL,
  `kode_penyakit` varchar(5) NOT NULL,
  `nama_penyakit` varchar(60) NOT NULL,
  `penjelasan` varchar(5000) NOT NULL,
  `gejala` varchar(5000) NOT NULL,
  `penanganan` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id_penyakit`, `kode_penyakit`, `nama_penyakit`, `penjelasan`, `gejala`, `penanganan`) VALUES
(1, 'P1', 'Monitor Rusak', 'Disebut juga tympany, kembung. Berdasarkan teori domba bisa kembung seperti pada sapi. Kembung adalah adanya akumulasi gas yang berlebihan di dalam rumen. Gas tersebut bisa berupa gas bebas atau gas berbuih yang bercampur dengan bahan asing yang masuk ke dalam rumen, bisa bahan pakan, benda padat lain yang tidak terkunyah sempurna, atau karena makan bahan pakan yang bisa menimbulkan gas, seperti golongan leguminosa. Tingkat kematian pada kasus bloat sangat tinggi.\r\n', 'Monitor yang tidak menampilkan layar apapun ,  terutama di area legok lapar, dan bisa meluas hingga legok lapar sebelah kanan pada kasus berat. Domba biasanya mengalami hipersalivasi dan anxious, bernafas melalui mulut, ambruk, dan susah mengeluarkan feses.\r\n', 'Pertama, solusi apabila lampu indikator monitor hidup. Kamu bisa memastikan kabel video yang menghubungkan monitor dengan CPU sudah dipasang dengan benar. Jika setelah itu monitor LED belum menyala, masalahnya mungkin pada sinyal video board adapter CRT. Bawalah pada ahlinya untuk penanganan lebih lanjut.\r\n\r\nKedua, solusi apabila lampu indikator tidak menyala. Kamu bisa memastikan kabel power ke arah outlet listrik dan kabel power pada monitor sudah dipasang dengan benar. Jika setelah itu monitor LED belum menyala, gantilah dengan kabel power lain.'),
(2, 'P2', 'Memori Rusak', 'Cacing hati memiliki istilah medis fasciolosis karena penyebabnya adalah cacing Fasciola gigantica maupun F. Hepatica. Cacing ini termasuk kelas Trematoda. Penyebaran penyakit ini melalui inang antara berupa siput Lymneaea rubiginosa. Cacing ini hidup di daerah yang lembab, basah, dan tersebar di daerah tropis dan subtropis. Cacing hati menyerang spesies rentan seperti ternak sapi, kambing, dan domba.', 'Cacing hati menyerang organ hati dengan membentuk jaringan ikat pada hati dan peradangan kronis pada saluran empedu, sehingga domba mengalami sakit di daerah hati, ditandai dengan sakit perut, diare, demam, dan anemia. Selain itu, pertumbuhan domba mengalami gangguan, sulit gemuk, penurunan berat badan, dan penurunan produksi susu. Infestasi cacing hati yang kronis akan menimbulkan gejala klinis adanya pembengkakan di area rahang bawah domba. ', 'Untuk mengatasi hal ini, maka anda dapat mengecek, apakah RAM sudah terpasang dengan benar. Kalau sudah terpasang dengan benar, namun masih mengalami hal tersebut, maka segera ganti RAM dengan yang baru.'),
(3, 'P3', 'Hard Disk Rusak', 'Disebut juga dengan gudigan atau kudis. Penyakit ini bersifat zoonosis (menular dari hewan ke manusia, atau sebaliknya). Scabies identik dengan rendahnya tingkat sanitasi dan higenitas di daerah kandang, over populasi, dan penularan yang sangat cepat. Penyebab penyakit yang paling sering dan dianggap paling patogen adalah tungau Sarcoptes scabiei, namun ada spesies tungau lain seperti Psoroptes ovis, Notoedres sp, Chorioptes sp. Tungau ini menyerang kulit domba dengan cara membuat terowongan di bawah lapisan kulit sehingga menimbulkan gejala klinis tertentu. Scabies pada domba lebih sering dilaporkan karena lebih rentan dimana bulu yang lebat, panjang, dan kotor sehingga merupakan tempat yang ideal bagi tungau S. scabiei. ', 'Penularan scabies terjadi melalui kontak langsung antar domba dengan sifat penularan yang cepat, khususnya pada kandang domba yang padat. Scabies menyebabkan gatal, kerontokan bulu, kerusakan kulit, turunnya produksi (daging, susu, wol, kulit), penurunan nafsu makan, bahkan kematian ketika kejadiannya kronis.', 'Solusinya kamu bisa mencabut hardisk yang terindikasi sedang bermasalah. Sambungkan hardisk ke komputer lain yang kondisinya normal. Lalu, segera jalankan fitur check disk yang ada pada Windows untuk mencari adanya kesalahan, file rusak, serta bad sector yang ada pada perangkat yang kemungkinan bisa sebabkan masalah. Cara tersebut tentunya belum sepenuhnya dapat sembuhkan hardisk kamu, tetapi akan cukup membantu untuk lakukan backup data sehingga file-file penting tak hilang begitu saja. Setelah keseluruhan data sudah dicadangkan, maka lakukan reset atau pemformatan hardisk dari awal dengan menggunakan software yang banyak dijual di internet.'),
(4, 'P4', 'VGA Rusak', 'Merupakan penyakit menular pada domba dan kambing yang disebabkan oleh virus grup DNA bernama Parapox dan bersifat zoonosis. Penyakit ini ditandai dengan terbentuknya papula, vesikula, dan keripeng pada kulit di daerah bibir atau sekitarnya. Orf sering menyerang domba muda sekitar 3-5 bulan dengan angka kesakitan penyakit ini bisa mencapai 90% dan sering terjadi pada kandang koloni, khususnya domba yang baru datang karena terinfeksi dalam perjalanan.', 'Ada orang yang langsung menemui gejala parah, tapi ada juga orang yang menemui gejala-gejala ringan tertentu yang mungkin akan terjadi dalam jangka waktu yang panjang. Berikut adalah ciri-ciri VGA rusak:\r\n\r\nCiri-ciri VGA mengalami kerusakan\r\n1. Driver Sering Stopped Working\r\nMasalah ini adalah salah satu tanda kerusakan awal VGA yang melemah. Driver yang stopped working ini terjadi karena fungsi dari VGA sudah tidak berjalan dengan normal.\r\n\r\nTetapi Driver Stopped Working ini bukan berarti VGA mau rusak. Kemungkinan VGA tersebut mengalami BUG atau semacamnya.\r\n\r\nUntuk cara mengatasinya kalian bisa update driver VGA kalian yang versi terbaru.\r\n\r\n2. Performa Melemah\r\nBiasanya VGA yang mau rusak akan memunculkan ciri ini. Performa melemah yang dimaksud disini ialah PC atau Laptop benar-benar mengalami lag ketika sedang menjalankan task tertentu.\r\n\r\nTerutama seperti edit video, memutar video atau game.\r\n\r\nVGA yang sudah mau rusak, akan sering mengalami yang namanya lag, macet-macet bahkan hang ketika kalian sedang menjalankannya untuk pekerjaan yang berbungan dengan grafis seperti diatas.\r\n\r\nperforma melemah ini biasanya dibarengi dengan driver yang crash seperti pada poin sebelumnya.\r\n\r\n3. Muncul Artefak\r\nCiri-ciri VGA mengalami kerusakan\r\n\r\nArtefak, adalah salah satu ciri umum sekaligus salah satu kerusakan yang susah ditangani. Gejala artefak, adalah kondisi dimana gambar pada display muncul objek-objek atau texture tertentu.\r\n\r\nBiasanya berupa garis, bercak-bercak berwarna, bahkan gambar semu.\r\n\r\nArtefak ini biasanya muncul pada VGA yang sudah berumur lama dalam jangka pakainya. Bukan hanya VGA yang sudah berumur saja. Bahkan VGA baru pun rentan terkena artefak kalau VGA tersebut sering berjalan pada performa tertinggi namun tidak diselingi cooler yang memadai sehingga menyebabkan Overheat.\r\n\r\n4. No Display\r\nCiri-ciri VGA mengalami kerusakan\r\n\r\nSelanjutnya No Display , biasanya VGA yang mau rusak mengalami no display atau VGA tersebut tidak nampil di monitor.\r\n\r\nNo Display adalah salah satu tanda VGA rusak, bukan berarti no display ini  hanya disebabkan oleh VGA yang rusak. Ada beberapa kemungkinan part lain yang mungkin menyebabkan no display.\r\n\r\n5. VGA Tidak Berjalan Sama Sekali\r\nMenurut saya ini yang paling parah VGA tidak berjalan sama sekali atau Matot. Biasanya terjadi karena kerusakan final dari VGA yang mengalami 4 gejala kerusakan seperti yang dibahas diatas.\r\n\r\nVGA yang tidak berjalan ini dapat dilihat kipasnya. Jika VGA sudah dalam kondisi ini, maka bisa dipastikan VGA sudah tidak akan terdetek sama sekali atau Matot.', 'Untuk solusi tentunya ada. Jika sobat mengalami kerusakan seperti nomor 1 sampai 3 diatas, sobat bisa mengatasinya dengan mengurangi beban kerja VGA tersebut.\r\n\r\nCaranya dengan tidak digunakan bermain game berat yang dapat membebani VGA, serta melakukan penurunan clockspeed agar VGA selalu berjalan dibawah performa normal.\r\n\r\nUntuk VGA kalian yang mengalami kerusakan parah seperti No Display atau bahkan tidak terditeksi sama sekali, Kalian dapat klaim garansi VGA tersebut atau bisa mengganti dengan VGA yang baru.'),
(5, 'P5', 'Sound Card Rusak', 'Jika tiba tiba saja musik yang anda putar melalui komputer tiba tiba mati atau tidak bunyi padahal pemutar musiknya tetap bekerja dengan normal maka ini ada hubungannya dengan hardware yang bernama soundcard ini.Dengan cara sederhana ini sebenarnya siapa saja bisa membetulkannya sendiri tanpa harus mendatangkan tukang servis elektronic/komputer.', 'Gangguan yang terjadi pada soundcard ini gampang untuk di deteksi. Jika ada kerusakan pada bagian soundcard maka akan terjadi:\r\n\r\n1.Tidak bisa dilakukan install driver sound card\r\n2.Sound Card tidak akan terdeteksi otomatis  oleh program.', '1. Periksa dan pastikan soundcard sudah terpasang dengan benar pada slot motherboard.\r\n2. Periksa PIN sound card ,jika kotor bersihkan dengan menggunakan cairan pembersih.\r\n3. Jika ada slot lain yang kondisinya masih baik, cobalah untuk memindahkan sound card ke slot yang lainnya.\r\n4. Jika diketahui memang sound drivernya belum terinstall atau rusak,maka lakukan install driver melalui device manajer.'),
(6, 'P6', 'OS Bermasalah', 'Sistem  operasi(bahasa  Inggris:operating  system;OS)  adalah  seperangkat  program yang    mengelola    sumber    dayaperangkat    keras    komputeratau    hardware,    dan menyediakan layanan umum untukaplikasiperangkat lunak. Sistem operasi adalah jenis yang  paling  penting  dariperangkat  lunak  sistemdalam  sistem  komputer.  Tanpa  sistem operasi,  pengguna  tidak  dapat  menjalankan  program  aplikasi  pada  komputer  mereka, kecuali   program   aplikasibooting.Sistem   operasi   mempunyai   penjadwalan   yang sistematis  mencakup perhitungan  penggunaan  memori, pemrosesan data, penyimpanan data,   dan   sumber   daya   lainnya.Sistem   operasi   sangat   berperan   penting   dalam penggunaan  Komputer  anda,  tanpa  sistem  operasi,  computer  anda  tidak  akan  dapat digunakan sebagaimana mestinya.', 'Pink eye memiliki gejala klinis berupa radang dan kemerahan pada konjungtiva dan kornea keruh. Domba yang mengalami pink eye dapat bersifat karier, artinya berpotensi untuk terinfeksi lagi.', 'Pink eye bisa ditangani oleh peternak jika derajatnya belum kronis, bisa diminimalisir dengan pemberian obat cuci mata untuk mengurangi derajat radang dan kemerahannya. Jika belum membaik silahkan hubungi dokter hewan.'),
(7, 'P7', 'Aplikasi Rusak', 'Disebut juga penyakit radang limpa, merupakan penyakit mematikan yang sangat diwaspadai karena bersifat infeksius terhadap ternak memamah biak khususnya sapi dan domba, serta  zoonosis. Penyebab panyakit ini adalah bakteri Bacillus anthracis yang bersifat akut atau perakut. Ternak yang sudah terinfeksi anthraks tidak boleh dipotong karena sifat bakterinya aerob dan mampu membentuk spora sehingga mampu bertahan hidup hingga puluhan tahun di lingkungan.', 'Penyakit anthraks ini adalah penyakit yang sifatnya sangat mendadak. Domba yang terinfeksi anthraks akan mengalami demam tinggi yang disertai dengan gigi gemeretak, terlihat berputar putar, hipersalivasi, pernafasan berat, frekuensi jantung meningkat, feses dan urin bercampur darah, tidak lama kemudian ternak mati. Jika ternak mati ditandai dengan perdarahan dari lubang-lubang alami seperti telinga, hidung, kemaluan, dan rektum.', 'Anthraks merupakan penyakit kompleks yang butuh peneguhan diagnosa lebih lanjut dan dilakukan oleh dokter hewan. Jika ada ternak domba yang menunjukkan gejala di atas segera laporkan pada dokter hewan.'),
(8, 'P8', 'Power Supply Rusak', 'Adalah radang ambing yang sering terjadi pada semua jenis mamalia, khususnya ternak perah seperti domba, kambing, dan sapi perah. Sifat dari penyakit ini bisa akut, subakut, atau kronis dan disebabkan oleh berbagai jenis bakteri (golongan Streptococcus sp dan Staphylococcus sp) atau mikoplasma. Mastitis bisa terjadi karena faktor lingkungan yang kurang bersih, lantai kandang, atau alat-alat perah yang tercemar.', 'Ambing membengkak jika ditekan terasa berjonjot dan panas, domba merasa kesakitan jika ambing disentuh, susu yang diperah pecah dan kadang bercampur nanah.', 'Penanganan pertama yang bisa dilakukan oleh peternak adalah memerah ambing yang bengkak secara perlahan-lahan sampai tuntas, kemudian dikompres menggunakan air hangat. Pengobatan lebih lanjut untuk membunuh agen bakterial segera hubungi dokter hewan. '),
(9, 'P9', 'Prosesor Rusak', 'Myiasis adalah penyakit yang disebabkan oleh infestasi larva lalat (Myia) di dalam jaringan hidup dalam waktu tertentu untuk memakan jaringan inang dan cairan tubuh. Lalat yang sering menjadi penyebab myiasis adalah Chrysomya bezziana. Disebut juga sebagai penyakit belatungan. Belatung atau larva lalat yang ada di jaringan inang berawal dari luka berdarah yang cukup dalam dan tidak segera sembuh. Aroma darah yang anyir itulah yang mengundang lalat untuk meletakkan telurnya.', 'Luka pada jaringan domba akan dipenuhi larva lalat, jika tidak segera ditangani larva akan merongrong jaringan lebih dalam dan meluas, domba akan merasa risih, gatal, bahkan kesakitan.', 'Secara tradisional myiasis bisa diobati dengan air tembakau sebagai penanganan pertama. Jika tidak kunjung sembuh segera laporkan ke dokter hewan.'),
(10, 'P10', 'Kekurangan Memori', 'Tetanus merupakan salah satu penyakit keracunan yang disebabkan oleh neurotoksi bakteri Clostridium tetani. Kejadian tetanus pada domba biasanya terjadi melalu kontaminasi spora bakteri Cl. Tetani di tanah atau area kandang. Tetanus terjadi karena ada perlukaan tertutup yang terkontaminasi oleh bakteri Cl. tetani yang berkembang dengan baik karena luka tertutup akan menimbulkan kondisi anaerob. Bakteri Cl. tetani akan mengeluarkan toksin berupa tetanotoksin.', 'Domba rentan terinfeksi tetanus ketika dilakukan pencukuran bulu, pemasangan ear tag, kelahiran, atau luka tusuk pada kaki. Gejala klinis yang muncul adalah spasmus atau kekauan otot-otot pada tubuh dengan angka mortalitas hampir 100%.', 'Jika ternak domba di kandang mengalami luka segera bersihkan dengan antiseptik agar tidak menimbulkan kondisi anaerob pada luka yang berpotensi berkembangnya bakteri Cl. tetani. Jauhkan benda-benda yang bersifat melukai ternak seperti, pisau, paku, atau benda tajam lainnya.'),
(11, 'P11', 'Memori VGA Kurang', 'Merupakan gangguan reproduksi setelah kelahiran dimana keadaan uterus keluar dari tubuh dan menggantung saat domba betina merejan untuk melahirkan. Biasanya uterus keluar beberapa saat setelah anak domba keluar. Hal ini disebabkan oleh beberapa faktor seperti kurangnya exercise, kadar estrogen yang tinggi, tekanan perut saat berbaring, plasenta yang tidak segera keluar.', 'Uterus menggantung di luar tubuh, kadang sebagian atau seluruhnya beberapa saat setelah melahirkan.', 'Penanganan yang aman hanya bisa dilakukan oleh tenaga kesehatan hewan. Peternak bisa meminimalisir pencemaran lingkungan (tanah, kotoran, kencing) terhadap uterus yang keluar dengan membersihkannya menggunakan air bersih, dan menyediakan alas bersih untuk uterus yang keluar jika domba berbaring.'),
(12, 'P12', 'Clock Prosesor Kurang', 'Penyakit kuku busuk adalah penyakit menular yang sering terjadi pada kambing dan domba dengan agen penyakit bakteri Dichelobacter nodosus. Penyebab munculnya bakteri ini kemudian menginfeksi domba adalah kandang yang basah dan kotor, sehingga domba sering menginjak air dan menyebabkan kuku menjadi lunak kemudian berlanjut pada pembusukan yang didukung dengan bakteri kuku busuk.', 'Celah-celah kuku yang mengalami kuku busuk akan bengkak dan mengeluarkan cairan putih keruh, nanah, kulit kuku mengelupas, muncul benjolan yang membuat domba sakit sehigga menyebabkan kepincangan bahkan kelumpuhan, jika infeksi berlanjut bisa menimbulkan kematian.', 'Bersihkan celah-celah kuku yang mengalami pembusukan dengan larutan antiseptik hingga bersih, kemudian berikan antibiotik topikal, dan balut dengan rapat. Berikan domba tempat yang kering, bersih, dan higienis. Jika mengalami kesulitan pembersihan luka silahkan hubungi dokter hewan agar mendapatkan penanganan yang lebih baik.'),
(13, 'P13', 'Kabel Konektor Rusak', 'Penggunaan urea pada pakan amoniasi jerami yang tidak tepat takaran bisa mengakibatkan keracunan pada ternak domba jika dikonsumsi. Di dalam tubuh urea akan dimanfaatkan oleh mikroba rumen dan menghasilkan amonia. Amonia di dalam tubuh adalah zat beracun dan akan menyebabkan respon tubuh yang tidak normal.', 'Keracunan urea biaanya muncul setelah 10-15 menit setelah urea masuk ke dalam tubuh. Mulut mengalami hipersalivasi dan berbuih, gigi menggeretak karena sakit, tampak telinga dan wajah menegang. Perut mengalami kesakitan bahkan bloat, pernafasan berat dan cepat, domba lebih sering kencing, kejang, ambruk, bahkan kematian.', 'Penanganan keracunan urea tidak cukup memuaskan, pertolongan pertama yang bisa dilakukan peternak adalah menngelontor air dingin sebanyak 15 liter dicampur dengan asam asetat 6% atau cuka melalui gelonggong atau contang. Penanganan lebih tepat silahkan hubungi dokter hewan. '),
(16, 'P14', 'Power Supply Kurang Daya', '', '', ''),
(17, 'P15', 'Perangkat USB Rusak', '', '', ''),
(18, 'P16', 'Keyboard Rusak', '', '', ''),
(19, 'P17', 'Mouse Rusak', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rule`
--

CREATE TABLE `tb_rule` (
  `id_rule` int(5) NOT NULL,
  `kode_rule` varchar(5) NOT NULL,
  `kode_gejala` varchar(1000) NOT NULL,
  `kode_penyakit` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_rule`
--

INSERT INTO `tb_rule` (`id_rule`, `kode_rule`, `kode_gejala`, `kode_penyakit`) VALUES
(1, 'R1', 'G1 G2', 'P1'),
(2, 'R2', 'G3 G4 G5 G11 G12', 'P2'),
(3, 'R3', 'G6 G7 G8 G21 G22', 'P3'),
(4, 'R4', 'G1 G3 G5 G9 G10 G12 G13', 'P4'),
(5, 'R5', 'G10 G13 G14', 'P5'),
(6, 'R6', 'G11 G12 G14', 'P6'),
(7, 'R7', 'G7 G12', 'P7'),
(8, 'R8', 'G16 G17', 'P8'),
(9, 'R9', 'G1 G3 G4 G5', 'P9'),
(10, 'R10', 'G18 G19', 'P10'),
(11, 'R11', 'G20', 'P11'),
(12, 'R12', 'G9 G19', 'P12'),
(13, 'R13', 'G21', 'P13'),
(16, 'R14', 'G5 G23', 'P14'),
(17, 'R15', 'G10', 'P15'),
(18, 'R16', 'G10 G24', 'P16'),
(19, 'R17', 'G10 G25', 'P17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `riwayat_jawaban`
--
ALTER TABLE `riwayat_jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `tb_rule`
--
ALTER TABLE `tb_rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `riwayat_jawaban`
--
ALTER TABLE `riwayat_jawaban`
  MODIFY `id_jawaban` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id_gejala` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  MODIFY `id_penyakit` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_rule`
--
ALTER TABLE `tb_rule`
  MODIFY `id_rule` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



