-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2025 at 05:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_book_store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Narta', 'Nartahoxha@outlook.com', '$2y$10$q6ECvZqsbIPlbs9n34sj6OkwmGgyZN3lh1wYCaR0ERhWSRB8gsiFi');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`) VALUES
(0, 'Jack London'),
(1, 'Lord Byron');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'colleen Hoover'),
(2, 'Lord Byron'),
(3, 'Ana Huang'),
(4, 'Freida Mcfadden'),
(5, 'Lisa Jewell'),
(6, 'Taheref Mafi'),
(7, 'Britanny Lunch'),
(8, 'Dr.Seuss'),
(9, 'Lauren Asher'),
(10, 'Elsie Silver'),
(11, 'Zoulfa Katohuf'),
(12, 'Sally Rooney');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `description`, `category_id`, `cover`, `file`) VALUES
(1, 'Crime and punishment', 1, 'Crime and Punishment is a psychological novel by Fyodor Dostoevsky, first published in 1866. The story follows Rodion Raskolnikov, a destitute former student in St. Petersburg, who commits murder as part of a flawed theory about extraordinary individuals and their right to transgress moral boundaries.', 1, 'crime and punishment.jpg', 'crime and punishment.htm'),
(2, 'The Housemaid', 4, 'The story centers on Millie, who is trying to rebuild her life and sees the housemaid position as a fresh start. She soon discovers that the Winchesters harbor dark secrets that are far more dangerous than her own past. ', 2, '68527de70dfc52.32362687.jpg', '68527de70e2e39.27827399.pdf'),
(4, 'Twisted Love', 3, 'The story revolves around the unlikely romance between Ava and Alex, who are initially brought together by circumstance.  Their connection deepens as they navigate their personal traumas and try to build a relationship despite their differences.  The book explores themes of love, trust, redemption, and the power of healing. ', 4, '6852801ae75a58.12852152.jpg', '6852801ae786c0.64336291.pdf'),
(5, 'Twisted Games', 3, 'It features Princess Bridget von Ascheberg and her stoic, broody bodyguard, Rhys Larsen. Their story is a forbidden romance that explores their unexpected and passionate relationship, which could potentially jeopardize their kingdom. Bridget, a princess with a strong will, dreams of a life outside royal expectations, while Rhys, an elite bodyguard, is dedicated to his rules of protecting his clients and avoiding emotional involvement.', 4, '685280f15b5152.26403889.jpg', '685280f15b76f8.66443874.pdf'),
(6, 'Twisted Hate', 3, '\"Twisted Hate\" by Ana Huang is a contemporary romance novel featuring a hate-to-love relationship between Jules Ambrose and Josh Chen. Initially, they are enemies, but their animosity evolves into a passionate \"enemies with benefits\" arrangement. The story explores their complex dynamic as they navigate past betrayals, build trust, and confront their demons. It\'s the third book in the Twisted series, but can be read as a standalone. ', 4, '6852825c9e4199.92093152.jpg', '6852825c9e6c81.93499317.pdf'),
(7, 'Twisted Lies', 3, '\"Twisted Lies\" by Ana Huang is a contemporary romance novel, the fourth and final book in the \"Twisted\" series. It follows the story of Stella Alonso, an influencer and fashion magazine employee, and Christian Harper, a security agency owner and Stella\'s landlord. Their paths cross when they begin a fake dating arrangement to achieve their individual goals, but their scheme leads them into real-life conflicts involving a stalker and a business rival. ', 4, '685285101f5d33.52449382.jpg', '685285101f99d9.66386162.pdf'),
(8, 'The housemaid\'s secrets', 4, 'This novel revolves around Millie Calloway, a convicted felon who finds work with wealthy clients in Manhattan. The story unfolds with Millie taking a job with the Garricks, where she becomes involved in a complex and dangerous plot.', 3, '685285b867a6a8.54032288.jpg', '685285b867e454.08690008.pdf'),
(9, 'Shatter me', 6, 'Shatter Me is the first novel in a young adult dystopian romance series by Tahereh Mafi. The story follows Juliette, a 17-year-old girl with a lethal touch, capable of killing with a single contact. She is imprisoned by a totalitarian regime known as The Reestablishment, who see her power as a weapon. Juliette\'s life changes when she\'s given a cellmate, a boy from her past, and she begins to find the strength to fight back against The Reestablishment and the decaying world they control', 5, '68580c4da8d853.05791784.jpg', '68580c4da8fad7.13503142.pdf'),
(10, 'The teacher', 4, '\"Something isn\'t right at Caseham High School. Last year, the school was rocked by scandal: a teacher was accused of having an inappropriate relationship with a student. Now, Addie is a pariah and will do anything to get through the year. More than that, she\'s desperate to keep the truth from coming to light.', 2, '68591fb300ab64.67326451.jpg', '68591fb300ca64.65902950.pdf'),
(11, 'My kindergarten workbook', 7, 'Expand the learning and increase the fun with 101 engaging and educational activities for kids ages 5-6.Discover a great way to keep the learning going this summer. Bursting with exciting challenges, My Kindergarten Workbook is an educational activity book that your young student will love.', 7, '685921bacf1f80.25763112.jpg', '685921bacf38d2.39966818.pdf'),
(12, 'Green eggs and ham', 8, 'Green Eggs and Ham is a children\'s book by Dr. Seuss. It was published by the Beginner Books imprint of Random House on August 12, 1960.', 7, '6859235ee30450.41633708.jpg', '6859235ee32de6.68078877.pdf'),
(13, 'Love Redesigned', 9, '\"Love Redesigned\" by Lauren Asher is a contemporary romance novel that follows the story of Dahlia and Julian, childhood rivals who become entangled in a steamy, small-town romance. The book, the first in the Lakefront Billionaires series, explores their evolving relationship as they renovate a historic house together. It features tropes like enemies-to-lovers, second chance romance, and a billionaire hero. ', 4, '68592a162cb5f7.96448469.jpg', '68592a162ce675.69613976.pdf'),
(14, 'Binding 13', 10, '\"Binding 13\" is the first book in the \"Boys of Tommen\" series by Chloe Walsh, a story about Shannon Lynch, a bullied teenager seeking a fresh start at Tommen College, and Johnny Kavanagh, a popular rugby player hiding a secret injury. Their lives collide when Shannon\'s arrival sparks an undeniable attraction in Johnny, despite his focus on his rugby career. The book explores themes of trauma, bullying, first love, and the complexities of teenage relationships as they navigate their growing connection amidst secrets and external pressures. ', 4, '68592b13ef1c62.11452598.jpg', '68592b13ef4f94.18418265.pdf'),
(15, 'As long as the lemon trees grow', 11, '\"As Long As the Lemon Trees Grow\" is a novel set during the Syrian Revolution, focusing on the story of Salama, an 18-year-old pharmacy student turned hospital worker in Homs. The book explores themes of love, loss, and trauma against the backdrop of war, highlighting the fear and hope experienced by those living through the conflict. ', 1, '68592db76d5434.94252986.jpg', '68592db76d6df2.54865764.pdf'),
(16, 'Normal People', 12, '\"Normal People,\" by Sally Rooney, is a coming-of-age story that explores the complex relationship between Connell and Marianne, two young people from the same small Irish town who attend the same school and later, college. Their connection begins in high school, despite their different social circles – Connell is popular, while Marianne is an outsider. The novel follows their evolving relationship through various stages of their lives, ', 1, '68592e75bdf292.25821464.jpg', '68592e75be0ea7.51233427.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Novel'),
(2, 'Thriller'),
(3, 'Mystery'),
(4, 'Romance'),
(5, 'Fantasy'),
(6, 'Fiction'),
(7, 'educational');

-- --------------------------------------------------------

--
-- Table structure for table `contact_name_info`
--

CREATE TABLE `contact_name_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'kanina', 'kkaninah@gmail.com', 'do you have the book The teacher by Freida Mcfadden', '2025-06-22 14:21:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_name_info`
--
ALTER TABLE `contact_name_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_name_info`
--
ALTER TABLE `contact_name_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
