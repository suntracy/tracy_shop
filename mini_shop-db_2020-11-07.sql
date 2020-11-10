-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2020-11-07 09:29:27
-- 伺服器版本： 8.0.18
-- PHP 版本： 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mini_shop`
--

-- --------------------------------------------------------

--
-- 資料表結構 `bill`
--

CREATE TABLE `bill` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '購買人',
  `bill_total` mediumint(8) UNSIGNED NOT NULL COMMENT '總金額',
  `bill_date` datetime NOT NULL COMMENT '購買日期',
  `bill_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '處理狀態'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `bill`
--

INSERT INTO `bill` (`bill_sn`, `user_sn`, `bill_total`, `bill_date`, `bill_status`) VALUES
(1, 1, 300, '2020-10-27 08:04:59', '已出貨'),
(2, 2, 240, '2020-11-06 08:10:23', '已出貨'),
(3, 2, 300, '2020-11-06 08:11:57', '已出貨'),
(4, 3, 430, '2020-11-06 08:16:12', '已出貨');

-- --------------------------------------------------------

--
-- 資料表結構 `bill_detail`
--

CREATE TABLE `bill_detail` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_amount` tinyint(3) UNSIGNED NOT NULL COMMENT '購買數量',
  `goods_total` mediumint(8) UNSIGNED NOT NULL COMMENT '小計'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `bill_detail`
--

INSERT INTO `bill_detail` (`bill_sn`, `goods_sn`, `goods_amount`, `goods_total`) VALUES
(1, 3, 1, 200),
(1, 1, 1, 100),
(2, 18, 2, 240),
(3, 4, 1, 90),
(3, 6, 1, 90),
(3, 20, 1, 120),
(4, 13, 1, 90),
(4, 19, 1, 110),
(4, 20, 1, 120),
(4, 21, 1, 110);

-- --------------------------------------------------------

--
-- 資料表結構 `goods`
--

CREATE TABLE `goods` (
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_title` varchar(255) NOT NULL COMMENT '商品名稱',
  `goods_content` text NOT NULL COMMENT '商品說明',
  `goods_price` mediumint(8) UNSIGNED NOT NULL COMMENT '商品價錢',
  `goods_counter` smallint(5) UNSIGNED NOT NULL COMMENT '人氣',
  `goods_date` datetime NOT NULL COMMENT '上架日期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `goods`
--

INSERT INTO `goods` (`goods_sn`, `goods_title`, `goods_content`, `goods_price`, `goods_counter`, `goods_date`) VALUES
(4, '黑咖啡(熱)', '<p>黑咖啡為不添加任何調味的咖啡 ，可以品嘗到咖啡最原始的味道。</p>\r\n\r\n<p>黑咖啡功效 :&nbsp;提神醒腦、保護肝臟、幫助減肥。</p>\r\n', 90, 15, '2020-11-06 07:01:27'),
(5, '拿鐵(熱)', '<p>拿鐵咖啡的成分是三分之一的濃縮咖啡加三分之二的鮮奶。</p>\r\n\r\n<p>因加了大量的香濃牛奶，讓咖啡的苦味、酸味降低許多，使咖啡拿鐵成為相當大眾的飲品。</p>\r\n', 90, 2, '2020-11-06 07:28:03'),
(6, '卡布奇諾(熱)', '<p>卡布奇諾的牛奶比例較低，濃縮咖啡、蒸氣牛奶和奶泡的比例約是1：1：1，所以喝起來咖啡味較重，厚實的奶泡會稍微凸出咖啡杯，在杯緣晃動是其一大特色。</p>\r\n\r\n<p>卡布奇諾咖啡奶泡多、咖啡味重。</p>\r\n', 90, 3, '2020-11-06 07:32:46'),
(7, '摩卡咖啡(熱)', '<p>摩卡咖啡會用 Espresso、熱牛奶和巧克力醬調製，甚至加上鮮奶油裝飾，讓苦甜交融的摩卡咖啡成為大人小孩都喜愛的飲品。</p>\r\n', 100, 3, '2020-11-06 07:35:38'),
(8, '紅茶拿鐵(熱)', '<p>紅茶拿鐵其實就是鮮奶茶，茶葉品種是使用茶味較重的錫蘭，按照紅茶2鮮奶1的比例製作。</p>\r\n', 100, 3, '2020-11-06 07:41:07'),
(9, '抹茶拿鐵(熱)', '<p>選用頂級京都宇治 100% 一番抹茶，讓大家就算不能出國喝，在台灣也可以用輕鬆的銅板價格喝道地的味道！</p>\r\n', 120, 2, '2020-11-06 07:44:15'),
(10, '英式奶茶(熱)', '<p>英式奶茶所使用的牛奶，一般是經過低溫殺菌的常溫牛奶，泡茶時也不會加熱，因為加熱超過 75 度的牛奶，其中奶蛋白會產生異味，進而破壞整杯英式奶茶的香氣；此外，先加牛奶再加紅茶也是英式奶茶的一大表徵。</p>\r\n', 110, 2, '2020-11-06 07:47:02'),
(11, '榛果奶茶(熱)', '<p>口感溫潤，獨特榛果香氣與奶茶融合，風味圓潤香醇。</p>\r\n\r\n<p>以黃金比例調配特濃風味。</p>\r\n', 120, 3, '2020-11-06 07:51:17'),
(12, '伯爵奶茶(熱)', '<p>英國人對牛奶十分嚴苛，他們認為：「無論任何一種紅茶，牛奶才是美味的關鍵。」</p>\r\n\r\n<p>英國人對這個可說是講究到不行，所以把紅茶倒入牛奶、讓牛奶慢慢升溫是比較好的選擇。</p>\r\n', 110, 2, '2020-11-06 07:57:52'),
(13, '黑咖啡(冰)', '<p>黑咖啡為不添加任何調味的咖啡 ，可以品嘗到咖啡最原始的味道。</p>\r\n\r\n<p>黑咖啡功效 :&nbsp;提神醒腦、保護肝臟、幫助減肥。</p>\r\n', 90, 2, '2020-11-06 07:59:45'),
(14, '拿鐵(冰)', '<p>拿鐵咖啡的成分是三分之一的濃縮咖啡加三分之二的鮮奶。</p>\r\n\r\n<p>因加了大量的香濃牛奶，讓咖啡的苦味、酸味降低許多，使咖啡拿鐵成為相當大眾的飲品。</p>\r\n', 90, 2, '2020-11-06 08:01:44'),
(15, '卡布奇諾(冰)', '<p>卡布奇諾的牛奶比例較低，濃縮咖啡、蒸氣牛奶和奶泡的比例約是1：1：1，所以喝起來咖啡味較重，厚實的奶泡會稍微凸出咖啡杯，在杯緣晃動是其一大特色。</p>\r\n\r\n<p>卡布奇諾咖啡奶泡多、咖啡味重。</p>\r\n', 90, 1, '2020-11-06 08:02:38'),
(16, '摩卡咖啡(冰)', '<p>摩卡咖啡會用 Espresso、熱牛奶和巧克力醬調製，甚至加上鮮奶油裝飾，讓苦甜交融的摩卡咖啡成為大人小孩都喜愛的飲品。</p>\r\n', 100, 1, '2020-11-06 08:03:22'),
(17, '紅茶拿鐵(冰)', '<p>紅茶拿鐵其實就是鮮奶茶，茶葉品種是使用茶味較重的錫蘭，按照紅茶2鮮奶1的比例製作。</p>\r\n', 100, 1, '2020-11-06 08:04:34'),
(18, '抹茶拿鐵(冰)', '<p>選用頂級京都宇治 100% 一番抹茶，讓大家就算不能出國喝，在台灣也可以用輕鬆的銅板價格喝道地的味道！</p>\r\n', 120, 2, '2020-11-06 08:05:22'),
(19, '英式奶茶(冰)', '<p>英式奶茶所使用的牛奶，一般是經過低溫殺菌的常溫牛奶，泡茶時也不會加熱，因為加熱超過 75 度的牛奶，其中奶蛋白會產生異味，進而破壞整杯英式奶茶的香氣；此外，先加牛奶再加紅茶也是英式奶茶的一大表徵。</p>\r\n', 110, 2, '2020-11-06 08:06:10'),
(20, '榛果奶茶(冰)', '<p>口感溫潤，獨特榛果香氣與奶茶融合，風味圓潤香醇。</p>\r\n\r\n<p>以黃金比例調配特濃風味。</p>\r\n', 120, 3, '2020-11-06 08:06:58'),
(21, '伯爵奶茶(冰)', '<p>英國人對牛奶十分嚴苛，他們認為：「無論任何一種紅茶，牛奶才是美味的關鍵。」</p>\r\n\r\n<p>英國人對這個可說是講究到不行，所以把紅茶倒入牛奶、讓牛奶慢慢升溫是比較好的選擇。</p>\r\n', 110, 2, '2020-11-06 08:07:47');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '使用者編號',
  `user_name` varchar(255) NOT NULL COMMENT '使用者姓名',
  `user_id` varchar(255) NOT NULL COMMENT '使用者帳號',
  `user_passwd` varchar(255) NOT NULL COMMENT '使用者密碼',
  `user_email` varchar(255) NOT NULL COMMENT '使用者信箱',
  `user_sex` enum('先生','女士') NOT NULL COMMENT '使用者性別',
  `user_tel` varchar(255) NOT NULL COMMENT '使用者電話',
  `user_zip` varchar(255) NOT NULL COMMENT '使用者郵遞區號',
  `user_county` varchar(255) NOT NULL COMMENT '使用者縣市',
  `user_district` varchar(255) NOT NULL COMMENT '使用者鄉鎮市區',
  `user_address` varchar(255) NOT NULL COMMENT '使用者地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`user_sn`, `user_name`, `user_id`, `user_passwd`, `user_email`, `user_sex`, `user_tel`, `user_zip`, `user_county`, `user_district`, `user_address`) VALUES
(2, 'Tracy Kuo', 'Tracy', '$2y$10$jEFP6pSFAnrCrBIQSuSEmenbtHjWsXDayZIAEsYAu.GQ4sSCXqzpa', 'tracy@gmail.com', '女士', '01-2345678', '711', '台南市', '歸仁區', '長大路一段'),
(3, 'Jackson Yee', 'jackson', '$2y$10$1.fqz4RD5u5wXefn9wx.DOJe97OZTx26c28ebspwUmK0mdWlA4oOq', 'jackson@gmail.com', '先生', '0912345678', '711', '台南市', '歸仁區', '長大路一段');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_sn`);

--
-- 資料表索引 `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`bill_sn`,`goods_sn`);

--
-- 資料表索引 `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`goods_sn`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_sn`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '帳單編號', AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `goods`
--
ALTER TABLE `goods`
  MODIFY `goods_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品編號', AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `user_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '使用者編號', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
