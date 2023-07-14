-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 7 月 14 日 04:54
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `kadai_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_table`
--

CREATE TABLE `admin_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `lid` varchar(128) NOT NULL,
  `lpw` varchar(64) NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_user_table`
--

CREATE TABLE `admin_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `lid` varchar(128) NOT NULL,
  `lpw` varchar(64) NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `admin_user_table`
--

INSERT INTO `admin_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'test1', 'test1', 1, 0),
(2, 'テスト2一般', 'test2', 'test2', 0, 0),
(3, 'テスト３', 'test3', 'test3', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `counselor_table`
--

CREATE TABLE `counselor_table` (
  `id` int(12) NOT NULL,
  `organization` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `kana` varchar(64) NOT NULL,
  `certification` varchar(64) NOT NULL,
  `email` varchar(124) NOT NULL,
  `tel` varchar(64) NOT NULL,
  `website` varchar(124) NOT NULL,
  `address` varchar(124) NOT NULL,
  `details` text NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `counselor_table`
--

INSERT INTO `counselor_table` (`id`, `organization`, `name`, `kana`, `certification`, `email`, `tel`, `website`, `address`, `details`, `file_name`, `file_path`, `date_time`, `update_time`) VALUES
(9, 'Snow Leopard', 'てすと', 'てうと', 'a jrh;ai', 'ppp@com.com', '999999', '88888', 'ajv eh;ai', ' ネコ科の哺乳類、ユキヒョウ更新テスト', 'user_update1.png', 'images/20230710125955user_update1.png', '2023-07-14 11:38:36', '2023-07-14 11:38:36'),
(10, 'オセロット', 'Ocelot', 'Ocelot', 'nyan', 'ocelot@ocelot.neko', '22222222', 'www.ocelot.com', 'nyan', 'オセロットは、主に中南米に生息する美しい斑点模様をもつネコ科動物。大きさはイエネコの2倍ほどある。\r\n\r\n', 'user_update3.png', 'images/20230710145909user_update3.png', '2023-07-10 21:59:09', '2023-07-10 21:59:09'),
(11, 'nya-', 'にゃー', 'にゃー', 'nya', 'nya@nya.com', '67562562', 'nya-', 'nya', 'nya\r\n更新しました\r\nもう一度更新\r\n更新三回目', 'user4.png', 'images/20230710153959user4.png', '2023-07-10 22:40:11', '2023-07-10 22:40:11'),
(13, 'チーター', 'ちーたー', 'ちーたー', '走るのが早い', 'cheetah@cheetah.com', '00000000', 'cheetah', 'アフリカ大陸全域', '約3秒で時速0キロから96キロまで加速できるとされ、世界最速の哺乳類', 'user_update2.png', 'images/20230710122907user_update2.png', '2023-07-10 22:43:36', '2023-07-10 22:43:36'),
(15, '長毛もふもふ', 'もふもふ', 'モフモフ', 'かわいい', 'mofu@mofu.com', '5555-5555', 'mofu', '長毛ねこちゃん', '長毛猫さんは、被毛のケアが必要です。摂取するタンパク質の３０％が被毛になります。', 'user_update4.png', 'images/20230711025724user_update4.png', '2023-07-14 08:58:11', '2023-07-14 08:58:11');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `admin_user_table`
--
ALTER TABLE `admin_user_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `counselor_table`
--
ALTER TABLE `counselor_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `admin_user_table`
--
ALTER TABLE `admin_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルの AUTO_INCREMENT `counselor_table`
--
ALTER TABLE `counselor_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
