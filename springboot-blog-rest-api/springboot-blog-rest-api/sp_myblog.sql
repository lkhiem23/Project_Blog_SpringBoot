-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2025 at 12:24 AM
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
-- Database: `sp_myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `description`, `name`) VALUES
(1, 'Hà Nội', 'Mùa thu'),
(2, 'Bắc Thái', 'Mùa hạ');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `email`, `name`, `post_id`) VALUES
(2, 'Tôi rất thích chủ đề này. (Update)', 'cuong@gmail.com', 'Cường Phạm Đây', 3),
(3, 'Bài viết sâu sắc và đầy cảm xúc.', 'dung@gmail.com', 'Dũng Lê', 4),
(4, 'Cảnh biển hoàng hôn thật tuyệt.', 'emily@yahoo.com', 'Emily Vũ', 5),
(5, 'Đà Lạt đúng là nơi đáng sống.', 'hoa@gmail.com', 'Hoa Mai', 6),
(6, 'Tuổi thơ ai mà không từng như thế!', 'hien@gmail.com', 'Hiền Lâm', 7),
(7, 'Tôi nhớ những ngày xưa ấy quá.', 'khanh@gmail.com', 'Khánh Nguyễn', 8),
(8, 'Chia sẻ rất gần gũi và chân thật.', 'linh@gmail.com', 'Linh Võ', 9),
(9, 'Thích cách bạn mô tả thiên nhiên.', 'manh@gmail.com', 'Mạnh Đào', 10),
(10, 'Mùa hè luôn mang lại cảm xúc đặc biệt.', 'nam@gmail.com', 'Nam Hoàng', 11),
(11, 'Cảnh sắc vùng cao thật yên bình.', 'ngoc@gmail.com', 'Ngọc Anh', 12),
(12, 'Bài viết gợi lại nhiều kỷ niệm.', 'phuong@gmail.com', 'Phương Trần', 13),
(13, 'Tôi thích không khí mùa xuân.', 'quynh@gmail.com', 'Quỳnh Hồ', 14),
(14, 'Bài viết nhẹ nhàng mà sâu lắng.', 'son@gmail.com', 'Sơn Lưu', 15),
(15, 'Mình vừa ghé Hội An, cảm nhận y chang!', 'thanh@gmail.com', 'Thanh Tâm', 16),
(16, 'Không gian quán xưa luôn khiến mình hoài niệm.', 'trang@gmail.com', 'Trang Đinh', 17),
(17, 'Rừng thông thật đẹp qua từng lời viết.', 'ut@gmail.com', 'Út Nguyễn', 18),
(18, 'Sài Gòn lúc khuya vẫn sống động lạ thường.', 'viet@gmail.com', 'Việt Hà', 19),
(19, 'Tình bạn là thứ tuyệt vời nhất của thời sinh viên.', 'xuan@gmail.com', 'Xuân Thảo', 20),
(20, 'Bài viết rất hay và ý nghĩa!', 'an@gmail.com', 'An Nguyễn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `content`, `description`, `title`, `category_id`) VALUES
(1, 'This is my new post', 'Post description', 'New Post', NULL),
(3, 'Ánh nắng vàng cam buông xuống mặt biển, tạo nên một khung cảnh trầm lặng và sâu lắng.', 'Khung cảnh biển lúc hoàng hôn thật nên thơ.', 'Biển chiều hoàng hôn update', 1),
(4, 'Từ những con dốc lãng mạn đến những quán cà phê nhỏ ven đường, Đà Lạt luôn đem lại cảm giác bình yên.', 'Nhật ký hành trình khám phá Đà Lạt.', 'Chuyến đi Đà Lạt', NULL),
(5, 'Tuổi thơ trôi qua êm đềm bên dòng sông quê, nơi tôi và lũ bạn từng tắm mát và câu cá.', 'Hồi tưởng về những kỷ niệm thời thơ ấu bên dòng sông.', 'Dòng sông ký ức', NULL),
(6, 'Em là ánh nắng sớm mai, là tiếng cười làm xua tan mệt mỏi mỗi ngày.', 'Một bài viết tình cảm nhẹ nhàng.', 'Em trong mắt tôi', NULL),
(7, 'Fika không chỉ là nghỉ giải lao mà còn là thời gian để tận hưởng cuộc sống cùng người thân.', 'Giới thiệu văn hóa uống cà phê Fika.', 'Fika - Nghệ thuật thư giãn của người Thụy Điển', NULL),
(8, 'Những cơn gió lạnh đầu mùa khiến ai cũng muốn tìm về một nơi ấm áp.', 'Không khí mùa đông đang tràn về.', 'Gió mùa về', NULL),
(9, 'Từ những dòng code đầu tiên đến lúc tạo ra ứng dụng đầu tay, đó là hành trình đầy thử thách nhưng cũng nhiều niềm vui.', 'Chia sẻ hành trình tự học lập trình.', 'Hành trình học code', NULL),
(10, 'Giữa những ồn ào, đôi khi ta chỉ muốn tìm một góc yên tĩnh để lắng nghe chính mình.', 'Suy ngẫm về sự cô đơn trong thành phố.', 'Im lặng giữa phố đông', NULL),
(11, 'Băng qua những tán cây rậm rạp, tôi cảm nhận được sức sống mãnh liệt của thiên nhiên hoang dã.', 'Ký sự khám phá rừng già.', 'Jungle trip', NULL),
(12, 'Mùa hè mang theo tiếng ve, những cơn mưa rào và ký ức khó quên thời học trò.', 'Bản tình ca về mùa hè rực rỡ.', 'Khúc ca mùa hè', NULL),
(13, 'Sáng sớm mù sương, tôi thong thả dạo bước qua những thửa ruộng bậc thang tuyệt đẹp.', 'Trải nghiệm ở vùng núi Sa Pa.', 'Lặng lẽ Sa Pa', NULL),
(14, 'Bát canh chua, nồi cá kho tộ – tất cả làm nên ký ức tuổi thơ không thể nào quên.', 'Nỗi nhớ về mẹ và hương vị quê nhà.', 'Mẹ và những món ăn quê', NULL),
(15, 'Nắng nhẹ, trời xanh và hoa nở rộ là dấu hiệu mùa xuân đã thực sự về.', 'Cảm nhận mùa xuân.', 'Nắng tháng ba', NULL),
(16, 'Từ ô cửa nhỏ ấy, tôi nhìn thấy cả một thế giới muôn màu đang chuyển động.', 'Góc nhìn cuộc sống từ một ô cửa.', 'Ô cửa sổ nhỏ', NULL),
(17, 'Những con đường vàng nghệ, đèn lồng rực rỡ và nhịp sống chậm rãi là điều khiến Hội An khác biệt.', 'Bài viết về du lịch Hội An.', 'Phố cổ Hội An', NULL),
(18, 'Tiếng nhạc Trịnh vang lên, ly cà phê đen sóng sánh – tất cả như đưa ta về quá khứ.', 'Gợi nhớ không gian hoài niệm.', 'Quán cà phê xưa', NULL),
(19, 'Sáng sớm, những hàng thông chìm trong sương tạo nên cảnh tượng kỳ ảo khó tả.', 'Khám phá thiên nhiên hùng vĩ.', 'Rừng thông mù sương', NULL),
(20, 'Sài Gòn vẫn rộn ràng với ánh đèn, xe cộ và nhịp sống riêng giữa màn đêm.', 'Thành phố không ngủ.', 'Sài Gòn lúc nửa đêm', NULL),
(21, 'Những ngày cùng học, cùng ăn mì gói, cùng chia sẻ giấc mơ – đó là những điều không thể quên.', 'Hồi ức thời thanh xuân.', 'Tình bạn thời sinh viên', NULL),
(22, 'Khi mặt trời bắt đầu ló dạng, ánh sáng dịu nhẹ lan tỏa khắp không gian, mang đến cảm giác yên bình và hy vọng cho một ngày mới.', 'Bài viết nói về vẻ đẹp của ánh sáng lúc bình minh.', 'Ánh sáng ban sớm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `username`, `user_name`) VALUES
(3, 'khiem@gmail.com', 'khiem', '$2a$10$FvngDuCBgASxxk9GmFjgju9DucLwRkgzx0TBXH0FYmifHs6cNo3Bm', NULL, 'lkhiem23'),
(4, 'admin@gmail.com', 'admin', '$2a$10$5Sgeyt5n1eU2hLyr6hy2IeSQ6O6.vpm/tqaSh3YlKGbz..kTMTDpG', NULL, 'admin23');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(3, 2),
(4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKh4c7lvsc298whoyd4w9ta25cr` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKmchce1gm7f6otpphxd6ixsdps` (`title`),
  ADD KEY `FKijnwr3brs8vaosl80jg9rp7uc` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKk8d0f2n7n88w1a16yhua64onx` (`user_name`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FKh4c7lvsc298whoyd4w9ta25cr` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FKijnwr3brs8vaosl80jg9rp7uc` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FK2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
