-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 23, 2023 lúc 06:14 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `the ciindys`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `log_login` text DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Phan Cong Vinh', 'admin@gmail.com', '$2y$10$wkjMG/vGGEJ21wIARDJDiOZnBxO8p5eyDrc3gw.0E9.oKNKqp0QD.', '0345645678', NULL, 'không', '56 Đ. Mậu Thân, An Phú, Ninh Kiều, Cần Thơ', '2023-04-16__255dfb0fdada2d8474cb.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) NOT NULL,
  `a_slug` varchar(255) NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext DEFAULT NULL,
  `a_avatar` varchar(255) DEFAULT NULL,
  `a_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, '“LOOKING AHEAD”-DEAL ĐỈNH SIÊU TO 30- 50% CỦA ADIDAS ĐÃ CHÍNH THỨC LỘ DIỆN TẠI SPORT1', 'looking-ahead-deal-dinh-sieu-to-30-50-cua-adidas-da-chinh-thuc-lo-dien-tai-sport1', 1, 1, 2, 0, 'Tháng 6 rực rỡ- Tháng vàng Adidas, chương trình khuyến mại “Looking Ahead” của Adidas chỉ mới “ló mặt” đã khiến các team cuồng thời trang 3 sọc phải choáng ngợp bởi các deal sale siêu đỉnh- Up to 30- 50%. Chương trình chính thức diễn ra trong 11 ngày, từ ngày 04/06 đến hết ngày 14/6/2020 tại các showroom của Sport1 trên toàn quốc.', '2020-06-19__banner-khuy-n-m-i-looking-ahead-1.jpg', '<h1 style=\"text-align:center\">&ldquo;LOOKING AHEAD&rdquo;-DEAL ĐỈNH SI&Ecirc;U TO 30- 50% CỦA ADIDAS Đ&Atilde; CH&Iacute;NH THỨC LỘ DIỆN TẠI SPORT1</h1>\r\n\r\n<p>Th&aacute;ng 6 rực rỡ- Th&aacute;ng v&agrave;ng Adidas, chương tr&igrave;nh khuyến mại &ldquo;Looking Ahead&rdquo; của Adidas chỉ mới &ldquo;l&oacute; mặt&rdquo; đ&atilde; khiến c&aacute;c team cuồng thời trang 3 sọc phải cho&aacute;ng ngợp bởi c&aacute;c deal sale si&ecirc;u đỉnh- Up to 30- 50%. Chương tr&igrave;nh ch&iacute;nh thức diễn ra trong 11 ng&agrave;y, từ ng&agrave;y 04/06 đến hết ng&agrave;y 14/6/2020 tại c&aacute;c showroom của Sport1 tr&ecirc;n to&agrave;n quốc.</p>\r\n\r\n<p>Đến hẹn chắc chắn sẽ l&ecirc;n, Chương tr&igrave;nh khuyến mại v&ocirc; c&ugrave;ng hấp dẫn của Adidas th&aacute;ng 6 đ&atilde; trở lại- &ldquo;LOOKING AHEAD&rdquo;. Đ&acirc;y ch&iacute;nh l&agrave; cơ hội v&agrave;ng cho c&aacute;c fan cuồng thời trang nh&agrave; Aididas sở hữu những si&ecirc;u phẩm mơ ước với MỨC GI&Aacute; SI&Ecirc;U HỜI. Theo đ&oacute;, t&ugrave;y theo từng m&atilde; sản phẩm, kh&aacute;ch h&agrave;ng sẽ được giảm liền từ 30- 50% sản phẩm nguy&ecirc;n gi&aacute;. V&agrave; điều đặc biệt trong chương tr&igrave;nh n&agrave;y, khuyến mại kh&ocirc;ng chỉ d&agrave;nh ri&ecirc;ng cho nh&oacute;m ng&agrave;nh gi&agrave;y m&agrave; nh&oacute;m ng&agrave;nh thời trang- phụ kiện Adidas cũng c&oacute; những deal sale hấp dẫn với mức GI&Aacute; CHƯA TỪNG C&Oacute;.</p>\r\n\r\n<p><br />\r\nTại hệ thống si&ecirc;u thị thể thao Sport1, hơn 10000 sản phẩm mới Adidas đ&atilde; đổ bộ, full đầy c&aacute;c kệ chỉ chờ kh&aacute;ch h&agrave;ng qua rước về. Gi&agrave;y d&eacute;p, balo thời trang, quần &aacute;o phụ kiện ch&iacute;nh h&atilde;ng đều được sale với mức gi&aacute; kh&ocirc;ng tưởng. C&aacute;c t&iacute;n đồ đam m&ecirc; c&aacute;c đồ tập chuy&ecirc;n dụng running, traning, sportswear, b&oacute;ng đ&aacute;, cầu l&ocirc;ng, gold... cũng đừng lo v&igrave; c&aacute;c &ldquo;em&rdquo; n&agrave;y cũng điểm đủ mặt &nbsp;trong list SALE SỐC của Adidas th&aacute;ng 6.</p>\r\n\r\n<p>Chương tr&igrave;nh &aacute;p dụng duy nhất trong 11 ng&agrave;y từ 04/06 đến hết 14/06/2020 v&agrave; &aacute;p dụng cho cả mua trực tiếp tại cửa h&agrave;ng v&agrave; hệ thống online của #Sport1! N&agrave;o c&aacute;c anh chị em nh&agrave; Das, h&atilde;y nhanh tay đến Sport1 để săn những si&ecirc;u phẩm n&oacute;ng bỏng tay với mức gi&aacute; SI&Ecirc;U SHOCK n&agrave;o.</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:743px; position:absolute; top:-4.8px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '2020-06-19 08:46:51', 1, 1, '2023-04-23 08:36:10'),
(2, 'THÁNG VÀNG ĐẠI LỄ SĂN SALE CỰC DỄ - GHẾ MASSAGE GIẢM ĐẾN 42%', 'thang-vang-dai-le-san-sale-cuc-de-ghe-massage-giam-den-42', 1, 1, 1, 0, 'Hình ảnh cờ đỏ sao vàng tung bay trên mọi nẻo đường Tổ Quốc đã góp phần tạo nên một bầu không khí hào hùng trong đại lễ kỷ niệm 45 năm giải phóng Miền Nam thống nhất toàn vẹn lãnh thổ Việt Nam. Hòa cùng không khí chào mừng đại lễ 30/4 - 1/5 giúp quý khách có những phút giây mua sắm thoải mái, KINGSPORT triển khai chương trình mang tên THÁNG VÀNG ĐẠI LỄ - SĂN SALE CỰC DỄ.', '2020-06-19__360-crop-ctkm-kingsport-01.jpg', '<p><strong>H&igrave;nh ảnh cờ đỏ sao v&agrave;ng tung bay tr&ecirc;n mọi nẻo đường Tổ Quốc đ&atilde; g&oacute;p phần tạo n&ecirc;n một bầu kh&ocirc;ng kh&iacute; h&agrave;o h&ugrave;ng trong đại lễ kỷ niệm 45 năm giải ph&oacute;ng Miền Nam thống nhất to&agrave;n vẹn l&atilde;nh thổ Việt Nam. H&ograve;a c&ugrave;ng kh&ocirc;ng kh&iacute; ch&agrave;o mừng đại lễ&nbsp;30/4 - 1/5 gi&uacute;p qu&yacute; kh&aacute;ch c&oacute; những ph&uacute;t gi&acirc;y mua sắm thoải m&aacute;i, KINGSPORT triển khai chương tr&igrave;nh mang t&ecirc;n&nbsp;<em>TH&Aacute;NG V&Agrave;NG ĐẠI LỄ - SĂN SALE CỰC DỄ.</em></strong></p>\r\n\r\n<p>Với sứ mệnh mang sức khỏe &ndash; hạnh ph&uacute;c &ndash; thịnh vương đến mọi nh&agrave;. Đồng thời, gi&uacute;p qu&yacute; kh&aacute;ch tiết kiệm thời gian v&agrave; t&agrave;i ch&iacute;nh khi đầu tư v&agrave;o việc chăm s&oacute;c sức khỏe KINGSPORT đ&atilde; triển khai chương tr&igrave;nh &ldquo;<em>Th&aacute;ng v&agrave;ng đại lễ - Săn sale cực dễ&rdquo;</em>&nbsp;với&nbsp;<a href=\"https://www.kingsport.vn/ghe-massage-kingsport-g38.html\"><strong>ưu đ&atilde;i si&ecirc;u khủng l&ecirc;n đến 42%</strong></a>&nbsp;d&agrave;nh cho kh&aacute;ch h&agrave;ng tham gia mua sắm tại c&aacute;c k&ecirc;nh online hoặc offline của KINGSPORT. Chương tr&igrave;nh &aacute;p dụng tr&ecirc;n to&agrave;n quốc v&agrave; k&eacute;o d&agrave;i từ ng&agrave;y 20/4/2020 &ndash; 20/5/2020(*).</p>', '2020-06-19 08:49:50', 0, 0, '2020-06-19 08:49:59'),
(3, 'LỊCH SỬ MÔN CHẠY MARATHON', 'lich-su-mon-chay-marathon', 1, 1, 2, 0, 'Chạy marathon đã quá quen thuộc đến nỗi gần như chẳng ai quan tâm nó […]', '2020-06-19__philippides.jpg', '<div class=\"entry-wrap\">\r\n<h1>Lịch sử m&ocirc;n chạy Marathon</h1>\r\n<!-- End / Related Posts -->\r\n\r\n<div class=\"content entry-content\">\r\n<p>Chạy marathon đ&atilde; qu&aacute; quen thuộc đến nỗi gần như chẳng ai quan t&acirc;m n&oacute; l&agrave; g&igrave; v&agrave; bắt đầu từ bao giờ. C&ugrave;ng t&igrave;m hiểu một ch&uacute;t về lịch sử m&ocirc;n chạy marathon nh&eacute;.</p>\r\n\r\n<p><strong>Ch</strong><strong>ạy marathon l</strong><strong>&agrave; g&igrave;</strong>? Marathon l&agrave; một cuộc đua đường d&agrave;i với một khoảng c&aacute;ch ch&iacute;nh thức của 42,195 km&nbsp; (khoảng 26, 385 dặm), thường chạy như một cuộc chạy đua đường bằng. <strong>L</strong><strong>ịch sử m</strong><strong>&ocirc;n ch</strong><strong>ạy Marathon</strong> được gắn liền với sự kiện n&agrave;y, n&oacute; được tổ chức để kỷ niệm cuộc chạy đua huyền thoại của người l&iacute;nh Hy Lạp t&ecirc;n l&agrave; Pheidippides, một sứ giả từ Trận chiến Marathon đến Athens để b&aacute;o kết quả chiến thằng của trận chiến. Cuộc đua marathon c&oacute; thể được ho&agrave;n th&agrave;nh bằng c&aacute;ch chạy hoặc với chiến lược chạy / đi bộ.</p>\r\n\r\n<p><strong>Ch</strong><strong>ạy marathon bắt </strong><strong>đ</strong><strong>ầu từ bao giờ?</strong></p>\r\n\r\n<p><strong>Ch</strong><strong>ạy marathon</strong> l&agrave; một trong những sự kiện Olympic hiện đại v&agrave;o năm 1896, mặc d&ugrave; khoảng c&aacute;ch kh&ocirc;ng được chuẩn h&oacute;a cho đến năm 1921. Hơn 800 cuộc đua được tổ chức tr&ecirc;n khắp thế giới mỗi năm, với đại đa số c&aacute;c đối thủ l&agrave; vận động vi&ecirc;n, v&igrave; c&aacute;c cuộc đua lớn hơn c&oacute; thể c&oacute; h&agrave;ng chục ng&agrave;n người tham gia.</p>\r\n\r\n<p>Nếu x&eacute;t về<strong> lịch sử m&ocirc;n chạy Marathon</strong>, th&igrave; mới biết c&aacute;i t&ecirc;n Marathon xuất ph&aacute;t từ truyền thuyết về Philippides (hay Pheidippides), sứ giả Hy Lạp. Truyền thuyết n&oacute;i rằng &ocirc;ng được gửi từ chiến trường Marathon đến Athens để th&ocirc;ng b&aacute;o rằng người Ba Tư đ&atilde; bị đ&aacute;nh bại trong trrận chiến Marathon (trong đ&oacute; &ocirc;ng vừa mới chiến đấu),&nbsp; diễn ra v&agrave;o th&aacute;ng 8 hoặc th&aacute;ng 9 năm 490 trước C&ocirc;ng nguy&ecirc;n.&nbsp; Người ta n&oacute;i rằng anh ta đ&atilde; chạy to&agrave;n bộ qu&atilde;ng đường m&agrave; kh&ocirc;ng dừng lại v&agrave; x&ocirc;ng v&agrave;o hội nghị, k&ecirc;u l&ecirc;n &epsilon;&epsilon;&epsilon;&kappa;ή&kappa;&kappa;ή&kappa; (nenikēkamen, &ldquo;ch&uacute;ng t&ocirc;i đ&atilde; thắng!&rdquo;), Trước khi quỵ gối v&agrave; chết.&nbsp;</p>\r\n<img alt=\"\" class=\"wp-image-9916\" src=\"https://runningstore.vn/wp-content/uploads/2020/04/Philippides.jpg\" />\r\n<p>H&igrave;nh ảnh Philippides trong truyền thuyết</p>\r\n\r\n<p>C&oacute; nhiều cuộc tranh luận về t&iacute;nh ch&iacute;nh x&aacute;c của truyền thuyết n&agrave;y. Nh&agrave; sử học Hy Lạp Herodotus, trong nguồn lịch sử ch&iacute;nh của Chiến tranh Greco-Ba Tư, đề cập đến Philippides l&agrave; sứ giả chạy từ Athens đến Sparta để nhờ gi&uacute;p đỡ, v&agrave; sau đ&oacute; chạy lại, khoảng c&aacute;ch hơn 240 km (150 dặm) mỗi chiều. Trong một số bản thảo Herodotus, t&ecirc;n của người chạy giữa Athens v&agrave; Sparta được đặt t&ecirc;n l&agrave; Philippides. Herodotus kh&ocirc;ng đề cập đến một sứ giả được gửi từ Marathon đến Athens, v&agrave; kể rằng phần ch&iacute;nh của qu&acirc;n đội Athen, đ&atilde; chiến đấu v&agrave; chiến thắng trong trận chiến mệt mỏi, v&agrave; sợ một cuộc đột k&iacute;ch của hải qu&acirc;n bởi hạm đội Ba Tư chống lại một Athens kh&ocirc;ng được bảo vệ, đ&atilde; nhanh ch&oacute;ng quay trở lại từ Athens.</p>\r\n<img alt=\"\" class=\"wp-image-9917\" src=\"https://runningstore.vn/wp-content/uploads/2020/04/Tuong-phelippides.jpg\" />\r\n<p>Tượng Philppides được dựng tại Hy Lạp</p>\r\n\r\n<p>N&uacute;i Pentelicus đứng giữa Marathon v&agrave; Athens, điều đ&oacute; c&oacute; nghĩa l&agrave; nếu Philippides thực hiện qu&atilde;ng đường chạy sau trận chiến, anh ta phải chạy quanh ngọn n&uacute;i, ở ph&iacute;a bắc hoặc ph&iacute;a nam. Tuyến đường sau v&agrave; r&otilde; r&agrave;ng hơn ph&ugrave; hợp với gần như ch&iacute;nh x&aacute;c đường cao tốc Marathon-Athens hiện đại, đi theo v&ugrave;ng đất ph&iacute;a nam từ Vịnh Marathon v&agrave; dọc theo bờ biển, sau đ&oacute; đi bộ nhẹ nh&agrave;ng nhưng k&eacute;o d&agrave;i về ph&iacute;a t&acirc;y về ph&iacute;a đ&ocirc;ng đến Athens, giữa c&aacute;c ch&acirc;n đồi của N&uacute;i Hymettus v&agrave; Penteli, v&agrave; sau đ&oacute; nhẹ nh&agrave;ng xuống dốc đến Athens. Tuyến đường n&agrave;y, như đ&atilde; tồn tại khi Thế vận hội được hồi sinh v&agrave;o năm 1896, d&agrave;i khoảng 40 km (25 dặm) v&agrave; đ&acirc;y l&agrave; khoảng c&aacute;ch gần đ&uacute;ng ban đầu được sử dụng cho c&aacute;c cuộc đua <strong>ch</strong><strong>ạy marathon</strong>. Tuy nhi&ecirc;n, đ&atilde; c&oacute; &yacute; kiến ​​cho rằng Philippides c&oacute; thể đ&atilde; đi theo một tuyến đường kh&aacute;c: leo l&ecirc;n ph&iacute;a t&acirc;y dọc theo sườn ph&iacute;a đ&ocirc;ng v&agrave; ph&iacute;a bắc của N&uacute;i Penteli đến đ&egrave;o Dionysos, v&agrave; sau đ&oacute; l&agrave; một con đường xuống dốc thẳng về ph&iacute;a nam đến Athens. Tuyến đường n&agrave;y ngắn hơn đ&aacute;ng kể, 35 km (22 mi), nhưng leo l&ecirc;n ban đầu rất dốc hơn 5 km (3,1 mi).</p>\r\n\r\n<p>Khi Thế vận hội hiện đại bắt đầu v&agrave;o năm 1896, những người khởi xướng v&agrave; tổ chức đang t&igrave;m kiếm một sự kiện phổ biến lớn, gợi lại vinh quang của Hy Lạp cổ đại v&agrave; gi&uacute;p người ta nhớ tới <strong>lịch sử của m&ocirc;n chạy marathon</strong>. &Yacute; tưởng về một cuộc đua marathon đến từ Michel Br&eacute;al, người muốn sự kiện n&agrave;y xuất hiện trong Thế vận hội Olympic hiện đại đầu ti&ecirc;n v&agrave;o năm 1896 tại Athens. &Yacute; tưởng n&agrave;y được Pierre de Coubertin, người s&aacute;ng lập Thế vận hội hiện đại, cũng như người Hy Lạp ủng hộ.&nbsp; Người Hy Lạp đ&atilde; tổ chức một cuộc đua tuyển chọn cho cuộc thi marathon Olympic v&agrave;o ng&agrave;y 22 th&aacute;ng 3 năm 1896, m&agrave; Charilaos Vasilakos đ&atilde; gi&agrave;nh chiến thắng trong 3 giờ v&agrave; 18 ph&uacute;t.&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<div class=\"wp-block-image\"><img alt=\"\" class=\"wp-image-9918\" src=\"https://runningstore.vn/wp-content/uploads/2020/04/Chaolios-vasilakos.jpg\" />\r\n<p>Charilaos Vasilakos &ndash; nh&agrave; v&ocirc; địch chạy marathon thế vận hội 1896</p>\r\n</div>\r\n\r\n<p>Sau n&agrave;y, n&oacute; đ&atilde; trở th&agrave;nh một truyền thống cho cuộc thi marathon Olympic nam l&agrave; sự kiện cuối c&ugrave;ng của lịch thi đấu điền kinh, v&agrave;o ng&agrave;y cuối c&ugrave;ng của Thế vận hội. Trong nhiều năm, cuộc đua kết th&uacute;c b&ecirc;n trong s&acirc;n vận động Olympic; tuy nhi&ecirc;n, tại Thế vận hội Lu&acirc;n Đ&ocirc;n 2012, điểm khởi đầu v&agrave; kết th&uacute;c l&agrave; ở Trung t&acirc;m thương mại,v&agrave; tại Rio 2016 (Rio de Janeiro), điểm khởi đầu v&agrave; kết th&uacute;c l&agrave; ở Samb&oacute;dromo.</p>\r\n</div>\r\n</div>', '2020-06-19 08:53:44', 1, 1, '2020-06-19 08:54:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(255) NOT NULL,
  `atb_slug` varchar(255) NOT NULL,
  `atb_type_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type_id`, `created_at`, `updated_at`) VALUES
(19, 'Màu đỏ', 'mau-do', 2, '2020-07-03 17:34:32', NULL),
(20, 'Màu Tím', 'mau-tim', 2, '2020-07-03 17:52:57', NULL),
(21, 'Màu đỏ đen', 'mau-do-den', 2, '2020-07-03 17:53:08', NULL),
(22, 'Màu vàng', 'mau-vang', 2, '2020-07-03 17:53:31', NULL),
(23, 'Đỏ', 'do', 2, '2023-01-19 08:15:45', NULL),
(24, 'Màu Trắng', 'mau-trang', 2, '2023-04-15 01:44:22', NULL),
(25, '28', '28', 1, '2023-04-15 01:46:43', NULL),
(26, '29', '29', 1, '2023-04-15 01:46:46', NULL),
(27, '30', '30', 1, '2023-04-15 01:46:49', NULL),
(28, '31', '31', 1, '2023-04-15 01:46:53', NULL),
(29, '32', '32', 1, '2023-04-15 01:46:56', NULL),
(30, '33', '33', 1, '2023-04-15 01:46:58', NULL),
(31, '34', '34', 1, '2023-04-15 01:47:00', NULL),
(32, '35', '35', 1, '2023-04-15 01:47:15', NULL),
(33, '36', '36', 1, '2023-04-15 01:47:21', NULL),
(34, 'S', 's', 1, '2023-04-15 01:48:11', NULL),
(35, 'M', 'm', 1, '2023-04-15 01:48:16', NULL),
(36, 'L', 'l', 1, '2023-04-15 01:48:19', NULL),
(37, 'XL', 'xl', 1, '2023-04-15 01:48:45', NULL),
(38, 'XXL', 'xxl', 1, '2023-04-15 01:48:47', NULL),
(39, 'XS', 'xs', 1, '2023-04-15 01:48:53', NULL),
(40, 'Nâu', 'nau', 2, '2023-04-15 03:39:45', '2023-04-15 03:40:37'),
(41, 'Xanh', 'xanh', 2, '2023-04-15 03:39:55', '2023-04-15 03:40:19'),
(42, 'Be', 'be', 2, '2023-04-15 03:40:10', NULL),
(43, 'Màu đen', 'mau-den', 2, '2023-04-16 00:37:48', '2023-04-16 00:40:32'),
(44, 'Xanh Navy', 'xanh-navy', 2, '2023-04-16 00:52:42', NULL),
(45, 'Xanh da trời', 'xanh-da-troi', 2, '2023-04-16 00:57:26', NULL),
(46, 'Xám bạc', 'xam-bac', 2, '2023-04-16 01:07:33', NULL),
(47, 'FreeSize', 'freesize', 1, '2023-04-16 02:28:54', '2023-04-16 02:29:09'),
(48, 'Xanh lá', 'xanh-la', 2, '2023-04-16 02:46:12', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_slug` varchar(255) NOT NULL,
  `c_avatar` varchar(255) DEFAULT NULL,
  `c_banner` varchar(255) DEFAULT NULL,
  `c_description` varchar(255) DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(12, 'Áo Nam', 0, 'ao-nam', NULL, NULL, NULL, 0, 0, '2023-04-15 00:33:11', '2023-04-15 10:11:27'),
(13, 'Quần Nam', 0, 'quan-nam', NULL, NULL, NULL, 0, 1, '2023-04-15 00:58:35', NULL),
(14, 'Phụ kiện', 0, 'phu-kien', NULL, NULL, NULL, 0, 1, '2023-04-15 00:59:53', NULL),
(15, 'Ưu Đãi', 0, 'uu-dai', NULL, NULL, NULL, 0, 1, '2023-04-15 01:00:04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(255) DEFAULT NULL,
  `cmt_email` varchar(255) DEFAULT NULL,
  `cmt_content` text DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(8, NULL, NULL, 'Sản phẩm này đẹp', 0, 4, 0, 8, 0, 0, '2023-01-20 06:38:53', NULL),
(9, NULL, NULL, 'hi', 0, 12, 0, 9, 0, 0, '2023-04-23 08:52:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(255) DEFAULT NULL,
  `c_phone` char(11) DEFAULT NULL,
  `c_email` varchar(255) DEFAULT NULL,
  `c_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `c_title`, `c_phone`, `c_email`, `c_content`, `created_at`, `updated_at`) VALUES
(2, 'afds', '055555555', 'Dd@gmail.com', 'gdg', '2023-04-15 04:39:21', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cost_vc`
--

CREATE TABLE `cost_vc` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cost_vc`
--

INSERT INTO `cost_vc` (`id`, `price`) VALUES
(1, 25000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `d_code` varchar(191) NOT NULL,
  `d_number_code` int(11) NOT NULL DEFAULT 0,
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(3, 'bnvvv', 1, '2023-04-22 23:24:00', '2023-04-29 22:23:00', 100, '2023-04-22 08:23:33', '2023-04-22 08:23:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(255) DEFAULT NULL,
  `e_banner` varchar(255) DEFAULT NULL,
  `e_link` varchar(255) DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'sale 1', '2023-04-16__xxxx.png', '/', 1, 0, 0, 0, '2023-04-16 02:21:11', '2023-04-16 02:21:11'),
(2, 'sale 2', '2023-04-16__banner.jpg', '/', 0, 1, 0, 0, '2023-04-16 03:20:13', '2023-04-16 03:20:13'),
(3, 'sale 3', '2023-04-16__screenshot-2023-04-16-172905.png', '/', 0, 0, 1, 0, '2023-04-16 03:31:05', '2023-04-16 03:31:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(255) NOT NULL,
  `k_slug` varchar(255) NOT NULL,
  `k_description` varchar(255) DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `keywords`
--

INSERT INTO `keywords` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `created_at`, `updated_at`) VALUES
(1, 'Áo thun nam', 'ao-thun-nam', NULL, 1, '2020-06-18 07:36:27', '2023-04-15 02:37:40'),
(2, 'Quần tây Nam', 'quan-tay-nam', NULL, 0, '2020-06-18 07:36:30', '2023-04-16 02:31:33'),
(3, 'Áo Polo', 'ao-polo', NULL, 0, '2020-06-18 07:36:34', '2023-04-15 02:38:12'),
(4, 'Áo Sơ Mi', 'ao-so-mi', NULL, 1, '2020-06-18 07:36:38', '2023-04-16 02:31:36'),
(5, 'Giày Tây', 'giay-tay', NULL, 0, '2020-06-18 07:36:42', '2023-04-15 02:38:35'),
(6, 'Ví Da', 'vi-da', NULL, 1, '2020-06-18 07:36:50', '2023-04-16 02:31:38'),
(7, 'Thắt Lưng', 'that-lung', NULL, 0, '2020-06-18 07:37:00', '2023-04-15 02:38:59'),
(8, 'Balo', 'balo', NULL, 0, '2023-04-15 02:39:09', NULL),
(9, 'Quần jean', 'quan-jean', NULL, 0, '2023-04-16 00:57:39', NULL),
(10, 'Quần Kaki', 'quan-kaki', NULL, 0, '2023-04-16 01:11:49', NULL),
(11, 'Nón', 'non', NULL, 1, '2023-04-16 02:31:18', '2023-04-16 02:31:42'),
(12, 'Tất', 'tat', NULL, 0, '2023-04-16 02:56:37', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(255) NOT NULL,
  `mn_slug` varchar(255) NOT NULL,
  `mn_avatar` varchar(255) DEFAULT NULL,
  `mn_banner` varchar(255) DEFAULT NULL,
  `mn_description` varchar(255) DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức mới', 'tin-tuc-moi', NULL, NULL, NULL, 0, 1, '2020-06-19 08:38:59', '2023-04-23 08:39:59'),
(2, 'Sự Kiện', 'su-kien', NULL, NULL, NULL, 0, 1, '2020-06-19 08:39:22', '2023-04-15 10:31:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_02_02_041429_create_categories_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_04_09_231820_create_producer_table', 1),
(31, '2020_04_11_010440_create_types_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `od_size` varchar(50) DEFAULT NULL,
  `od_color` varchar(100) DEFAULT NULL,
  `od_gender` tinyint(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `od_size`, `od_color`, `od_gender`, `created_at`, `updated_at`) VALUES
(14, 9, 12, 5, 2, 522, 'L', 'Be', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('duocnvoit@gmail.com', '$2y$10$pbrzwKceNbJ/t6ay5uJODOz4bweHblK6bPysnuctlVyCFO58YkoSq', '2020-05-03 15:29:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_transaction_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `p_money` double(8,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) NOT NULL,
  `p_vnp_response_code` varchar(255) DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producer`
--

CREATE TABLE `producer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdr_name` varchar(255) NOT NULL,
  `pdr_slug` varchar(255) NOT NULL,
  `pdr_email` varchar(100) NOT NULL,
  `pdr_phone` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `producer`
--

INSERT INTO `producer` (`id`, `pdr_name`, `pdr_slug`, `pdr_email`, `pdr_phone`, `created_at`, `updated_at`) VALUES
(7, 'MenStore', 'menstore', 'MenStore @gmail.ocm', '0345956412', '2023-04-15 01:26:53', '2023-04-15 01:35:06'),
(8, 'Duze', 'duze', 'Duze@gmail.com', '035987521', '2023-04-15 01:27:19', NULL),
(9, 'Zunzx', 'zunzx', 'Zunzx@gmail.com', '0335445554', '2023-04-15 01:27:42', '2023-04-15 01:35:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(255) DEFAULT NULL,
  `pro_slug` varchar(255) NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(255) DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext DEFAULT NULL,
  `pro_content` text DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_country`, `updated_at`) VALUES
(12, 'Áo Polo Nam Trơn Cổ Dệt Gân To Form Fitted - 10S23POL066', 'ao-polo-nam-tron-co-det-gan-to-form-fitted-10s23pol066', 549000, 0, 12, 0, 5, '2023-04-16__ao-polo-nam-10s23pol066-black-beauty-1-2.jpg', 6, 0, 1, 4, NULL, '<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;&Aacute;O POLO NAM TRƠN CỔ DỆT G&Acirc;N TO FORM FITTED - 10S23POL066</strong></p>\r\n\r\n<p>Ng&agrave;y nay, &aacute;o polo l&agrave; loại trang phục phổ biến trong tủ đồ của ph&aacute;i nam. N&oacute; lu&ocirc;n l&agrave; m&oacute;n trang phục l&yacute; tưởng cho những ng&agrave;y h&egrave; oi bức nhưng b&ecirc;n cạnh đ&oacute; ch&uacute;ng ta cũng c&oacute; thể sử dụng &aacute;o polo linh hoạt v&agrave;o bất cứ m&ugrave;a n&agrave;o trong năm. Ch&iacute;nh v&igrave; vậy, &aacute;o polo hội tụ đủ những yếu tố m&agrave; mọi người cần: lịch sự, chỉn chu nhưng lại kh&ocirc;ng qu&aacute; formal.</p>\r\n\r\n<p><strong>&Aacute;o Polo Nam Trơn Cổ Dệt G&acirc;n To Form Fitted - 10S23POL066</strong>&nbsp;được thiết kế với phong c&aacute;ch sang trọng v&agrave; thanh lịch. &Aacute;o được l&agrave;m từ chất liệu cotton kết hợp với chi tiết phần nh&atilde;n ở lai &aacute;o gi&uacute;p chiếc &aacute;o c&oacute; điểm nhấn hơn. Phần cổ &aacute;o được dệt g&acirc;n to, l&agrave;m đứng form cổ tr&ocirc;ng bạn nam to&aacute;t l&ecirc;n vẻ đẹp sang trọng, lịch sự. Thiết kế n&agrave;y vừa đem lại vẻ chỉn chu, tao nh&atilde; cho bạn nam vừa đem đến sự tho&aacute;ng m&aacute;t, dễ chịu cho người mặc.</p>', 1, 5, 5, '2023-04-15 03:43:19', 100, 7, '2023-04-16 00:42:31'),
(13, 'Áo Polo Nam Spandex Trơn Form Fitted - 10S21POL001CR2', 'ao-polo-nam-spandex-tron-form-fitted-10s21pol001cr2', 350000, 0, 12, 0, 10, '2023-04-16__ao-polo-nam-10s21pol001cr2-meerkat-2-1.jpg', 1, 0, 1, 0, NULL, '<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;&Aacute;O POLO NAM SPANDEX TRƠN FORM FITTED - 10S21POL001CR2</strong></p>\r\n\r\n<p>Ng&agrave;y nay, &aacute;o polo l&agrave; loại trang phục kh&ocirc;ng thể kh&ocirc;ng c&oacute; trong tủ đồ của bạn. N&oacute; lu&ocirc;n l&agrave; m&oacute;n trang phục l&yacute; tưởng cho những ng&agrave;y h&egrave; oi bức nhưng b&ecirc;n cạnh đ&oacute; ch&uacute;ng ta cũng c&oacute; thể sử dụng &aacute;o polo linh hoạt v&agrave;o bất cứ m&ugrave;a n&agrave;o trong năm. Ch&iacute;nh v&igrave; vậy, &aacute;o polo hội tụ đủ những yếu tố m&agrave; mọi người cần: lịch sự, chỉnh chu nhưng lại kh&ocirc;ng qu&aacute; formal.</p>\r\n\r\n<p><strong>&Aacute;o Polo Basic. Fitted &ndash; 10S21POL001CR2</strong>&nbsp;l&agrave; kiểu d&aacute;ng polo cổ điển m&agrave; bạn nam n&agrave;o cũng n&ecirc;n c&oacute; &iacute;t nhất một chiếc trong tủ đồ của m&igrave;nh. Với thiết kế trơn basic kết hợp với m&agrave;u sắc trắng, đen gi&uacute;p ch&agrave;ng c&oacute; thể dễ d&agrave;ng phối đồ v&agrave; phụ kiện cũng như mang lại khả năng ứng dụng cao khi c&oacute; thể ph&ugrave; hợp để mặc đi l&agrave;m, đi chơi, hẹn h&ograve;,&hellip; &Aacute;o c&oacute; form hơi &ocirc;m nhẹ v&agrave;o cơ thể sẽ khoe được đường n&eacute;t rắn chắc của người mặc v&agrave; đồng thời cũng l&agrave;m to&aacute;t l&ecirc;n sự chỉn chu, gọn g&agrave;ng cho tổng thể bộ outfit. Sự kết hợp giữa chất vải cotton v&agrave; spandex mang đến những ưu điểm vượt bậc cho t&iacute;nh năng sản phẩm như: Vải c&oacute; độ bền cao, thấm h&uacute;t mồ h&ocirc;i v&agrave; co gi&atilde;n tốt.</p>\r\n\r\n<p><img alt=\"tong-quan-10S21POL001CR2\" src=\"https://routine.vn/media/wysiwyg/Content_product_2/TQ_-_353_-_10S21POL001CR2_1.jpg\" /></p>\r\n\r\n<p><img alt=\"chat-lieu-10S21POL001CR2\" src=\"https://routine.vn/media/wysiwyg/content/Cotton.jpg\" style=\"height:603px; width:900px\" /></p>\r\n\r\n<p><img alt=\"hdbq-10S21POL001CR2\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-ao-thun.png\" style=\"height:900px; width:900px\" /></p>', 0, 0, 0, '2023-04-16 00:35:54', 100, 7, '2023-04-16 00:38:36'),
(14, 'Áo Polo Nam Tay Bo Trơn Form Fitted - 10S21POL033CR1', 'ao-polo-nam-tay-bo-tron-form-fitted-10s21pol033cr1', 350000, 0, 12, 0, 10, '2023-04-16__10s21pol033cr1-black-2-2-1.jpg', 1, 0, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>Fitted</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Kiểu tay</th>\r\n			<td>Tay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>&Aacute;o Polo</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;&Aacute;O POLO NAM TAY BO TRƠN FORM FITTED - 10S21POL033CR1</strong></p>\r\n\r\n<p>Ng&agrave;y nay, &aacute;o polo l&agrave; loại trang phục phổ biến trong tủ đồ của ph&aacute;i nam. N&oacute; lu&ocirc;n l&agrave; m&oacute;n trang phục l&yacute; tưởng cho những ng&agrave;y h&egrave; oi bức nhưng b&ecirc;n cạnh đ&oacute; ch&uacute;ng ta cũng c&oacute; thể sử dụng &aacute;o polo linh hoạt v&agrave;o bất cứ m&ugrave;a n&agrave;o trong năm. Ch&iacute;nh v&igrave; vậy, &aacute;o polo hội tụ đủ những yếu tố m&agrave; mọi người cần: lịch sự, chỉn chu nhưng lại kh&ocirc;ng qu&aacute; formal.<br />\r\n<br />\r\n<strong>&Aacute;o Polo Nam Tay Bo Trơn - 10S21POL033CR1</strong>&nbsp;được thiết kế theo phong c&aacute;ch đơn giản, thanh lịch n&ecirc;n c&oacute; thể dễ d&agrave;ng phối c&ugrave;ng nhiểu loại trang phục kh&aacute;c nhau. C&oacute; form &aacute;o hơi &ocirc;m v&agrave;o người gi&uacute;p c&aacute;c ch&agrave;ng c&oacute; thể dễ d&agrave;ng khoe được body săn chắc, khỏe khoắn. Được may từ chất liệu tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i tốt v&agrave; c&oacute; khả năng chống m&ugrave;i cho người mặc tự tin trong mọi cuộc gặp gỡ.</p>\r\n\r\n<p><img alt=\"tong-quan-10S21POL033CR1\" src=\"https://routine.vn/media/wysiwyg/Content_product_2/TQ_-_541_-_10S21POL033CR1_1.jpg\" /></p>\r\n\r\n<p><img alt=\"chat-lieu-10S21POL033CR1\" src=\"https://routine.vn/media/wysiwyg/content/Cotton.jpg\" /></p>\r\n\r\n<p><img alt=\"hdbq-10S21POL033CR1\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-ao-thun_1.png\" /></p>', 0, 0, 0, '2023-04-16 00:40:18', 100, 7, '2023-04-16 00:41:22'),
(15, 'Áo Polo Nam Tay Ngắn Cổ V Phối Màu Form Fitted - 10F22POL018', 'ao-polo-nam-tay-ngan-co-v-phoi-mau-form-fitted-10f22pol018', 450000, 0, 12, 0, 10, '2023-04-16__ecom1811-145-1-1.jpg', 1, 1, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>Fitted</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>75%C 25%SP</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Phối m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Kiểu tay</th>\r\n			<td>Tay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Kiểu t&uacute;i</th>\r\n			<td>T&uacute;i lớn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Kiểu cổ</th>\r\n			<td>Cổ v</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>&Aacute;o Polo</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;&Aacute;O POLO NAM TAY NGẮN CỔ V PHỐI M&Agrave;U FORM FITTED - 10F22POL018</strong></p>\r\n\r\n<p>Ng&agrave;y nay, &aacute;o polo l&agrave; loại trang phục phổ biến trong tủ đồ của ph&aacute;i nam. N&oacute; lu&ocirc;n l&agrave; m&oacute;n trang phục l&yacute; tưởng cho những ng&agrave;y h&egrave; oi bức nhưng b&ecirc;n cạnh đ&oacute; ch&uacute;ng ta cũng c&oacute; thể sử dụng &aacute;o polo linh hoạt v&agrave;o bất cứ m&ugrave;a n&agrave;o trong năm. Ch&iacute;nh v&igrave; vậy, &aacute;o polo hội tụ đủ những yếu tố m&agrave; mọi người cần: lịch sự, chỉn chu nhưng lại kh&ocirc;ng qu&aacute; formal.</p>\r\n\r\n<p><strong>&Aacute;o Polo Nam Tay Ngắn Cổ V Phối M&agrave;u Form Fitted- 10F22POL018</strong>&nbsp;l&agrave; item thể hiện được sự thanh lịch của c&aacute;c ch&agrave;ng trong mọi t&igrave;nh huống nhưng cũng kh&ocirc;ng k&eacute;m phần năng động. Được may từ chất liệu cotton pha hiện đại, vừa giữ được sự tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i m&agrave; c&ograve;n c&oacute; thểm khả năng co gi&atilde;n cực tốt, độ bền cao. Form &aacute;o fitted vừa vặn với cơ thể gi&uacute;p c&aacute;c ch&agrave;ng t&ocirc;n l&ecirc;n v&oacute;c d&aacute;ng khỏe khoắn. Điểm đặc biệt nhất gi&uacute;p chiếc &aacute;o trở n&ecirc;n nổi bật ch&iacute;nh l&agrave; thiết kế phối m&agrave;u ở phần cổ &aacute;o v&agrave; tay &aacute;o, mang đến cảm gi&aacute;c mới lạ, trẻ trung thể hiện phong c&aacute;ch c&aacute; t&iacute;nh, năng động.</p>\r\n\r\n<p><img alt=\"tong-quan-10F22POL018\" src=\"https://routine.vn/media/wysiwyg/content/TQ_-_573_-_10F22POL018.jpg\" /></p>\r\n\r\n<p><img alt=\"diem-dac-biet-10F22POL018\" src=\"https://routine.vn/media/wysiwyg/Content_product_2/DDB_-_573_-_10F22POL018.jpg\" /></p>\r\n\r\n<p><img alt=\"chat-lieu-10F22POL018\" src=\"https://routine.vn/media/wysiwyg/content/CL-36-CottonPha-min.png\" /></p>\r\n\r\n<p><img alt=\"hdbq-10F22POL018\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-ao-thun_1.png\" /></p>', 0, 0, 0, '2023-04-16 00:45:40', 100, 7, '2023-04-16 03:31:38'),
(16, 'Áo Polo Nam Tay Ngắn Phối Chỉ Màu Form Fitted - 10F22POL005', 'ao-polo-nam-tay-ngan-phoi-chi-mau-form-fitted-10f22pol005', 44900, 0, 12, 0, 5, '2023-04-16__10f22pol005-curry-1-1.jpg', 0, 1, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>Fitted</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Kiểu tay</th>\r\n			<td>Tay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Kiểu cổ</th>\r\n			<td>Cổ g&agrave;i n&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>&Aacute;o Polo</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;&Aacute;O POLO NAM TAY NGẮN PHỐI CHỈ M&Agrave;U FORM FITTED - 10F22POL005</strong></p>\r\n\r\n<p>Ng&agrave;y nay, &aacute;o polo nam l&agrave; loại trang phục kh&ocirc;ng thể kh&ocirc;ng c&oacute; trong tủ đồ của c&aacute;c ch&agrave;ng trai. N&oacute; lu&ocirc;n l&agrave; m&oacute;n trang phục l&yacute; tưởng cho những ng&agrave;y h&egrave; oi bức nhưng b&ecirc;n cạnh đ&oacute; ch&uacute;ng ta cũng c&oacute; thể sử dụng &aacute;o polo linh hoạt v&agrave;o bất cứ m&ugrave;a n&agrave;o trong năm. Ch&iacute;nh v&igrave; vậy, &aacute;o polo nam hội tụ đủ những yếu tố m&agrave; c&aacute;c ch&agrave;ng trai cần: lịch sự, chỉn chu nhưng lại kh&ocirc;ng qu&aacute; formal.</p>\r\n\r\n<p><strong>&Aacute;o Polo Nam Phối Chỉ M&agrave;u Fitted - 10F22POL005</strong>&nbsp;được thiết kế trẻ trung, năng động, ph&ugrave; hợp với nhiều đối tượng ở nhiều lứa tuổi kh&aacute;c nhau. Với chất liệu từ cotton gi&uacute;p vải &aacute;o được mềm, mịn gi&uacute;p người mặc lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu khi diện ch&uacute;ng. Form fitted với form d&aacute;ng hơi &ocirc;m v&agrave;o người nhưng kh&ocirc;ng qu&aacute; s&aacute;t để tạo sự tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i khi vận động.</p>\r\n\r\n<p><img alt=\"tong-quan-10F22POL005\" src=\"https://routine.vn/media/wysiwyg/content/TQ_-_516_-_10F22POL005.jpg\" /></p>\r\n\r\n<p><img alt=\"diem-dac-biet-10F22POL005\" src=\"https://routine.vn/media/wysiwyg/content_2/DDB_-_516_-_10F22POL005.jpg\" /></p>\r\n\r\n<p><img alt=\"chat-lieu-10F22POL005\" src=\"https://routine.vn/media/wysiwyg/content/Cotton.jpg\" /></p>\r\n\r\n<p><img alt=\"hdbq-10F22POL005\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-ao-thun_1.png\" /></p>', 0, 0, 0, '2023-04-16 00:49:07', 100, 7, '2023-04-16 03:31:42'),
(17, 'Coupon giảm giá 30k - 50k - 120k Chuyển đến phần đầu của thư viện hình ảnh Áo Polo Nam Tay Ngắn Phối Chỉ Màu Form Fitted - 10F22POL004', 'coupon-giam-gia-30k-50k-120k-chuyen-den-phan-dau-cua-thu-vien-hinh-anh-ao-polo-nam-tay-ngan-phoi-chi-mau-form-fitted-10f22pol004', 449000, 0, 12, 0, 5, '2023-04-16__10f22pol005-deep-depths-3-1.jpg', 1, 1, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>Fitted</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Kiểu tay</th>\r\n			<td>Tay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Kiểu cổ</th>\r\n			<td>Cổ g&agrave;i n&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>&Aacute;o Polo</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;&Aacute;O POLO NAM TAY NGẮN PHỐI CHỈ M&Agrave;U FORM FITTED - 10F22POL005</strong></p>\r\n\r\n<p>Ng&agrave;y nay, &aacute;o polo nam l&agrave; loại trang phục kh&ocirc;ng thể kh&ocirc;ng c&oacute; trong tủ đồ của c&aacute;c ch&agrave;ng trai. N&oacute; lu&ocirc;n l&agrave; m&oacute;n trang phục l&yacute; tưởng cho những ng&agrave;y h&egrave; oi bức nhưng b&ecirc;n cạnh đ&oacute; ch&uacute;ng ta cũng c&oacute; thể sử dụng &aacute;o polo linh hoạt v&agrave;o bất cứ m&ugrave;a n&agrave;o trong năm. Ch&iacute;nh v&igrave; vậy, &aacute;o polo nam hội tụ đủ những yếu tố m&agrave; c&aacute;c ch&agrave;ng trai cần: lịch sự, chỉn chu nhưng lại kh&ocirc;ng qu&aacute; formal.</p>\r\n\r\n<p><strong>&Aacute;o Polo Nam Phối Chỉ M&agrave;u Fitted - 10F22POL005</strong>&nbsp;được thiết kế trẻ trung, năng động, ph&ugrave; hợp với nhiều đối tượng ở nhiều lứa tuổi kh&aacute;c nhau. Với chất liệu từ cotton gi&uacute;p vải &aacute;o được mềm, mịn gi&uacute;p người mặc lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu khi diện ch&uacute;ng. Form fitted với form d&aacute;ng hơi &ocirc;m v&agrave;o người nhưng kh&ocirc;ng qu&aacute; s&aacute;t để tạo sự tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i khi vận động.</p>\r\n\r\n<p><img alt=\"tong-quan-10F22POL005\" src=\"https://routine.vn/media/wysiwyg/content/TQ_-_516_-_10F22POL005.jpg\" /></p>\r\n\r\n<p><img alt=\"diem-dac-biet-10F22POL005\" src=\"https://routine.vn/media/wysiwyg/content_2/DDB_-_516_-_10F22POL005.jpg\" /></p>\r\n\r\n<p><img alt=\"chat-lieu-10F22POL005\" src=\"https://routine.vn/media/wysiwyg/content/Cotton.jpg\" /></p>\r\n\r\n<p><img alt=\"hdbq-10F22POL005\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-ao-thun_1.png\" /></p>', 0, 0, 0, '2023-04-16 00:54:40', 100, 7, '2023-04-16 03:31:35'),
(18, 'Quần Jean Nam Trơn Form Slim Crop - 10F22DPA107C', 'quan-jean-nam-tron-form-slim-crop-10f22dpa107c', 499000, 0, 13, 0, 5, '2023-04-16__10f22dpa107c-mindigo-7-1.jpg', 0, 0, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>Slim Crop</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Jeans</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Quần Jean</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;QUẦN JEAN NAM TRƠN FORM SLIM CROP - 10F22DPA107C</strong></p>\r\n\r\n<p>Qua nhiều năm ph&aacute;t triển, quần jean hay c&ograve;n gọi l&agrave; quần b&ograve; đ&atilde; trở th&agrave;nh một m&oacute;n đồ rất th&ocirc;ng dụng trong tủ quần &aacute;o của mỗi người. Bất kể ở đ&acirc;u, bất kể tầng lớp hay nền văn h&oacute;a n&agrave;o ch&uacute;ng ta đều c&oacute; thể bắt gặp những chiếc quần n&agrave;y. Bởi quần jean lu&ocirc;n mang lại sự trẻ trung, năng động v&agrave; tiện dụng cho người mặc.</p>\r\n\r\n<p><strong>Quần Jean Trơn. Slim Crop &ndash; 10F22DPA107C</strong>&nbsp;đ&acirc;y l&agrave; form quần n&ecirc;n c&oacute; đối với c&aacute;c bạn nam ưa chuộng phong c&aacute;ch trẻ trung, năng động v&agrave; thoải m&aacute;i nhưng vẫn cần đủ lịch sự để ph&ugrave; hợp với m&ocirc;i trường nghi&ecirc;m t&uacute;c. Sản phẩm c&oacute; thiết kế trơn v&agrave; m&agrave;u xanh nhạt đơn giản ph&ugrave; hợp với mọi phong c&aacute;ch v&agrave; &iacute;t lỗi mốt. Kh&aacute;ch h&agrave;ng c&oacute; thể y&ecirc;n t&acirc;m về chất lượng của thiết kế v&igrave; đ&acirc;y l&agrave; sản phẩm được dệt từ chất liệu cotton pha spandex c&oacute; độ bền rất cao.</p>\r\n\r\n<p><img alt=\"tong-quan-10F22DPA107C\" src=\"https://routine.vn/media/wysiwyg/content/TQ_-_426_-_10F22DPA107C.jpg\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p><img alt=\"chat-lieu-10F22DPA107C\" src=\"https://routine.vn/media/wysiwyg/content/CL_13_Cot-SPD-min.png\" style=\"height:603px; width:900px\" /></p>\r\n\r\n<p><img alt=\"hdbq-10F22DPA107C\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-quan-jean.png\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>Slim Crop</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Jeans</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Quần Jean</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;QUẦN JEAN NAM TRƠN FORM SLIM CROP - 10F22DPA107C</strong></p>\r\n\r\n<p>Qua nhiều năm ph&aacute;t triển, quần jean hay c&ograve;n gọi l&agrave; quần b&ograve; đ&atilde; trở th&agrave;nh một m&oacute;n đồ rất th&ocirc;ng dụng trong tủ quần &aacute;o của mỗi người. Bất kể ở đ&acirc;u, bất kể tầng lớp hay nền văn h&oacute;a n&agrave;o ch&uacute;ng ta đều c&oacute; thể bắt gặp những chiếc quần n&agrave;y. Bởi quần jean lu&ocirc;n mang lại sự trẻ trung, năng động v&agrave; tiện dụng cho người mặc.</p>\r\n\r\n<p><strong>Quần Jean Trơn. Slim Crop &ndash; 10F22DPA107C</strong>&nbsp;đ&acirc;y l&agrave; form quần n&ecirc;n c&oacute; đối với c&aacute;c bạn nam ưa chuộng phong c&aacute;ch trẻ trung, năng động v&agrave; thoải m&aacute;i nhưng vẫn cần đủ lịch sự để ph&ugrave; hợp với m&ocirc;i trường nghi&ecirc;m t&uacute;c. Sản phẩm c&oacute; thiết kế trơn v&agrave; m&agrave;u xanh nhạt đơn giản ph&ugrave; hợp với mọi phong c&aacute;ch v&agrave; &iacute;t lỗi mốt. Kh&aacute;ch h&agrave;ng c&oacute; thể y&ecirc;n t&acirc;m về chất lượng của thiết kế v&igrave; đ&acirc;y l&agrave; sản phẩm được dệt từ chất liệu cotton pha spandex c&oacute; độ bền rất cao.</p>\r\n\r\n<p><img alt=\"tong-quan-10F22DPA107C\" src=\"https://routine.vn/media/wysiwyg/content/TQ_-_426_-_10F22DPA107C.jpg\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p><img alt=\"chat-lieu-10F22DPA107C\" src=\"https://routine.vn/media/wysiwyg/content/CL_13_Cot-SPD-min.png\" style=\"height:603px; width:900px\" /></p>\r\n\r\n<p><img alt=\"hdbq-10F22DPA107C\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-quan-jean.png\" style=\"height:900px; width:900px\" /></p>', 0, 0, 0, '2023-04-16 00:57:13', 100, 7, '2023-04-16 00:58:10'),
(19, 'Quần Jean Nam Trơn Form Skinny - 10F20DPA100CR1', 'quan-jean-nam-tron-form-skinny-10f20dpa100cr1', 459000, 0, 13, 0, 5, '2023-04-16__10f20dpa100cr1-new-4.jpg', 1, 0, 1, 0, '<p>C&aacute;c sản phẩm được tặng k&egrave;m khi mua&nbsp;<strong>Quần Jean Nam Trơn Form Skinny - 10F20DPA100CR1</strong></p>\r\n\r\n<form action=\"https://routine.vn/amasty_promo/cart/add/\" id=\"ampromo_items_form-40209\" method=\"POST\">\r\n<p><img alt=\"[Quà tặng] Bình Giữ Nhiệt Good Mood, Good Day - 10S23MWB001\" src=\"https://routine.vn/media/catalog/product/cache/dd34a7c2fc663fcb73ab0f7c4548209e/_/8/_80716_1.jpg\" style=\"height:160px; width:160px\" /></p>\r\n\r\n<p>Tặng 1</p>\r\n\r\n<h4><a href=\"https://routine.vn/binh-dung-nuoc-kim-loai-10s23mwb001.html\" title=\"[Quà tặng] Bình Giữ Nhiệt Good Mood, Good Day - 10S23MWB001\">[Qu&agrave; tặng] B&igrave;nh Giữ Nhiệt Good Mood, Good Day - 10S23MWB001</a></h4>\r\n\r\n<p>349.000&nbsp;₫</p>\r\n</form>', '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>Skinny</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Jeans</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Quần Jean</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;QUẦN JEAN NAM TRƠN FORM SKINNY - 10F20DPA100CR1</strong></p>\r\n\r\n<p>Quần skinny jeans trở n&ecirc;n phổ biến v&agrave; l&agrave; item phong c&aacute;ch trong tủ đồ của bất cứ ch&agrave;ng trai n&agrave;o suốt một thập kỉ qua nhờ khả năng t&ocirc;n d&aacute;ng cũng như mạng vẻ ngo&agrave;i trẻ trung, c&aacute; t&iacute;nh.</p>\r\n\r\n<p><strong>Quần Jeans Đen Trơn Form Skinny - 10F20DPA100CR1</strong>&nbsp;được thiết kế &ocirc;m s&aacute;t kh&eacute;o l&eacute;o t&ocirc;n l&ecirc;n phần h&ocirc;ng v&agrave; chiều d&agrave;i ch&acirc;n, mang đến vẻ ngo&agrave;i tinh tế, cuốn h&uacute;t. Với chất liệu cotton USA pha polyester c&oacute; nhiều ưu điểm nổi bật như h&uacute;t ẩm tốt, mỏng nhẹ gi&uacute;p chiếc quần lu&ocirc;n l&agrave; lựa chọn ưu ti&ecirc;n của c&aacute;c ch&agrave;ng trai hiện đại.</p>\r\n\r\n<p><img alt=\"thong-tin-10F20DPA100CR1\" src=\"https://routine.vn/media/wysiwyg/content/jeans-den-10F20DPA100CR1.jpg\" /></p>\r\n\r\n<p><img alt=\"2\" src=\"https://routine.vn/media/wysiwyg/content/2_1_.jpg\" /></p>\r\n\r\n<p><img alt=\"3\" src=\"https://routine.vn/media/wysiwyg/content/3.jpg\" /></p>\r\n\r\n<p><img alt=\"4\" src=\"https://routine.vn/media/wysiwyg/content/4.jpg\" /></p>', 0, 0, 0, '2023-04-16 01:00:30', 100, 8, '2023-04-16 01:01:41'),
(20, 'Quần Jean Nam Premium Trơn Co Giãn Form Slim - 10F22DPA026', 'quan-jean-nam-premium-tron-co-gian-form-slim-10f22dpa026', 680000, 0, 13, 0, 5, '2023-04-16__10f22dpa026-2-1.jpg', 0, 0, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>Slim</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Jeans</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Quần Jean</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;QUẦN JEAN NAM PREMIUM TRƠN CO GI&Atilde;N FORM SLIM - 10F22DPA026</strong></p>\r\n\r\n<p>Qua nhiều năm ph&aacute;t triển, quần jeans hay c&ograve;n gọi l&agrave; quần b&ograve; đ&atilde; trở th&agrave;nh một m&oacute;n đồ rất th&ocirc;ng dụng trong tủ quần &aacute;o của mỗi người. Bất kể ở đ&acirc;u, bất kể tầng lớp hay nền văn h&oacute;a n&agrave;o ch&uacute;ng ta đều c&oacute; thể bắt gặp những chiếc quần n&agrave;y. Bởi quần jeans lu&ocirc;n mang lại sự trẻ trung, năng động v&agrave; tiện dụng cho ph&aacute;i nam.</p>\r\n\r\n<p><strong>Quần Jean Trơn. Slim - 10F22DPA026</strong>&nbsp;thuộc d&ograve;ng Premium vừa ra mắt l&agrave; sự pha trộn đặc biệt của những chất liệu vải mang đặc t&iacute;nh ưu việt. Sản phẩm được sử dụng C&ocirc;ng nghệ Hakuu-Poly: hạn chế tia UV, cực t&iacute;m, hồng ngoại, c&aacute;ch nhiệt tốt. Kh&ocirc;ng l&agrave;m cho cơ thể tăng hay hạ nhiệt khi gặp thời tiết thất thường. Kết hợp với form d&aacute;ng phổ biến, tone m&agrave;u basic dễ mặc dễ phối đồ n&ecirc;n được sử dụng cho mọi ho&agrave;n cảnh từ đi l&agrave;m đến đi chơi.<br />\r\n<br />\r\n<img alt=\"tong-quan-10F22DPA026\" src=\"https://routine.vn/media/wysiwyg/content/TQ_182_10F22DPA026-min.png\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p><img alt=\"diem-dac-biet-10F22DPA026\" src=\"https://routine.vn/media/wysiwyg/content/_B_182_10F22DPA026.png\" style=\"height:603px; width:900px\" /></p>\r\n\r\n<p><img alt=\"chat-lieu-10F22DPA026\" src=\"https://routine.vn/media/wysiwyg/content/CL_21_70_Cotton-20_Coolmax-8_Rayon-2_Spandex-min.png\" style=\"height:603px; width:900px\" /></p>\r\n\r\n<p><img alt=\"hdbq-10F22DPA026\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-quan-jean_1.png\" style=\"height:900px; width:900px\" /></p>', 0, 0, 0, '2023-04-16 01:06:23', 100, 8, NULL),
(21, 'Quần Jean Nam Trơn Form Slim - 10S21DPA006CR', 'quan-jean-nam-tron-form-slim-10s21dpa006cr', 680000, 0, 13, 0, 5, '2023-04-16__10s21dpa006cr1-d-3-1.jpg', 0, 0, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>Slim</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Jeans</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Quần Jean</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;QUẦN JEAN NAM TRƠN FORM SLIM - 10S21DPA006CR1</strong></p>\r\n\r\n<p>Quần jean từ l&acirc;u đ&atilde; trở th&agrave;nh item kh&ocirc;ng thể thiếu trong cuộc sống hiện đại. Năm 1853, chiếc quần jean đầu ti&ecirc;n ra đời với chất vải denim cực kỳ bền phục vụ cho những c&ocirc;ng nh&acirc;n đ&agrave;o mỏ. Thập ni&ecirc;n 80 l&agrave; thời kỳ ho&agrave;ng kim của quần jean, khi c&aacute;c t&ecirc;n tuổi nh&agrave; thiết kế lớn đồng loạt cho ra mắt c&aacute;c bộ sưu tập quần jean cho nam v&agrave; nữ. Kể từ đ&oacute; đến nay, quần jean kh&ocirc;ng ngừng thay đổi v&agrave; cải biến ph&ugrave; hợp, trở th&agrave;nh m&oacute;n đồ thời trang phổ biến to&agrave;n thế giới.</p>\r\n\r\n<p><strong>Quần jean trơn. Slim - 10S21DPA006CR1</strong>&nbsp;l&agrave; item basic với sự bền đẹp của chất vải c&ugrave;ng form d&aacute;ng vừa vặn &ocirc;m dọc theo chiều d&agrave;i của ch&acirc;n, gi&uacute;p che đi khuyết điểm cơ thể v&agrave; thoải m&aacute;i trong mọi cử động.</p>\r\n\r\n<p><img alt=\"tong-quan-10S21DPA006CR1\" src=\"https://routine.vn/media/wysiwyg/content/Banner_function_cho_E-com-03.png\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p><img alt=\"chat-lieu-10S21DPA006CR1\" src=\"https://routine.vn/media/wysiwyg/content/Cotton.jpg\" style=\"height:603px; width:900px\" /></p>\r\n\r\n<p><img alt=\"hdbq-10S21DPA006CR1\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-quan-jean_2.png\" /></p>', 0, 0, 0, '2023-04-16 01:08:22', 100, 8, NULL),
(22, 'Quần Kaki Nam Trơn Form Slim Crop - 10F21PCA002C', 'quan-kaki-nam-tron-form-slim-crop-10f21pca002c', 499000, 0, 13, 0, 5, '2023-04-16__10f21pca002c-white2-6-1.jpg', 0, 1, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>Slim Crop</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Quần Kaki</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;QUẦN KAKI NAM TRƠN FORM SLIM CROP - 10F21PCA002C</strong></p>\r\n\r\n<p>Quần kaki nam bằng những thiết kế năng động, thoải m&aacute;i đ&atilde; len lỏi v&agrave;o th&oacute;i quen ăn mặc thường ng&agrave;y của c&aacute;c ch&agrave;ng trai. Đến ng&agrave;y h&ocirc;m nay, d&ugrave; ở bất kỳ thời điểm n&agrave;o trong năm th&igrave; cũng kh&ocirc;ng kh&oacute; để bắt gặp ai đ&oacute; điện quần kaki đi tr&ecirc;n đường. Điều n&agrave;y chứng minh quần kaki đ&atilde; thật sự trở th&agrave;nh một m&oacute;n đồ m&agrave; bất cứ ch&agrave;ng trai n&agrave;o cũng phải sở hữu.</p>\r\n\r\n<p><strong>Quần Kaki Nam Trơn Cotton Form Fitted - 10F21PCA002C</strong>&nbsp;l&agrave; form quần ống su&ocirc;ng, lửng kh&ocirc;ng qu&aacute; rộng cũng kh&ocirc;ng b&oacute; s&aacute;t cơ thể tạo sự thoải m&aacute;i khi mặc kết hợp lai quần được thiết kế bản to tạo sự trẻ trung, c&aacute; t&iacute;nh. Đ&acirc;y l&agrave; d&aacute;ng quần dễ phối, bạn c&oacute; thể dễ d&agrave;ng phối n&oacute; với bất cứ item n&agrave;o kh&aacute;c để tạo cho m&igrave;nh một phong c&aacute;ch ri&ecirc;ng. C&ugrave;ng chất vải Cotton tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i tốt cho c&aacute;c ch&agrave;ng thoải m&aacute;i diện đến bất cứ nơi đ&acirc;u.</p>\r\n\r\n<p><img alt=\"tong-quan-10F21PCA002C\" src=\"https://routine.vn/media/wysiwyg/content/TQ_-_201_-_10F21PCA002C.jpg\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p><img alt=\"chat-lieu-10F21PCA002C\" src=\"https://routine.vn/media/wysiwyg/content/Cotton.jpg\" style=\"height:603px; width:900px\" /></p>\r\n\r\n<p><img alt=\"hdbq-10F21PCA002C\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-quan-vai-kaki.png\" style=\"height:900px; width:900px\" /></p>', 0, 0, 0, '2023-04-16 01:13:25', 100, 8, '2023-04-16 03:31:28'),
(23, 'Quần Dài Kaki Nam Twill Form Straight - 10F22PCA012', 'quan-dai-kaki-nam-twill-form-straight-10f22pca012', 550000, 0, 13, 0, 10, '2023-04-16__10f22pca012-overcast-1.jpg', 0, 1, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>Straight</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Kaki</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Quần Kaki</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;QUẦN D&Agrave;I KAKI NAM TWILL FORM STRAIGHT - 10F22PCA012</strong></p>\r\n\r\n<p>Quần kaki nam bằng những thiết kế năng động, thoải m&aacute;i đ&atilde; len lỏi v&agrave;o th&oacute;i quen ăn mặc thường ng&agrave;y của c&aacute;c ch&agrave;ng trai. Đến ng&agrave;y h&ocirc;m nay, d&ugrave; ở bất kỳ thời điểm n&agrave;o trong năm th&igrave; cũng kh&ocirc;ng kh&oacute; để bắt gặp ai đ&oacute; điện quần kaki đi tr&ecirc;n đường. Điều n&agrave;y chứng minh quần kaki đ&atilde; thật sự trở th&agrave;nh một m&oacute;n đồ m&agrave; bất cứ ch&agrave;ng trai n&agrave;o cũng phải sở hữu.</p>\r\n\r\n<p><strong>Quần D&agrave;i Khaki Twill. Straight &ndash; 10F22PCA012</strong>&nbsp;với d&aacute;ng quần c&oacute; đặc trưng su&ocirc;ng thẳng thuận lợi gi&uacute;p nam giới c&oacute; thể che được một số khuyết điểm ở phần h&ocirc;ng v&agrave; đ&ugrave;i, đồng thời cũng l&agrave;m nổi bật được n&eacute;t thoải m&aacute;i, năng động v&agrave; ph&oacute;ng kho&aacute;ng cho c&aacute;c bạn nam. Hơn nữa, chất vải kaki với t&iacute;nh năng bền d&agrave;y, giữ form tốt sẽ hỗ trợ tổng thể outfit của ph&aacute;i nam vẫn gọn g&agrave;ng, chỉn chu cho d&ugrave; hoạt động cả một ng&agrave;y d&agrave;i.</p>\r\n\r\n<p><img alt=\"tong-quan-10F22PCA012\" src=\"https://routine.vn/media/wysiwyg/content/TQ_-_447_-_10F22PCA012.jpg\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p><img alt=\"chat-lieu-10F22PCA012\" src=\"https://routine.vn/media/wysiwyg/content/CL-23-Kaki-min.png\" style=\"height:600px; width:900px\" /></p>\r\n\r\n<p><img alt=\"hdbq-10F22PCA012\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-quan-vai-kaki.png\" style=\"height:900px; width:900px\" /></p>', 0, 0, 0, '2023-04-16 01:16:07', 100, 8, '2023-04-16 02:46:25'),
(24, 'Nón Lưỡi Trai Unisex Kaki Thêu Xù Freesize - 10F22CAPU005', 'non-luoi-trai-unisex-kaki-theu-xu-freesize-10f22capu005', 199000, 0, 14, 0, 0, '2023-04-16__non-10f22capu005-blue-2-1.jpg', 0, 1, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>FREESIZE</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Kaki</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Họa tiết th&ecirc;u</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Unisex</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Điểm đặc biệt</th>\r\n			<td>Lưỡi trai</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Phụ Kiện</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;N&Oacute;N LƯỠI TRAI UNISEX KAKI TH&Ecirc;U X&Ugrave; FREESIZE - 10F22CAPU005</strong></p>\r\n\r\n<p><strong>N&oacute;n Lưỡi Trai Unisex Kaki Th&ecirc;u X&ugrave; Freesize - 10F22CAPU005</strong>&nbsp;lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu của thời trang của mọi người. Do đ&oacute;, mũ lưỡi trai từ chất vải kaki cũng được ưa chuộng hơn cả bởi ch&uacute;ng với t&iacute;nh năng gi&uacute;p thấm h&uacute;t mồ h&ocirc;i cực kỳ tốt v&agrave; bạn chẳng cần phải lo t&oacute;c bết sau khi đội. Ngo&agrave;i ra, n&oacute;n cũng được thiết kế với họa tiết th&ecirc;u x&ugrave; tr&ecirc;n phần trước n&oacute;n vừa tạo được điểm đặc biệt biệt cho n&oacute;n vừa đem lại phong c&aacute;ch trẻ trung, năng động cho người đội khi đi ra ngo&agrave;i.</p>\r\n\r\n<p><img alt=\"chat-lieu-10F22CAPU005\" src=\"https://routine.vn/media/wysiwyg/content/CL-23-Kaki-min.png\" /></p>\r\n\r\n<p><img alt=\"hdbq-10F22CAPU005\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-quan-vai-kaki_1_.png\" /></p>', 0, 0, 0, '2023-04-16 02:35:51', 100, 9, '2023-04-16 02:46:23'),
(25, 'Nón Lưỡi Trai Nhãn Trang Trí Freesize - 10F22CAP001', 'non-luoi-trai-nhan-trang-tri-freesize-10f22cap001', 199000, 0, 14, 0, 0, '2023-04-16__non-luoi-trai-10f22cap001-kombu-green-2-1.jpg', 0, 0, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>FREESIZE</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Họa tiết th&ecirc;u</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Điểm đặc biệt</th>\r\n			<td>Lưỡi trai</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Phụ Kiện</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;N&Oacute;N LƯỠI TRAI NH&Atilde;N TRANG TR&Iacute; FREESIZE - 10F22CAP001</strong></p>\r\n\r\n<p><strong>N&oacute;n Lưỡi Trai Nh&atilde;n Trang Tr&iacute; Freesize - 10F22CAP001</strong>&nbsp;lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu của thời trang của mọi người. Do đ&oacute;, mũ lưỡi trai từ chất vải cotton cũng được ưa chuộng hơn cả bởi ch&uacute;ng với t&iacute;nh năng gi&uacute;p thấm h&uacute;t mồ h&ocirc;i cực kỳ tốt v&agrave; bạn chẳng cần phải lo t&oacute;c bết sau khi đội. Ngo&agrave;i ra, n&oacute;n cũng được thiết kế với nh&atilde;n tr&ecirc;n phần th&acirc;n n&oacute;n vừa tạo được điểm đặc biệt biệt cho n&oacute;n vừa đem lại phong c&aacute;ch trẻ trung, năng động cho người đội khi đi ra ngo&agrave;i.</p>\r\n\r\n<p><img alt=\"chat-lieu-10F22CAP001\" src=\"https://routine.vn/media/wysiwyg/content/Cotton.jpg\" /></p>\r\n\r\n<p><img alt=\"hdbq-10F22CAP001\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-ao-thun_1.png\" /></p>', 0, 0, 0, '2023-04-16 02:45:33', 100, 9, NULL),
(26, 'Nón Thời Trang In Họa Tiết Freesize - 10F22CAP002', 'non-thoi-trang-in-hoa-tiet-freesize-10f22cap002', 229000, 0, 14, 0, 0, '2023-04-16__rou09564-1.jpg', 0, 0, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>FREESIZE</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Họa tiết th&ecirc;u</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Điểm đặc biệt</th>\r\n			<td>Lưỡi trai</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Phụ Kiện</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;N&Oacute;N LƯỠI TRAI NH&Atilde;N TRANG TR&Iacute; FREESIZE - 10F22CAP001</strong></p>\r\n\r\n<p><strong>N&oacute;n Lưỡi Trai Nh&atilde;n Trang Tr&iacute; Freesize - 10F22CAP001</strong>&nbsp;lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu của thời trang của mọi người. Do đ&oacute;, mũ lưỡi trai từ chất vải cotton cũng được ưa chuộng hơn cả bởi ch&uacute;ng với t&iacute;nh năng gi&uacute;p thấm h&uacute;t mồ h&ocirc;i cực kỳ tốt v&agrave; bạn chẳng cần phải lo t&oacute;c bết sau khi đội. Ngo&agrave;i ra, n&oacute;n cũng được thiết kế với nh&atilde;n tr&ecirc;n phần th&acirc;n n&oacute;n vừa tạo được điểm đặc biệt biệt cho n&oacute;n vừa đem lại phong c&aacute;ch trẻ trung, năng động cho người đội khi đi ra ngo&agrave;i.</p>\r\n\r\n<p><img alt=\"chat-lieu-10F22CAP001\" src=\"https://routine.vn/media/wysiwyg/content/Cotton.jpg\" /></p>\r\n\r\n<p><img alt=\"hdbq-10F22CAP001\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-ao-thun_1.png\" /></p>', 0, 0, 0, '2023-04-16 02:47:37', 99, 9, NULL),
(27, 'Nón Lưỡi Trai Denim Thêu Freesize - 10F22CAP003', 'non-luoi-trai-denim-theu-freesize-10f22cap003', 199000, 0, 14, 0, 0, '2023-04-16__non-10f22cap003-grey-2-1.jpg', 0, 0, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>FREESIZE</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Denim</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Họa tiết th&ecirc;u</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Điểm đặc biệt</th>\r\n			<td>Lưỡi trai</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Phụ Kiện</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;N&Oacute;N LƯỠI TRAI DENIM TH&Ecirc;U FREESIZE - 10F22CAP003</strong></p>\r\n\r\n<p><strong>N&oacute;n Lưỡi Trai Denim Th&ecirc;u Freesize - 10F22CAP003</strong>&nbsp;lu&ocirc;n l&agrave; lựa chọn h&agrave;ng đầu của thời trang của mọi người. Do đ&oacute;, mũ lưỡi trai từ denim cũng được ưa chuộng hơn cả bởi ch&uacute;ng với t&iacute;nh năng gi&uacute;p thấm h&uacute;t mồ h&ocirc;i cực kỳ tốt v&agrave; bạn chẳng cần phải lo t&oacute;c bết sau khi đội. Ngo&agrave;i ra, n&oacute;n cũng được thiết kế với họa tiết th&ecirc;u chữ tr&ecirc;n phần th&acirc;n n&oacute;n vừa tạo được điểm đặc biệt biệt cho n&oacute;n vừa đem lại phong c&aacute;ch trẻ trung, năng động cho người đội khi đi ra ngo&agrave;i.</p>\r\n\r\n<p><img alt=\"tong-quan-10F22CAP003\" src=\"https://routine.vn/media/wysiwyg/Content_product_2/TQ_-_695_-_10F22CAP003.jpg\" /></p>\r\n\r\n<p><img alt=\"chat-lieu-10F22CAP003\" src=\"https://routine.vn/media/wysiwyg/content/CL-32-Denim-min.png\" /></p>\r\n\r\n<p><img alt=\"hdbq-10F22CAP003\" src=\"https://routine.vn/media/wysiwyg/content/hdbq-quan-jean_2.png\" /></p>', 0, 0, 0, '2023-04-16 02:49:39', 100, 9, NULL),
(28, 'Dây Nịt Nam Lưng Trơn Freesize - 10S22BEL003', 'day-nit-nam-lung-tron-freesize-10s22bel003', 399000, 0, 14, 0, 0, '2023-04-16__10s22bel003-brown-6.jpg', 0, 0, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>FREESIZE</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>100% leather</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Trơn</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Phụ Kiện</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;D&Acirc;Y NỊT NAM LƯNG TRƠN FREESIZE - 10S22BEL003</strong></p>\r\n\r\n<p><strong>D&acirc;y Nịt Nam - 10S22BEL003</strong>&nbsp;l&agrave; item kh&ocirc;ng thể thiếu trong tủ quần &aacute;o m&agrave; c&ograve;n l&agrave; một bảo bối gi&uacute;p ho&agrave;n thiện outfit thời trang của c&aacute;nh m&agrave;y r&acirc;u. Được thiết kế đơn giản theo kiểu d&aacute;ng kh&oacute;a kim thanh lịch, nhẹ nh&agrave;ng. Kết hợp với chất liệu da thuộc mềm v&agrave; dẻo tạo cảm gi&aacute;c dễ chịu khi sử dụng. Với thiết kế n&agrave;y bạn c&oacute; thể tự tin phối c&ugrave;ng nhiều loại trang phục kh&aacute;c nhau từ quần &acirc;u thanh lịch, đến quần jean năng động.</p>\r\n\r\n<p><img alt=\"tong-quan-10S22BEL003\" src=\"https://routine.vn/media/wysiwyg/content/TQ_-_342_-_10S22BEL003.jpg\" style=\"height:900px; width:900px\" /></p>', 0, 0, 0, '2023-04-16 02:53:16', 98, 9, NULL),
(29, 'Vớ Dài Nhãn Dệt Trang Trí Freesize - 10F22SOC001', 'vo-dai-nhan-det-trang-tri-freesize-10f22soc001', 25000, 0, 14, 0, 0, '2023-04-16__10f22soc001-red-1-2-1.jpg', 0, 0, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>FREESIZE</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Họa tiết in</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Unisex</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Điểm đặc biệt</th>\r\n			<td>Vớ d&agrave;i</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Phụ Kiện</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-04-16 02:56:04', 100, 9, NULL),
(30, 'Vớ Hài Trơn Logo Freesize - 10S22SOC003', 'vo-hai-tron-logo-freesize-10s22soc003', 25000, 0, 14, 0, 0, '2023-04-16__10s22soc003-flame-orange-16-1.jpg', 0, 0, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>FREESIZE</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>98% Polyester 2% polyurethane</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Họa tiết th&ecirc;u</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Điểm đặc biệt</th>\r\n			<td>Vớ lười</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Phụ Kiện</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT<strong>&nbsp;VỚ H&Agrave;I TRƠN LOGO FREESIZE - 10S22SOC003</strong></p>\r\n\r\n<p><strong>Vớ H&agrave;i Trơn Logo.Freesize - 10S22SOC003</strong>&nbsp;l&agrave; một m&oacute;n phụ kiện kh&ocirc;ng thể thiếu trong tủ đồ của mọi người, bởi t&iacute;nh ứng dụng cao, n&oacute; c&oacute; thể dễ d&agrave;ng kết hợp cũng bất kỳ loại gi&agrave;y d&eacute;p n&agrave;o. Với thiết kế trơn cực kỳ đơn giản, c&oacute; điểm nhấn nổi bật duy nhất ch&iacute;nh l&agrave; chi tiết th&ecirc;u logo gi&uacute;p đ&ocirc;i vớ tr&ocirc;ng s&agrave;nh điệu v&agrave; hợp với mọi phong c&aacute;ch thời trang.</p>\r\n\r\n<p><img alt=\"chat-lieu-10S22SOC003\" src=\"https://routine.vn/media/wysiwyg/content/Polyester.jpg\" style=\"height:603px; width:900px\" /></p>', 0, 0, 0, '2023-04-16 02:58:19', 100, 9, NULL),
(31, 'Vớ Dài Thể Thao Cổ Cao Trơn Có Logo Freesize - 10S22SOC001R1', 'vo-dai-the-thao-co-cao-tron-co-logo-freesize-10s22soc001r1', 49000, 0, 14, 0, 0, '2023-04-16__black-beauty-1-1.jpg', 2, 0, 1, 0, NULL, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Form</th>\r\n			<td>FREESIZE</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>98% Polyester 2% polyurethane</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thiết kế</th>\r\n			<td>Họa tiết in</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>Unisex</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Điểm đặc biệt</th>\r\n			<td>Vớ d&agrave;i</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Loại sản phẩm</th>\r\n			<td>Phụ Kiện</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2023-04-16 02:59:50', 100, 9, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(57, 3, 6),
(58, 3, 7),
(59, 3, 8),
(60, 3, 9),
(61, 4, 3),
(62, 4, 4),
(63, 4, 5),
(64, 4, 6),
(65, 4, 7),
(66, 4, 8),
(67, 4, 9),
(68, 4, 10),
(69, 5, 2),
(70, 5, 3),
(71, 5, 4),
(72, 5, 5),
(73, 6, 2),
(74, 6, 3),
(75, 6, 4),
(76, 6, 5),
(77, 6, 6),
(78, 6, 7),
(79, 7, 2),
(80, 7, 3),
(81, 7, 4),
(82, 7, 5),
(83, 7, 6),
(84, 7, 7),
(85, 2, 6),
(86, 2, 7),
(87, 2, 8),
(88, 2, 9),
(89, 2, 10),
(90, 1, 9),
(98, 8, 2),
(99, 8, 3),
(100, 8, 4),
(101, 8, 5),
(102, 8, 6),
(103, 8, 7),
(104, 8, 8),
(115, 10, 6),
(116, 10, 7),
(117, 10, 8),
(118, 9, 2),
(119, 9, 3),
(120, 9, 4),
(121, 9, 5),
(139, 11, 6),
(140, 11, 7),
(141, 11, 8),
(142, 11, 9),
(143, 11, 18),
(174, 13, 36),
(175, 13, 35),
(176, 13, 34),
(177, 13, 39),
(178, 13, 24),
(179, 13, 40),
(191, 14, 36),
(192, 14, 35),
(193, 14, 37),
(194, 12, 36),
(195, 12, 35),
(196, 12, 34),
(197, 12, 37),
(198, 12, 39),
(199, 12, 38),
(200, 12, 42),
(201, 12, 23),
(214, 15, 36),
(215, 15, 35),
(216, 15, 34),
(217, 15, 37),
(218, 15, 39),
(219, 15, 22),
(220, 16, 36),
(221, 16, 35),
(222, 16, 34),
(223, 16, 37),
(224, 16, 39),
(225, 16, 44),
(226, 17, 36),
(227, 17, 35),
(228, 17, 37),
(229, 17, 44),
(240, 18, 25),
(241, 18, 26),
(242, 18, 27),
(243, 18, 28),
(244, 18, 29),
(245, 18, 30),
(246, 18, 31),
(247, 18, 32),
(248, 18, 33),
(249, 18, 45),
(260, 19, 25),
(261, 19, 26),
(262, 19, 27),
(263, 19, 28),
(264, 19, 29),
(265, 19, 30),
(266, 19, 31),
(267, 19, 32),
(268, 19, 33),
(269, 19, 43),
(270, 20, 25),
(271, 20, 26),
(272, 20, 27),
(273, 20, 28),
(274, 20, 29),
(275, 20, 30),
(276, 20, 45),
(277, 21, 25),
(278, 21, 26),
(279, 21, 27),
(280, 21, 28),
(281, 21, 29),
(282, 21, 30),
(283, 21, 31),
(284, 21, 46),
(285, 22, 25),
(286, 22, 26),
(287, 22, 27),
(288, 22, 28),
(289, 22, 29),
(290, 22, 30),
(291, 22, 31),
(292, 22, 32),
(293, 22, 24),
(294, 23, 25),
(295, 23, 26),
(296, 23, 27),
(297, 23, 28),
(298, 23, 29),
(299, 23, 30),
(300, 23, 31),
(301, 23, 32),
(302, 23, 46),
(305, 24, 47),
(306, 24, 45),
(307, 25, 47),
(308, 25, 46),
(309, 26, 47),
(310, 26, 24),
(311, 27, 47),
(312, 27, 43),
(313, 28, 47),
(314, 28, 43),
(315, 29, 47),
(316, 29, 23),
(317, 30, 47),
(318, 30, 22),
(319, 31, 47),
(320, 31, 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_keywords`
--

INSERT INTO `products_keywords` (`id`, `pk_product_id`, `pk_keyword_id`) VALUES
(26, 3, 1),
(27, 3, 2),
(28, 4, 1),
(29, 4, 2),
(30, 4, 3),
(31, 5, 3),
(32, 6, 3),
(33, 2, 1),
(34, 2, 2),
(35, 1, 1),
(36, 1, 2),
(38, 8, 3),
(42, 10, 2),
(43, 9, 1),
(47, 11, 1),
(52, 13, 3),
(55, 14, 3),
(56, 12, 3),
(59, 15, 3),
(60, 16, 3),
(61, 17, 3),
(63, 18, 9),
(65, 19, 9),
(66, 20, 9),
(67, 21, 9),
(68, 22, 10),
(69, 23, 10),
(71, 24, 11),
(72, 25, 11),
(73, 26, 11),
(74, 27, 11),
(75, 28, 7),
(76, 29, 6),
(77, 30, 12),
(78, 31, 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(255) DEFAULT NULL,
  `pi_slug` varchar(255) DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(7, 7, 12, 5, 0, NULL, '2023-04-15 04:37:22', '2023-04-15 04:37:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(255) DEFAULT NULL,
  `sd_link` varchar(255) DEFAULT NULL,
  `sd_image` varchar(255) DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'slide 11', '/', '2023-04-16__banner-1.png', 4, 1, 1, '2023-04-16 00:27:08', '2023-04-16 00:29:27'),
(2, 'slide 2', '/', '2023-04-16__banner2.jpg', 1, 1, 2, '2023-04-16 00:29:39', '2023-04-16 00:29:39'),
(3, 'slide 3', '/', '2023-04-16__banner3.png', 1, 1, 3, '2023-04-16 00:29:44', '2023-04-16 00:29:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(255) DEFAULT NULL,
  `s_slug` varchar(255) DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(255) DEFAULT NULL,
  `s_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng dẫn chi tiết mua hàng', NULL, 1, NULL, '<p>Khi mua h&agrave;ng bạn k&iacute;ch chọn size sản phẩm</p>\r\n\r\n<p>Tiếp theo đ&oacute; k&iacute;ch v&agrave;o mua ngay&nbsp;</p>', '2020-06-19 08:41:33', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(255) DEFAULT NULL,
  `tst_email` varchar(255) DEFAULT NULL,
  `tst_phone` varchar(255) DEFAULT NULL,
  `tst_address` varchar(255) DEFAULT NULL,
  `tst_note` varchar(255) DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `tst_code` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `tst_code`, `created_at`, `updated_at`) VALUES
(9, 7, 1043, 'Nguyễn Thanh Lâm', 'thanhlam@gmail.com', '0123456789', 'rrrr', NULL, 1, 1, 'bo8VxMaowyfY3Ar', '2023-04-15 10:47:41', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `t_name` varchar(255) DEFAULT NULL,
  `t_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `t_name`, `t_slug`, `created_at`, `updated_at`) VALUES
(1, 'Size', 'size', '2020-06-18 07:09:10', NULL),
(2, 'Màu sắc', 'mau-sac', '2020-07-03 17:28:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `log_login` text DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'vinh', 'vinh1808a@gmail.com', NULL, '$2y$10$xxEajLLrIXZ5V7gozOigFe3Bwh9tk.gp3WspD0lqwh0ltcEGzI/s6', '0396147266', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-04-23T15:00:01.579523Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-04-23T15:33:09.296193Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-04-23T15:45:45.872345Z\"}]', 1, NULL, '2023-04-23__255dfb0fdada2d8474cb.jpg', NULL, '2023-04-23 07:59:20', '2023-04-23 08:32:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(1, 2, 1),
(4, 4, 4),
(7, 4, 8),
(2, 10, 2),
(5, 10, 6);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_type_id_index` (`atb_type_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cost_vc`
--
ALTER TABLE `cost_vc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `producer_pdr_slug_unique` (`pdr_slug`),
  ADD UNIQUE KEY `producer_pdr_email_unique` (`pdr_email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_t_name_unique` (`t_name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cost_vc`
--
ALTER TABLE `cost_vc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `producer`
--
ALTER TABLE `producer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
