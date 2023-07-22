-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jul 2023 pada 05.52
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `name`, `img`, `price`, `amount`) VALUES
(1, 'Sate Ayam', 'https://images.unsplash.com/photo-1634871572365-8bc444e6faea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8c2F0ZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', 10000, 0),
(2, 'Lontong', 'https://images.unsplash.com/photo-1572656306390-40a9fc3899f7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bG9udG9uZ3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', 10000, 0),
(3, 'Nasi Goreng', 'https://images.unsplash.com/photo-1581184953963-d15972933db1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bmFzaSUyMGdvcmVuZ3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', 10000, 0),
(4, 'Mie Goreng', 'https://images.unsplash.com/photo-1612929633738-8fe44f7ec841?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmFzaSUyMGdvcmVuZ3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', 10000, 0),
(5, 'Udang Goreng', 'https://images.unsplash.com/photo-1627703378753-a7a5d0a87ee6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmFzaSUyMGdvcmVuZ3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', 15000, 0),
(6, 'Ayam Goreng', 'https://images.unsplash.com/photo-1647102398925-e23f6486ca04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fG5hc2klMjBnb3Jlbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60', 17000, 0),
(7, 'Ayam Bakar', 'https://plus.unsplash.com/premium_photo-1675865717689-a612f9a725c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60', 13000, 0),
(8, 'Soto Medan', 'https://images.unsplash.com/photo-1572656631137-7935297eff55?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60', 10000, 0),
(9, 'Cah Kangkung', 'https://images.unsplash.com/photo-1632879704262-1911cd5a36be?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGluZG9uZXNpYW4lMjBmb29kfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60', 10000, 0),
(10, 'Tempe Goreng', 'https://images.unsplash.com/photo-1643080580358-9c24b10f6820?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fGluZG9uZXNpYW4lMjBmb29kfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60', 7000, 0),
(11, 'Kue Pancong', 'https://images.unsplash.com/photo-1629685839866-c30fb431fe4e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTd8fGluZG9uZXNpYW4lMjBmb29kfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60', 5000, 0),
(12, 'Puding', 'https://images.unsplash.com/photo-1504388192519-fb4be897c4d0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODl8fGluZG9uZXNpYW4lMjBmb29kfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60', 10000, 0),
(13, 'Es Krim', 'https://images.unsplash.com/photo-1551024506-0bccd828d307?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODh8fGluZG9uZXNpYW4lMjBmb29kfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60', 12000, 0),
(14, 'Seblak', 'https://images.unsplash.com/photo-1645696288939-e59ed5e3cfa2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE2fHxpbmRvbmVzaWFuJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', 10000, 0),
(15, 'Pizza', 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTIzfHxpbmRvbmVzaWFuJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', 100000, 0),
(16, 'Pasta', 'https://images.unsplash.com/photo-1516100882582-96c3a05fe590?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTI4fHxpbmRvbmVzaWFuJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', 20000, 0),
(17, 'Bakso', 'https://images.unsplash.com/photo-1687425973283-d0d266b73325?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTU0fHxpbmRvbmVzaWFuJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', 10000, 0),
(18, 'Dimsum', 'https://images.unsplash.com/photo-1687426737054-8de0a7e55c67?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTU5fHxpbmRvbmVzaWFuJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', 20000, 0),
(19, 'Putu Bambu', 'https://images.unsplash.com/photo-1659758058868-214380ccf253?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjAxfHxpbmRvbmVzaWFuJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', 5000, 0),
(20, 'Batagor', 'https://images.unsplash.com/photo-1687426287944-c27277283892?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjQwfHxpbmRvbmVzaWFuJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60', 10000, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
