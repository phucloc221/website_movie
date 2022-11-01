-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 29, 2022 at 11:05 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--
CREATE DATABASE IF NOT EXISTS `moviedb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `moviedb`;

-- --------------------------------------------------------

--
-- Table structure for table `movie_info`
--

DROP TABLE IF EXISTS `movie_info`;
CREATE TABLE IF NOT EXISTS `movie_info` (
  `ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Poster` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Score` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Name_movie` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name_movie_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Release_Day` date DEFAULT NULL,
  `Director` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_info`
--

INSERT INTO `movie_info` (`ID`, `Poster`, `Score`, `Name_movie`, `Name_movie_en`, `Release_Day`, `Director`, `Description`) VALUES
('01', 'https://goeco.link/tcPfb', '8.9', 'GIA TỘC RỒNG', 'House of the dragon', '2022-08-21', 'George R.R. Martin', 'Lấy bối cảnh ở vương triều Targaryen, thế hệ được trị vì bởi cha ông Daenerys Targaryen. Khi này, ông tổ Daenerys là Aegon người đã ra lệnh cho rồng xâm lăng rồi thống nhất Bảy Vương Quốc. Nhưng cuộc chiến bỗng trở nên khốc liệt hơn khi mà Vũ điệu của bầy Rồng xảy ra, lợi dụng vào tình thế đó hai chị em Targaryen đã lên kế hoạch tranh giành ngôi báu mà Aegon để lại.'),
('02', 'https://goeco.link/zpslZ', '6.5', 'BỖNG DƯNG TRÚNG SỐ', '6/45', '2022-08-24', 'Park Gyu-tae', 'Người lính Hàn Quốc Chun Woo (Ko Kyoung-pyo) vô tình nhặt được tờ vé số trúng độc đắc trị giá lên đến gần 6 triệu đô! Nhưng chưa kịp vui mừng bao lâu, tờ vé số ấy không may bị cuốn bay sang bên kia biên giới và rơi vào tay anh lính Triều Tiên Yong Ho (Lee Yi-kyung). Chun Woo cần tờ vé số để đổi tiền, trong khi Yong Ho dù nắm giữ tờ vé quan trọng lại không thể đặt chân đến Hàn Quốc. Câu chuyện ngày càng trở nên rắc rối và hài hước khi có thêm những người đồng đội của hai anh chàng biết được sự việc và nhất quyết tham gia vào cuộc đàm phán chia tiền.'),
('03', 'https://goeco.link/BpwrX', '7.3', 'Sát thủ đối đầu', 'Bullet train', '2022-07-03', 'David Leitch', ' Ladybug (Brad Pitt) - một sát thủ lành nghề vừa trở lại sau khoảng thời gian nghỉ hưu. Anh nhận nhiệm vụ từ một phụ nữ bí ẩn là thu hồi chiếc vali trên chuyến tàu cao tốc ở Nhật Bản. Những tưởng đây sẽ là phi vụ dễ ăn thì một loạt biến cố ập đến. Ladybug phải đối mặt với vô số thế lực khác nhau trên chiếc tàu hỏa cùng nhắm vào chiếc vali kia. Mỗi người đều có những âm mưu và cách thức hoạt động riêng dẫn đến một cục diện vô cùng rối ren.'),
('04', 'https://goeco.link/HtdxY', '7.3', 'Werewolf by Night', 'Werewolf by night', '2022-09-25', 'Michael Giacchino', ' Theo chân một siêu anh hùng người sói, người chiến đấu với cái ác bằng cách sử dụng những khả năng được ban cho bởi một lời nguyền do huyết thống của anh ta mang lại.'),
('05', 'https://goeco.link/KLKXD', '7.3', 'Chiến tranh giữa vì sao', 'Tales of the Jedi', '2022-10-26', 'Dave Filoni', 'Khám phá cuộc sống của hai Jedi khác biệt rõ ràng trong thời kỳ tiền truyện - Ahsoka Tano và Bá tước Dooku. Mỗi người sẽ được đưa vào thử nghiệm khi họ đưa ra những lựa chọn sẽ xác định số phận của họ.'),
('06', 'https://goeco.link/KYMha', '7.55', 'Kẻ man rợ', 'Barbarian', '2022-08-09', 'Zach Cregger', 'Câu chuyện về một cô gái trẻ đến Detroit để phỏng vấn xin việc, nhưng khi cô ấy đến nơi vào buổi tối muộn thì phát hiện ra căn hộ mình thuê đã có một người đàn ông khác thuê ở đó. Vì đã tối muộn và mưa to gió lớn, cô quyết định ở lại nhưng lại phát hiện ra còn nhiều điều đáng sợ hơn cả một vị khách không ngờ trong căn nhà này.'),
('07', 'https://goeco.link/miRkG', '8.1', 'Căn buồng hiếu kì của Toro', 'Cabinet of Curiosities', '2022-10-25', 'Guillermo del Toro', ' Những ác mộng kỳ quặc diễn ra trong tám câu chuyện kinh hoàng thuộc bộ sưu tập chuyện kinh dị rợn gáy và mãn nhãn này do Guillermo del Toro tuyển chọn.'),
('08', 'https://goeco.link/lCErC', '7', 'Địa cầu cuồng loạn', 'Earthstorm', '2022-10-27', 'Mỹ', 'Kẻ săn bão, nạn nhân và người phản ứng đầu tiên kể lại những trải nghiệm kinh hoàng của họ với núi lửa, lốc xoáy, bão và động đất.'),
('09', 'https://goeco.link/FWKgo', '9', 'Thợ săn quỷ', 'Chainsaw Man', '2022-10-12', 'Habo', 'Câu chuyện lấy bối cảnh tại một thế giới tồn tại những con quỷ đáng sợ. Lũ quỷ này hình thành từ chính những nỗi sợ của con người như sợ bóng tối, sợ cá mập, sợ nhện, sợ súng, sợ bạo lực,… Để chống lại chúng, các tổ chức săn quỷ trực thuộc chính phủ đã được thành lập trên toàn thế giới.Nhân vật chính của Chainsaw Man là Denji.'),
('10', 'https://goeco.link/dZkMR', '6.55', 'Thor: Tình yêu sét đánh', 'Thor: Love and Thunder', '2022-06-07', 'Taika Waititi', 'Thor đi vào một cuộc hành trình không giống như bất cứ cuộc phiêu lưu anh ấy từng phải đối mặt, một cuộc tìm kiếm sự bình yên bên trong tâm hồn của vị Thần Sấm. Nhưng việc nghỉ hưu của anh ta bị gián đoạn bởi một kẻ giết người nổi tiếng liên thiên hà được gọi là Gorr the God Butcher, kẻ đang huỷ diệt sự sống của các vị thần. Để chống lại mối đe dọa, Thor nhờ đến sự giúp đỡ của Vua Valkyrie, Korg và bạn gái cũ Jane Foster, người bỗng nhiên sử dụng được chiếc búa Mjolnir ngon lành cành đào một cách khó hiểu. Cùng nhau, họ tham gia vào một cuộc phiêu lưu vũ trụ đầy cam go để khám phá bí ẩn về sự báo thù của Gorr the God Butcher và ngăn chặn hắn trước khi quá muộn.'),
('11', 'https://goeco.link/kFPxO', '8.4', 'Phi công siêu đẳng', 'Top Gun: Maverick', '2022-05-24', 'Joseph Kosinski', 'Sau hơn ba mươi năm phục vụ, Pete “Maverick” Mitchell từng nổi danh là một phi công thử nghiệm quả cảm hàng đầu của Hải quân, né tránh cơ hội thăng chức, điều khiến anh cảm thấy bị bó buộc, để trở về làm chính mình.'),
('12', 'https://goeco.link/wZMsk', '6.5', 'Bà Đồng', 'The Medium', '2021-07-21', 'Banjong Píanthanakun', 'The Medium xoay quanh câu chuyện về Rang Song một vị pháp sư tài năng, bà đã đi đến tại vùng nông thôn Isan Thái Lan. Tại đây, Rang Song gặp gỡ được cô cháu gái của Shaman tên là Ming, không những vậy cô gái đó còn là một người thừa kế nghề thầy cúng của cha mình. Trong tại lễ tang của cha, Ming bắt đầu xảy ra những hiện tượng đầy kỳ lạ, giống như bị thế lực xấu xa chiếm giữ lấy linh hồn. Lúc này Rang Song bắt đầu cuộc hành trình ngăn chặn và giải cứu cô bé trước khi mọi chuyện diễn ra quá muộn.'),
('13', 'https://goeco.link/eXOCV', '7.3', 'Tenet', 'Tenet', '2020-08-22', 'Christopher Nolan', ' Hai nhân vật được một tổ chức bí ẩn chiêu mộ, sử dụng một thứ được gọi là “Tenet” - được cho là “có thể mở ra những cửa đúng” và “vài cửa sai”, nhằm ngăn chặn Thế chiến thứ III từ trước khi nó xảy ra. Thay vì du hành thời gian, phương pháp nó hoạt động là “nghịch đảo” những gì đã có.'),
('14', 'https://goeco.link/wuFHV', '7.8', 'Chú thuật hồi chiến', 'Jujutsu Kaisen 0', '2021-12-24', 'Sunghoo Park', 'Kể từ khi người bạn thời thơ ấu của Yuuta Okkotsu là Rika qua đời trong một vụ tai nạn giao thông, hồn ma của cô đã luôn đeo bám anh. Nhưng linh hồn của Rika không xuất hiện dưới hình dạng con người mà thay vào đó là một thực thể quái dị, mạnh mẽ, quyết liệt bảo vệ Yuuta cũng như tìm cách báo thù cho cái chết của mình. Phù thủy bậc thầy Satoru Gojou - người đứng đầu các Jujutsu (những người bảo vệ thế giới khỏi các linh hồn như Rita) muốn Yuuta trở thành một trong số họ, vừa để cứu lấy cô vừa giúp đỡ những linh hồn khác.'),
('15', 'https://goeco.link/trsoB', '8.6', 'Hố đen tử thần', 'Interstellar', '2014-05-12', 'Christopher Nolan', '“Interstellar” là biên niên ký về cuộc phiêu lưu vĩ đại của một nhóm các nhà thám hiểm sử dụng khám phá mới về lỗ đen vũ trụ để vượt qua các giới hạn thông thường trong du hành không gian, chinh phục khoảng không mênh mông trên một chuyến hành trình xuyên dải ngân hà...');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

DROP TABLE IF EXISTS `sinhvien`;
CREATE TABLE IF NOT EXISTS `sinhvien` (
  `ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Poster` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Score` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Name_movie` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name_movie_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Release_Day` date DEFAULT NULL,
  `Director` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
