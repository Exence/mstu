-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 12 2021 г., 09:31
-- Версия сервера: 5.7.21
-- Версия PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `main`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(13, 'Ноутбуки', 1, 1),
(14, 'Планшеты', 2, 1),
(15, 'Мониторы', 3, 1),
(16, 'Компьютеры в сборе', 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `is_recommended` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `description`, `is_new`, `is_recommended`, `status`) VALUES
(34, 'Ноутбук Haier A1400ED, черный', 13, 2345456, 26690, 1, 'Haier', 'экран: 14.1\" (1366x768)\r\nматрица: TN\r\nпроцессор: Intel Celeron N3350 (2x1100 МГц)\r\nоперативная память: 4 ГБ LPDDR4 1600 МГц\r\nнакопитель: eMMC 64 ГБ\r\nвстроенная видеокарта: Intel HD Graphics 500\r\nразъемы: USB 2.0 Type A, USB 3.0 Type A, выход micro HDMI, микрофон/наушники Combo\r\nбеспроводная связь: Wi-Fi 802.11n, Bluetooth 4.0\r\nемкость аккумулятора: 5000 мА⋅ч\r\nоперационная система: DOS\r\npазмеры: 222x329x18 мм\r\nвес: 1.2 кг', 0, 0, 1),
(35, 'Ноутбук Lenovo Yoga Slim 7 14', 13, 2343847, 54614, 0, 'Lenovo', 'Диагональ экрана: 14 \"\r\nТип матрицы экрана: IPS\r\nЛинейка процессора: AMD Ryzen 5 / AMD Ryzen 7 / Intel Core i5 / Intel Core i7\r\nОбъем оперативной памяти: 8...16 ГБ\r\nОбщий объем накопителей: 256...1024 ГБ\r\nТип видеокарты: встроенная\r\nОперационная система: Windows 10 Home\r\nВремя работы: 15...17.5 ч\r\nВес: 1.33...1.54 кг', 1, 1, 1),
(36, 'Ноутбук ASUS VivoBook X543', 13, 3245434, 30990, 1, 'Asus', 'Диагональ экрана: 15.6 \"\r\nТип матрицы экрана: TN\r\nЧастота обновления экрана: 60 Гц\r\nЛинейка процессора: AMD A4 / AMD A6 / Intel Celeron / Intel Core i3 / Intel Core i5 / Intel Pentium Gold / Intel Pentium Silver\r\nОбъем оперативной памяти: 4...8 ГБ\r\nОбщий объем накопителей: 128...1256 ГБ\r\nТип видеокарты: встроенная / дискретная / дискретная и встроенная\r\nОбъем видеопамяти: 2 ГБ\r\nОперационная система: Endless OS / Linux / Windows 10 Home / Без ОС\r\nВремя работы: 5 ч\r\nВес: 1.9...2 кг', 0, 1, 1),
(37, 'Ноутбук Xiaomi RedmiBook 14', 13, 3245478, 48990, 1, 'Xiaomi ', 'Диагональ экрана: 14 \"\r\nТип матрицы экрана: IPS\r\nЛинейка процессора: Intel Core i3 / Intel Core i5 / Intel Core i7\r\nОбъем оперативной памяти: 4...16 ГБ\r\nОбщий объем накопителей: 256...1000 ГБ\r\nТип видеокарты: встроенная / дискретная / дискретная и встроенная\r\nОбъем видеопамяти: 2 ГБ\r\nОперационная система: DOS / Linux / Windows 10 Home\r\nВремя работы: 10 ч\r\nВес: 1.5 кг', 0, 1, 1),
(38, 'Ноутбук Acer ASPIRE 3 A315-22', 13, 3245466, 28350, 1, 'Acer', 'Диагональ экрана: 15.6 \"\r\nТип матрицы экрана: TN\r\nЧастота обновления экрана: 60 Гц\r\nЛинейка процессора: AMD A4 / AMD A6\r\nОбъем оперативной памяти: 4...8 ГБ\r\nОбщий объем накопителей: 128...1000 ГБ\r\nТип видеокарты: встроенная / дискретная\r\nОбъем видеопамяти: 2 ГБ\r\nОперационная система: Endless OS / Linux / Windows 10 Home / Без ОС\r\nВремя работы: 5...5.5 ч\r\nВес: 1.94 кг', 0, 0, 1),
(39, 'Ноутбук HP 15-rb0', 13, 3465689, 30210, 0, 'Hewlett-Packard', 'Диагональ экрана: 15.6 \"\r\nТип матрицы экрана: SVA\r\nЛинейка процессора: AMD A4 / AMD A6 / AMD A9 / AMD E2\r\nОбъем оперативной памяти: 4 ГБ\r\nОбщий объем накопителей: 128...1000 ГБ\r\nТип видеокарты: встроенная\r\nОперационная система: DOS / Windows 10 Home\r\nВремя работы: 11 ч\r\nВес: 1.91...2.1 кг', 0, 0, 1),
(40, 'Ноутбук ASUS Laptop 15 X509', 13, 3554667, 51990, 1, 'Asus', 'Диагональ экрана: 15.6 \"\r\nТип матрицы экрана: IPS / TN\r\nЧастота обновления экрана: 60 Гц\r\nЛинейка процессора: AMD Ryzen 3 / Intel Celeron / Intel Core i3 / Intel Core i5 / Intel Core i7 / Intel Pentium Gold / Intel Pentium Silver\r\nОбъем оперативной памяти: 4...12 ГБ\r\nОбщий объем накопителей: 128...1256 ГБ\r\nТип видеокарты: встроенная / дискретная / дискретная и встроенная\r\nОбъем видеопамяти: 2 ГБ\r\nОперационная система: DOS / Endless OS / Linux / Windows 10 Home / Без ОС\r\nВремя работы: 4...6 ч\r\nВес: 1.7...1.9 кг', 0, 1, 1),
(41, 'Планшет Samsung Galaxy Tab A7 10.4 SM-T500 32GB Wi-Fi (2020)', 14, 2245678, 15990, 1, 'Samsung', 'диагональ: 10.4\" (2000x1200) TFT\r\nвстроенная память: 32 ГБ, слот microSDXC\r\nоперативная память: 3 ГБ\r\nпроцессор: Qualcomm Snapdragon 662\r\nоперационная система: Android 10\r\nкамеры: основная 8 МП, фронтальная 5 МП\r\nSIM-карты: отсутствует\r\nдинамики: стерео\r\nбеспроводные интерфейсы: WiFi 802.11ac, Bluetooth 5.0\r\nпроводные интерфейсы: USB-C, mini jack 3.5 mm\r\nемкость аккумулятора: 7040 мА·ч\r\nразмеры: 247.6x157.4x7 мм, вес: 477 г', 1, 1, 1),
(42, 'Планшет Apple iPad (2020) 32Gb Wi-Fi, silver', 14, 2235567, 29900, 1, 'Apple', 'диагональ: 10.2\" (2160x1620) IPS\r\nвстроенная память: 32 ГБ\r\nоперативная память: 3 ГБ\r\nпроцессор: Apple A12 Bionic\r\nоперационная система: iOS\r\nкамеры: основная 8 МП, фронтальная 1.20 МП\r\nдинамики: стерео\r\nбеспроводные интерфейсы: WiFi 802.11ac, Bluetooth 4.2\r\nпроводные интерфейсы: Apple Lightning, mini jack 3.5 mm\r\nвремя работы: 10 ч (8827 мА·ч)\r\nразмеры: 250.6x174.1x7.5 мм, вес: 490 г', 0, 0, 1),
(43, 'Планшет HUAWEI MatePad T 10s 64Gb LTE (2020), Deep Sea Blue', 14, 2234546, 16390, 1, 'HUAWEI ', 'диагональ: 10.1\" (1920x1200) IPS\r\nвстроенная память: 64 ГБ, слот microSDXC\r\nоперативная память: 3 ГБ\r\nпроцессор: HiSilicon Kirin 710A\r\nоперационная система: Android 10 без сервисов Google\r\nкамеры: основная 5 МП, фронтальная 2 МП\r\nSIM-карты: 1 (nano SIM)\r\nдинамики: стерео\r\nбеспроводные интерфейсы: 4G LTE, WiFi 802.11ac, Bluetooth 5.0\r\nпроводные интерфейсы: USB-C, mini jack 3.5 mm\r\nемкость аккумулятора: 5100 мА·ч\r\nразмеры: 240.2x159x7.85 мм, вес: 450 г', 0, 0, 1),
(44, 'Монитор LG 27GN800-B 27\", черный', 15, 5657889, 26000, 1, 'LG', 'тип матрицы: IPS, 144 Гц\r\nразрешение: 2560x1440 (16:9)\r\nвремя отклика: 1 мс\r\nразъемы: HDMI x2, DisplayPort 1.4, выход на наушники\r\nконтрастность: 1000:1\r\nяркость: 350 кд/м²\r\nуглы обзора: по горизонтали 178°, по вертикали 178°\r\nподсветка без мерцания (Flicker-Free): да\r\nтехнологии: FreeSync Premium, G-Sync Compatible\r\nигровой монитор: да', 0, 0, 1),
(45, 'Компьютер АйтиОН BA844-450HRX Midi-Tower', 16, 1245467, 30525, 1, 'АйтиОН', 'процессор: AMD Athlon X4 840 (4x3100 МГц)\r\nоперативная память: 4 ГБ DDR3\r\nнакопитель: HDD 1 ТБ\r\nдискретная видеокарта: AMD Radeon RX 550 (4 ГБ)\r\nкорпус: Midi-Tower\r\nмощность блока питания: 450 Вт\r\nразъемы: USB 3.0, DVI, HDMI, DisplayPort\r\nоперационная система: ОС не установлена\r\nразмеры: 180x411x427 мм', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

DROP TABLE IF EXISTS `product_order`;
CREATE TABLE IF NOT EXISTS `product_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(3, 'Евгений Петров', 'zhenya@mail.ru', '111', ''),
(4, 'Алишер Мансуров', 'mansurovan@mstu.edu.ru', 'qwerty', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
