-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 02:28 AM
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
(4, 2, 'Liverpool chỉ được nâng Cup phiên bản nếu vô địch hôm nay', '<p>Đội b&oacute;ng th&agrave;nh phố cảng sẽ kh&ocirc;ng n&acirc;ng Cup nguy&ecirc;n bản nếu vượt mặt Man City ở v&ograve;ng cuối Ngoại hạng Anh.</p>\r\n\r\n<p>Liverpool k&eacute;m Man City một điểm trước khi tiếp Wolverhampton tr&ecirc;n s&acirc;n nh&agrave; Anfield v&agrave;o ng&agrave;y Chủ Nhật. Ở trận đấu c&ugrave;ng giờ, Man City sẽ l&agrave;m kh&aacute;ch tới s&acirc;n Brighton v&agrave; biết một chiến thắng sẽ gi&uacute;p họ bảo vệ th&agrave;nh c&ocirc;ng ng&ocirc;i v&ocirc; địch. Kể từ khi c&aacute;c trận v&ograve;ng cuối Ngoại hạng Anh sẽ chơi đồng loạt c&ugrave;ng l&uacute;c, ban tổ chức phải đặt một chiếc cup phi&ecirc;n bản giống thật tại Anfield ph&ograve;ng trường hợp Liverpool v&ocirc; địch. Chiếc cup giả n&agrave;y thường được d&ugrave;ng trong c&aacute;c sự kiện quảng b&aacute; của Ngoại hạng Anh.&nbsp;</p>', 'active', 'L3Yuzln8II.png', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-04-29', 'featured'),
(5, 2, 'Bottas giành pole chặng thứ ba liên tiếp', '<p>Tay đua Phần Lan đ&aacute;nh bại đồng đội Lewis Hamilton ở v&ograve;ng ph&acirc;n hạng GP T&acirc;y Ban Nha h&ocirc;m 11/5.</p>\r\n\r\n<p>Valtteri Bottas nhanh hơn Hamilton 0,634 gi&acirc;y v&agrave; nhanh hơn người về thứ ba&nbsp;Sebastian Vettel 0,866 gi&acirc;y. Tay đua của Red Bull&nbsp;Max Verstappen nhanh thứ tư, trong khi&nbsp;Charles Leclerc về thứ năm.</p>', 'active', 'iQ1RXPioFZ.jpeg', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-04-28', 'featured'),
(6, 2, 'HLV Cardiff: \'Man Utd sẽ không vô địch trong 10 năm tới\'', '<p>Neil Warnock tỏ ra nghi ngờ về tương lai của Man Utd dưới thời HLV Solskjaer.</p>\r\n\r\n<p>&quot;Một số người nghĩ Man Utd cần từ hai đến ba kỳ chuyển nhượng nữa để gi&agrave;nh danh hiệu&quot;, HLV Neil Warnock chia sẻ. &quot;T&ocirc;i th&igrave; nghĩ c&oacute; thể l&agrave; 10 năm. T&ocirc;i kh&ocirc;ng thấy học&oacute; khả năng bắt kịp hai CLB h&agrave;ng đầu trong khoảng bốn hay năm năm tới&quot;.</p>\r\n\r\n<p>Lần cuối Man Utd v&ocirc; địch l&agrave; m&ugrave;a 2012-2013 dưới thời HLV Sir Alex Ferguson. Kể từ đ&oacute; đến nay, &quot;Quỷ đỏ&quot; kh&ocirc;ng c&ograve;n duy tr&igrave; được vị thế ứng cử vi&ecirc;n v&ocirc; địch h&agrave;ng đầu.&nbsp;</p>', 'active', 'ReChSfB95C.jpeg', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-30', 'featured'),
(7, 3, 'Đại học Anh đưa khóa học hạnh phúc vào chương trình giảng dạy', '<p>Kh&oacute;a học diễn ra trong 12 tuần, sinh vi&ecirc;n năm nhất Đại học Bristol sẽ được kh&aacute;m ph&aacute; hạnh ph&uacute;c l&agrave; g&igrave; v&agrave; l&agrave;m thế n&agrave;o để đạt được n&oacute;.</p>\r\n\r\n<p>Đại học Bristol (Anh) quyết định đưa kh&oacute;a học hạnh ph&uacute;c v&agrave;o giảng dạy từ th&aacute;ng 9 năm nay nhằm giảm thiểu t&igrave;nh trạng tự tử ở sinh vi&ecirc;n, sau khi 12 sinh vi&ecirc;n ở một trường kh&aacute;c quy&ecirc;n sinh trong ba năm qua. Gi&aacute;o sư Bruce Hood, nh&agrave; t&acirc;m l&yacute; học chuy&ecirc;n nghi&ecirc;n cứu về c&aacute;ch thức hoạt động của bộ n&atilde;o v&agrave; con người, sẽ giảng dạy m&ocirc;n học mới n&agrave;y.</p>', 'active', 'hoyOyXJrzx.png', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-05', 'featured'),
(8, 6, '11 cách đơn giản dạy trẻ quản lý thời gian', '<p>Phụ huynh h&atilde;y tạo cảm gi&aacute;c vui vẻ, hướng dẫn trẻ thiết lập những ưu ti&ecirc;n h&agrave;ng ng&agrave;y để ch&uacute;ng c&oacute; thể tự quản l&yacute; thời gian hiệu quả.</p>\r\n\r\n<p>&quot;Nhanh l&ecirc;n&quot;, &quot;Con c&oacute; biết mấy giờ rồi kh&ocirc;ng&quot;, &quot;Điều g&igrave; l&agrave;m con mất nhiều thời gian như vậy&quot;..., l&agrave; những c&acirc;u n&oacute;i quen thuộc của phụ huynh để nhắc nhở con về kh&aacute;i niệm thời gian. Thay v&igrave; n&oacute;i những c&acirc;u tr&ecirc;n, phụ huynh c&oacute; thể dạy con c&aacute;ch quản l&yacute; giờ giấc ngay từ khi ch&uacute;ng c&ograve;n nhỏ.</p>', 'active', 'Phe2pSOC5Q.jpeg', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-07-30', 'normal'),
(9, 4, 'Vì sao không hút thuốc vẫn bị ung thư phổi?', '<p>D&ugrave; kh&ocirc;ng h&uacute;t thuốc, bạn vẫn c&oacute; nguy cơ ung thư phổi do h&iacute;t phải kh&oacute;i thuốc, tiếp x&uacute;c với kh&iacute; radon hoặc sống trong m&ocirc;i trường &ocirc; nhiễm.&nbsp;</p>\r\n\r\n<p>Người kh&ocirc;ng h&uacute;t thuốc vẫn c&oacute; thể bị ung thư phổi.&nbsp;Tr&ecirc;n&nbsp;<em>Journal of the Royal Society of Medicine</em>,&nbsp;c&aacute;c nh&agrave; khoa học từ&nbsp;Hiệp hội Ung thư Mỹ cho biết 20% bệnh nh&acirc;n ung thư phổi kh&ocirc;ng bao giờ h&uacute;t thuốc.&nbsp;Nghi&ecirc;n cứu 30 năm tr&ecirc;n 1,2 triệu người của tổ chức n&agrave;y cũng chỉ ra số người kh&ocirc;ng h&uacute;t thuốc bị ung thư phổi đang gia tăng. Hầu hết bệnh nh&acirc;n chỉ được chẩn đo&aacute;n khi đ&atilde; bước sang giai đoạn nghi&ecirc;m trọng kh&ocirc;ng thể điều trị.&nbsp;</p>', 'active', 'tPa7bgOesm.png', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-08-30', 'normal'),
(10, 5, '10 hãng hàng không  tốt nhất thế giới năm 2019', '<p>Qatar l&agrave; quốc gia duy nhất tr&ecirc;n thế giới c&oacute; h&atilde;ng h&agrave;ng kh&ocirc;ng v&agrave; s&acirc;n bay tốt nhất năm 2019.</p>\r\n\r\n<p>C&aacute;c s&acirc;n bay được đ&aacute;nh gi&aacute; dựa tr&ecirc;n 3 yếu tố: hiệu suất đ&uacute;ng giờ, chất lượng dịch vụ, thực phẩm v&agrave; lựa chọn mua sắm. Yếu tố đầu ti&ecirc;n chiếm 60% số điểm, hai ti&ecirc;u ch&iacute; c&ograve;n lại chiếm 20%. Dữ liệu của AirHelp được dựa tr&ecirc;n thống k&ecirc; từ nhiều nh&agrave; cung cấp thương mại, c&ugrave;ng cơ sở dữ liệu đ&aacute;nh gi&aacute; ri&ecirc;ng v&agrave; 40.000 khảo s&aacute;t h&agrave;nh kh&aacute;ch được thu thập từ hơn 40 quốc gia trong năm 2018.</p>', 'active', '8GlYE3KYtZ.png', '2019-05-04 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-09-30', 'normal'),
(11, 6, 'Phát hiện bụt mọc cổ thụ hơn 2.600 tuổi ở Mỹ', '<p>Ph&aacute;t hiện mới gi&uacute;p bụt mọc trở th&agrave;nh một trong những c&acirc;y sinh sản hữu t&iacute;nh gi&agrave; nhất thế giới, vượt xa ước t&iacute;nh trước đ&acirc;y của c&aacute;c chuy&ecirc;n gia.</p>\r\n\r\n<p>C&aacute;c nh&agrave; khoa học ph&aacute;t hiện một c&acirc;y bụt mọc &iacute;t nhất đ&atilde; 2.624 tuổi ở v&ugrave;ng đầm lầy s&ocirc;ng Black, bang Bắc Carolina, Mỹ, theo nghi&ecirc;n cứu đăng tr&ecirc;n tạp ch&iacute;&nbsp;<em>Environmental Research Communications</em>&nbsp;h&ocirc;m 9/5.&nbsp;</p>\r\n\r\n<p>Nh&oacute;m nghi&ecirc;n cứu bắt gặp bụt mọc cổ thụ n&agrave;y trong l&uacute;c nghi&ecirc;n cứu v&ograve;ng tuổi của c&acirc;y để t&igrave;m hiểu về lịch sử kh&iacute; hậu tại miền đ&ocirc;ng nước Mỹ. Ngo&agrave;i thể hiện tuổi thọ, độ rộng v&agrave; m&agrave;u sắc của v&ograve;ng tuổi tr&ecirc;n th&acirc;n c&acirc;y c&ograve;n cho biết mức độ ẩm ướt hay kh&ocirc; hạn của năm tương ứng.</p>', 'active', 'a09zB7BiwV.jpeg', '2019-05-12 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-12', 'normal'),
(12, 7, 'Apple có thể không nâng cấp iOS 13 cho iPhone SE, 6', '<p>Những mẫu iPhone ra mắt từ 2014 v&agrave; iPhone SE c&oacute; thể kh&ocirc;ng được l&ecirc;n đời hệ điều h&agrave;nh iOS 13 ra mắt th&aacute;ng 6 tới.</p>\r\n\r\n<p>Theo&nbsp;<em>Phone Arena</em>, hệ điều h&agrave;nh iOS 13 sắp tr&igrave;nh l&agrave;ng tại hội nghị WWDC 2019 sẽ kh&ocirc;ng hỗ trợ một loạt iPhone đời cũ của Apple. Trong đ&oacute;, đ&aacute;ng ch&uacute; &yacute; l&agrave; c&aacute;c mẫu iPhone vẫn c&ograve;n được nhiều người d&ugrave;ng sử dụng như iPhone 6, 6s Plus hay SE.&nbsp;</p>', 'active', '9jOZGc7BJK.png', '2019-05-12 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'normal'),
(13, 8, 'Hình dung về Honda Jazz thế hệ mới', '<p>Thế hệ thứ tư của mẫu hatchback Honda tiết chế bớt những đường n&eacute;t g&acirc;n guốc, thể thao để thay bằng n&eacute;t trung t&iacute;nh, hợp mắt người d&ugrave;ng hơn.&nbsp;</p>\r\n\r\n<p>Những h&igrave;nh ảnh đầu ti&ecirc;n về Honda Jazz (Fit tại Nhật Bản) thế hệ mới bắt đầu xuất hiện tr&ecirc;n đường thử. D&ugrave; chưa phải thiết kế ho&agrave;n chỉnh, thay đổi của mẫu hatchback cỡ B cho thấy những đường n&eacute;t trung t&iacute;nh m&agrave; xe sắp sở hữu. Điều n&agrave;y tr&aacute;i ngược với tạo h&igrave;nh g&acirc;n guốc, thể thao ở thế hệ thứ ba hiện tại của Jazz.&nbsp;</p>', 'active', 'g2c7mYXBPW.png', '2019-05-12 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-12', 'normal'),
(14, 2, 'Hà Nội vào vòng knock-out AFC Cup', '<p>ĐKVĐ V-League đ&aacute;nh bại&nbsp;Tampines Rovers 2-0 v&agrave;o chiều 15/5 để đứng đầu bảng F.</p>\r\n\r\n<p>Tiếp đối thủ đến từ Singapore trong t&igrave;nh thế buộc phải thắng để tự quyết v&eacute; đi tiếp, H&agrave; Nội đ&atilde; c&oacute; trận đấu dễ d&agrave;ng. C&oacute; thể n&oacute;i, kết quả của trận đấu được định đoạt trong hiệp một khi Oseni v&agrave; Th&agrave;nh Chung lần lượt ghi b&agrave;n cho đội chủ nh&agrave;. Trong khi đ&oacute;, Tampines Rovers phải trả gi&aacute; cho lối chơi th&ocirc; bạo khi Yasir Hanapi nhận thẻ v&agrave;ng thứ hai rời s&acirc;n. Tiền vệ n&agrave;y bị trừng phạt bởi pha đ&aacute;nh nguội với Th&agrave;nh Chung ở đầu trận, sau đ&oacute; l&agrave; t&igrave;nh huống phạm lỗi &aacute;c &yacute; với Đ&igrave;nh Trọng.</p>', 'active', 'e7YyFZJCc8.jpeg', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'featured'),
(15, 2, 'Man City vẫn dự Champions League mùa 2019-2020', '<p>Việc điều tra vi phạm luật c&ocirc;ng bằng t&agrave;i ch&iacute;nh của chủ s&acirc;n Etihad chưa thể ho&agrave;n th&agrave;nh trong v&ograve;ng một năm tới.</p>\r\n\r\n<p><em>Sports Mail</em>&nbsp;(Anh)&nbsp;cho biết, &aacute;n phạt cấm tham dự Champions League một m&ugrave;a với Man City, do vi phạm luật c&ocirc;ng bằng t&agrave;i ch&iacute;nh (FFP), chỉ được đưa ra sớm nhất v&agrave;o m&ugrave;a 2020-2021.</p>\r\n\r\n<p>Trong bức thư ngỏ gửi tới truyền th&ocirc;ng Anh, Man City viết: &quot;Ch&uacute;ng t&ocirc;i hợp t&aacute;c một c&aacute;ch thiện ch&iacute; với Tiểu ban kiểm so&aacute;t t&agrave;i ch&iacute;nh c&aacute;c CLB của UEFA (CFCB). CLB tin tưởng v&agrave;o sự độc lập v&agrave; cam kết của CFCB h&ocirc;m 7/3, rằng sẽ kh&ocirc;ng kết luận g&igrave; trong thời gian điều tra&quot;.</p>', 'active', 'exzJEG4WDU.jpeg', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'featured'),
(16, 2, 'Những câu đố giúp rèn luyện trí não', '<p>Bạn cần quan s&aacute;t, suy luận logic v&agrave; c&oacute; vốn từ vựng tiếng Anh để giải quyết những c&acirc;u đố dưới đ&acirc;y.</p>\r\n\r\n<p>C&acirc;u 1:&nbsp;Mike đến một buổi phỏng vấn xin việc. Anh đ&atilde; g&acirc;y ấn tượng với gi&aacute;m đốc về những kỹ năng v&agrave; kinh nghiệm của m&igrave;nh. Tuy nhi&ecirc;n, để quyết định c&oacute; nhận Mike hay kh&ocirc;ng, nữ gi&aacute;m đốc đưa ra một c&acirc;u đố h&oacute;c b&uacute;a v&agrave; y&ecirc;u cầu Mike trả lời trong 30 gi&acirc;y.</p>\r\n\r\n<p>Nội dung c&acirc;u đố: H&atilde;y đưa ra 30 từ tiếng Anh kh&ocirc;ng c&oacute; chữ &quot;a&quot; xuất hiện trong đ&oacute;?&nbsp;</p>\r\n\r\n<p>Mike dễ d&agrave;ng giải quyết c&acirc;u đố. Theo bạn anh ấy n&oacute;i những từ tiếng Anh n&agrave;o để kịp trả lời trong 30 gi&acirc;y?</p>', 'inactive', 'TpcocqUjob.png', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'featured'),
(17, 4, 'Cách nhận biết mật ong nguyên chất và pha trộn', '<p>Mật ong nguy&ecirc;n chất sẽ kh&ocirc;ng thấm qua tờ giấy, lắng xuống đ&aacute;y ly nước v&agrave; bị kiến ăn, kh&aacute;c với mật ong bị pha trộn tạp chất.</p>\r\n\r\n<p>Dược sĩ V&otilde; H&ugrave;ng Mạnh, Trưởng khoa Dược Bệnh viện Y học d&acirc;n tộc cổ truyền B&igrave;nh Định, cho biết thị trường c&oacute; nhiều loại mật ong bị pha trộn, chỉ nh&igrave;n bề ngo&agrave;i hay ngửi m&ugrave;i chưa chắc ph&acirc;n biệt được.</p>\r\n\r\n<p>Theo dược sĩ H&ugrave;ng, một c&aacute;ch ph&acirc;n biệt thật giả l&agrave; lấy cọng h&agrave;nh tươi nh&uacute;ng v&agrave;o lọ mật ong, lấy ra chừng v&agrave;i ph&uacute;t. Cọng l&aacute; h&agrave;nh sẽ chuyển từ m&agrave;u xanh l&aacute; sang sậm nếu mật ong thật. Ngo&agrave;i ra, c&oacute; thể nhỏ giọt mật v&agrave;o nơi c&oacute; kiến, nếu kiến kh&ocirc;ng bu giọt mật th&igrave; cũng l&agrave; mật ong thật.</p>\r\n\r\n<p>Ng&agrave;y nay, nhiều người đặt mật ong v&agrave;o ngăn đ&aacute; tủ lạnh, sau 24 giờ m&agrave; kh&ocirc;ng c&oacute; hiện tượng đ&ocirc;ng đ&aacute; th&igrave; l&agrave; mật thật.</p>', 'active', 'xvEqmF5uyJ.png', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'normal'),
(18, 5, 'Nhiều tour mùa hè giảm giá hàng chục triệu đồng', '<p>C&aacute;c tour trong v&agrave; ngo&agrave;i nước đều được giảm gi&aacute; mạnh để k&iacute;ch cầu du lịch trong dịp h&egrave;, nhiều chương tr&igrave;nh khuyến m&atilde;i l&ecirc;n đến h&agrave;ng chục triệu đồng.</p>\r\n\r\n<p>Sau khi so s&aacute;nh tiền v&eacute; m&aacute;y bay, ph&ograve;ng kh&aacute;ch sạn ở Bali để chuẩn bị cho kỳ nghỉ h&egrave; của gia đ&igrave;nh, anh Sơn (ngụ quận 2, TP HCM) quyết định chuyển sang mua tour trọn g&oacute;i v&igrave; tiết kiệm hơn.</p>', 'active', 'd2ABCeBzoR.jpeg', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-15', 'featured'),
(19, 8, 'BMW i8 Roadster - xe mui trần dẫn đường ở Formula E', '<p>Dịp cuối tuần qua, BMW giới thiệu chiếc xe dẫn đường, l&agrave;m nhiệm vụ đảm bảo an to&agrave;n tại giải đua xe Formula E. Giải đua tương tự giải F1, nhưng to&agrave;n bộ xe đua sử dụng động cơ điện.</p>\r\n\r\n<p>i8 Roadster Safety Car dựa tr&ecirc;n chiếc i8 Roadster ti&ecirc;u chuẩn, nhưng c&oacute; những thay đổi để trở th&agrave;nh chiếc xe dẫn đường chuy&ecirc;n dụng. Ngoại h&igrave;nh c&oacute; một số đặc điểm ấn tượng hơn so với nguy&ecirc;n bản. K&iacute;nh chắn gi&oacute; kiểu d&agrave;nh cho xe đua, trọng t&acirc;m hạ thấp 15 mm.</p>', 'active', '9fbeUKTBpU.png', '2019-05-15 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-10', 'normal'),
(20, 4, 'Tia cực tím tại Hà Nội ở mức \'nguy hiểm\'', '<p>Chỉ số tia UV tại H&agrave; Nội ng&agrave;y 18-19/5 l&ecirc;n tới 11, mức được đ&aacute;nh gi&aacute; l&agrave; &quot;nguy hiểm&quot; dễ khiến da, mắt bị bỏng nhiệt.</p>\r\n\r\n<p>H&agrave; Nội đang trải qua đợt nắng n&oacute;ng gay gắt. Theo Trung t&acirc;m Dự b&aacute;o Kh&iacute; tượng Thủy văn Quốc gia, nhiệt độ cao nhất ở H&agrave; Nội ng&agrave;y 18/5 dao động trong khoảng 37 đến 39 độ C, c&oacute; nơi tr&ecirc;n 39 độ.&nbsp;Trang&nbsp;<em>World Weather Online</em>&nbsp;của Anh dự b&aacute;o chỉ số tia cực t&iacute;m tại H&agrave; Nội hai ng&agrave;y 18-19/5 đạt mức 11.&nbsp;</p>', 'active', 'C4DtP4ico8.png', '2019-05-17 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-16', 'normal'),
(21, 3, 'Blockchain và trí tuệ nhân tạo AI làm thay đổi giáo dục trực tuyến', '<p>Blockchain khiến dữ liệu trở n&ecirc;n c&ocirc;ng khai, minh bạch với người học, AI gi&uacute;p cải thiện khả năng tương t&aacute;c v&agrave; giảng dạy với từng c&aacute; nh&acirc;n.</p>\r\n\r\n<p>Sự b&ugrave;ng nổ của Internet v&agrave; những c&ocirc;ng nghệ mới như chuỗi khối (Blockchain) v&agrave; tr&iacute; tuệ nh&acirc;n tạo (AI) đ&atilde; g&oacute;p phần l&agrave;m thay đổi nền gi&aacute;o dục tr&ecirc;n to&agrave;n thế giới, h&igrave;nh th&agrave;nh những nền tảng Online Learning với nhiều ưu thế.</p>\r\n\r\n<p><strong>Mobile Learning dự b&aacute;o l&agrave; &quot;Cuộc c&aacute;ch mạng tiếp theo&quot; của gi&aacute;o dục trực tuyến</strong></p>\r\n\r\n<p>Theo nghi&ecirc;n cứu của Global Market Insights, thị trường gi&aacute;o dục trực tuyến to&agrave;n cầu đang c&oacute; tốc độ ph&aacute;t triển nhanh chưa từng thấy khi nền tảng hạ tầng Internet ng&agrave;y c&agrave;ng ho&agrave;n thiện v&agrave; phủ s&oacute;ng rộng khắp. Gi&aacute; trị c&aacute;c start-up về EdTech (C&ocirc;ng ty c&ocirc;ng nghệ chuy&ecirc;n về gi&aacute;o dục) to&agrave;n cầu được ước t&iacute;nh hơn 190 tỷ USD v&agrave;o năm 2018 v&agrave; dự kiến vượt hơn 300 tỷ USD v&agrave;o năm 2025.</p>', 'active', 'gCPGos7mhY.png', '2019-05-17 00:00:00', 'hailan', '2019-05-17 00:00:00', 'hailan', '2019-05-16', 'featured'),
(22, 7, 'Huawei nói lệnh cấm sẽ khiến Mỹ tụt hậu về 5G', '<p>Huawei khẳng định sắc lệnh mới của Mỹ sẽ chỉ c&agrave;ng khiến qu&aacute; tr&igrave;nh triển khai c&ocirc;ng nghệ 5G ở nước n&agrave;y th&ecirc;m chậm chạp v&agrave; đắt đỏ.</p>\r\n\r\n<p>H&atilde;ng c&ocirc;ng nghệ Trung Quốc tự nhận l&agrave; &quot;người dẫn đầu kh&ocirc;ng ai s&aacute;nh kịp về c&ocirc;ng nghệ 5G&quot;, n&ecirc;n việc bị hạn chế kinh doanh ở Mỹ chỉ dẫn đến kết cục l&agrave; Mỹ sẽ bị &quot;tụt lại ph&iacute;a sau&quot; trong việc triển khai c&ocirc;ng nghệ kết nối di động thế hệ mới</p>', 'active', 'nt1QxhKUXM.jpeg', '2019-05-17 00:00:00', 'hailan', NULL, NULL, '2019-05-16', 'featured'),
(23, 9, 'Asus ra mắt Zenfone 6 với camera lật tự động', '<p>Với thiết kế m&agrave;n h&igrave;nh tr&agrave;n viền ho&agrave;n to&agrave;n kh&ocirc;ng tai thỏ, camera ch&iacute;nh 48 megapixel tr&ecirc;n Zenfone 6 c&oacute; thể lật từ sau ra trước biến th&agrave;nh camera selfie.</p>\r\n\r\n<p>Zenfone 6 l&agrave; một trong những smartphone c&oacute; viền m&agrave;n h&igrave;nh mỏng nhất tr&ecirc;n thị trường với tỷ lệ m&agrave;n h&igrave;nh hiển thị chiếm tới 92% diện t&iacute;ch mặt trước. M&aacute;y c&oacute; m&agrave;n h&igrave;nh 6,4 inch tr&agrave;n viền ra cả bốn cạnh, kh&ocirc;ng tai thỏ như một số mẫu Zenfone trước v&agrave; cũng kh&ocirc;ng d&ugrave;ng thiết kế đục lỗ như Galaxy S10, S10+</p>', 'inactive', 'aiC6j6fWZY.png', '2019-05-17 00:00:00', 'hailan', '2022-02-14 00:00:00', 'admin', '2019-05-16', 'featured'),
(24, 2, 'aaaaaa', '<p>L</p>\r\n\r\n<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Morbi rutrum augue eu purus condimentum egestas. Integer eu magna est. Duis in felis sed ante ultrices ornare. Maecenas sed congue nisi. Nulla nec massa placerat, fermentum dolor sit amet, mattis quam. Cras sed semper quam. Sed finibus eget nibh non rutrum. Morbi et lectus vitae libero porta pretium non in ex. Praesent non ipsum nunc.</p>\r\n\r\n<p>Aliquam faucibus vitae leo nec efficitur. Vestibulum luctus cursus tempus. Ut ornare mi in turpis vehicula placerat. Etiam in erat non diam facilisis viverra. Fusce consequat mattis ex a lobortis. Nullam vel efficitur justo. Nam tincidunt, nulla nec aliquet tincidunt, odio ex faucibus est, vitae facilisis nulla nulla dignissim felis. Integer porta viverra eros, ac pharetra mauris rhoncus ut.</p>', 'active', '/images/product/awesomeface.png', '2022-02-18 00:00:00', 'admin', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`id`, `name`, `modified`, `modified_by`, `created`, `created_by`, `status`, `ordering`) VALUES
(1, 'Vải', '2022-02-14 17:00:00', 'admin', '2022-02-15 04:47:32', 'admin', 'active', 1),
(2, 'Màu', '2022-02-15 04:59:14', NULL, '2022-02-14 17:00:00', 'admin', 'active', 2),
(3, 'Kích thước', '2022-02-15 17:00:00', 'admin', '2022-02-14 17:00:00', 'admin', 'active', 3);

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
  `display` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `_lft` int(11) DEFAULT NULL,
  `_rgt` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `status`, `created`, `created_by`, `modified`, `modified_by`, `is_home`, `display`, `parent_id`, `_lft`, `_rgt`) VALUES
(2, 'Thể thao', 'active', '2019-05-04 00:00:00', 'admin', '2022-02-13 00:00:00', 'hailan', 'yes', 'list', 99, 12, 19),
(3, 'Giáo dục', 'active', '2019-05-04 00:00:00', 'admin', '2022-02-14 00:00:00', 'hailan', 'yes', 'list', 4, 4, 5),
(4, 'Sức khỏe', 'active', '2019-05-04 00:00:00', 'admin', '2022-02-14 00:00:00', 'hailan', 'no', 'list', 6, 3, 8),
(5, 'Du lịch', 'inactive', '2019-05-04 00:00:00', 'admin', '2022-02-14 00:00:00', 'hailan', 'no', 'grid', 4, 6, 7),
(6, 'Khoa học', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-12 00:00:00', 'hailan', 'no', 'list', 1, 2, 9),
(7, 'Số hóa', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:38', 'hailan', 'no', 'grid', 1, 10, 21),
(8, 'Xe - Ô tô', 'active', '2019-05-04 00:00:00', 'admin', '2019-05-15 15:04:36', 'hailan', 'no', 'list', 1, 22, 23),
(9, 'Kinh doanh', 'active', '2019-05-12 00:00:00', 'hailan', '2022-01-17 00:00:00', 'hailan', 'no', 'list', 1, 24, 25),
(1, 'root', 'active', '2022-02-08 17:11:25', NULL, '2022-02-08 17:11:25', NULL, NULL, NULL, NULL, 1, 26),
(100, 'Pham Hoang', 'active', '2022-02-10 00:00:00', 'hailan', '2022-02-10 00:00:00', 'admin', NULL, NULL, 2, 15, 16),
(98, 'Pham Hoa', 'active', '2022-02-10 00:00:00', 'hailan', NULL, NULL, NULL, NULL, 2, 13, 14),
(99, 'Cơm Gà Sốt Đậu (Soybean Chicken Rice)', 'active', '2022-02-10 00:00:00', 'hailan', NULL, NULL, NULL, NULL, 7, 11, 20),
(101, 'Cơm Gà Sốt Đậu (Soybean Chicken Rice)123', 'active', '2022-02-10 00:00:00', 'hailan', '2022-02-10 00:00:00', 'admin', NULL, NULL, 2, 17, 18);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `_lft` int(11) DEFAULT NULL,
  `_rgt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `name`, `status`, `slug`, `created`, `created_by`, `modified_by`, `modified`, `parent_id`, `_lft`, `_rgt`) VALUES
(1, 'root', 'active', NULL, NULL, 'admin', NULL, NULL, NULL, 1, 12),
(2, 'a', 'active', NULL, '2022-02-16 17:00:00', 'hailan', NULL, NULL, 1, 2, 9),
(3, 'b', 'active', NULL, '2022-02-16 17:00:00', 'hailan', 'hailan', '2022-02-16 17:00:00', 1, 10, 11),
(4, 'aa', 'inactive', NULL, '2022-02-16 17:00:00', 'hailan', NULL, NULL, 2, 3, 6),
(5, 'ab', 'active', NULL, '2022-02-16 17:00:00', 'hailan', NULL, NULL, 2, 7, 8),
(6, 'aaa', 'inactive', NULL, '2022-02-16 17:00:00', 'hailan', NULL, NULL, 4, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `email`, `phone`, `facebook`, `message`, `created`, `status`, `ip`) VALUES
(3, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, 'Hello', '2022-02-04 17:00:00', 'active', '127.0.0.1'),
(4, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, 'Không có gì', '2022-02-04 17:00:00', 'inactive', '127.0.0.1'),
(5, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, 'haha', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(6, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, '123', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(7, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, '123', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(8, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, '123', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(9, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, '123', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(10, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, '99999', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(11, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, '99999', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(12, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, '99999', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(13, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, 'hihi', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(14, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, 'hahahahah', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(15, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, 'test', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(16, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, 'test', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(17, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, 'test', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(18, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, 'test', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(19, 'Pham Hoa', 'glphamhoa@gmail.com', '33808323', NULL, 'test bcc', '2022-02-05 17:00:00', 'active', '127.0.0.1'),
(20, 'Test', 'test@gmailcom', '32323', NULL, 'nothing', '2022-02-09 17:00:00', 'active', '127.0.0.1'),
(21, 'Pham Hoa', 'nvlinh17041992@gmail.com', '0338108323', NULL, 'tét 3213123', '2022-02-12 17:00:00', 'active', '127.0.0.1');

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
(1, 'setting-main', '{\"logo\":\"\\/images\\/mslider\\/RqarGc4X1X.png\",\"copyright\":\"Copyright123\",\"timework\":\"8h30-17h30\",\"address\":\"T\\u1ea7ng 6, Nguy\\u1ec5n H\\u1eefu c\\u1ea3nh\",\"sologan\":\"Sologan\",\"desctiption\":\"<p>Gi\\u1edbi thi\\u1ec7u<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/laravel_offline_phamhoa.com\\/images\\/user\\/J1uknUz0T6.png\\\" style=\\\"height:225px; width:225px\\\" \\/><\\/p>\"}', NULL, NULL, NULL, 'admin', '2022-02-07 17:00:00'),
(2, 'setting-email', '{\"username\":\"phamhoa.box@gmail.com\",\"password\":\"mcvxxhiuwjlavmtf\",\"bcc\":\"phamhoa52862@gmail.com\"}', NULL, NULL, NULL, 'admin', '2022-02-13 17:00:00');

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
(1, 'Trang chủ', 'active', 1, '/', 'link', 'new_tab'),
(3, 'Blog', 'active', 3, '/', 'category_article', 'current'),
(10, 'Sản phẩm', 'active', 2, '/', 'category_product', 'new_tab'),
(15, 'Hỉnh ảnh', 'active', 4, '/thu-vien-hinh-anh', 'link', 'current'),
(16, 'Liên hệ', 'active', 5, '/lien-he', 'link', 'current');

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
(1, 'https://i1-vnexpress.vnecdn.net/2022/02/05/CHC2383JPG-1644052982-9218-1644053887.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=rzVQfLo5qk1L5aCPYwf77w', 'Chen chân mua vé tham quan chùa Tam Chúc', 'Tại khu vực mua vé lên du thuyền tham quan thắng cảnh chùa Tam Chúc, nhiều người đợi cả tiếng đồng hồ mới tới lượt.', '2022-02-05 02:54:21', 'https://vnexpress.net/chen-chan-mua-ve-tham-quan-chua-tam-chuc-4424227.html'),
(2, 'https://i1-vnexpress.vnecdn.net/2022/02/05/vanhai-1644049278-3635-1644049472.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=flAr_aF1nWRYxCJAaqB4-Q', 'Nghiên cứu phương án đường trên cao đoạn Ngã Tư Sở - Cầu Giấy', 'Sở Giao thông Vận tải kiến nghị đầu tư hoàn thiện tuyến Vành đai 2 (đoạn Ngã Tư Sở - Cầu Giấy), trong đó có phương án đường trên cao.', '2022-02-05 02:54:07', 'https://vnexpress.net/nghien-cuu-phuong-an-duong-tren-cao-doan-nga-tu-so-cau-giay-4424149.html'),
(3, 'https://i1-vnexpress.vnecdn.net/2022/02/05/273159490246810607623789474176-4953-1134-1644053597.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=svudLdw4T5U5oc8JvYuKHA', 'Đền Bà Chúa Kho, đền Trình dừng đón khách', 'Lượng người đổ về đông, nhà chức trách lo ngại không đảm bảo an toàn phòng chống Covid-19 nên dừng đón khách.', '2022-02-05 02:53:53', 'https://vnexpress.net/den-ba-chua-kho-den-trinh-dung-don-khach-4424229.html'),
(4, 'https://i1-vnexpress.vnecdn.net/2022/02/05/tet2022-1644044676-9585-1644044819.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=eNF6zQ39nbovB7SOiTLyNA', 'Hà Nội thêm 24 phường, xã \'vùng xanh\'', 'Sau 5 ngày, ca nhiễm mới giảm (còn trên 2.700 ca/ngày), số địa bàn \"màu vàng\" và \"màu cam\" giảm theo, đồng nghĩa \"vùng xanh\" tăng so với tuần trước.', '2022-02-05 01:39:19', 'https://vnexpress.net/ha-noi-them-24-phuong-xa-vung-xanh-4424189.html'),
(5, 'https://i1-vnexpress.vnecdn.net/2022/02/05/tphcm-1644040414-9429-1644040423.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=XTcTt2lSzsdbD2CqScpaig', 'Tuần thứ 5 liên tiếp TP HCM là \'vùng xanh\'', 'Nguy cơ dịch tại thành phố tiếp tục ghi nhận ở cấp độ 1 (vùng xanh), không còn quận, huyện \"vùng vàng\".', '2022-02-04 22:33:13', 'https://vnexpress.net/tuan-thu-5-lien-tiep-tp-hcm-la-vung-xanh-4424177.html'),
(6, '', 'Hai bà cháu tử nạn khi đốt than sưởi ấm', 'Bà Trần Thị Chí ở xã Quảng Nham, huyện Quảng Xương cùng con gái và hai cháu ngoại dùng than sưởi ấm trong phòng ngủ, nhưng sáng hôm sau hai người mất mạng.', '2022-02-04 21:07:29', 'https://vnexpress.net/hai-ba-chau-tu-nan-khi-dot-than-suoi-am-4424146.html'),
(7, 'https://i1-vnexpress.vnecdn.net/2022/02/04/dsc7941-jpg-9371-1643602226-16-5723-6298-1643931996.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=T8skzRQVxTPqxXLxDfTvuQ', 'Làng nghề bánh tráng gần 100 năm', 'Làng nghề bánh tráng truyền thống tại TP Tân An có lịch sử gần 100 năm, một số hộ hiện đầu tư máy móc thay cho quy trình thủ công.', '2022-02-04 10:00:00', 'https://vnexpress.net/lang-nghe-banh-trang-gan-100-nam-4423138.html'),
(8, 'https://i1-vnexpress.vnecdn.net/2022/01/30/ong-bon-ca-ec-8971-1643530582-7818-8226-1643535736.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=B_HWO6ZdiM0EdPGGgw_64A', 'Nuôi cá đặc sản giữa sông Hậu thu tiền tỷ', 'Ông Lý Văn Bon, nuôi 30 bè cá thát lát cườm, chạch lấu, cá hô, tra dầu… theo tiêu chuẩn Vietgap giữa sông Hậu, kết hợp du lịch, thu mỗi năm 5-7 tỷ đồng.', '2022-02-04 10:00:00', 'https://vnexpress.net/nuoi-ca-dac-san-giua-song-hau-thu-tien-ty-4422923.html'),
(9, 'https://i1-vnexpress.vnecdn.net/2022/02/05/dukhach-1644026220-8165-1644026258.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=XzPOryJPxjjOFnvxUdxGUw', 'Những người \'canh chừng sự sống\' trên biển', 'Mỗi năm, hàng trăm người tắm biển Vũng Tàu lọt vào ao xoáy, bị sóng cuốn ra xa, ở giữa ranh giới sống và chết, được những nhân viên cứu hộ đưa vào bờ.', '2022-02-04 10:00:00', 'https://vnexpress.net/nhung-nguoi-canh-chung-su-song-tren-bien-4422626.html'),
(10, 'https://i1-vnexpress.vnecdn.net/2022/02/04/ttg116439804725742046838369-16-5806-5071-1643986696.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ZqLE0j4imUapaEIK0Y8QIw', 'Hai vấn đề của dự án cao tốc Bắc Nam', 'Mỏ vật liệu thông thường cho các dự án cao tốc và khâu giải phóng mặt bằng là hai vấn đề cần giải quyết liên quan đến các dự án cao tốc, Thủ tướng nêu.', '2022-02-04 08:26:00', 'https://vnexpress.net/hai-van-de-cua-du-an-cao-toc-bac-nam-4424068.html'),
(11, 'https://i1-vnexpress.vnecdn.net/2022/02/04/DSC02826-copy-1643974377.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=gO-5rUdymKbxzOO13Xle8w', 'Biển Vũng Tàu đông nghịt người mùng 4 Tết', 'Dưới tiết trời nắng nóng, hàng chục nghìn du khách từ TP HCM và các tỉnh lân cận đổ về TP Vũng Tàu tắm biển, vui chơi, mùng 4 Tết.', '2022-02-04 06:13:13', 'https://vnexpress.net/bien-vung-tau-dong-nghit-nguoi-mung-4-tet-4424043.html'),
(12, 'https://i1-vnexpress.vnecdn.net/2021/11/17/Thumb5301update-1637148485-4109-1637148490.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=AZJPJaoP3QO6Q1SUgt1IjQ', 'Covid-19: Cả nước hơn 2,28 triệu người nhiễm, hơn 38.000 tử vong', 'Hôm nay, cả nước ghi nhận 11.586 ca nhiễm (tăng 3.011 so với hôm qua) tại 59 tỉnh thành; thêm 84 người tử vong, nâng tổng số lên 38.150.', '2022-02-04 04:04:31', 'https://vnexpress.net/covid-19/covid-19-viet-nam'),
(13, 'https://i1-vnexpress.vnecdn.net/2022/01/25/anh-1-1643095109-1643097967.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=keV92NWKRrmTS2Qw90_FXg', 'Bảo vật quốc gia ở di sản văn hóa thế giới', 'Đài thờ Mỹ Sơn A10 xây dựng vào thế kỷ IX-X, ghép từ 17 khối sa thạch thành năm lớp chồng lên nhau, Linga liền khối với Yoni.', '2022-02-04 01:37:05', 'https://vnexpress.net/bao-vat-quoc-gia-o-di-san-van-hoa-the-gioi-4420801.html'),
(14, 'https://i1-vnexpress.vnecdn.net/2022/02/04/vaccinecovid20-1643951155-1643-8930-7114-1643951437.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=o0qzUEdtfS-SFM80S341NQ', 'Chính phủ yêu cầu khẩn trương mua, tiêm vaccine cho trẻ từ 5 tuổi', 'Ngày 4/2, Chính phủ ban hành Nghị quyết phiên họp thường kỳ tháng 1, yêu cầu Bộ Y tế khẩn trương mua, tiêm vaccine Covid-19 cho trẻ từ 5 đến dưới 12 tuổi.', '2022-02-03 22:29:29', 'https://vnexpress.net/chinh-phu-yeu-cau-khan-truong-mua-tiem-vaccine-cho-tre-tu-5-tuoi-4423974.html'),
(15, 'https://i1-vnexpress.vnecdn.net/2022/02/04/HUY6615-1643948042-4257-1643948224.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=A49LwrxkQIZt6f1NnL-bwA', 'Miền Bắc trải qua đợt rét đậm kéo dài nhất mùa đông', '6 ngày qua, miền Bắc xảy ra rét hại, rét đậm (trung bình ngày từ 13 và 15 độ C trở xuống). Đỉnh núi Mẫu Sơn (Lạng Sơn) xuống 0, Hà Nội 11 độ C.', '2022-02-03 22:22:52', 'https://vnexpress.net/mien-bac-trai-qua-dot-ret-dam-keo-dai-nhat-mua-dong-4423969.html'),
(16, 'https://i1-vnexpress.vnecdn.net/2022/02/04/nhchpmnhnh20220204lc111551-164-7179-2204-1643948503.png?w=1200&h=0&q=100&dpr=1&fit=crop&s=i_C439T2UMDQHVH_yvMJag', 'Cả nước có 38 tỉnh, thành vùng xanh', 'Toàn quốc có 38 tỉnh, thành vùng xanh; 23 tỉnh vàng, 2 tỉnh cam, không có tỉnh nào đỏ, theo thống kê của Bộ Y tế ngày 4/2.', '2022-02-03 21:28:08', 'https://vnexpress.net/ca-nuoc-co-38-tinh-thanh-vung-xanh-4423960.html'),
(17, 'https://i1-vnexpress.vnecdn.net/2022/02/04/2c98bd77bc21707f2930-164393977-6323-4620-1643939906.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=LovxKdO4-NrSBj8DjnKxcA', 'Cục Cảnh sát giao thông: Xử phạt trạm thu phí để xảy ra ùn tắc', 'Đơn vị quản lý tuyến đường sẽ bị phạt tối đa 40 triệu đồng nếu để xảy ra ùn tắc, trường hợp không xả trạm theo yêu cầu bị phạt 70 triệu đồng.', '2022-02-03 20:45:58', 'https://vnexpress.net/cuc-canh-sat-giao-thong-xu-phat-tram-thu-phi-de-xay-ra-un-tac-4423932.html'),
(18, 'https://i1-vnexpress.vnecdn.net/2022/01/28/ongha-1643336351-1750-1643337446.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=3EmOF8AqHeOv7Yg0-l1fcw', 'Nơi lưu giữ nhiều bộ xương cá voi nhất Nghệ An', 'Đền Làng Hiếu, phường Nghi Hải (thị xã Cửa Lò), đang chôn cất 87 mộ cá voi, cùng nhiều hiện vật có giá trị về văn hóa, nghệ thuật.', '2022-02-03 17:00:00', 'https://vnexpress.net/noi-luu-giu-nhieu-bo-xuong-ca-voi-nhat-nghe-an-4421658.html'),
(19, 'https://i1-vnexpress.vnecdn.net/2022/01/30/thuynga-1643283472-3503-164328-5170-9112-1643520674.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Lb9GcFWY0h70CbKtz8JmIQ', 'Công nhân đón Tết ở nhà máy', 'Thu nhập 10 ngày làm Tết bằng gần một tháng lương, vợ chồng anh Nhiệm quyết định đón năm mới ở nhà máy, kiếm tiền bù một năm cả nhà là F0, nghỉ việc kéo dài.', '2022-02-03 16:00:00', 'https://vnexpress.net/cong-nhan-don-tet-o-nha-may-4421903.html'),
(20, 'https://i1-vnexpress.vnecdn.net/2022/02/04/ngudanbinhthuan-1643925581-164-5443-7970-1643925610.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=3QSekyS98zxRpqQP_w0-ww', 'Ngư dân kiếm tiền triệu chuyến biển đầu xuân', 'Dịp đầu xuân, bến cá Mũi Né hoạt động nhộn nhịp, ngư dân ra khơi đánh bắt nhiều hải sản bán cho du khách, kiếm 1-2 triệu đồng mỗi ngày.', '2022-02-03 15:00:00', 'https://vnexpress.net/ngu-dan-kiem-tien-trieu-chuyen-bien-dau-xuan-4423846.html'),
(21, 'https://i1-vnexpress.vnecdn.net/2022/01/26/trai-nuoi-ho-xuan-tin-7-164319-4851-1671-1643192068.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ecgzNqNZckRSg1gS-OyYiQ', 'Áp lực nuôi dưỡng 11 con hổ', 'Đàn hổ 11 con được nuôi nhốt trong khu chuồng chật hẹp, thiếu người chăm sóc, giấy phép nuôi sinh trưởng, sinh sản đã hết hạn vào giữa năm 2017.', '2022-02-03 14:00:00', 'https://vnexpress.net/ap-luc-nuoi-duong-11-con-ho-4421399.html'),
(22, 'https://i1-vnexpress.vnecdn.net/2022/02/03/dsc04942-jpg-1643502088-2489-1-7930-9282-1643884366.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=9QT15UVWuUci01h9C7K2qw', 'Xuân về ở nhà dưỡng lão miền Tây', 'Ở dưỡng lão Hưng Phước Thành mỗi người một hoàn cảnh, khi quây quần họ mến thương, nương tựa nhau lúc về già.', '2022-02-03 10:00:00', 'https://vnexpress.net/xuan-ve-o-nha-duong-lao-mien-tay-4422758.html'),
(23, 'https://i1-vnexpress.vnecdn.net/2022/02/03/image216438806118311295540491-3953-3288-1643884094.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=BUe1oPaNAf9aMszWlNZi4Q', 'Thủ tướng: Cố gắng mở cửa du lịch từ cuối tháng 3', 'Các đơn vị chuẩn bị mở cửa du lịch an toàn càng sớm càng tốt, chậm nhất là dịp 30/4 và cố gắng từ cuối tháng 3, Thủ tướng yêu cầu.', '2022-02-03 04:36:26', 'https://vnexpress.net/thu-tuong-co-gang-mo-cua-du-lich-tu-cuoi-thang-3-4423832.html'),
(24, 'https://i1-vnexpress.vnecdn.net/2022/02/03/img318716438814851671466423756-3749-6070-1643884871.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=9yEdEbV6xhV0oqhMchoGMg', 'Gần 800.000 liều vaccine được tiêm dịp Tết', 'Trong 5 ngày nghỉ Tết Nguyên đán, cả nước thực hiện chiến dịch tiêm chủng thần tốc mùa xuân với hơn 782.000 liều tại 30 tỉnh, thành.', '2022-02-03 04:31:50', 'https://vnexpress.net/gan-800-000-lieu-vaccine-duoc-tiem-dip-tet-4423835.html'),
(25, 'https://i1-vnexpress.vnecdn.net/2022/02/03/duong-hoa-6614-1643881639.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=_Ay4lngKQn0-9j-GDHH7pw', 'Đường hoa Nguyễn Huệ kéo dài thêm 2 ngày', 'Đường hoa Nguyễn Huệ đón khách thêm hai ngày để nhiều người đến tham quan thay vì đóng cửa tối mùng 4 Tết như kế hoạch ban đầu.', '2022-02-03 02:57:48', 'https://vnexpress.net/duong-hoa-nguyen-hue-keo-dai-them-2-ngay-4423828.html'),
(26, 'https://i1-vnexpress.vnecdn.net/2022/02/03/Z3154484123179Fdd0b-1643878458-7643-1643878484.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=SfGb7RUexc_ekTCpxXEJlg', '87 vụ tai nạn trong bốn ngày nghỉ Tết', 'Cục Cảnh sát giao thông cho biết, từ 30 tháng Chạp đến mùng 3 Tết, cả nước xảy ra 87 vụ tai nạn giao thông, làm chết 51 người, bị thương 52 người, hầu hết trên đường bộ.', '2022-02-03 02:47:09', 'https://vnexpress.net/87-vu-tai-nan-trong-bon-ngay-nghi-tet-4423822.html'),
(27, 'https://i1-vnexpress.vnecdn.net/2022/02/03/hopmatonline-1643858054-2066-1643858234.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=nmCnQ64LE9JL4v51OygWgw', 'Tết \'sum vầy online\' của gia đình công nhân', 'Nhìn con trai khoe bộ quần áo mới, quấn quýt bên bà nội gói bánh chưng qua điện thoại, chị Giang rớm nước mắt vì hai cái Tết cả nhà chỉ gặp mặt online.', '2022-02-02 23:00:00', 'https://vnexpress.net/tet-sum-vay-online-cua-gia-dinh-cong-nhan-4422519.html'),
(28, 'https://i1-vnexpress.vnecdn.net/2022/01/24/a-img-4715-copy-1643011653-5545-1643012107.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=rGmDQhaNenHa-iZkmQShWw', 'Làng bắt hổ bên truông nhà Hồ', 'Sống cạnh truông nhà Hồ, nơi xưa kia là rừng thiêng nước độc, thường xuyên bị hổ dữ hoành hành, người dân Thủy Ba sáng tạo cách trị hổ.', '2022-02-02 22:00:00', 'https://vnexpress.net/lang-bat-ho-ben-truong-nha-ho-4420259.html'),
(29, 'https://i1-vnexpress.vnecdn.net/2022/01/25/15590150770412013022501-3157-1643124189.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Wrz3deIvFK44bH-oE3gnJQ', 'Chuyện làm đường nối TP HCM với Biển Đông', 'Gần 40 năm trước, việc xây đường Nhà Bè - Duyên Hải xuyên Rừng Sác nối TP HCM với Biển Đông được xem là một \"kỳ tích\" vì phải \"vượt qua muôn vàn gian khó\".', '2022-02-02 16:00:00', 'https://vnexpress.net/chuyen-lam-duong-noi-tp-hcm-voi-bien-dong-4420974.html'),
(30, 'https://i1-vnexpress.vnecdn.net/2022/01/30/D1-1643534904.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=5kGF1fT8a2ldQshvwNuoGQ', 'Vẻ đẹp dưới đáy biển Đà Nẵng', 'Vẻ đẹp những rạn san hô, sinh vật dưới đáy biển Đà Nẵng được anh Đào Đặng Công Trung (42 tuổi), ghi lại sau nhiều năm nhặt rác thải nhựa.', '2022-02-02 10:00:00', 'https://vnexpress.net/ve-dep-duoi-day-bien-da-nang-4422893.html'),
(31, 'https://i1-vnexpress.vnecdn.net/2022/02/02/thap-huong-cho-ngai-ho-4240-16-5319-1712-1643816266.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=JuGwQDOdVb73GepvvtGoPQ', 'Nơi thờ Thiên Y A Na và bạch hổ tướng quân', 'Nữ thần Thiên Y A Na và bộ tướng bạch hổ được thờ phụng vì giữ bình yên cho dân trong thời khai sơn trị thủy.', '2022-02-02 10:00:00', 'https://vnexpress.net/noi-tho-thien-y-a-na-va-bach-ho-tuong-quan-4421973.html'),
(32, 'https://i1-vnexpress.vnecdn.net/2022/02/02/san-bay-long-thanh-1832-164334-2922-7365-1643810050.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Th7TZb02bFwbznQfZIoaOg', 'Tết đầu tiên ở khu tái định cư sân bay Long Thành', 'Năm nay người dân tại khu tái định cư Lộc An - Bình Sơn đón cái Tết ấm cúng trong ngôi nhà mới khang trang.', '2022-02-02 10:00:00', 'https://vnexpress.net/tet-dau-tien-o-khu-tai-dinh-cu-san-bay-long-thanh-4421223.html'),
(33, 'https://i1-vnexpress.vnecdn.net/2022/01/20/1-img-4344-1642666898-16426669-7765-8815-1642667035.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=q9eAWW9709Snp9e-eaIAzQ', 'Tổ bảo vệ rừng thôn Hồ', '22 người dân thôn Hồ lập thành Ban bảo vệ rừng, mỗi tháng luân phiên đi tuần 4 lần để giữ gìn 868 ha rừng tự nhiên đầu nguồn.', '2022-02-02 10:00:00', 'https://vnexpress.net/to-bao-ve-rung-thon-ho-4418820.html'),
(34, 'https://i1-vnexpress.vnecdn.net/2022/02/02/caotoc-1643784181-7316-1643784203.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=V00yyT2qloo_YVYHEtlaWA', 'Cao tốc TP HCM - Long Thành - Dầu Giây ùn ứ kéo dài', 'Ôtô tăng đột biến cùng việc một số xe va quẹt khiến cao tốc TP HCM - Long Thành - Dầu Giây ùn ứ kéo dài, phải xả hai trạm thu phí, trưa 2/2 (mùng 2 Tết).', '2022-02-01 23:44:47', 'https://vnexpress.net/cao-toc-tp-hcm-long-thanh-dau-giay-un-u-keo-dai-4423616.html'),
(35, 'https://i1-vnexpress.vnecdn.net/2022/02/02/b302cb10e2512e0f7740-164377489-2454-7793-1643775149.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=g2DFkPcle1xPiwFC0dJSyA', 'Câu cá vược gần 16 kg ở sông Trường Giang', 'Anh Lê Đình Thông, 42 tuổi ở TP Tam Kỳ, câu được con cá vược dài một mét, nặng gần 16 kg ở sông Trường Giang.', '2022-02-01 21:58:28', 'https://vnexpress.net/cau-ca-vuoc-gan-16-kg-o-song-truong-giang-4423594.html'),
(36, 'https://i1-vnexpress.vnecdn.net/2022/02/02/nokhodan-1643773620-2275-1643775938.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=TZCn-G9Psip-BKj220Lhaw', 'Nổ kho đạn ở Gia Lai', 'Kho K870 thuộc Cục Quân khí, Tổng cục Kỹ thuật (Bộ Quốc phòng), tại huyện Ia Grai, bất ngờ phát nổ, cột khói cao hàng chục mét, sáng 2/2 (mùng 2 Tết).', '2022-02-01 21:41:46', 'https://vnexpress.net/no-kho-dan-o-gia-lai-4423580.html'),
(37, 'https://i1-vnexpress.vnecdn.net/2022/01/29/Don-tet-giua-rung-3-JPG-5157-1643418791.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=kZo9d88ytygfOi27ebaOcg', 'Đón Tết giữa rừng thẳm', 'Thay vì sum họp bên gia đình, lực lượng giữ rừng ở Phước Bình lại đón Tết trong rừng sâu để bảo vệ động vật hoang dã, những cánh rừng nguyên sinh.', '2022-02-01 16:00:00', 'https://vnexpress.net/don-tet-giua-rung-tham-4422458.html'),
(38, 'https://i1-vnexpress.vnecdn.net/2022/02/01/411ddaf2566e9b30c27f-7499-1643-7934-7391-1643726870.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=48yYMIx6vu_Z78UIe3WFTA', 'Người nuôi bạch hổ', '4 con hổ trắng quý hiếm ở Thảo Cầm Viên được cho ăn theo khẩu vị, chăm sóc từ bộ lông, cơ bắp đến từng móng vuốt.', '2022-02-01 16:00:00', 'https://vnexpress.net/nguoi-nuoi-bach-ho-4421756.html'),
(39, 'https://i1-vnexpress.vnecdn.net/2022/01/31/BithuHNinhTienDung-1643612434-2062-1643614045.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=iAm6ICve_V4ynW0B4GtvcA', '\'Cao tốc Vành đai 4 sẽ mở rộng không gian phát triển thủ đô\'', 'Dự án đường Vành đai 4 với tổng vốn đầu tư 95.000 tỷ đồng sẽ giúp mở rộng không gian phát triển thủ đô, giảm ùn tắc giao thông, theo Bí thư Hà Nội Đinh Tiến Dũng.', '2022-02-01 10:00:00', 'https://vnexpress.net/cao-toc-vanh-dai-4-se-mo-rong-khong-gian-phat-trien-thu-do-4423173.html'),
(40, 'https://i1-vnexpress.vnecdn.net/2022/01/29/anh-4-JPG_1643470295-1643471038.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=bBSX7M_p6i7exev04OuVaA', 'Tuyến cao tốc xuyên tỉnh gần 170 km ở Quảng Ninh', 'Ba dự án cao tốc ở Quảng Ninh nối liền nhau dài gần 170 km, có tổng mức đầu tư hơn 38.000 tỷ đồng.', '2022-02-01 10:00:00', 'https://vnexpress.net/tuyen-cao-toc-xuyen-tinh-gan-170-km-o-quang-ninh-4422738.html'),
(41, 'https://i1-vnexpress.vnecdn.net/2022/01/25/thapmyly4-1643106786-9404-1643108039.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=5iamD1Oat9tYW-a1k_jMXw', 'Ngọn tháp bí ẩn nơi biên giới', 'Nằm ở xã biên giới Mỹ Lý, huyện Kỳ Sơn, tháp Yên Hòa cao gần 30 m, đắp nhiều hoa văn tinh xảo. Hiện nguồn gốc, năm xây dựng tháp vẫn là bí ẩn.', '2022-02-01 10:00:00', 'https://vnexpress.net/ngon-thap-bi-an-noi-bien-gioi-4420515.html'),
(42, 'https://i1-vnexpress.vnecdn.net/2022/02/01/tamcon-1643705806-2652-1643706435.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=S4w8I2x78lsM6ayuM_RwzA', 'Hàng nghìn người dân tắm cồn ven sông mùng 1 Tết', 'Cồn ven sông Tiền khá hoang sơ, cát vàng sậm, nước phù sa, có dịch vụ ăn uống nên thu hút nhiều người dân đến tắm ngày đầu năm âm lịch.', '2022-02-01 02:10:19', 'https://vnexpress.net/hang-nghin-nguoi-dan-tam-con-ven-song-mung-1-tet-4423406.html'),
(43, '', 'Vợ chồng tử vong trong phòng ngủ', 'Ông Lê Văn Thái, 50 tuổi cùng vợ là Lê Thị Nhung, được phát hiện tử vong trong phòng ngủ tại nhà riêng, sáng 1/2.', '2022-02-01 01:48:18', 'https://vnexpress.net/vo-chong-tu-vong-trong-phong-ngu-4423415.html'),
(44, 'https://i1-vnexpress.vnecdn.net/2022/01/26/NguyenThanhTam3-1643212578-2382-1643213073.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=BXf85Lsvz3QqrCQtqWlHEQ', 'Chủ trọ tổ chức Tết cho công nhân', 'Vừa chốt 2 con dê 60 kg, ông Nguyễn Thành Tâm, chủ trọ ở phường Thạnh Lộc (quận 12) đặt thêm con heo quay tổ chức tiệc tất niên mời hơn 100 gia đình công nhân.', '2022-02-01 01:00:00', 'https://vnexpress.net/chu-tro-to-chuc-tet-cho-cong-nhan-4421474.html'),
(45, 'https://i1-vnexpress.vnecdn.net/2022/02/01/a2-1643692340-7591-1643692374.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=gnXSzJIEcvfqL858NikyeA', 'Hàng trăm du khách xông đất Đà Nẵng, Quảng Ninh', 'Sáng 1/2, hơn 350 hành khách, trong đó có nhiều người nước ngoài đến xông đất TP Đà Nẵng, Quảng Ninh, sau 2 chuyến bay xuất phát từ TP HCM.', '2022-01-31 22:58:43', 'https://vnexpress.net/hang-tram-du-khach-xong-dat-da-nang-quang-ninh-4423376.html'),
(46, 'https://i1-vnexpress.vnecdn.net/2022/02/01/3bd4e434b68d7bd3229c-1643691267.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=7nxvJMoBdMZdDBACE1Wtww', 'Người dân đi chùa cầu bình an', 'Mùng 1 Tết, người dân Hà Nội, TP HCM đến các chùa, phủ cầu an cho gia đình. Do Covid-19 phức tạp, mọi người chấp hành giãn cách, đeo khẩu trang, vái vọng khi phủ đóng cửa.', '2022-01-31 22:29:06', 'https://vnexpress.net/nguoi-dan-di-chua-cau-binh-an-4423346.html'),
(47, 'https://i1-vnexpress.vnecdn.net/2022/01/20/3-9145-1642688898.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=7Ao8JBWNKsNnE7LmgQusig', 'Tuyệt chiêu võ hổ của danh tướng Nguyễn Hữu Cảnh', 'Võ hổ, môn võ từng được Lễ Thành hầu Nguyễn Hữu Cảnh sử dụng giúp chúa Nguyễn mở mang bờ cõi, đang được con cháu lưu truyền ở cố đô Huế.', '2022-01-31 22:00:00', 'https://vnexpress.net/tuyet-chieu-vo-ho-cua-danh-tuong-nguyen-huu-canh-4418172.html'),
(48, 'https://i1-vnexpress.vnecdn.net/2022/02/01/d12346bafb50f10f4b8e79c037010011-1643684341-1643685450.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=D9IFXnP20J3bLjanvzNmUw', 'Hà Nội, TP HCM vắng vẻ sáng mùng 1 Tết', 'Đường phố Hà Nội và TP HCM thưa vắng, người dân thảnh thơi tập thể dục, đi xe đạp, xe máy theo nhóm... trong sáng mùng 1 Tết.', '2022-01-31 20:27:10', 'https://vnexpress.net/ha-noi-tp-hcm-vang-ve-sang-mung-1-tet-4423353.html'),
(49, 'https://i1-vnexpress.vnecdn.net/2022/01/31/dsc0575jpg32101579714682-16436-1922-7933-1643645825.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=eCCamc1gCTkmqWGEfM9hKA', '\'Hổ là biểu tượng sức mạnh và mong muốn bình an\'', 'Trong văn hóa phương Đông, hổ là chúa sơn lâm, biểu tượng sức mạnh rừng thiêng, nên được dân gian thờ phụng để mong muốn bình an, theo nhà nghiên cứu Nguyễn Hùng Vĩ.', '2022-01-31 17:00:00', 'https://vnexpress.net/ho-la-bieu-tuong-suc-manh-va-mong-muon-binh-an-4423282.html'),
(50, 'https://i1-vnexpress.vnecdn.net/2022/01/30/huy-3567-1643515190-1880-1643515272.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=sf5o_XwXa858ggbEjy36-A', 'Bộ trưởng Lê Minh Hoan: \'Cần có cuộc cách mạng trong nông nghiệp\'', '90% nông sản Việt xuất khẩu ở dạng thô, doanh nghiệp nước ngoài chế biến thành thương hiệu của họ. VnExpress phỏng vấn Bộ trưởng Nông nghiệp và Phát triển nông thôn Lê Minh Hoan về việc gỡ khó và định vị thương hiệu nông sản Việt.', '2022-01-31 16:00:00', 'https://vnexpress.net/bo-truong-le-minh-hoan-can-co-cuoc-cach-mang-trong-nong-nghiep-4422857.html'),
(51, 'https://i1-vnexpress.vnecdn.net/2022/01/31/dsc04469-jpg-9836-1642827841-1-7358-2183-1643624846.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=eYvE0psdSAk4YxLQwEUJnQ', 'Tết nơi biên giới Tây Nam', 'Tất bật canh phòng biên cương, các chiến sĩ xa quê tranh thủ trước ca trực gọi về gia đình gửi những lời chúc Tết, thăm hỏi sức khoẻ.', '2022-01-31 15:00:00', 'https://vnexpress.net/tet-noi-bien-gioi-tay-nam-4419583.html'),
(52, 'https://i1-vnexpress.vnecdn.net/2022/01/21/caurachmieu34921638614387-1642-3634-2218-1642732606.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=sbv4tsCFXaXOax3azhMt0A', 'Các dự án giao thông trọng điểm khởi công năm 2022', 'Các dự án cao tốc như Bắc Nam, Dầu Giây - Tân Phú, Tân Phú - Bảo Lộc, Biên Hòa - Vũng Tàu, cầu Rạch Miễu 2 sẽ được khởi công năm 2022.', '2022-01-31 14:00:00', 'https://vnexpress.net/cac-du-an-giao-thong-trong-diem-khoi-cong-nam-2022-4415531.html'),
(53, 'https://i1-vnexpress.vnecdn.net/2022/02/01/tongbithu140931643648792-16436-5455-7746-1643650464.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=VB-AgEkUEJP_vy_BaGI-9A', 'Tổng bí thư chúc Tết nhân dân thủ đô', 'Tối 31/1 (29 tháng chạp), Tổng bí thư Nguyễn Phú Trọng đến thăm, chúc Tết Đảng bộ, chính quyền và nhân dân TP Hà Nội.', '2022-01-31 10:36:39', 'https://vnexpress.net/tong-bi-thu-chuc-tet-nhan-dan-thu-do-4423293.html'),
(54, 'https://i1-vnexpress.vnecdn.net/2022/01/31/nhamaykhautrang933779164364482-3479-5988-1643646717.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=17Drk-uS0uZHSie8rGfpSw', 'Những chính sách nổi bật có hiệu lực từ tháng 2', 'Từ tháng 2, người lao động thời vụ được tăng giờ làm thêm lên 40 giờ mỗi tháng, một số ngành nghề được giảm thuế VAT, hàng hóa phải ghi rõ xuất xứ...', '2022-01-31 10:00:00', 'https://vnexpress.net/nhung-chinh-sach-noi-bat-co-hieu-luc-tu-thang-2-4423290.html'),
(55, 'https://i1-vnexpress.vnecdn.net/2022/01/31/hanhkhach94451641355020-164364-1194-1816-1643644348.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=bjSCrB55o9KKxP-ffkonPQ', 'Khẩn trương cấp phép các chuyến bay đưa người Việt về nước', 'Bộ Giao thông Vận tải giao Cục Hàng không Việt Nam khẩn trương cấp phép các chuyến bay đưa công dân Việt Nam về nước.', '2022-01-31 10:00:00', 'https://vnexpress.net/khan-truong-cap-phep-cac-chuyen-bay-dua-nguoi-viet-ve-nuoc-4423288.html'),
(56, 'https://i1-vnexpress.vnecdn.net/2022/01/31/11-JPG_1643643193-1643643307.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Nr4tfuiOXWLfVStUQIdujg', 'Đoàn tàu cuối năm rời ga', 'Hơn 20 hành khách rời Hà Nội trên chuyến tàu cuối năm và sẽ đón giao thừa khi tàu chạy qua địa phận Nam Định.', '2022-01-31 10:00:00', 'https://vnexpress.net/doan-tau-cuoi-nam-roi-ga-4423285.html'),
(57, 'https://i1-vnexpress.vnecdn.net/2022/01/31/QUYN06271639361170-1643603456-3616-1643604055.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=YWiV3wfcjLk5IXle8dxf0g', 'Các lĩnh vực mở cửa trở lại năm 2022', 'Đón khách du lịch quốc tế, học sinh được đến trường, khôi phục các chuyến bay thương mại quốc tế... là những lĩnh vực mở cửa trở lại trong năm 2022.', '2022-01-31 10:00:00', 'https://vnexpress.net/cac-linh-vuc-mo-cua-tro-lai-nam-2022-4423114.html'),
(58, 'https://i1-vnexpress.vnecdn.net/2022/01/29/nha-lop-go-sa-mu-o-nghe-an-2_1643268516-1643270894-1643422025.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Nqh2uX3J_6LUx-aGQKEOhA', 'Những mái nhà lợp gỗ sa mu trăm năm tuổi', 'Người dân bản Long Thắng, xã Hạnh Dịch, huyện Quế Phong, chẻ gỗ cây sa mu lợp mái nhà sàn, sau cả trăm năm vẫn bền.', '2022-01-31 10:00:00', 'https://vnexpress.net/nhung-mai-nha-lop-go-sa-mu-tram-nam-tuoi-4421809.html'),
(59, 'https://i1-vnexpress.vnecdn.net/2022/01/31/cv-1643565170-8742-1643602141.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=qr2mbfNfC5Vniu5tyVIWfw', 'Cuộc đổi đất mở rộng công viên APEC', 'Chính quyền Đà Nẵng bốn năm trước đưa ra một quyết định chưa có tiền lệ - đổi đất với doanh nghiệp để mở rộng công viên APEC, thêm 6.000 m2.', '2022-01-31 10:00:00', 'https://vnexpress.net/cuoc-doi-dat-mo-rong-cong-vien-apec-4421336.html'),
(60, 'https://i1-vnexpress.vnecdn.net/2022/01/31/duong-hoa-dong-cua-2-164364564-5743-5882-1643646684.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=hnpXHTX0wbOXiWNZarrKwg', 'Đường hoa Nguyễn Huệ đóng cửa vì quá đông', 'Đường hoa Nguyễn Huệ bất ngờ tạm ngưng hoạt động để phòng dịch trong lúc hàng nghìn khách đang tham quan vào đêm giao thừa 29 Tết.', '2022-01-31 09:37:04', 'https://vnexpress.net/duong-hoa-nguyen-hue-dong-cua-vi-qua-dong-4423292.html'),
(61, 'https://i1-vnexpress.vnecdn.net/2022/02/06/cg2a1551-1644160504-1644162662.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=qS-vmLb7coq0FBa5CaVL2A', '500 công nhân dọn đường hoa Nguyễn Huệ', 'Các công nhân tất bật thu dọn tiểu cảnh, linh vật hổ... để trả mặt bằng phố đi bộ Nguyễn Huệ, quận 1, tối mùng 6 Tết.', '2022-02-06 08:55:04', 'https://vnexpress.net/500-cong-nhan-don-duong-hoa-nguyen-hue-4424503.html'),
(62, 'https://i1-vnexpress.vnecdn.net/2022/02/06/img-1558-jpg-1644155454-3853-1644156233.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=qneqlFFceSdVTiSgiLVcqA', 'Bác sĩ mũ nồi xanh Việt Nam khám bệnh cho tù nhân ở Nam Sudan', 'Cán bộ, nhân viên Bệnh viện dã chiến cấp 2 số 3 của Việt Nam tổ chức cấp phát thuốc, khám bệnh cho tù nhân tại Nhà tù Trung tâm Bentiu, Nam Sudan.', '2022-02-06 07:33:47', 'https://vnexpress.net/bac-si-mu-noi-xanh-viet-nam-kham-benh-cho-tu-nhan-o-nam-sudan-4424495.html'),
(63, 'https://i1-vnexpress.vnecdn.net/2022/02/06/chu-tich-nuoc-nguyen-xuan-phuc-7450-3278-1644153649.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=aJMxR44rKfDFTNZ9XMiUlQ', 'Chủ tịch nước phát động Tết trồng cây', 'Chủ tịch nước Nguyễn Xuân Phúc đánh trống phát động Tết trồng cây xuân Nhâm Dần 2022 tại khu di tích lịch sử Đền Hùng, Phú Thọ, ngày 6/2.', '2022-02-06 06:49:27', 'https://vnexpress.net/chu-tich-nuoc-phat-dong-tet-trong-cay-4424433.html'),
(64, 'https://i1-vnexpress.vnecdn.net/2022/02/06/1719cecdc2af0ef157be-164414123-6922-7782-1644141306.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=12zA7HZI6osgj6I4y0Y_bw', '121 người chết vì tai nạn giao thông dịp Tết', 'Trong 9 ngày nghỉ Tết Nguyên đán 2022 (từ 29/1 đến 6/2), cả nước xảy ra 216 vụ tai nạn, làm chết 121 người, bị thương 128 người.', '2022-02-06 03:22:58', 'https://vnexpress.net/121-nguoi-chet-vi-tai-nan-giao-thong-dip-tet-4424454.html'),
(65, 'https://i1-vnexpress.vnecdn.net/2022/02/06/anh-2-6193-1644139464.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=bZFsxRvUwPcr5shFSMqLEg', 'Người dân xếp hàng chờ xét nghiệm Covid', 'Sau kỳ nghỉ Tết Nhâm Dần, người lao động, học sinh ở Quảng Nam, Nghệ An, Thanh Hóa đổ đến các điểm xét nghiệm Covid-19 để chuẩn bị đi làm, đi học.', '2022-02-06 02:54:46', 'https://vnexpress.net/nguoi-dan-xep-hang-cho-xet-nghiem-covid-4424443.html'),
(66, 'https://i1-vnexpress.vnecdn.net/2022/02/06/ketxe-1644138348-5039-1644138478.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=_PvkYolExdsMaYDUwOzx3Q', 'Các ngả đường về TP HCM, Hà Nội kẹt cứng', 'Dòng xe từ các tỉnh ùn ùn đổ về TP HCM, Hà Nội ngày cuối kỳ nghỉ Tết Nguyên đán khiến nhiều trục đường ùn ứ kéo dài, chiều 6/2.', '2022-02-06 02:07:58', 'https://vnexpress.net/cac-nga-duong-ve-tp-hcm-ha-noi-ket-cung-4424434.html'),
(67, 'https://i1-vnexpress.vnecdn.net/2022/02/06/img3277-1644124424767139136582-6638-5381-1644128403.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=dUZut1ghPjwktH_AEOb3kg', 'Thủ tướng thúc tiến độ xây sân bay Long Thành', 'Kiểm tra công trường xây dựng sân bay Long Thành, Thủ tướng yêu cầu các đơn vị đẩy nhanh bàn giao mặt bằng, lãnh đạo lên hiện trường làm việc.', '2022-02-06 00:16:57', 'https://vnexpress.net/thu-tuong-thuc-tien-do-xay-san-bay-long-thanh-4424407.html'),
(68, 'https://i1-vnexpress.vnecdn.net/2022/02/06/L1010809JPG-1644123382-2891-1644123416.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=8fr8L5HtM6dZg8mGlAGz_g', 'Ngày mai miền Bắc giảm mưa', 'Ngày làm việc đầu tiên sau kỳ nghỉ Tết (7/2), miền Bắc giảm mưa, nhiệt độ tăng dần, Hà Nội thoát rét đậm với mức nhiệt 16-20 độ C.', '2022-02-06 00:04:51', 'https://vnexpress.net/ngay-mai-mien-bac-giam-mua-4424403.html'),
(69, 'https://i1-vnexpress.vnecdn.net/2022/02/06/image0-16440612839341200728855-7783-3896-1644117029.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=IascHIxREtCM6bNRbAV9fA', 'Tháo gỡ vướng mắc cho dự án cao tốc Bắc Nam', 'Thủ tướng Phạm Minh Chính đã chỉ ra 4 vấn đề của dự án cao tốc Bắc Nam phía Đông cùng các giải pháp, đặt mục tiêu hoàn thành sớm hơn ít nhất 3 tháng.', '2022-02-05 21:02:16', 'https://vnexpress.net/thao-go-vuong-mac-cho-du-an-cao-toc-bac-nam-4424370.html'),
(70, 'https://i1-vnexpress.vnecdn.net/2022/01/24/anh-1643011716-5716-1643012606.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=IHaIgfUINa46NjI8I4FzTQ', 'Nữ kế toán chở người dưng đến trường suốt 9 năm', 'Bị gièm pha \"ăn cơm nhà vác tù và hàng tổng\", chị Hải bỏ ngoài tai, hàng ngày nhận đưa đón miễn phí trẻ có hoàn cảnh khó khăn đến trường.', '2022-02-05 14:00:00', 'https://vnexpress.net/nu-ke-toan-cho-nguoi-dung-den-truong-suot-9-nam-4420270.html'),
(71, 'https://i1-vnexpress.vnecdn.net/2022/02/05/3-cay-cau-1644059520-5771-1644059722.png?w=1200&h=0&q=100&dpr=1&fit=crop&s=xdWDDUAquFkUaSEMu1WxUA', 'Kỳ vọng 3 cây cầu \'huyết mạch\' ở TP HCM', 'Cầu Cần Giờ, Cát Lái, Thủ Thiêm 4, tổng vốn hơn 21.000 tỷ đồng, đầu tư những năm tới giúp liên kết vùng, tháo điểm nghẽn hạ tầng nhiều khu vực ở TP HCM.', '2022-02-05 10:00:00', 'https://vnexpress.net/ky-vong-3-cay-cau-huyet-mach-o-tp-hcm-4424192.html'),
(72, 'https://i1-vnexpress.vnecdn.net/2022/01/31/DSC8062JPG-1643594302-5849-1643594553.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=dLytgLl4SlUTt9TniKswyQ', '18 lá khắc voi vàng bảo vật quốc gia', '18 lá vàng chạm hình voi với kỹ thuật chế tác tinh xảo từ hơn 1.500 năm trước vừa được công nhận bảo vật quốc gia.', '2022-02-05 10:00:00', 'https://vnexpress.net/18-la-khac-voi-vang-bao-vat-quoc-gia-4423095.html'),
(73, 'https://i1-vnexpress.vnecdn.net/2022/02/04/dd10b1ac-9abe-4504-a4b1-f246da-1432-9308-1643932366.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=lsMivQfpM-h9UYbJGYzHmw', 'Cuộc sống ở làng \'nhập tịch\'', 'Từ cuộc sống du canh du cư ở vùng biên giới Việt - Lào, hàng trăm hộ dân huyện Ngọc Hồi đã ổn định, phát triển kinh tế sau khi được nhập tịch.', '2022-02-05 10:00:00', 'https://vnexpress.net/cuoc-song-o-lang-nhap-tich-4422628.html'),
(74, 'https://i1-vnexpress.vnecdn.net/2022/02/05/san-bay-8129-1644065346-164406-6890-7152-1644065966.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=zKoTWoB1T-3FXYRdiBvX6w', 'Khách đến sân bay Tân Sơn Nhất liên tục tăng', 'Khách đến sân bay Tân Sơn Nhất tăng đột biến 3 ngày qua, trong khi lượng taxi, ôtô công nghệ giảm khiến nhiều người chờ hàng giờ mới đón được xe.', '2022-02-05 06:00:07', 'https://vnexpress.net/khach-den-san-bay-tan-son-nhat-lien-tuc-tang-4424271.html'),
(75, 'https://i1-vnexpress.vnecdn.net/2022/02/05/VaccineCovid4-1644061219-4637-1644061437.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=OPA28PVIWinzC4JU2iU8tg', 'Việt Nam sẽ mua gần 22 triệu liều vaccine Pfizer cho trẻ từ 5 tuổi', 'Chính phủ đồng ý việc Thủ tướng cho phép áp dụng hình thức lựa chọn nhà thầu trong trường hợp đặc biệt để mua 21,9 triệu liều vaccine Pfizer cho trẻ từ 5 đến dưới 12 tuổi.', '2022-02-05 05:03:21', 'https://vnexpress.net/viet-nam-se-mua-gan-22-trieu-lieu-vaccine-pfizer-cho-tre-tu-5-tuoi-4424264.html'),
(76, 'https://i1-vnexpress.vnecdn.net/2022/02/05/6-JPG-1644060638.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=-gyD4BozfBbnvQqcHrYd5Q', 'Cửa ngõ Hà Nội đông nghẹt người sau kỳ nghỉ Tết', 'Chiều mùng 5 Tết, trong cơn mưa rào, trời lạnh, dòng xe ùn ùn đổ về thủ đô, dần khép lại kỳ nghỉ Tết Nguyên Đán kéo dài 9 ngày.', '2022-02-05 04:55:44', 'https://vnexpress.net/cua-ngo-ha-noi-dong-nghet-nguoi-sau-ky-nghi-tet-4424262.html'),
(77, 'https://i1-vnexpress.vnecdn.net/2022/02/15/san-bay-lt-4842-1644821346-164-9830-1356-1644859260.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=EzPv5trkDIkNp_8mX0i3tw', 'Nỗi lo sân bay Long Thành chậm tiến độ', 'Sau hơn một năm triển khai xây dựng, sân bay Long Thành vẫn chỉ là vùng đất trống, chưa thấy không khí của đại công trường.', '2022-02-14 11:00:00', 'https://vnexpress.net/noi-lo-san-bay-long-thanh-cham-tien-do-4427283.html'),
(78, 'https://i1-vnexpress.vnecdn.net/2022/02/15/anh-1-6132-1644821677-16448904-4753-6856-1644890445.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=4aBn7pvTp0CdhuD7nQ5NDQ', 'Đánh bắt sứa trên sông Trường Giang', '1h ngày 14/2, vợ chồng ông Trần Minh Hùng, ở xã Tam Hòa, huyện Núi Thành, dong ghe ra sông Trường Giang bắt sứa.', '2022-02-14 10:00:00', 'https://vnexpress.net/danh-bat-sua-tren-song-truong-giang-4427312.html'),
(79, 'https://i1-vnexpress.vnecdn.net/2022/02/14/tai-nan-1212-1644842458-164484-9243-7797-1644842964.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=3DT_vHXz9C4xVy4AKxaptg', 'Hai cháu bé bị xe tải tông chết trong nhà', 'Chiếc xe tải đang dừng trên dốc tự trôi tông sập nhà dân ven đường khiến hai cháu bé tử vong.', '2022-02-14 05:49:45', 'https://vnexpress.net/hai-chau-be-bi-xe-tai-tong-chet-trong-nha-4427496.html'),
(80, 'https://i1-vnexpress.vnecdn.net/2022/02/14/deo-bao-loc-5925-1640699430-90-8903-5338-1644840415.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=DTT4fvxxFc1fCPr2UHshRw', 'Lâm Đồng đề xuất chuyển đổi 486 ha rừng làm cao tốc', 'Để giải phóng mặt bằng xây dựng cao tốc Bảo Lộc - Liên Khương, tỉnh Lâm Đồng dự kiến chuyển đổi 486 ha rừng sang mục đích khác.', '2022-02-14 05:08:07', 'https://vnexpress.net/lam-dong-de-xuat-chuyen-doi-486-ha-rung-lam-cao-toc-4427488.html'),
(81, 'https://i1-vnexpress.vnecdn.net/2022/02/14/11-aimg-8467-copy-jpg-16273146-1787-1578-1644831356.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=qR2Gj3FSTZG0aeagteTpZg', '79 tỷ đồng chiếu sáng 4 di tích quốc gia ở Quảng Trị', 'Nghĩa trang liệt sĩ Trường Sơn và Đường 9, di tích Thành cổ, đôi bờ Hiền Lương được tài trợ xây dựng hệ thống chiếu sáng mỹ thuật, âm thanh.', '2022-02-14 04:41:43', 'https://vnexpress.net/79-ty-dong-chieu-sang-4-di-tich-quoc-gia-o-quang-tri-4427437.html'),
(82, 'https://i1-vnexpress.vnecdn.net/2022/02/14/123-reo-ho-chon-tha-3878-16448-3364-3602-1644838771.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=IgLY7lrHoKC3VSP2XgkxzA', 'Làng chài tưng bừng lễ hội Tống ôn trên sông', 'Sau 2 năm dừng do Covid-19, hàng trăm dân làng Xóm Chài bên sông Cần Thơ tưng bừng làm lễ hội Tống ôn cầu an lành, mạnh khoẻ, chiều 14/2.', '2022-02-14 04:40:25', 'https://vnexpress.net/lang-chai-tung-bung-le-hoi-tong-on-tren-song-4427449.html'),
(83, 'https://i1-vnexpress.vnecdn.net/2022/02/14/tiemvaccine1-1644826839-164482-4022-1855-1644827865.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=sFoJINeLvT47R8p6BvLmpg', 'Nhiều địa phương nói \'phân vùng dịch xanh, đỏ là cần thiết\'', 'Lãnh đạo ngành Y tế và CDC một số tỉnh, thành cho rằng hướng dẫn mới phân loại cấp độ dịch Covid-19 đã bám sát thực tiễn và cần duy trì trong thời gian tới.', '2022-02-14 04:24:42', 'https://vnexpress.net/nhieu-dia-phuong-noi-phan-vung-dich-xanh-do-la-can-thiet-4427311.html'),
(84, 'https://i1-vnexpress.vnecdn.net/2022/02/14/chc3187jpg-1644816942-5988-164-8794-1260-1644836145.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=chrcyEwFpq3f_NlIs1i5qQ', 'Vượt nghìn km ra Hà Nội hỗ trợ vận chuyển F0 đi cấp cứu', 'Trưa 13/2, nhận cuộc gọi cần hỗ trợ từ một gia đình ở phường Nguyễn Trãi (Hà Đông, Hà Nội), 30 phút sau xe cấp cứu của đội thiện nguyện Nhất Tâm đã có mặt.', '2022-02-14 03:56:03', 'https://vnexpress.net/vuot-nghin-km-ra-ha-noi-ho-tro-van-chuyen-f0-di-cap-cuu-4427285.html'),
(85, 'https://i1-vnexpress.vnecdn.net/2022/02/14/banglai68151587378971492851-16-4639-3311-1644826595.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=_2iaDMMA7AfTz8dOk6v0pg', 'Chuyên gia khuyến nghị không tách Luật Giao thông đường bộ', 'Việc tách Luật giao thông đường bộ sẽ khiến người dân thực hiện một quy định liên quan phải tham khảo hai luật, gây phiền toái, theo ông Nguyễn Văn Thanh (nguyên Tổng cục phó Đường bộ).', '2022-02-14 03:44:02', 'https://vnexpress.net/chuyen-gia-khuyen-nghi-khong-tach-luat-giao-thong-duong-bo-4427324.html'),
(86, 'https://i1-vnexpress.vnecdn.net/2022/02/14/tau-khach-2551-1636347204-6352-3959-3797-1644833767.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Egur6eMf_CGhVqwWmOnNLg', 'Hơn 10.000 vé tàu giảm giá 50%', '10.140 vé tàu ghế ngồi mềm điều hòa, giường nằm được đường sắt Sài Gòn giảm giá 50% từ 18/2 đến 28/3, để thu hút khách trước nhu cầu đi lại dần phục hồi.', '2022-02-14 03:14:03', 'https://vnexpress.net/hon-10-000-ve-tau-giam-gia-50-4427399.html'),
(87, 'https://i1-vnexpress.vnecdn.net/2022/02/14/Vanhdai41-1644830621-3602-1644830971.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=cJbNjUZnqriLdLTn77fCzQ', 'Chủ tịch Hà Nội: Dự kiến 60% đường vành đai 4 sẽ đi trên cao', 'Dự án đường vành đai 4 nằm trên địa phận TP Hà Nội và các tỉnh Hưng Yên, Bắc Ninh với dự kiến 60% tuyến đường sẽ đi trên cao.', '2022-02-14 03:04:57', 'https://vnexpress.net/chu-tich-ha-noi-du-kien-60-duong-vanh-dai-4-se-di-tren-cao-4427378.html'),
(88, 'https://i1-vnexpress.vnecdn.net/2022/02/14/cd2f8f61f34b3f15665a-164482251-1982-8186-1644822576.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=5X76D40EDgkbzgkv9jkxJg', 'Sân bay Tân Sơn Nhất mở thêm làn ôtô đón khách', 'Sân bay Tân Sơn Nhất phối hợp nhà xe TCP trước ga quốc nội mở thêm làn D1 cho ôtô vào đón khách để giữ trật tự, tránh ùn ứ khi lượng người tăng cao.', '2022-02-14 00:16:44', 'https://vnexpress.net/san-bay-tan-son-nhat-mo-them-lan-oto-don-khach-4427305.html'),
(89, 'https://i1-vnexpress.vnecdn.net/2022/02/14/75ct-1644804931-4740-1644805486.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=clhZix93kP00ur7sQ1KbYg', 'Hàng nghìn công nhân trở lại làm việc khi được tăng lương', 'Khoảng 4.600 công nhân Công ty TNHH Viet Glory đóng ở huyện Diễn Châu đã quay lại nhà máy, sau 6 ngày ngừng việc để đòi một số quyền lợi.', '2022-02-13 21:11:26', 'https://vnexpress.net/hang-nghin-cong-nhan-tro-lai-lam-viec-khi-duoc-tang-luong-4427139.html'),
(90, 'https://i1-vnexpress.vnecdn.net/2022/02/14/mat-na-vang-2-4066-1644810261-5073-2763-1644811681.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=xlSGOJUdFJ3yEsmangfy4g', 'Ba mặt nạ vàng dưới mộ cổ', 'Ba mặt nạ bằng vàng trong các ngôi mộ niên đại 2.000 năm trước tại di tích Giồng Lớn ở đảo Long Sơn, vừa được công nhận bảo vật quốc gia.', '2022-02-13 21:08:01', 'https://vnexpress.net/ba-mat-na-vang-duoi-mo-co-4427189.html'),
(91, 'https://i1-giadinh.vnecdn.net/2022/02/09/img-8601-jpg-1644416610-2912-1644417545.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=4qns2KfFUtbiY60IIqVNfg', 'Mẹ bỏ đi, anh cả nghỉ học nuôi năm em', 'Nuôi 5 đứa em là một việc khó với Giàng A Sàng, nhưng khó nhất là mỗi khi em hỏi \"Mẹ đâu?\" bởi chính cậu cũng không biết mẹ đi đâu suốt ba năm qua.', '2022-02-13 15:00:00', 'https://vnexpress.net/me-bo-di-anh-ca-nghi-hoc-nuoi-nam-em-4425329.html'),
(92, 'https://i1-vnexpress.vnecdn.net/2022/02/13/a-dji-0862-copy-1644750010-7652-1644750069.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=3NZiWYwtv6eDYeUqZq4JOQ', 'Nhà máy nước hơn 8 tỷ đồng bỏ hoang nhiều năm', 'Nhà máy nước Hải Chánh đã hoàn thiện phần thô và dây chuyền xử lý nước trị giá 8,3 tỷ đồng nhưng bỏ hoang nhiều năm qua.', '2022-02-13 04:36:58', 'https://vnexpress.net/nha-may-nuoc-hon-8-ty-dong-bo-hoang-nhieu-nam-4427018.html'),
(93, 'https://i1-vnexpress.vnecdn.net/2022/02/13/maybay16044163150664696391-164-2386-2615-1644742572.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=BMwnNH0kSzcliLKDxrRunw', 'Việt Nam dự kiến mở lại toàn bộ đường bay quốc tế từ 15/2', 'Cục Hàng không Việt Nam đã thông báo đến nhà chức trách các nước về việc không hạn chế khai thác các chuyến bay thương mại quốc tế từ ngày 15/2.', '2022-02-13 02:08:35', 'https://vnexpress.net/viet-nam-du-kien-mo-lai-toan-bo-duong-bay-quoc-te-tu-15-2-4426992.html'),
(94, 'https://i1-vnexpress.vnecdn.net/2022/02/13/caotocbacnam2406416216512-1644-6213-8279-1644722363.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ftO_enQxkmQN7B5jJ04T5Q', 'Cao tốc Diễn Châu - Bãi Vọt được vay vốn tín dụng', 'Liên danh nhà đầu tư dự án Diễn Châu - Bãi Vọt và các ngân hàng tài trợ vốn ký kết hợp đồng tín dụng dự án với hạn mức 3.560 tỷ đồng, ngày 12/2.', '2022-02-12 20:29:28', 'https://vnexpress.net/cao-toc-dien-chau-bai-vot-duoc-vay-von-tin-dung-4426936.html'),
(95, 'https://i1-vnexpress.vnecdn.net/2022/02/13/272719004158678949167713441564-8861-8451-1644723209.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=DNqR5hwmll4QC0FGNzHaeQ', 'Đề xuất đầu tư công cao tốc Biên Hòa - Vũng Tàu', 'Cao tốc Biên Hòa - Vũng Tàu giai đoạn 1 dài 53 km với quy mô 4-6 làn xe, được đề xuất đầu tư công với tổng vốn dự kiến 17.837 tỷ đồng.', '2022-02-12 19:48:49', 'https://vnexpress.net/de-xuat-dau-tu-cong-cao-toc-bien-hoa-vung-tau-4426925.html'),
(96, 'https://i1-vnexpress.vnecdn.net/2022/02/12/ongtam2-8901-1644674784-164467-8949-4194-1644684688.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=NsnJwmDgSY0U5RwYDzbkQQ', 'Lão nông 15 năm vượt sông Tiền vận chuyển người bệnh miễn phí', 'Ông Nguyễn Văn Thuận, 80 tuổi, ở cồn Lân, xã Tân Thuận Đông, TP Cao Lãnh, đưa cả nghìn người bệnh đi cấp cứu miễn phí bằng xuồng máy.', '2022-02-12 16:00:00', 'https://vnexpress.net/lao-nong-15-nam-vuot-song-tien-van-chuyen-nguoi-benh-mien-phi-4426836.html'),
(97, 'https://i1-vnexpress.vnecdn.net/2022/02/12/cttt-1644681951-1794-1644682309.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=stxB4P4vUqZQOssJCVViBw', 'Tăng lương cho 4.600 công nhân sau sáu ngày ngừng việc', 'Ngày 12/2, Công ty TNHH Viet Glory chấp thuận tăng 6% lương cho khoảng 4.600 công nhân sau sáu ngày họ ngừng việc đòi quyền lợi.', '2022-02-12 10:00:12', 'https://vnexpress.net/tang-luong-cho-4-600-cong-nhan-sau-sau-ngay-ngung-viec-4426862.html'),
(98, 'https://i1-vnexpress.vnecdn.net/2022/02/12/vd2-1644665034-9056-1644665490.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=KOs2IDJ-noIj1ULvYUWA-Q', 'TP HCM muốn khởi động lại dự án Vành đai 2', 'Việc tái khởi động đoạn 2,7 km Vành đai 2 sau hai năm dừng thi công và cân đối vốn đầu tư 11 km còn lại để khép kín toàn tuyến được TP HCM đặt mục tiêu từ năm 2022.', '2022-02-12 10:00:00', 'https://vnexpress.net/tp-hcm-muon-khoi-dong-lai-du-an-vanh-dai-2-4426794.html'),
(99, 'https://i1-vnexpress.vnecdn.net/2022/02/12/benhvien-1644678115-4573-1644678206.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=JpUaqZ9IDnjn91tnAZefLw', 'Xây bệnh viện bảy tầng không phép', 'Hai tòa nhà ba và bảy tầng của Bệnh viện Hòa Hảo đang được hoàn thiện dù không có giấy phép xây dựng, bị đình chỉ thi công từ tháng 2/2017.', '2022-02-12 09:28:29', 'https://vnexpress.net/xay-benh-vien-bay-tang-khong-phep-4426787.html'),
(100, 'https://i1-vnexpress.vnecdn.net/2022/02/12/bien-bai-sau-9840-1644673536-1-6960-2464-1644676232.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=b6TTzG8c2zP_c_-tu7VuZw', 'Vũng Tàu thu hồi 28 ha đất dọc biển Bãi Sau', 'TP Vũng Tàu thu hồi khoảng 28 ha đất trên đường Thùy Vân dọc Bãi Sau, nơi 9 doanh nghiệp nợ hơn 320 tỷ đồng tiền thuê để kinh doanh nhiều năm qua.', '2022-02-12 07:30:53', 'https://vnexpress.net/vung-tau-thu-hoi-28-ha-dat-doc-bien-bai-sau-4426829.html'),
(101, 'https://i1-vnexpress.vnecdn.net/2022/02/12/cuunguoi-1644663866-2774-1644665541.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=2Y__BO4PLyhFbrZK33pUuw', 'Cứu sống vợ chồng ông lão đánh cá', 'Cảnh sát giao thông đường thủy đã cứu sống vợ chồng ông lão đánh cá đang chới với trên sông Chanh, sau khi thuyền nan bị lật.', '2022-02-12 06:53:54', 'https://vnexpress.net/cuu-song-vo-chong-ong-lao-danh-ca-4426798.html'),
(102, 'https://i1-vnexpress.vnecdn.net/2022/02/12/1JPG1639636170-1644664404-7890-1644664592.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Yp6cHRp5gUZk5V69uElumQ', 'Lạng Sơn dừng tiếp nhận xe hoa quả tươi lên cửa khẩu', 'Ngày 12/2, Sở Công Thương Lạng Sơn thông báo dừng tiếp nhận xe hoa quả tươi lên cửa khẩu từ ngày 16 đến 25/2 nhằm giải phóng hơn 1.000 xe đang mắc kẹt.', '2022-02-12 04:28:04', 'https://vnexpress.net/lang-son-dung-tiep-nhan-xe-hoa-qua-tuoi-len-cua-khau-4426791.html'),
(103, 'https://i1-vnexpress.vnecdn.net/2022/02/12/Hien-truong-1-1275-1644666062.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=PmD0k0LJGevOxSlYjdzgcw', 'Hai ôtô tải gây tai nạn liên hoàn', 'Ôtô tải tông vào con lươn và hai ôtô trên đường vành đai ở Đăk Lăk. Một ôtô tải khác bị hất bay nhiều vòng trên quốc lộ 1A, đoạn qua Thanh Hóa.', '2022-02-12 04:14:01', 'https://vnexpress.net/hai-oto-tai-gay-tai-nan-lien-hoan-4426785.html'),
(104, 'https://i1-vnexpress.vnecdn.net/2022/02/12/IMG9029JPG-1644645332-6901-1644645439.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=8TH3I8jTF2jFAb3o9_em0g', 'Không khí lạnh gây mưa giông ở miền Bắc', 'Không khí lạnh tràn xuống kết hợp với hội tụ gió trên cao gây mưa rào và giông ở miền Bắc từ ngày 13/2.', '2022-02-12 01:25:58', 'https://vnexpress.net/khong-khi-lanh-gay-mua-giong-o-mien-bac-4426714.html'),
(105, 'https://i1-vnexpress.vnecdn.net/2022/02/10/cv1-1644490241-3365-1644490876.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=7lF1OgR8OVNXrUAPMa5lvQ', 'Cải tạo công viên Thống Nhất theo hướng nào?', 'Ủng hộ chủ trương xây dựng công viên Thống Nhất theo hướng mở, không thu vé, nhiều kiến trúc sư đề xuất thay đổi cách quản lý, áp dụng công nghệ số.', '2022-02-12 00:20:35', 'https://vnexpress.net/cai-tao-cong-vien-thong-nhat-theo-huong-nao-4426066.html'),
(106, 'https://i1-vnexpress.vnecdn.net/2022/02/12/202001315e34283e21754-16446377-3050-2541-1644638074.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=VSEwQBLdFpfXnamuO3FdAg', 'Nghiên cứu xây thêm sân bay quốc tế tại Hải Phòng', 'Bộ Giao thông Vận tải nghiên cứu xây dựng cảng hàng không Tiên Lãng theo quy hoạch phát triển hệ thống sân bay toàn quốc thời kỳ 2021-2030, tầm nhìn đến 2050.', '2022-02-11 22:40:35', 'https://vnexpress.net/nghien-cuu-xay-them-san-bay-quoc-te-tai-hai-phong-4426669.html'),
(107, 'https://i1-vnexpress.vnecdn.net/2022/02/12/1-jpg-1644640650-1644642121.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=jmd7TBHzooJM0Gd2iJdiaw', 'Lễ rước nước khai hội chùa Tam Chúc', 'Sáng 12/2, 10 bình nước được rước từ hồ đưa về nơi linh thiêng của chùa Tam Chúc - ngôi chùa lớn nhất Việt Nam.', '2022-02-11 22:16:56', 'https://vnexpress.net/le-ruoc-nuoc-khai-hoi-chua-tam-chuc-4426699.html'),
(108, 'https://i1-vnexpress.vnecdn.net/2022/02/12/18abd9d7176edd30847f5407164138-9470-3111-1644633857.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=yjxqPeEXzhU2CaBsU5A3jQ', '\'Cao tốc Bắc Nam sẽ đi thẳng, tránh tối đa khu dân cư\'', 'Ngành giao thông đang làm việc với các địa phương về hướng tuyến cao tốc Bắc Nam với tiêu chí \"đi thẳng nhất, tránh tối đa các khu dân cư\", theo Bộ trưởng Nguyễn Văn Thể.', '2022-02-11 20:40:33', 'https://vnexpress.net/cao-toc-bac-nam-se-di-thang-tranh-toi-da-khu-dan-cu-4426641.html'),
(109, 'https://i1-vnexpress.vnecdn.net/2022/02/11/samho3-1644591961-4359-1644592-7468-5309-1644594048.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=w6zBIlJCBJzpqMOEnOE9Cg', 'Nhà máy về miền Tây tuyển công nhân', 'Khó tìm nguồn ở thành phố, nhiều nhà máy về các tỉnh miền Tây, gõ cửa từng nhà tuyển công nhân, đáp ứng nhu cầu mở rộng sản xuất, gia tăng đơn hàng.', '2022-02-11 16:00:00', 'https://vnexpress.net/nha-may-ve-mien-tay-tuyen-cong-nhan-4426574.html'),
(110, 'https://i1-vnexpress.vnecdn.net/2022/02/11/ca-trich-1644572336-1644572486.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=i-UN4APCP-dSlHSLJ8gJ-Q', 'Ngư dân trúng đậm cá trích', 'Thả tấm lưới dài 1.000 m, rộng 10 m xuống biển lúc 3h sáng, hai tiếng sau ngư dân thu lưới và mất cả buổi sáng gỡ cá trích.', '2022-02-11 10:00:00', 'https://vnexpress.net/ngu-dan-trung-dam-ca-trich-4426460.html'),
(111, 'https://i1-vnexpress.vnecdn.net/2022/02/11/ndt445916445800546052113553111-6427-1877-1644589093.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=6P59e3EXShYC_F0oEut3SA', 'Chuẩn bị đầu tư thêm 5 cao tốc quan trọng quốc gia', 'Bộ Giao thông Vận tải đang hoàn thiện thủ tục để trình Quốc hội quyết định chủ trương đầu tư 5 dự án cao tốc quan trọng quốc gia, tại kỳ họp tháng 5.', '2022-02-11 07:39:39', 'https://vnexpress.net/chuan-bi-dau-tu-them-5-cao-toc-quan-trong-quoc-gia-4426565.html'),
(112, 'https://i1-vnexpress.vnecdn.net/2022/02/11/hocsinh-1644582390-7729-1644582733.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=oXFc1ubqISMLrmGQApZXlw', 'Hà Nội không còn địa bàn \'vùng cam\'', 'Chín địa bàn vùng cam (cấp độ 3, nguy cơ cao) tuần trước đã giảm cấp, gần 93% phường, xã của thành phố mang màu xanh (cấp độ 1, nguy cơ thấp).', '2022-02-11 05:46:06', 'https://vnexpress.net/ha-noi-khong-con-dia-ban-vung-cam-4426548.html');
INSERT INTO `news_rss` (`id`, `thumb`, `title`, `description`, `pub_date`, `link`) VALUES
(113, 'https://i1-vnexpress.vnecdn.net/2022/02/11/metro-5600-1644573889-16445748-5787-7620-1644575333.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=VisBkisIwzX2ADAXsqkjOw', 'Metro Số 1 trả mặt bằng ở trung tâm TP HCM trước 30/4', 'Mặt bằng đường Lê Lợi ở quận 1 phục vụ thi công ga Bến Thành, thuộc tuyến Metro Số 1 được hoàn trả trước 30/4 để thiết kế lại cảnh quan, kiến trúc.', '2022-02-11 03:29:31', 'https://vnexpress.net/metro-so-1-tra-mat-bang-o-trung-tam-tp-hcm-truoc-30-4-4426489.html'),
(114, 'https://i1-vnexpress.vnecdn.net/2022/02/11/4-jpg-1644567505-1644569604.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=gBjXPWtwcSB9aVpNoGNsRQ', 'Chùa Hương đón khách', 'Gần 2.000 du khách đổ về chùa Hương (huyện Mỹ Đức) vãn cảnh, lễ chùa, sáng 11/2.', '2022-02-11 02:04:16', 'https://vnexpress.net/chua-huong-don-khach-4426434.html'),
(115, 'https://i1-vnexpress.vnecdn.net/2022/02/11/muoi-an-ngai-2-1644553122.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=O8oFC4UMkZpCrWzkmyaK7A', 'Mùa thu hoạch muối ở An Ngãi', 'Sau Tết, diêm dân ở xã An Ngãi, huyện Long Điền tất bật ra đồng thu hoạch muối.', '2022-02-11 01:00:12', 'https://vnexpress.net/mua-thu-hoach-muoi-o-an-ngai-4426326.html'),
(116, 'https://i1-vnexpress.vnecdn.net/2022/02/11/huy184472311580659523464115980-8528-4110-1644556162.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=gXSg1gOqRk7He3lSl9NjcQ', 'Bác sĩ Nguyễn Lân Hiếu: \'Đến lúc coi Covid là bệnh thông thường\'', 'PGS.TS Nguyễn Lân Hiếu cho rằng sau khi phủ vaccine diện rộng, Việt Nam nên coi Covid là bệnh thông thường, chuẩn bị thích ứng với thời kỳ hậu đại dịch.', '2022-02-11 00:59:16', 'https://vnexpress.net/bac-si-nguyen-lan-hieu-den-luc-coi-covid-la-benh-thong-thuong-4426173.html'),
(117, 'https://i1-vnexpress.vnecdn.net/2022/02/11/tau-cao-toc-vung-tau-con-dao-6-1673-7223-1644565050.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=7zr26pXrQIyQBtsjGQd1nQ', 'Tàu cao tốc Vũng Tàu - Côn Đảo chạy lại từ 15/2', 'Sau hơn 9 tháng tạm ngưng, tàu cao tốc từ Vũng Tàu đi Côn Đảo hoạt động trở lại, tần suất ba chuyến đi và ba chuyến về mỗi tuần.', '2022-02-11 00:37:49', 'https://vnexpress.net/tau-cao-toc-vung-tau-con-dao-chay-lai-tu-15-2-4426400.html'),
(118, 'https://i1-vnexpress.vnecdn.net/2022/02/11/vanh-dai-2-1830-1606027570-164-4997-3157-1644560676.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=nBeDt4LqXyUSaBvHsgDM4g', 'TP HCM khởi động loạt dự án lớn trong năm 2022', 'Khép kín Vành đai 2, hoàn thiện pháp lý Vành đai 3, chạy thử Metro Số 1… là những mục tiêu được Chủ tịch UBND TP HCM Phan Văn Mãi đặt ra năm nay.', '2022-02-10 23:29:19', 'https://vnexpress.net/tp-hcm-khoi-dong-loat-du-an-lon-trong-nam-2022-4426368.html'),
(119, 'https://i1-vnexpress.vnecdn.net/2022/02/11/ongnhan-1644552787-6889-1644552915.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=vHi_gMufRyEF2UV3olPFMQ', 'Đối thoại bất thành, 4.600 công nhân tiếp tục ngừng việc', 'Khoảng 4.600 công nhân Công ty TNHH Viet Glory ngừng việc ngày thứ năm liên tiếp do chưa đạt được thỏa thuận với chủ doanh nghiệp.', '2022-02-10 21:58:45', 'https://vnexpress.net/doi-thoai-bat-thanh-4-600-cong-nhan-tiep-tuc-ngung-viec-4426315.html'),
(120, 'https://i1-vnexpress.vnecdn.net/2022/02/11/caotoc116195395413763162157033-1619-7661-1644552267.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=yVbfGpWqCSV3nv_j7jgybw', 'Chính phủ quyết định chỉ định thầu 12 dự án cao tốc Bắc Nam', 'Chính phủ quyết định áp dụng chỉ định thầu với các gói thầu tư vấn, xây lắp thuộc 12 dự án cao tốc Bắc Nam, giai đoạn 2021-2025.', '2022-02-10 21:13:41', 'https://vnexpress.net/chinh-phu-quyet-dinh-chi-dinh-thau-12-du-an-cao-toc-bac-nam-4426297.html'),
(121, 'https://i1-vnexpress.vnecdn.net/2022/02/10/nut-gia-an-phu-6913-1644488255-3796-5918-1644490696.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=gRhjJTkn1Mn7a5ZAT8czbg', 'TP HCM thúc tiến độ làm nút giao gần 4.000 tỷ đồng', 'Thành phố đề nghị Bộ Giao thông Vận tải sớm có ý kiến với thiết kế cơ sở dự án nút giao An Phú, tổng vốn gần 4.000 tỷ đồng để hoàn tất thủ tục chuẩn bị đầu tư.', '2022-02-10 16:00:00', 'https://vnexpress.net/tp-hcm-thuc-tien-do-lam-nut-giao-gan-4-000-ty-dong-4426102.html'),
(122, 'https://i1-vnexpress.vnecdn.net/2022/02/10/cau-thu-1644502577-1196-1644502583.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=r0akgBv8y6sSO2CAkwVyfQ', 'Thủ tướng: Cần đảm bảo cuộc sống cho cầu thủ nữ', 'Thủ tướng Phạm Minh Chính chia sẻ với cuộc sống khó khăn của cầu thủ nữ khi lương tháng chỉ được 5 triệu đồng, phải làm thêm nhiều nghề phụ.', '2022-02-10 06:51:16', 'https://vnexpress.net/thu-tuong-can-dam-bao-cuoc-song-cho-cau-thu-nu-4426020.html'),
(123, 'https://i1-vnexpress.vnecdn.net/2022/02/10/cg2a3163-1644476431-1644479166.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=InaVzS32CT6C57nT9Og5gw', 'Người Sài Gòn đi chùa Ngọc Hoàng cầu an', 'Điện thờ Thần Tài trong chùa Ngọc Hoàng (quận 1) đông đúc người khấn bái, dâng lễ cầu may, mùng 10 tháng Giêng.', '2022-02-10 05:30:00', 'https://vnexpress.net/nguoi-sai-gon-di-chua-ngoc-hoang-cau-an-4425996.html'),
(124, 'https://i1-vnexpress.vnecdn.net/2022/02/10/kemnghia-1644226107-5301-16442-4575-4366-1644489899.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=TD1wdqlFmCvQCfMvK7JGUQ', '96% lao động trở lại TP HCM làm việc', 'Hơn 1,9 triệu lao động quay lại TP HCM làm việc sau kỳ nghỉ Tết, đạt tỷ lệ khoảng 96%, theo thống kê của Sở Lao động, Thương binh và Xã hội.', '2022-02-10 03:46:29', 'https://vnexpress.net/96-lao-dong-tro-lai-tp-hcm-lam-viec-4426108.html'),
(125, 'https://i1-vnexpress.vnecdn.net/2022/02/10/top-1644481646-3087-1644481896.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=eGEdMlA9CWpTzNoWAVN3qw', 'Nhiều địa phương mở cửa đền chùa, khôi phục dịch vụ', 'Bắc Ninh mở cửa trở lại đền Bà Chúa Kho, Bắc Giang dự kiến khôi phục hầu hết dịch vụ từ 16/2 và Đà Nẵng sẽ mở lại karaoke.', '2022-02-10 02:52:59', 'https://vnexpress.net/nhieu-dia-phuong-mo-cua-den-chua-khoi-phuc-dich-vu-4425961.html'),
(126, 'https://i1-vnexpress.vnecdn.net/2022/02/10/IMG0808copy-1644481106-7810-1644481704.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=hcMQeKiAjTlF-SrxJJn3NA', 'Người dân xếp hàng làm hộ chiếu', 'Sau Tết, mỗi ngày hàng trăm người dân Nghệ An và Hà Tĩnh xếp hàng ở cơ quan công an để làm hộ chiếu, tăng gấp đôi so với cùng kỳ năm ngoái.', '2022-02-10 02:23:59', 'https://vnexpress.net/nguoi-dan-xep-hang-lam-ho-chieu-4426025.html'),
(127, 'https://i1-vnexpress.vnecdn.net/2022/02/10/b43e333c0933c56d9c22-164447127-3086-3783-1644471287.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=BT5uBbgPEyLM7Ue_BDx16g', 'Metro Số 1 chạy thử giữa năm 2022', 'Các tàu của Metro Số 1 dự kiến chạy thử từ giữa năm nay theo từng đoạn, sau đó trên toàn tuyến dài gần 20 km từ depot Long Bình đến ga Bến Thành trước 31/12.', '2022-02-09 22:30:32', 'https://vnexpress.net/metro-so-1-chay-thu-giua-nam-2022-4425968.html'),
(128, 'https://i1-vnexpress.vnecdn.net/2022/02/10/cg2a2419-1644454715-1644459446.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=qkdanS5TI3tVGjqRNTe3rg', 'Lễ vía Thần Tài của một gia đình Sài Gòn', 'Từ 5h, bà Nguyễn Thị Nở, quận 12, TP HCM, ra chợ mua hoa, cá lóc nướng... chuẩn bị lễ cúng ngày vía Thần Tài.', '2022-02-09 19:40:08', 'https://vnexpress.net/le-via-than-tai-cua-mot-gia-dinh-sai-gon-4425795.html'),
(129, 'https://i1-vnexpress.vnecdn.net/2022/02/10/anh-8-jpg-1644426893-1644455067.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ZdxmrMyQQX1HiFbBJHAIfw', 'Người dân du xuân Yên Tử trong sương mù', 'Năm nay tỉnh không tổ chức lễ hội, thời tiết cũng không thuận lợi khi sương mù dày đặc, nhưng người dân vẫn đổ về Yên Tử vãn cảnh, lễ chùa ngày đầu năm.', '2022-02-09 19:15:58', 'https://vnexpress.net/nguoi-dan-du-xuan-yen-tu-trong-suong-mu-4425761.html'),
(130, 'https://i1-vnexpress.vnecdn.net/2022/02/10/nha-tro-1644427507-6376-1644427633.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=1t8w267-FHQBBlZpIB6TgQ', 'Nhà máy chuẩn bị chỗ ở đón công nhân', 'Sau khi chốt cọc 70 phòng trọ, nhà máy Việt Nam Samho ở huyện Củ Chi cho nhân viên quét dọn, kiểm tra điện nước chuẩn bị đón công nhân trở lại sau Tết.', '2022-02-09 16:00:00', 'https://vnexpress.net/nha-may-chuan-bi-cho-o-don-cong-nhan-4425688.html'),
(131, 'https://i1-giadinh.vnecdn.net/2022/02/09/img-0856-jpg-1644382344-4305-1644384925.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=u-S1AME4zg-16UKC0Gg3Pg', 'Cô bé 7 tuổi địu em đến lớp', 'Mẹ liệt, bố mù lòa, Hảng Thị Giang chỉ còn cách địu em trai 2 tuổi cùng đến lớp.', '2022-02-09 16:00:00', 'https://vnexpress.net/co-be-7-tuoi-diu-em-den-lop-4425330.html'),
(132, 'https://i1-vnexpress.vnecdn.net/2022/02/10/imgbgt2021img16443805910481-16-6168-6759-1644471086.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ct4raqnJlG1FzDDU8Gy9VQ', 'Xử lý 41 điểm ngập nước trên quốc lộ ở đồng bằng sông Cửu Long', 'Từ 10/2, Tổng cục Đường bộ Việt Nam triển khai đồng loạt các dự án chống ngập trên quốc lộ tại đồng bằng sông Cửu Long, với tổng vốn gần 400 tỷ đồng.', '2022-02-10 01:16:13', 'https://vnexpress.net/xu-ly-41-diem-ngap-nuoc-tren-quoc-lo-o-dong-bang-song-cuu-long-4425973.html'),
(133, 'https://i1-vnexpress.vnecdn.net/2022/02/09/25ae7742-eeb5-42b5-aaee-4461a8-6768-5425-1644422557.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=7TNWsQLzZqbZfVFJs1lB4g', 'Cây đổ đè hai mẹ con', 'Cây phượng đường kính gần 50 cm, cao hơn 15 m, bị mục phần gốc, trồng ven đường tại TP Thủ Đức bất ngờ ngã đổ khiến 2 mẹ con bị thương, tối 9/2.', '2022-02-09 09:03:41', 'https://vnexpress.net/cay-do-de-hai-me-con-4425756.html'),
(134, 'https://i1-vnexpress.vnecdn.net/2022/02/09/a2jpeg86811644327296-164440445-8326-8484-1644405038.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=-x_TeVcZbWTec9Xs3XX0dA', 'Đội tuyển nữ Việt Nam được tặng huân chương Lao động hạng nhất', 'Chủ tịch nước Nguyễn Xuân Phúc quyết định tặng huân chương Lao động hạng nhất cho đội tuyển nữ Việt Nam và huấn luyện viên Mai Đức Chung.', '2022-02-09 08:28:26', 'https://vnexpress.net/doi-tuyen-nu-viet-nam-duoc-tang-huan-chuong-lao-dong-hang-nhat-4425701.html'),
(135, 'https://i1-vnexpress.vnecdn.net/2022/02/09/anh-vinh-1644407449-9457-1644408581.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=7J-8ID4ukwkNdGya_jPy4A', '20 phút thoát khỏi xe tải biến dạng khi lao xuống vực', 'Tỉnh dậy trong màn đêm, anh Nguyễn Tấn Vinh rọi đèn từ điện thoại ra xung quanh, thấy xe tải nằm dưới vực sâu, 8 người đi cùng bất động, nằm chồng lên nhau.', '2022-02-09 05:30:03', 'https://vnexpress.net/20-phut-thoat-khoi-xe-tai-bien-dang-khi-lao-xuong-vuc-4425609.html');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_product_id` int(11) DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `thumb`, `slug`, `category_product_id`, `price`, `created`, `created_by`, `modified`, `modified_by`, `status`, `content`) VALUES
(2, 'Product 1', '/images/product/awesomeface.png', NULL, 4, NULL, '2022-02-17 17:00:00', 'admin', NULL, NULL, 'inactive', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(3, 'Product 2', '/images/product/grid.jpg', NULL, 6, NULL, '2022-02-17 17:00:00', 'admin', '2022-02-17 17:00:00', 'admin', 'inactive', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(4, 'Sản phẩm 3', '/images/product/container.jpg', NULL, 5, NULL, '2022-02-17 17:00:00', 'admin', '2022-02-17 17:00:00', 'admin', 'active', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_value`
--

CREATE TABLE `product_attribute_value` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_attribute_value`
--

INSERT INTO `product_attribute_value` (`id`, `product_id`, `attribute_id`, `value`) VALUES
(5, 4, 1, '100% cotton'),
(6, 4, 1, '90%cotton 10%poly'),
(7, 4, 2, 'xanh'),
(8, 4, 2, 'đỏ'),
(9, 4, 2, 'vàng'),
(10, 4, 2, 'cam'),
(11, 4, 2, 'tím'),
(12, 4, 3, 'Xl'),
(13, 4, 3, 'X'),
(14, 4, 3, 'S'),
(15, 4, 3, 'XLL');

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
(4, 'user 456', 'user456@gmail.com', 'user456', 'e10adc3949ba59abbe56e057f20f883e', 'J1uknUz0T6.png', 'member', '2019-05-04 00:00:00', 'admin', '2022-01-18 00:00:00', 'hailan', 'inactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attribute_value`
--
ALTER TABLE `product_attribute_value`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news_rss`
--
ALTER TABLE `news_rss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_attribute_value`
--
ALTER TABLE `product_attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
