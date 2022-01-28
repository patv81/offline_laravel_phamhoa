-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2022 at 04:30 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proj_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_at` date DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `category_id`, `name`, `content`, `status`, `thumb`, `created`, `created_by`, `modified`, `modified_by`, `publish_at`, `type`) VALUES
(4, 1, 'Liverpool chỉ được nâng Cup phiên bản nếu vô địch hôm nay', '<p>Đội b&oacute;ng th&agrave;nh phố cảng sẽ kh&ocirc;ng n&acirc;ng Cup nguy&ecirc;n bản nếu vượt mặt Man City ở v&ograve;ng cuối Ngoại hạng Anh.</p>\r\n\r\n<p>Liverpool k&eacute;m Man City một điểm trước khi tiếp Wolverhampton tr&ecirc;n s&acirc;n nh&agrave; Anfield v&agrave;o ng&agrave;y Chủ Nhật. Ở trận đấu c&ugrave;ng giờ, Man City sẽ l&agrave;m kh&aacute;ch tới s&acirc;n Brighton v&agrave; biết một chiến thắng sẽ gi&uacute;p họ bảo vệ th&agrave;nh c&ocirc;ng ng&ocirc;i v&ocirc; địch. Kể từ khi c&aacute;c trận v&ograve;ng cuối Ngoại hạng Anh sẽ chơi đồng loạt c&ugrave;ng l&uacute;c, ban tổ chức phải đặt một chiếc cup phi&ecirc;n bản giống thật tại Anfield ph&ograve;ng trường hợp Liverpool v&ocirc; địch. Chiếc cup giả n&agrave;y thường được d&ugrave;ng trong c&aacute;c sự kiện quảng b&aacute; của Ngoại hạng Anh.&nbsp;</p>', 'active', 'L3Yuzln8II.png', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-04-29', 'featured'),
(5, 1, 'Bottas giành pole chặng thứ ba liên tiếp', '<p>Tay đua Phần Lan đ&aacute;nh bại đồng đội Lewis Hamilton ở v&ograve;ng ph&acirc;n hạng GP T&acirc;y Ban Nha h&ocirc;m 11/5.</p>\r\n\r\n<p>Valtteri Bottas nhanh hơn Hamilton 0,634 gi&acirc;y v&agrave; nhanh hơn người về thứ ba&nbsp;Sebastian Vettel 0,866 gi&acirc;y. Tay đua của Red Bull&nbsp;Max Verstappen nhanh thứ tư, trong khi&nbsp;Charles Leclerc về thứ năm.</p>', 'active', 'iQ1RXPioFZ.jpeg', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-04-28', 'featured'),
(6, 1, 'HLV Cardiff: \'Man Utd sẽ không vô địch trong 10 năm tới\'', '<p>Neil Warnock tỏ ra nghi ngờ về tương lai của Man Utd dưới thời HLV Solskjaer.</p>\r\n\r\n<p>&quot;Một số người nghĩ Man Utd cần từ hai đến ba kỳ chuyển nhượng nữa để gi&agrave;nh danh hiệu&quot;, HLV Neil Warnock chia sẻ. &quot;T&ocirc;i th&igrave; nghĩ c&oacute; thể l&agrave; 10 năm. T&ocirc;i kh&ocirc;ng thấy học&oacute; khả năng bắt kịp hai CLB h&agrave;ng đầu trong khoảng bốn hay năm năm tới&quot;.</p>\r\n\r\n<p>Lần cuối Man Utd v&ocirc; địch l&agrave; m&ugrave;a 2012-2013 dưới thời HLV Sir Alex Ferguson. Kể từ đ&oacute; đến nay, &quot;Quỷ đỏ&quot; kh&ocirc;ng c&ograve;n duy tr&igrave; được vị thế ứng cử vi&ecirc;n v&ocirc; địch h&agrave;ng đầu.&nbsp;</p>', 'active', 'ReChSfB95C.jpeg', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-30', 'featured'),
(7, 2, 'Đại học Anh đưa khóa học hạnh phúc vào chương trình giảng dạy', '<p>Kh&oacute;a học diễn ra trong 12 tuần, sinh vi&ecirc;n năm nhất Đại học Bristol sẽ được kh&aacute;m ph&aacute; hạnh ph&uacute;c l&agrave; g&igrave; v&agrave; l&agrave;m thế n&agrave;o để đạt được n&oacute;.</p>\r\n\r\n<p>Đại học Bristol (Anh) quyết định đưa kh&oacute;a học hạnh ph&uacute;c v&agrave;o giảng dạy từ th&aacute;ng 9 năm nay nhằm giảm thiểu t&igrave;nh trạng tự tử ở sinh vi&ecirc;n, sau khi 12 sinh vi&ecirc;n ở một trường kh&aacute;c quy&ecirc;n sinh trong ba năm qua. Gi&aacute;o sư Bruce Hood, nh&agrave; t&acirc;m l&yacute; học chuy&ecirc;n nghi&ecirc;n cứu về c&aacute;ch thức hoạt động của bộ n&atilde;o v&agrave; con người, sẽ giảng dạy m&ocirc;n học mới n&agrave;y.</p>', 'active', 'hoyOyXJrzx.png', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-05', 'featured'),
(8, 5, '11 cách đơn giản dạy trẻ quản lý thời gian', '<p>Phụ huynh h&atilde;y tạo cảm gi&aacute;c vui vẻ, hướng dẫn trẻ thiết lập những ưu ti&ecirc;n h&agrave;ng ng&agrave;y để ch&uacute;ng c&oacute; thể tự quản l&yacute; thời gian hiệu quả.</p>\r\n\r\n<p>&quot;Nhanh l&ecirc;n&quot;, &quot;Con c&oacute; biết mấy giờ rồi kh&ocirc;ng&quot;, &quot;Điều g&igrave; l&agrave;m con mất nhiều thời gian như vậy&quot;..., l&agrave; những c&acirc;u n&oacute;i quen thuộc của phụ huynh để nhắc nhở con về kh&aacute;i niệm thời gian. Thay v&igrave; n&oacute;i những c&acirc;u tr&ecirc;n, phụ huynh c&oacute; thể dạy con c&aacute;ch quản l&yacute; giờ giấc ngay từ khi ch&uacute;ng c&ograve;n nhỏ.</p>', 'active', 'Phe2pSOC5Q.jpeg', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-07-30', 'normal'),
(9, 3, 'Vì sao không hút thuốc vẫn bị ung thư phổi?', '<p>D&ugrave; kh&ocirc;ng h&uacute;t thuốc, bạn vẫn c&oacute; nguy cơ ung thư phổi do h&iacute;t phải kh&oacute;i thuốc, tiếp x&uacute;c với kh&iacute; radon hoặc sống trong m&ocirc;i trường &ocirc; nhiễm.&nbsp;</p>\r\n\r\n<p>Người kh&ocirc;ng h&uacute;t thuốc vẫn c&oacute; thể bị ung thư phổi.&nbsp;Tr&ecirc;n&nbsp;<em>Journal of the Royal Society of Medicine</em>,&nbsp;c&aacute;c nh&agrave; khoa học từ&nbsp;Hiệp hội Ung thư Mỹ cho biết 20% bệnh nh&acirc;n ung thư phổi kh&ocirc;ng bao giờ h&uacute;t thuốc.&nbsp;Nghi&ecirc;n cứu 30 năm tr&ecirc;n 1,2 triệu người của tổ chức n&agrave;y cũng chỉ ra số người kh&ocirc;ng h&uacute;t thuốc bị ung thư phổi đang gia tăng. Hầu hết bệnh nh&acirc;n chỉ được chẩn đo&aacute;n khi đ&atilde; bước sang giai đoạn nghi&ecirc;m trọng kh&ocirc;ng thể điều trị.&nbsp;</p>', 'active', 'tPa7bgOesm.png', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-08-30', 'normal'),
(10, 4, '10 hãng hàng không  tốt nhất thế giới năm 2019', '<p>Qatar l&agrave; quốc gia duy nhất tr&ecirc;n thế giới c&oacute; h&atilde;ng h&agrave;ng kh&ocirc;ng v&agrave; s&acirc;n bay tốt nhất năm 2019.</p>\r\n\r\n<p>C&aacute;c s&acirc;n bay được đ&aacute;nh gi&aacute; dựa tr&ecirc;n 3 yếu tố: hiệu suất đ&uacute;ng giờ, chất lượng dịch vụ, thực phẩm v&agrave; lựa chọn mua sắm. Yếu tố đầu ti&ecirc;n chiếm 60% số điểm, hai ti&ecirc;u ch&iacute; c&ograve;n lại chiếm 20%. Dữ liệu của AirHelp được dựa tr&ecirc;n thống k&ecirc; từ nhiều nh&agrave; cung cấp thương mại, c&ugrave;ng cơ sở dữ liệu đ&aacute;nh gi&aacute; ri&ecirc;ng v&agrave; 40.000 khảo s&aacute;t h&agrave;nh kh&aacute;ch được thu thập từ hơn 40 quốc gia trong năm 2018.</p>', 'active', '8GlYE3KYtZ.png', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-09-30', 'normal'),
(11, 5, 'Phát hiện bụt mọc cổ thụ hơn 2.600 tuổi ở Mỹ', '<p>Ph&aacute;t hiện mới gi&uacute;p bụt mọc trở th&agrave;nh một trong những c&acirc;y sinh sản hữu t&iacute;nh gi&agrave; nhất thế giới, vượt xa ước t&iacute;nh trước đ&acirc;y của c&aacute;c chuy&ecirc;n gia.</p>\r\n\r\n<p>C&aacute;c nh&agrave; khoa học ph&aacute;t hiện một c&acirc;y bụt mọc &iacute;t nhất đ&atilde; 2.624 tuổi ở v&ugrave;ng đầm lầy s&ocirc;ng Black, bang Bắc Carolina, Mỹ, theo nghi&ecirc;n cứu đăng tr&ecirc;n tạp ch&iacute;&nbsp;<em>Environmental Research Communications</em>&nbsp;h&ocirc;m 9/5.&nbsp;</p>\r\n\r\n<p>Nh&oacute;m nghi&ecirc;n cứu bắt gặp bụt mọc cổ thụ n&agrave;y trong l&uacute;c nghi&ecirc;n cứu v&ograve;ng tuổi của c&acirc;y để t&igrave;m hiểu về lịch sử kh&iacute; hậu tại miền đ&ocirc;ng nước Mỹ. Ngo&agrave;i thể hiện tuổi thọ, độ rộng v&agrave; m&agrave;u sắc của v&ograve;ng tuổi tr&ecirc;n th&acirc;n c&acirc;y c&ograve;n cho biết mức độ ẩm ướt hay kh&ocirc; hạn của năm tương ứng.</p>', 'active', 'a09zB7BiwV.jpeg', '2019-05-12 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-12', 'normal'),
(12, 6, 'Apple có thể không nâng cấp iOS 13 cho iPhone SE, 6', '<p>Những mẫu iPhone ra mắt từ 2014 v&agrave; iPhone SE c&oacute; thể kh&ocirc;ng được l&ecirc;n đời hệ điều h&agrave;nh iOS 13 ra mắt th&aacute;ng 6 tới.</p>\r\n\r\n<p>Theo&nbsp;<em>Phone Arena</em>, hệ điều h&agrave;nh iOS 13 sắp tr&igrave;nh l&agrave;ng tại hội nghị WWDC 2019 sẽ kh&ocirc;ng hỗ trợ một loạt iPhone đời cũ của Apple. Trong đ&oacute;, đ&aacute;ng ch&uacute; &yacute; l&agrave; c&aacute;c mẫu iPhone vẫn c&ograve;n được nhiều người d&ugrave;ng sử dụng như iPhone 6, 6s Plus hay SE.&nbsp;</p>', 'active', '9jOZGc7BJK.png', '2019-05-12 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'normal'),
(13, 7, 'Hình dung về Honda Jazz thế hệ mới', '<p>Thế hệ thứ tư của mẫu hatchback Honda tiết chế bớt những đường n&eacute;t g&acirc;n guốc, thể thao để thay bằng n&eacute;t trung t&iacute;nh, hợp mắt người d&ugrave;ng hơn.&nbsp;</p>\r\n\r\n<p>Những h&igrave;nh ảnh đầu ti&ecirc;n về Honda Jazz (Fit tại Nhật Bản) thế hệ mới bắt đầu xuất hiện tr&ecirc;n đường thử. D&ugrave; chưa phải thiết kế ho&agrave;n chỉnh, thay đổi của mẫu hatchback cỡ B cho thấy những đường n&eacute;t trung t&iacute;nh m&agrave; xe sắp sở hữu. Điều n&agrave;y tr&aacute;i ngược với tạo h&igrave;nh g&acirc;n guốc, thể thao ở thế hệ thứ ba hiện tại của Jazz.&nbsp;</p>', 'active', 'g2c7mYXBPW.png', '2019-05-12 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-12', 'normal'),
(14, 1, 'Hà Nội vào vòng knock-out AFC Cup', '<p>ĐKVĐ V-League đ&aacute;nh bại&nbsp;Tampines Rovers 2-0 v&agrave;o chiều 15/5 để đứng đầu bảng F.</p>\r\n\r\n<p>Tiếp đối thủ đến từ Singapore trong t&igrave;nh thế buộc phải thắng để tự quyết v&eacute; đi tiếp, H&agrave; Nội đ&atilde; c&oacute; trận đấu dễ d&agrave;ng. C&oacute; thể n&oacute;i, kết quả của trận đấu được định đoạt trong hiệp một khi Oseni v&agrave; Th&agrave;nh Chung lần lượt ghi b&agrave;n cho đội chủ nh&agrave;. Trong khi đ&oacute;, Tampines Rovers phải trả gi&aacute; cho lối chơi th&ocirc; bạo khi Yasir Hanapi nhận thẻ v&agrave;ng thứ hai rời s&acirc;n. Tiền vệ n&agrave;y bị trừng phạt bởi pha đ&aacute;nh nguội với Th&agrave;nh Chung ở đầu trận, sau đ&oacute; l&agrave; t&igrave;nh huống phạm lỗi &aacute;c &yacute; với Đ&igrave;nh Trọng.</p>', 'active', 'e7YyFZJCc8.jpeg', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'featured'),
(15, 1, 'Man City vẫn dự Champions League mùa 2019-2020', '<p>Việc điều tra vi phạm luật c&ocirc;ng bằng t&agrave;i ch&iacute;nh của chủ s&acirc;n Etihad chưa thể ho&agrave;n th&agrave;nh trong v&ograve;ng một năm tới.</p>\r\n\r\n<p><em>Sports Mail</em>&nbsp;(Anh)&nbsp;cho biết, &aacute;n phạt cấm tham dự Champions League một m&ugrave;a với Man City, do vi phạm luật c&ocirc;ng bằng t&agrave;i ch&iacute;nh (FFP), chỉ được đưa ra sớm nhất v&agrave;o m&ugrave;a 2020-2021.</p>\r\n\r\n<p>Trong bức thư ngỏ gửi tới truyền th&ocirc;ng Anh, Man City viết: &quot;Ch&uacute;ng t&ocirc;i hợp t&aacute;c một c&aacute;ch thiện ch&iacute; với Tiểu ban kiểm so&aacute;t t&agrave;i ch&iacute;nh c&aacute;c CLB của UEFA (CFCB). CLB tin tưởng v&agrave;o sự độc lập v&agrave; cam kết của CFCB h&ocirc;m 7/3, rằng sẽ kh&ocirc;ng kết luận g&igrave; trong thời gian điều tra&quot;.</p>', 'active', 'exzJEG4WDU.jpeg', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'featured'),
(16, 1, 'Những câu đố giúp rèn luyện trí não', '<p>Bạn cần quan s&aacute;t, suy luận logic v&agrave; c&oacute; vốn từ vựng tiếng Anh để giải quyết những c&acirc;u đố dưới đ&acirc;y.</p>\r\n\r\n<p>C&acirc;u 1:&nbsp;Mike đến một buổi phỏng vấn xin việc. Anh đ&atilde; g&acirc;y ấn tượng với gi&aacute;m đốc về những kỹ năng v&agrave; kinh nghiệm của m&igrave;nh. Tuy nhi&ecirc;n, để quyết định c&oacute; nhận Mike hay kh&ocirc;ng, nữ gi&aacute;m đốc đưa ra một c&acirc;u đố h&oacute;c b&uacute;a v&agrave; y&ecirc;u cầu Mike trả lời trong 30 gi&acirc;y.</p>\r\n\r\n<p>Nội dung c&acirc;u đố: H&atilde;y đưa ra 30 từ tiếng Anh kh&ocirc;ng c&oacute; chữ &quot;a&quot; xuất hiện trong đ&oacute;?&nbsp;</p>\r\n\r\n<p>Mike dễ d&agrave;ng giải quyết c&acirc;u đố. Theo bạn anh ấy n&oacute;i những từ tiếng Anh n&agrave;o để kịp trả lời trong 30 gi&acirc;y?</p>', 'active', 'TpcocqUjob.png', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'featured'),
(17, 3, 'Cách nhận biết mật ong nguyên chất và pha trộn', '<p>Mật ong nguy&ecirc;n chất sẽ kh&ocirc;ng thấm qua tờ giấy, lắng xuống đ&aacute;y ly nước v&agrave; bị kiến ăn, kh&aacute;c với mật ong bị pha trộn tạp chất.</p>\r\n\r\n<p>Dược sĩ V&otilde; H&ugrave;ng Mạnh, Trưởng khoa Dược Bệnh viện Y học d&acirc;n tộc cổ truyền B&igrave;nh Định, cho biết thị trường c&oacute; nhiều loại mật ong bị pha trộn, chỉ nh&igrave;n bề ngo&agrave;i hay ngửi m&ugrave;i chưa chắc ph&acirc;n biệt được.</p>\r\n\r\n<p>Theo dược sĩ H&ugrave;ng, một c&aacute;ch ph&acirc;n biệt thật giả l&agrave; lấy cọng h&agrave;nh tươi nh&uacute;ng v&agrave;o lọ mật ong, lấy ra chừng v&agrave;i ph&uacute;t. Cọng l&aacute; h&agrave;nh sẽ chuyển từ m&agrave;u xanh l&aacute; sang sậm nếu mật ong thật. Ngo&agrave;i ra, c&oacute; thể nhỏ giọt mật v&agrave;o nơi c&oacute; kiến, nếu kiến kh&ocirc;ng bu giọt mật th&igrave; cũng l&agrave; mật ong thật.</p>\r\n\r\n<p>Ng&agrave;y nay, nhiều người đặt mật ong v&agrave;o ngăn đ&aacute; tủ lạnh, sau 24 giờ m&agrave; kh&ocirc;ng c&oacute; hiện tượng đ&ocirc;ng đ&aacute; th&igrave; l&agrave; mật thật.</p>', 'active', 'xvEqmF5uyJ.png', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'normal'),
(18, 4, 'Nhiều tour mùa hè giảm giá hàng chục triệu đồng', '<p>C&aacute;c tour trong v&agrave; ngo&agrave;i nước đều được giảm gi&aacute; mạnh để k&iacute;ch cầu du lịch trong dịp h&egrave;, nhiều chương tr&igrave;nh khuyến m&atilde;i l&ecirc;n đến h&agrave;ng chục triệu đồng.</p>\r\n\r\n<p>Sau khi so s&aacute;nh tiền v&eacute; m&aacute;y bay, ph&ograve;ng kh&aacute;ch sạn ở Bali để chuẩn bị cho kỳ nghỉ h&egrave; của gia đ&igrave;nh, anh Sơn (ngụ quận 2, TP HCM) quyết định chuyển sang mua tour trọn g&oacute;i v&igrave; tiết kiệm hơn.</p>', 'active', 'd2ABCeBzoR.jpeg', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-15', 'featured'),
(19, 7, 'BMW i8 Roadster - xe mui trần dẫn đường ở Formula E', '<p>Dịp cuối tuần qua, BMW giới thiệu chiếc xe dẫn đường, l&agrave;m nhiệm vụ đảm bảo an to&agrave;n tại giải đua xe Formula E. Giải đua tương tự giải F1, nhưng to&agrave;n bộ xe đua sử dụng động cơ điện.</p>\r\n\r\n<p>i8 Roadster Safety Car dựa tr&ecirc;n chiếc i8 Roadster ti&ecirc;u chuẩn, nhưng c&oacute; những thay đổi để trở th&agrave;nh chiếc xe dẫn đường chuy&ecirc;n dụng. Ngoại h&igrave;nh c&oacute; một số đặc điểm ấn tượng hơn so với nguy&ecirc;n bản. K&iacute;nh chắn gi&oacute; kiểu d&agrave;nh cho xe đua, trọng t&acirc;m hạ thấp 15 mm.</p>', 'active', '9fbeUKTBpU.png', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'normal'),
(20, 3, 'Tia cực tím tại Hà Nội ở mức \'nguy hiểm\'', '<p>Chỉ số tia UV tại H&agrave; Nội ng&agrave;y 18-19/5 l&ecirc;n tới 11, mức được đ&aacute;nh gi&aacute; l&agrave; &quot;nguy hiểm&quot; dễ khiến da, mắt bị bỏng nhiệt.</p>\r\n\r\n<p>H&agrave; Nội đang trải qua đợt nắng n&oacute;ng gay gắt. Theo Trung t&acirc;m Dự b&aacute;o Kh&iacute; tượng Thủy văn Quốc gia, nhiệt độ cao nhất ở H&agrave; Nội ng&agrave;y 18/5 dao động trong khoảng 37 đến 39 độ C, c&oacute; nơi tr&ecirc;n 39 độ.&nbsp;Trang&nbsp;<em>World Weather Online</em>&nbsp;của Anh dự b&aacute;o chỉ số tia cực t&iacute;m tại H&agrave; Nội hai ng&agrave;y 18-19/5 đạt mức 11.&nbsp;</p>', 'active', 'C4DtP4ico8.png', '2019-05-17 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-16', 'normal'),
(21, 2, 'Blockchain và trí tuệ nhân tạo AI làm thay đổi giáo dục trực tuyến', '<p>Blockchain khiến dữ liệu trở n&ecirc;n c&ocirc;ng khai, minh bạch với người học, AI gi&uacute;p cải thiện khả năng tương t&aacute;c v&agrave; giảng dạy với từng c&aacute; nh&acirc;n.</p>\r\n\r\n<p>Sự b&ugrave;ng nổ của Internet v&agrave; những c&ocirc;ng nghệ mới như chuỗi khối (Blockchain) v&agrave; tr&iacute; tuệ nh&acirc;n tạo (AI) đ&atilde; g&oacute;p phần l&agrave;m thay đổi nền gi&aacute;o dục tr&ecirc;n to&agrave;n thế giới, h&igrave;nh th&agrave;nh những nền tảng Online Learning với nhiều ưu thế.</p>\r\n\r\n<p><strong>Mobile Learning dự b&aacute;o l&agrave; &quot;Cuộc c&aacute;ch mạng tiếp theo&quot; của gi&aacute;o dục trực tuyến</strong></p>\r\n\r\n<p>Theo nghi&ecirc;n cứu của Global Market Insights, thị trường gi&aacute;o dục trực tuyến to&agrave;n cầu đang c&oacute; tốc độ ph&aacute;t triển nhanh chưa từng thấy khi nền tảng hạ tầng Internet ng&agrave;y c&agrave;ng ho&agrave;n thiện v&agrave; phủ s&oacute;ng rộng khắp. Gi&aacute; trị c&aacute;c start-up về EdTech (C&ocirc;ng ty c&ocirc;ng nghệ chuy&ecirc;n về gi&aacute;o dục) to&agrave;n cầu được ước t&iacute;nh hơn 190 tỷ USD v&agrave;o năm 2018 v&agrave; dự kiến vượt hơn 300 tỷ USD v&agrave;o năm 2025.</p>', 'active', 'gCPGos7mhY.png', '2019-05-17 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-16', 'featured'),
(22, 6, 'Huawei nói lệnh cấm sẽ khiến Mỹ tụt hậu về 5G', '<p>Huawei khẳng định sắc lệnh mới của Mỹ sẽ chỉ c&agrave;ng khiến qu&aacute; tr&igrave;nh triển khai c&ocirc;ng nghệ 5G ở nước n&agrave;y th&ecirc;m chậm chạp v&agrave; đắt đỏ.</p>\r\n\r\n<p>H&atilde;ng c&ocirc;ng nghệ Trung Quốc tự nhận l&agrave; &quot;người dẫn đầu kh&ocirc;ng ai s&aacute;nh kịp về c&ocirc;ng nghệ 5G&quot;, n&ecirc;n việc bị hạn chế kinh doanh ở Mỹ chỉ dẫn đến kết cục l&agrave; Mỹ sẽ bị &quot;tụt lại ph&iacute;a sau&quot; trong việc triển khai c&ocirc;ng nghệ kết nối di động thế hệ mới</p>', 'active', 'nt1QxhKUXM.jpeg', '2019-05-17 00:00:00', 'hailan', NULL, NULL, '2019-05-16', 'featured'),
(23, 6, 'Asus ra mắt Zenfone 6 với camera lật tự động', '<p>Với thiết kế m&agrave;n h&igrave;nh tr&agrave;n viền ho&agrave;n to&agrave;n kh&ocirc;ng tai thỏ, camera ch&iacute;nh 48 megapixel tr&ecirc;n Zenfone 6 c&oacute; thể lật từ sau ra trước biến th&agrave;nh camera selfie.</p>\r\n\r\n<p>Zenfone 6 l&agrave; một trong những smartphone c&oacute; viền m&agrave;n h&igrave;nh mỏng nhất tr&ecirc;n thị trường với tỷ lệ m&agrave;n h&igrave;nh hiển thị chiếm tới 92% diện t&iacute;ch mặt trước. M&aacute;y c&oacute; m&agrave;n h&igrave;nh 6,4 inch tr&agrave;n viền ra cả bốn cạnh, kh&ocirc;ng tai thỏ như một số mẫu Zenfone trước v&agrave; cũng kh&ocirc;ng d&ugrave;ng thiết kế đục lỗ như Galaxy S10, S10+</p>', 'active', 'aiC6j6fWZY.png', '2019-05-17 00:00:00', 'hailan', NULL, NULL, '2019-05-16', 'featured');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `status` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `is_home` varchar(45) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `status`, `created`, `created_by`, `modified`, `modified_by`, `is_home`, `display`) VALUES
(1, 'Thể thao', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-12 00:00:00', 'hailan', 'yes', 'list'),
(2, 'Giáo dục', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-12 00:00:00', 'hailan', 'yes', 'grid'),
(3, 'Sức khỏe', 'inactive', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:33', 'hailan', 'no', 'list'),
(4, 'Du lịch', 'inactive', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:30', 'hailan', 'no', 'grid'),
(5, 'Khoa học', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-12 00:00:00', 'hailan', 'no', 'list'),
(6, 'Số hóa', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:38', 'hailan', 'no', 'grid'),
(7, 'Xe - Ô tô', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:36', 'hailan', 'no', 'list'),
(8, 'Kinh doanh', 'active', '2019-05-12 00:00:00', 'hailan', '2022-01-17 00:00:00', 'hailan', 'no', 'list');

-- --------------------------------------------------------

--
-- Table structure for table `general`
--

CREATE TABLE `general` (
  `id` int(11) NOT NULL,
  `key_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`value`)),
  `status` int(11) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general`
--

INSERT INTO `general` (`id`, `key_value`, `value`, `status`, `created_by`, `created`, `modified_by`, `modified`) VALUES
(1, 'setting-main', '{\"copyright\":\"Copyright123\",\"timework\":\"Th\\u1eddi gian l\\u00e0m vi\\u1ec7c32323\",\"address\":\"no123321\",\"sologan\":\"Sologan\",\"desctiption\":\"<p>Gi\\u1edbi thi\\u1ec7u<\\/p>\",\"logo\":\"yNWG037TFm.jpg\"}', NULL, NULL, NULL, 'admin', '2022-01-27 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_open` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `status`, `ordering`, `link`, `type_menu`, `type_open`) VALUES
(1, 'Trang chủ123', 'active', 1, '/', 'link', 'new_tab'),
(3, 'Blog', 'active', 3, '/', 'category_article', 'current'),
(10, 'Sản phẩm', 'active', 2, '/', 'category_product', 'new_tab'),
(15, 'Hỉnh ảnh', 'active', 4, '/thu-vien-hinh-anh', 'link', 'current');

-- --------------------------------------------------------

--
-- Table structure for table `news_rss`
--

CREATE TABLE `news_rss` (
  `id` int(11) NOT NULL,
  `thumb` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pub_date` timestamp NULL DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_rss`
--

INSERT INTO `news_rss` (`id`, `thumb`, `title`, `description`, `pub_date`, `link`) VALUES
(1, 'https://i1-vnexpress.vnecdn.net/2021/11/17/Thumb5301update-1637148485-4109-1637148490.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=AZJPJaoP3QO6Q1SUgt1IjQ', 'Covid-19: Cả nước hơn 2,15 triệu người nhiễm, hơn 37.000 tử vong', 'Hôm nay, cả nước ghi nhận 15.885 ca nhiễm (tăng 186 so với hôm qua) tại 61 tỉnh thành; thêm 155 người tử vong, nâng tổng số lên 37.168.', '2022-01-26 04:06:43', 'https://vnexpress.net/covid-19/covid-19-viet-nam'),
(2, 'https://i1-vnexpress.vnecdn.net/2022/01/26/cao-toc-1-jpg-6153-1643190658-2169-7881-1643191249.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=VpmgUnhcRT5GLtHaOgiIYQ', 'Phân luồng từ xa chống ùn tắc cao tốc Long Thành - Dầu Giây', 'Đơn vị quản lý và CSGT lên các phương án phân luồng từ xa, xả trạm thu phí trên cao tốc TP HCM - Long Thành - Dầu Giây nếu ùn tắc dịp Tết.', '2022-01-26 03:03:03', 'https://vnexpress.net/phan-luong-tu-xa-chong-un-tac-cao-toc-long-thanh-dau-giay-4421376.html'),
(3, 'https://i1-vnexpress.vnecdn.net/2022/01/26/CHC1067-JPG-1182-1643182762.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=_AdEW4biwNulG0wMmGT96g', 'Miền Bắc đón gió mùa từ đêm 28/1', 'Gió mùa đông bắc tràn xuống miền Bắc từ đêm 28/1 (tức 26/12 âm lịch), sau đó tiếp tục tăng cường đến hết kỳ nghỉ Tết Nhâm Dần.', '2022-01-25 21:54:39', 'https://vnexpress.net/mien-bac-don-gio-mua-tu-dem-28-1-4421191.html'),
(4, 'https://i1-vnexpress.vnecdn.net/2022/01/26/272257856959828904639011232525-6106-2938-1643171849.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=h7YrC0CviBMr7VsERncKqA', 'Khánh thành, thông xe ba dự án giao thông hơn 17.000 tỷ đồng', 'Dự án cầu Cửa Lục 1, đường bao biển Hạ Long - Cẩm Phả và cao tốc Vân Đồn - Móng Cái được khánh thành, thông xe kỹ thuật, sáng 26/1.', '2022-01-25 21:38:29', 'https://vnexpress.net/khanh-thanh-thong-xe-ba-du-an-giao-thong-hon-17-000-ty-dong-4421096.html'),
(5, 'https://i1-vnexpress.vnecdn.net/2022/01/26/1d8462947e84fd807001cbe5ad1b6913-1643166253-1643169956.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=N4e15_g2ZHIAuJvPvuxRvQ', 'Công viên bến Bạch Đằng sau cải tạo', 'Công viên bến Bạch Đằng (quận 1) đã chỉnh trang xong, với nhiều thảm cỏ, lối đi, cho người dân tham quan từ ngày 26/1.', '2022-01-25 21:24:49', 'https://vnexpress.net/cong-vien-ben-bach-dang-sau-cai-tao-4421114.html'),
(6, 'https://i1-vnexpress.vnecdn.net/2022/01/26/Settop.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=VYRl2U6c9tSMZo01b7E-MA', 'Quy định xét nghiệm, cách ly khi về quê ăn Tết', 'Người dân ở bốn vùng cấp độ dịch đều không phải cách ly khi về quê, trừ F1, người từ nơi phong tỏa, theo hướng dẫn của Bộ Y tế.', '2022-01-25 20:19:25', 'https://vnexpress.net/quy-dinh-xet-nghiem-cach-ly-khi-ve-que-an-tet-4421074.html'),
(7, 'https://i1-vnexpress.vnecdn.net/2022/01/26/asia-garment-6-6712-1615377921-7815-8511-1643165003.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=tnx1ratJM5Fu4f7Db1qFxg', '1.000 doanh nghiệp ở TP HCM nợ bảo hiểm xã hội', 'Khoảng 1.000 doanh nghiệp sử dụng hơn 42.000 lao động ở thành phố nợ bảo hiểm xã hội hơn 1.600 tỷ đồng, tăng gần 1,5% so với cùng kỳ.', '2022-01-25 10:00:00', 'https://vnexpress.net/1-000-doanh-nghiep-o-tp-hcm-no-bao-hiem-xa-hoi-4420982.html'),
(8, 'https://i1-vnexpress.vnecdn.net/2022/01/26/z31397834804233041d6cea812d0bb-6772-3969-1643168641.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ZaA9xgxtzXS9MOIUzl3Gaw', '5 người bị đuối nước', 'Xuống ao lấy bùn để gieo mạ, 3 người ở Yên Bái bị đuối nước, 2 em nhỏ ở Lâm Đồng bị nước cuốn khi đi tắm suối cùng bạn.', '2022-01-25 21:34:21', 'https://vnexpress.net/5-nguoi-bi-duoi-nuoc-4421154.html'),
(9, 'https://i1-vnexpress.vnecdn.net/2022/01/25/cuRo-1643117512-8541-1643117534.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=5LZcdVztMgBgfDCb-Y7Ueg', 'Thông xe cầu hơn 2.200 tỷ đồng ở trung tâm Hải Phòng', 'Công trình cầu Rào 1 bắc qua sông Lạch Tray, kết nối 3 quận Hải An, Ngô Quyền và Dương Kinh, được thông xe chiều 25/1.', '2022-01-25 07:00:31', 'https://vnexpress.net/thong-xe-cau-hon-2-200-ty-dong-o-trung-tam-hai-phong-4420955.html'),
(10, 'https://i1-vnexpress.vnecdn.net/2022/01/25/chuaHuong1-1643108205-5481-1643108545.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=GQ2rmUwM5WyTX-Zos7SodQ', 'Dừng tổ chức lễ hội chùa Hương', 'Thông báo tạm dừng tổ chức lễ hội, không đón khách tham quan tại di tích, thắng cảnh Hương Sơn (chùa Hương) được huyện Mỹ Đức đưa ra ngày 25/1.', '2022-01-25 04:19:13', 'https://vnexpress.net/dung-to-chuc-le-hoi-chua-huong-4420923.html'),
(11, 'https://i1-vnexpress.vnecdn.net/2022/01/25/sanbay26551160516009158981-164-9177-4472-1643098420.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=BR-4g3dMwR6QT5jG_21Dkg', 'ACV cam kết hoàn thành sân bay Long Thành vào tháng 6/2025', 'Lãnh đạo ACV cho biết đơn vị đặt mục tiêu hoàn thành sân bay Long Thành vào tháng 6/2025, sớm hơn 6 tháng so với mục tiêu Quốc hội giao.', '2022-01-25 02:32:36', 'https://vnexpress.net/acv-cam-ket-hoan-thanh-san-bay-long-thanh-vao-thang-6-2025-4420502.html'),
(12, 'https://i1-vnexpress.vnecdn.net/2022/01/25/thuphi65711591787658-164309581-3686-6154-1643096430.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=_P3RuXkSuiZfnMME5J8j3g', 'Kiến nghị khắc phục sự cố với xe dán thẻ không dừng', 'Ngày 25/1, Công ty Cổ phần Giao thông số VN (VDTC) đề nghị Tổng cục Đường bộ VN làm rõ việc hơn 300 xe dán thẻ không dừng không qua được trạm thu phí.', '2022-01-25 01:56:20', 'https://vnexpress.net/kien-nghi-khac-phuc-su-co-voi-xe-dan-the-khong-dung-4420727.html'),
(13, 'https://i1-vnexpress.vnecdn.net/2022/01/25/8-jpg-1643032143-1643074567.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=VlxA5Shs3l3VGB9tbaEq3A', 'Thủ phủ mai vàng vào vụ Tết', 'Chịu ảnh hưởng nặng nề đợt mưa lớn hồi tháng 11/2021, người dân vùng trồng mai thị xã An Nhơn đang nỗ lực chăm sóc, cắt tỉa diện tích mai còn lại để phục vụ khách hàng dịp Tết.', '2022-01-25 01:55:39', 'https://vnexpress.net/thu-phu-mai-vang-vao-vu-tet-4420021.html'),
(14, 'https://i1-vnexpress.vnecdn.net/2022/01/25/img-20220104-154451-1643096118-9669-1643096599.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=hDjfoAGAcGuPLBCZicrWdQ', 'Người dân trong \'lều cách ly\' được về nhà đón Tết', 'Hơn 20 người dân ở xã Thanh Phong, huyện Như Xuân không còn phải cách ly y tế trong lán trại tạm bợ mà trở về nhà theo dõi sức khỏe.', '2022-01-25 00:51:19', 'https://vnexpress.net/nguoi-dan-trong-leu-cach-ly-duoc-ve-nha-don-tet-4420811.html'),
(15, 'https://i1-vnexpress.vnecdn.net/2022/01/25/img202201041544091643038681208-3194-6060-1643094251.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=lifRw01CtdAT_LnK1ddPfw', '\'Người dân không phải cách ly khi về quê\'', 'Người dân cư trú ở 4 cấp độ dịch không phải cách ly y tế khi về quê đón Tết, ngoại trừ các trường hợp thuộc diện theo dõi sức khỏe hoặc đang ở trong khu phong tỏa, theo giải thích của đại diện Bộ Y tế.', '2022-01-24 22:47:39', 'https://vnexpress.net/nguoi-dan-khong-phai-cach-ly-khi-ve-que-4420742.html'),
(16, 'https://i1-vnexpress.vnecdn.net/2022/01/25/quyn3239-1643074948-1643077014.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=KD7pH2R60_bgfgGNFi2gVA', 'Người Hoa ở Sài Gòn mua mía cúng Táo quân', 'Ngày Tết Táo quân, nhiều người người Hoa ở Sài Gòn đến chợ Thiếc để mua mía, bánh Tổ... làm lễ cúng.', '2022-01-24 22:04:06', 'https://vnexpress.net/nguoi-hoa-o-sai-gon-mua-mia-cung-tao-quan-4420448.html'),
(17, 'https://i1-vnexpress.vnecdn.net/2022/01/25/caotoc-1643093041-8072-1643093069.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=2Le5uCOgGP6wHcrNNwSrag', 'Cao tốc Trung Lương - Mỹ Thuận ùn ứ ngày đầu cho ôtô chạy', 'Biển chỉ dẫn không rõ ràng khiến nhiều tài xế chạy nhầm tại nút giao hai cao tốc làm ôtô ùn ứ kéo dài, sáng 25/1.', '2022-01-24 20:25:57', 'https://vnexpress.net/cao-toc-trung-luong-my-thuan-un-u-ngay-dau-cho-oto-chay-4420627.html'),
(18, 'https://i1-vnexpress.vnecdn.net/2022/01/25/thatnghiep-2-1643064606-7320-1643064818.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=OA4mJTkqf7HnrpokiqDTww', 'Công nhân mất việc chật vật lo Tết', 'Nếu có ít tiền, chị Huyền sẽ nấu nồi thịt kho cho 3 ngày Tết, một nồi canh khổ qua ăn tất niên “mong khổ cực vơi đi, năm mới có việc làm để nuôi con”.', '2022-01-24 16:00:00', 'https://vnexpress.net/cong-nhan-mat-viec-chat-vat-lo-tet-4420519.html'),
(19, 'https://i1-vnexpress.vnecdn.net/2022/01/25/dsc8292-jpg-7915-1643023445-16-5404-4156-1643077211.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=V4pB35aSaK8LwvaCFzvFTg', 'Ôtô được chạy trên cao tốc Trung Lương – Mỹ Thuận', 'Từ 0h hôm nay đến 10/2, ôtô được chạy trên cao tốc Trung Lương – Mỹ Thuận, tốc độ tối đa 80km/h, giúp rút ngắn thời gian từ TP HCM về miền Tây.', '2022-01-24 10:00:00', 'https://vnexpress.net/oto-duoc-chay-tren-cao-toc-trung-luong-my-thuan-4420458.html'),
(20, 'https://i1-vnexpress.vnecdn.net/2022/01/25/slan-1643116438-7676-1643116469.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Yv4ESXPWssFhz-s0RBwU6A', 'Sà lan tông nứt dầm cầu Thái Bình', 'Sà lan chở xi măng và đất tông nứt dầm cầu Thái Bình, thuyền trưởng điều khiển sà lan bị thương lúc 11h30 ngày 25/1.', '2022-01-25 06:28:26', 'https://vnexpress.net/sa-lan-tong-nut-dam-cau-thai-binh-4420951.html'),
(21, 'https://i1-vnexpress.vnecdn.net/2022/01/24/2JPG91231642941675-1643039346-7674-1643039693.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=P-AUJtjWGEuqt6k-vtRyJA', 'Tăng chuyến bay đêm để giảm tải các sân bay', 'Ngày 24/1, Cục Hàng không Việt Nam đề nghị các hãng bay điều chỉnh một số chuyến bay trong giờ cao điểm sang bay đêm.', '2022-01-24 09:02:15', 'https://vnexpress.net/tang-chuyen-bay-dem-de-giam-tai-cac-san-bay-4420510.html'),
(22, 'https://i1-vnexpress.vnecdn.net/2022/01/25/img202201041532081643039370798-3650-5831-1643073558.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=foobYlD0AgtyHB-vWh8NLA', 'Dựng lều cách ly người về quê ăn Tết', 'Ba khu lều tạm bằng tranh tre được dựng lên ở nhà văn hoá xã Thanh Phong, huyện Như Xuân làm nơi ở cho những người về quê dịp Tết.', '2022-01-24 08:58:04', 'https://vnexpress.net/dung-leu-cach-ly-nguoi-ve-que-an-tet-4420506.html'),
(23, 'https://i1-vnexpress.vnecdn.net/2022/01/24/dulich416335295201931969359726-6898-5751-1643038254.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=cTsG4qulspFTkssFhiv10g', 'Đề xuất nơi hoàn thành tiêm vaccine mũi 3 có thể đón khách quốc tế', 'Những địa phương đã hoàn thành tiêm ba mũi vaccine cho người dân thì có thể đón khách quốc tế, theo ý kiến của đại diện nhiều bộ ngành.', '2022-01-24 08:51:42', 'https://vnexpress.net/de-xuat-noi-hoan-thanh-tiem-vaccine-mui-3-co-the-don-khach-quoc-te-4420501.html'),
(24, 'https://i1-vnexpress.vnecdn.net/2022/01/24/tac-chien-khong-gian-mang-1643-8038-4147-1643028933.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=KqOTyyH7i5V2iOOOvHw5zA', 'Bổ nhiệm Tư lệnh Tác chiến không gian mạng', 'Đại tá Lê Dũng, Phó Tư lệnh kiêm Tham mưu trưởng Binh chủng Thông tin liên lạc, được bổ nhiệm giữ chức Tư lệnh Bộ Tư lệnh Tác chiến không gian mạng.', '2022-01-24 06:04:24', 'https://vnexpress.net/bo-nhiem-tu-lenh-tac-chien-khong-gian-mang-4420482.html'),
(25, 'https://i1-vnexpress.vnecdn.net/2022/01/24/phuong-trang-4384-1643022538-1-4477-8116-1643023734.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ZoWy4s9RAozP_bqsfAmsiA', '100 xe buýt nhỏ phục vụ nội ô Đà Lạt', 'Xe buýt loại 24 chỗ cả ngồi lẫn đứng lần đầu tiên được Lâm Đồng đưa vào hoạt động để giảm tải giao thông cho nội ô Đà Lạt.', '2022-01-24 04:29:42', 'https://vnexpress.net/100-xe-buyt-nho-phuc-vu-noi-o-da-lat-4420450.html'),
(26, 'https://i1-vnexpress.vnecdn.net/2022/01/24/BHXH367691637748869-1643014053-8071-1643020686.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=J9K58u979X8fx7vZF08HaA', 'Hơn 860.000 lao động rút bảo hiểm xã hội một lần', 'Bảo hiểm xã hội Việt Nam ghi nhận hơn 860.000 lao động rút BHXH một lần trong năm 2021, tương đương với năm trước đó.', '2022-01-24 04:19:42', 'https://vnexpress.net/hon-860-000-lao-dong-rut-bao-hiem-xa-hoi-mot-lan-4420347.html'),
(27, 'https://i1-vnexpress.vnecdn.net/2022/01/24/17258689890c44521d1d-164302214-5948-6541-1643022337.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=2eEuvm6hDWApsnaGllxnDQ', 'Người dân viếng thiền sư Thích Nhất Hạnh trong tĩnh lặng', 'Ngày 24/1, khuôn viên chùa Từ Hiếu yên tĩnh khi hàng nghìn người xếp hàng lần lượt vào viếng thiền sư Thích Nhất Hạnh.', '2022-01-24 04:06:04', 'https://vnexpress.net/nguoi-dan-vieng-thien-su-thich-nhat-hanh-trong-tinh-lang-4420238.html'),
(28, 'https://i1-vnexpress.vnecdn.net/2022/01/24/vanh-dai-3-3474-1642684318-206-6145-7526-1643022076.png?w=1200&h=0&q=100&dpr=1&fit=crop&s=0wn29yyHa_kwmBUdgs17CQ', 'Vành đai 3 TP HCM sẽ đầu tư công', 'Thủ tướng thống nhất đầu tư công dự án Vành đai 3 TP HCM, trong đó kết hợp ngân sách Trung ương với địa phương nhằm đẩy nhanh tiến độ khép kín tuyến đường.', '2022-01-24 04:01:16', 'https://vnexpress.net/vanh-dai-3-tp-hcm-se-dau-tu-cong-4420442.html'),
(29, 'https://i1-vnexpress.vnecdn.net/2022/01/24/2-1643018536-5348-1643019117.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Kg3L2JI7dPWbyr7jiPSolQ', 'Vựa cá chép đỏ lớn nhất xứ Thanh vào vụ Tết', 'Làng Tân Cổ, huyện Quảng Xương, có hơn 300 hộ nuôi cá chép đỏ bán Tết ông Công ông Táo. Nhiều hộ thu lời hàng trăm triệu đồng vì cá được giá.', '2022-01-24 03:35:43', 'https://vnexpress.net/vua-ca-chep-do-lon-nhat-xu-thanh-vao-vu-tet-4420425.html'),
(30, 'https://i1-vnexpress.vnecdn.net/2022/01/24/CHC1450JPG-1643013995-8409-1643014766.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=g_SdzDtp5yeB142sye9waQ', 'Hành khách chen chân ở sân bay Nội Bài', 'Sân bay Nội Bài vào dịp cao điểm trước Tết với khoảng 350 chuyến bay cất hạ cánh mỗi ngày, trong đó có 100 chuyến bay quốc tế.', '2022-01-24 03:01:11', 'https://vnexpress.net/hanh-khach-chen-chan-o-san-bay-noi-bai-4420342.html'),
(31, 'https://i1-vnexpress.vnecdn.net/2022/01/24/khu-du-lich-hon-100-ty-dong-bo-hoang-o-ha-tinh-1-1642987430-1643016473.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=bo8h9I18LWy5yUH1oWRp8g', 'Khu du lịch 100 tỷ đồng \'đắp chiếu\'', 'Dự án khu du lịch Tre Nguồn ở huyện Cẩm Xuyên mới xây dựng được 20% hạng mục, hoạt động thời gian ngắn rồi để không gần chục năm.', '2022-01-24 02:44:57', 'https://vnexpress.net/khu-du-lich-100-ty-dong-dap-chieu-4420063.html'),
(32, 'https://i1-vnexpress.vnecdn.net/2022/01/24/a-duong-ven-bien-quang-binh-00-5276-3386-1643011349.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=b4f1bHxD92f_hNVgmqkhrw', '2.200 tỷ đồng xây dựng đường ven biển Quảng Bình', 'Tuyến đường dài 86 km, đi qua 6 huyện thị ven biển tỉnh Quảng Bình, với tổng mức đầu tư 2.200 tỷ đồng được khởi công sáng 24/1.', '2022-01-24 01:36:56', 'https://vnexpress.net/2-200-ty-dong-xay-dung-duong-ven-bien-quang-binh-4420324.html'),
(33, 'https://i1-vnexpress.vnecdn.net/2022/01/24/thu-tuong-pham-minh-chinh-9508-1643006888.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=AfIlS6d0F75TFbVfF7-cKw', 'Thủ tướng: TP HCM đã giúp thay đổi tư duy ứng phó dịch', 'Thành phố đã đóng góp rất quan trọng vào công tác phòng, chống Covid-19, thay đổi tư duy, biện pháp trong ứng phó dịch, theo lãnh đạo Chính phủ.', '2022-01-24 00:01:15', 'https://vnexpress.net/thu-tuong-tp-hcm-da-giup-thay-doi-tu-duy-ung-pho-dich-4420277.html'),
(34, 'https://i1-vnexpress.vnecdn.net/2022/01/24/treembicachly1-1643001884-9480-1643003148.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=BdKq8ZlmTiMvizYWNffnow', 'Hà Tĩnh dỡ bỏ cách ly với \'trẻ chưa tiêm vaccine về quê ăn Tết\'', 'Tỉnh Hà Tĩnh ban hành hướng dẫn mới, tạo điều kiện cho người dân về quê ăn Tết sau khi nhận được phản ánh về trường hợp \"trẻ em chưa tiêm vaccine bị cách ly 14 ngày\".', '2022-01-23 23:57:28', 'https://vnexpress.net/ha-tinh-do-bo-cach-ly-voi-tre-chua-tiem-vaccine-ve-que-an-tet-4420258.html'),
(35, 'https://i1-vnexpress.vnecdn.net/2022/01/23/anh-7-jpg-1642924120-1642935862.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=TMqe8tY52HuzPMpyfd_ifg', 'Kiếm gần triệu mỗi ngày từ làm bánh gật gù', 'Mỗi ngày bà Đinh Thị Cúc, 62 tuổi, làm từ 40 đến 50 kg bánh gật gù, bán 30.000 đồng mỗi kg.', '2022-01-23 10:00:00', 'https://vnexpress.net/kiem-gan-trieu-moi-ngay-tu-lam-banh-gat-gu-4419896.html'),
(36, 'https://i1-vnexpress.vnecdn.net/2022/01/24/buyt-jpg-1733-1642999594-16430-4903-2773-1643018888.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=8ce5GDhABFguXfdaAKyg9g', 'TP HCM dừng 17 tuyến xe buýt dịp Tết', '17 tuyến xe buýt có trợ giá ở thành phố tạm ngưng hoạt động, các tuyến còn lại cũng được điều chỉnh giảm hơn 14.600 chuyến trong dịp Tết do nhu cầu đi lại ít.', '2022-01-24 03:11:32', 'https://vnexpress.net/tp-hcm-dung-17-tuyen-xe-buyt-dip-tet-4420240.html'),
(37, 'https://i1-vnexpress.vnecdn.net/2022/01/24/bac34821643025872128448019618-9876-2416-1643039932.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=09d6oiVLOLOyMG_R0l7O6g', '\'Xuyên Tết làm hồ sơ xây đường vành đai 3, 4 TP HCM\'', 'UBND TP HCM và các đơn vị liên quan cần làm việc ngày đêm, xuyên Tết để đảm bảo chất lượng, tiến độ hồ sơ xây dựng đường vành đai 3, 4 TP HCM, Phó thủ tướng chỉ đạo.', '2022-01-24 09:10:11', 'https://vnexpress.net/xuyen-tet-lam-ho-so-xay-duong-vanh-dai-3-4-tp-hcm-4420507.html'),
(38, 'https://i1-vnexpress.vnecdn.net/2022/01/23/2-jpg-9123-1642941675-16429424-2268-6047-1642942673.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=vzOZALjAtyCl58yhC3HcBg', 'Sân bay, bến xe đông nghẹt người', 'Sau 3 tuần liên tiếp TP HCM là \"vùng xanh\", khách về Tết qua sân bay Tân Sơn Nhất cùng các bến xe liên tỉnh tăng cao, trái ngược cảnh vắng vẻ những ngày trước.', '2022-01-23 06:00:11', 'https://vnexpress.net/san-bay-ben-xe-dong-nghet-nguoi-4419952.html'),
(39, 'https://i1-vnexpress.vnecdn.net/2022/01/23/chu-tich-nuoc-final-7917-16429-9772-5915-1642934338.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=b_saUvxpd1L2z1PUR3WcHA', 'Chủ tịch nước: ‘Lao động không về quê cần được quan tâm nhiều hơn’', 'Chủ tịch nước Nguyễn Xuân Phúc nói lao động không về quê ăn Tết là những người khó khăn nhất về tinh thần, vật chất nên cần được quan tâm nhiều hơn.', '2022-01-23 03:40:49', 'https://vnexpress.net/chu-tich-nuoc-lao-dong-khong-ve-que-can-duoc-quan-tam-nhieu-hon-4419930.html'),
(40, 'https://i1-vnexpress.vnecdn.net/2022/01/23/thien-su-tnh-1-4-1642913773.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=N7bKsyz5vQzT3dYgS7NYUQ', 'Lễ tâm tang thiền sư Thích Nhất Hạnh', 'Sáng 23/1, thi hài thiền sư Thích Nhất Hạnh được khâm liệm tại chùa Từ Hiếu, bắt đầu tang lễ 7 ngày theo nghi lễ tâm tang - khóa tu im lặng.', '2022-01-22 21:43:28', 'https://vnexpress.net/le-tam-tang-thien-su-thich-nhat-hanh-4419811.html'),
(41, 'https://i1-vnexpress.vnecdn.net/2022/01/23/ngoc-khanhhoa-luaray-2-jpg-164-7639-4527-1642907325.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=H_anh0P9WNAPL-h_qY5UzA', 'Người T\'Rin thu hoạch lúa rẫy', 'Người T\'Rin ở huyện Khánh Vĩnh gieo hạt trên sườn đồi, không tưới nước hay bón phân nhưng vẫn cho hạt lúa to tròn, dùng tay để thu hoạch.', '2022-01-22 20:20:20', 'https://vnexpress.net/nguoi-t-rin-thu-hoach-lua-ray-4419626.html'),
(42, 'https://i1-vnexpress.vnecdn.net/2022/01/23/thien-su1-2431-1642905694.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=tHtuw2zOtHx7PbiVyE-Mrg', 'Lễ khâm liệm thiền sư Thích Nhất Hạnh', 'Sáng 23/1, thi hài thiền sư Thích Nhất Hạnh được đưa sang thiền đường Trăng Rằm của chùa Từ Hiếu để làm lễ khâm liệm.', '2022-01-22 19:06:20', 'https://vnexpress.net/le-kham-liem-thien-su-thich-nhat-hanh-4419792.html'),
(43, 'https://i1-vnexpress.vnecdn.net/2022/01/23/hinhcaophosuong768x1148-164287-6373-2259-1642875945.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ewVElbHTCi-Zx52w8GtOxA', 'Tư tưởng \'hạnh phúc trong hiện tại\' của thiền sư Thích Nhất Hạnh', 'Thiền sư Thích Nhất Hạnh là tấm gương sáng kiên trì tu tập, giữ chính niệm để tìm thấy hạnh phúc trong hiện tại và quảng bá tư tưởng này với thế giới, theo hòa thượng Thích Gia Quang.', '2022-01-22 17:00:00', 'https://vnexpress.net/tu-tuong-hanh-phuc-trong-hien-tai-cua-thien-su-thich-nhat-hanh-4419708.html'),
(44, 'https://i1-vnexpress.vnecdn.net/2022/01/23/TuHieu115796678867327164286562-1532-5395-1642873477.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=O6l3uSvrmOTgaq-LGMCOYw', 'Nơi bắt đầu con đường tu học của thiền sư Thích Nhất Hạnh', 'Chùa Từ Hiếu là nơi thiền sư Thích Nhất Hạnh xuất gia tu hành, cũng là nơi ngài tịnh dưỡng những năm cuối đời và viên tịch ở tuổi 96.', '2022-01-22 16:00:00', 'https://vnexpress.net/noi-bat-dau-con-duong-tu-hoc-cua-thien-su-thich-nhat-hanh-4419712.html'),
(45, 'https://i1-vnexpress.vnecdn.net/2022/01/22/anh2-1642832518-5476-1642834618.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=LGBGJv6-nw8O-zrW7UCn6g', 'Ngư phủ thả lưới bắt cá đối', 'Thủy triều lên, ông Trần Công Quân, xã Tam Giang (huyện Núi Thành) mang ngư cụ ra cửa An Hòa đánh bắt cá đối.', '2022-01-22 16:00:00', 'https://vnexpress.net/ngu-phu-tha-luoi-bat-ca-doi-4419598.html'),
(46, 'https://i1-vnexpress.vnecdn.net/2022/01/22/chc1268-jpg-1642850454-1642855832.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=dH0Xf8aHOy2um_sHH1epVw', 'Xưởng sản xuất những cây hương thắp trong 2 ngày', 'Những que hương dài 1,5 m được người dân xã Phúc Thành (huyện Kim Thành) làm ra để dùng trong các đền, chùa dịp Tết; thời gian hương cháy gần 2 ngày.', '2022-01-22 10:00:00', 'https://vnexpress.net/xuong-san-xuat-nhung-cay-huong-thap-trong-2-ngay-4419664.html'),
(47, 'https://i1-vnexpress.vnecdn.net/2022/01/21/nuoiduihatinh1-1642758645-7153-1642763521.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ttXccrg9eG5B__ETTn-KoQ', 'Nuôi dúi thu hơn 300 triệu đồng mỗi năm', 'Đang làm công nhân ở Bắc Ninh, cuộc sống vợ chồng anh Trần Đình Nhâm thay đổi sau một lần được công ty cho đi tham qua tại một trang trại nuôi dúi.', '2022-01-22 10:00:00', 'https://vnexpress.net/nuoi-dui-thu-hon-300-trieu-dong-moi-nam-4419330.html'),
(48, '', 'Bé gái bị trúng đạn', 'Bé Trần Lê Tâm An, 4 tuổi, trú xã Sơn Thành, huyện Yên Thành, tới nhà người thân chơi thì không may bị đạn găm vào ngực.', '2022-01-22 21:25:16', 'https://vnexpress.net/be-gai-bi-trung-dan-4419848.html'),
(49, 'https://i1-vnexpress.vnecdn.net/2022/01/22/Cn-jpg-9827-1642860472.gif?w=1200&h=0&q=100&dpr=1&fit=crop&s=UYP5SBDNIhp3jlmBTOp51Q&t=image', '\'Chuyến xe 0 đồng\' đưa công nhân về quê ăn Tết', '70 chuyến xe do Liên đoàn Lao động Đà Nẵng tổ chức sẽ đưa 2.000 công nhân về các tỉnh miền Trung và Tây Nguyên ăn Tết Nguyên đán.', '2022-01-22 07:37:19', 'https://vnexpress.net/chuyen-xe-0-dong-dua-cong-nhan-ve-que-an-tet-4419714.html'),
(50, 'https://i1-vnexpress.vnecdn.net/2022/01/22/27158290264196589721808075954-9449-9235-1642850532.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=5xF205JgXK_aL9EUamTaEg', 'Người dân về quê ăn Tết không phải cách ly y tế', 'Bộ Y tế đề nghị các tỉnh, thành hướng dẫn người dân về quê nhân dịp Tết nguyên đán thực hiện nghiêm biện pháp phòng dịch và không phải cách ly y tế.', '2022-01-22 04:45:16', 'https://vnexpress.net/nguoi-dan-ve-que-an-tet-khong-phai-cach-ly-y-te-4419676.html'),
(51, 'https://i1-vnexpress.vnecdn.net/2022/01/22/b4f461b8-77bc-4d1f-b83f-9c1b30-4983-2347-1642843635.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=CQQso9l3ygvkl6m9waX6Ng', 'Hồ thuỷ điện Yaly đổi màu do \'tảo nở hoa\'', 'Hồ Yaly màu xanh đậm, bốc mùi hôi, nổi váng do nhiệt độ trong nước tăng làm cho tảo lam phát triển đột biến và phân hủy, theo Sở Tài nguyên và Môi trường.', '2022-01-22 02:28:03', 'https://vnexpress.net/ho-thuy-dien-yaly-doi-mau-do-tao-no-hoa-4419624.html'),
(52, 'https://i1-vnexpress.vnecdn.net/2022/01/22/ngao-chet-hau-loc-1642841028-4639-1642841384.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=iRwFNuzh1PmgO_Pdv9BHvg', 'Hơn 150 tấn ngao chết trắng bãi biển', 'Khoảng 300 ha ngao thương phẩm ven biển huyện Hậu Lộc đang chết hàng loạt, gây thiệt hại nặng cho gần 180 hộ nuôi.', '2022-01-22 02:12:35', 'https://vnexpress.net/hon-150-tan-ngao-chet-trang-bai-bien-4419634.html'),
(53, 'https://i1-vnexpress.vnecdn.net/2022/01/22/doimoi-1642842236-8810-1642842353.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=t3mSpci2lPEgqKqieeMN-Q', 'Thả đồi mồi quý về biển', 'Anh Nguyễn Đen, 32 tuổi, ngư dân xã Hòa Thắng (huyện Bắc Bình) thả con đồi mồi quý hiếm dính lưới về lại biển khơi, ngày 22/1.', '2022-01-22 02:06:16', 'https://vnexpress.net/tha-doi-moi-quy-ve-bien-4419633.html'),
(54, 'https://i1-vnexpress.vnecdn.net/2022/01/22/IMG-5974-4917-1642828192.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=y6hP6dh3nMRvU5bQthjXOg', 'Tuần thứ ba liên tiếp TP HCM là \'vùng xanh\'', 'Nguy cơ dịch tại thành phố tiếp tục được ghi nhận ở cấp độ 1 (vùng xanh) tuần thứ ba liên tiếp, hiện chỉ còn huyện Nhà Bè ở cấp độ 2 (vùng vàng).', '2022-01-21 22:15:57', 'https://vnexpress.net/tuan-thu-ba-lien-tiep-tp-hcm-la-vung-xanh-4419585.html'),
(55, 'https://i1-vnexpress.vnecdn.net/2022/01/22/23354652f2bf3fe166ae-164282389-1709-3713-1642824450.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=wXY3HjYBgTm3WNYEH32DKQ', 'Trăn 25 kg bò vào nhà dân', 'Con trăn gấm dài hơn 3 m, nặng 25 kg, bò vào nhà dân ở quận Tân Phú, khiến cảnh sát phải mất hơn 2 giờ bắt giữ.', '2022-01-21 21:27:04', 'https://vnexpress.net/tran-25-kg-bo-vao-nha-dan-4419557.html'),
(56, 'https://i1-vnexpress.vnecdn.net/2022/01/22/042311504163305680x0-164282838-4098-4063-1642828390.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=-H9PgTK-tvexuQJJTc_kYw', 'Những năm tháng \'dấn thân\' của thiền sư Thích Nhất Hạnh', 'Thiền sư Thích Nhất Hạnh là người đưa ra khái niệm \"Phật giáo dấn thân\" và cả cuộc đời ông đã hoạt động không ngừng nghỉ để kêu gọi hòa bình, đưa Phật giáo Việt Nam vươn ra thế giới.', '2022-01-21 21:04:43', 'https://vnexpress.net/nhung-nam-thang-dan-than-cua-thien-su-thich-nhat-hanh-4419502.html'),
(57, 'https://i1-vnexpress.vnecdn.net/2022/01/22/24-thich-nhat-hanh-at-tu-hie-u-temple-in-hue-2005-vietnam-photo-paul-davis-1024x820-1642817358.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=-IUTopTN6s80QKqMmyXZ0Q', 'Cuộc đời thiền sư Thích Nhất Hạnh qua ảnh', 'Thiền sư Thích Nhất Hạnh là lãnh đạo Phật giáo có ảnh hưởng lớn ở phương Tây và tích cực thúc đẩy hòa bình.', '2022-01-21 19:32:28', 'https://vnexpress.net/cuoc-doi-thien-su-thich-nhat-hanh-qua-anh-4419517.html'),
(58, 'https://i1-vnexpress.vnecdn.net/2022/01/22/sanbay-1642817132-4335-1642817420.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=vUFUXvibtw2kDNaFDPX9fg', 'Hơn 1.400 tỷ đồng đầu tư mở rộng sân bay Điện Biên', 'Sân bay Điện Biên được đầu tư hơn 1.400 tỷ đồng để mở rộng đường băng, sân đỗ, đón các máy bay lớn như A320 và tương đương.', '2022-01-21 19:29:07', 'https://vnexpress.net/hon-1-400-ty-dong-dau-tu-mo-rong-san-bay-dien-bien-4419416.html'),
(59, 'https://i1-vnexpress.vnecdn.net/2022/01/22/HUY4337163386112423241634894-1-9689-7276-1642807312.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=yZdXNCj4NQrNlWHZGIN3qw', 'Bỏ quy định xét nghiệm với trẻ em khi đi máy bay', 'Trẻ em không cư trú ở vùng dịch cấp 4, vùng phong tỏa thì khi đi máy bay sẽ không phải xét nghiệm Covid-19, theo quy định của Bộ Giao thông Vận tải.', '2022-01-21 17:54:37', 'https://vnexpress.net/bo-quy-dinh-xet-nghiem-voi-tre-em-khi-di-may-bay-4419441.html'),
(60, 'https://i1-vnexpress.vnecdn.net/2022/01/22/thien-su-28-1642808869.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=d2HQXWffhcWo47Tq3F2jfQ', 'Những ngày thiền sư Thích Nhất Hạnh ở chùa Từ Hiếu', 'Thiền sư Thích Nhất Hạnh đã sống những năm cuối đời  tại Tổ đình chùa Từ Hiếu, nơi ngài bắt đầu con đường xuất gia tu học vào năm 1942.', '2022-01-21 16:59:11', 'https://vnexpress.net/nhung-ngay-thien-su-thich-nhat-hanh-o-chua-tu-hieu-4419437.html');

-- --------------------------------------------------------

--
-- Table structure for table `rss`
--

CREATE TABLE `rss` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(45) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `source` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss`
--

INSERT INTO `rss` (`id`, `name`, `status`, `link`, `ordering`, `source`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 'Thế Giới VNExpress', 'inactive', 'https://vnexpress.net/rss/the-gioi.rss', 1, 'vnexpress', '2021-07-11 00:00:00', 'hailan', '2021-07-12 00:00:00', 'hailan'),
(2, 'Thế Giới TuoiTre', 'inactive', 'https://tuoitre.vn/rss/the-gioi.rss', 2, 'tuoitre', '2021-07-11 00:00:00', 'hailan', NULL, NULL),
(4, 'Thời sự VNEx', 'active', 'https://vnexpress.net/rss/thoi-su.rss', 4, 'vnexpress', '2021-07-12 00:00:00', 'hailan', '2021-07-12 00:00:00', 'hailan');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `link` varchar(200) NOT NULL,
  `thumb` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `description`, `link`, `thumb`, `created`, `created_by`, `modified`, `modified_by`, `status`) VALUES
(1, 'Khóa học lập trình Frontend Master', 'Khóa học sẽ giúp bạn trở thành một chuyên gia Frontend với đầy đủ các kiến thức về HTML, CSS, JavaScript, Bootstrap, jQuery, chuyển PSD thành HTML ...', 'https://zendvn.com/khoa-hoc-lap-trinh-frontend-master/', 'rEpDUQCxe4.jpeg', '2019-04-15 00:00:00', 'hailan', '2019-04-24 13:28:03', 'hailan', 'active'),
(2, 'Học lập trình trực tuyến', 'Học trực tuyến giúp bạn tiết kiệm chi phí, thời gian, cập nhật được nhiều kiến thức mới nhanh nhất và hiệu quả nhất', 'https://zendvn.com/', 'K6B1O6UNCb.jpeg', '2019-04-18 00:00:00', 'hailan', '2019-04-24 13:28:06', 'hailan', 'active'),
(3, 'Ưu đãi học phí', 'Tổng hợp các trương trình ưu đãi học phí hàng tuần, hàng tháng đến tất các các bạn với các mức giảm đặc biệt 50%, 70%,..', 'https://zendvn.com/uu-dai-hoc-phi-tai-zendvn/', 'LWi6hINpXz.jpeg', '2019-04-24 00:00:00', 'hailan', '2021-07-10 00:00:00', 'hailan', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `fullname`, `password`, `avatar`, `level`, `created`, `created_by`, `modified`, `modified_by`, `status`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin1234 56', '827ccb0eea8a706c4c34a16891f84e7b', '1ctW8mj8vq.png', 'admin', '2014-12-10 08:55:35', 'admin', '2022-01-18 00:00:00', 'hailan', 'active'),
(2, 'hailan', 'hailan@gmail.com', 'hailan', '7c6f3ef49405d8a330aaa19ca0d0f6af', '1eSGmvZ3gM.jpeg', 'member', '2014-12-13 07:20:03', 'admin', '2019-05-04 08:47:04', 'hailan', 'active'),
(3, 'user123', 'test@gmail.com', 'user123', 'e10adc3949ba59abbe56e057f20f883e', 'Hb1QSn1CL8.png', 'member', '2019-05-04 00:00:00', 'admin', '2019-05-04 08:47:07', 'hailan', 'active'),
(4, 'user 456', 'user456@gmail.com', 'user456', 'e10adc3949ba59abbe56e057f20f883e', 'J1uknUz0T6.png', 'admin', '2019-05-04 00:00:00', 'admin', '2022-01-18 00:00:00', 'hailan', 'inactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key_value` (`key_value`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `news_rss`
--
ALTER TABLE `news_rss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rss`
--
ALTER TABLE `rss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `news_rss`
--
ALTER TABLE `news_rss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `rss`
--
ALTER TABLE `rss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
