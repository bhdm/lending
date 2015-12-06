-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 07 2015 г., 02:44
-- Версия сервера: 5.5.46-0ubuntu0.14.04.2
-- Версия PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `lending`
--

-- --------------------------------------------------------

--
-- Структура таблицы `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`id`, `title`, `body`, `enabled`, `created`, `updated`) VALUES
(1, 'Бельгия', ' <div class="col-xs-5"><img src="/bundles/app/images/img-belg.png"></div>\n                    <div class="col-xs-7">\n                        <table class="tbl">\n                            <tr>\n                                <td class="th1" style="width: 120px">Тип визы</td>\n                                <td class="th2" style="width: 150px">Срок оформления</td>\n                                <td class="th3">Подача документов через аккредитованное агентство</td>\n                                <td class="th4">Личная подача документов в визовый центр</td>\n                            </tr>\n                            <tr>\n                                <td>до 15 дней</td>\n                                <td>1-2 рабочих дня</td>\n                                <td></td>\n                                <td class="euro">30€</td>\n                            </tr>\n                            <tr>\n                                <td>до 90/180 дней</td>\n                                <td>1-2 рабочих дня</td>\n                                <td></td>\n                                <td class="euro">150€</td>\n                            </tr>\n                            <tr>\n                                <td>180/365 бизн.млт.</td>\n                                <td>1-2 рабочих дня</td>\n                                <td></td>\n                                <td class="euro">200€</td>\n                            </tr>\n                        </table>\n                    </div>', 1, '2015-12-07 02:08:20', '2015-12-07 02:08:20'),
(2, 'Бельгия', ' <div class="col-xs-5"><img src="/bundles/app/images/img-country-2.png"></div>\n                    <div class="col-xs-7">\n                        <table class="tbl">\n                            <tr>\n                                <td class="th1" style="width: 120px">Тип визы</td>\n                                <td class="th2" style="width: 150px">Срок оформления</td>\n                                <td class="th3">Подача документов через аккредитованное агентство</td>\n                                <td class="th4">Личная подача документов в визовый центр</td>\n                            </tr>\n                            <tr>\n                                <td>до 15 дней</td>\n                                <td>1-2 рабочих дня</td>\n                                <td></td>\n                                <td class="euro">30€</td>\n                            </tr>\n                            <tr>\n                                <td>до 90/180 дней</td>\n                                <td>1-2 рабочих дня</td>\n                                <td></td>\n                                <td class="euro">150€</td>\n                            </tr>\n                            <tr>\n                                <td>180/365 бизн.млт.</td>\n                                <td>1-2 рабочих дня</td>\n                                <td></td>\n                                <td class="euro">200€</td>\n                            </tr>\n                        </table>\n                    </div>', 1, '2015-12-07 02:16:09', '2015-12-07 02:16:09'),
(3, 'Бельгия', ' <div class="col-xs-5"><img src="/bundles/app/images/img-country-3.png"></div>\n                    <div class="col-xs-7">\n                        <table class="tbl">\n                            <tr>\n                                <td class="th1" style="width: 120px">Тип визы</td>\n                                <td class="th2" style="width: 150px">Срок оформления</td>\n                                <td class="th3">Подача документов через аккредитованное агентство</td>\n                                <td class="th4">Личная подача документов в визовый центр</td>\n                            </tr>\n                            <tr>\n                                <td>до 15 дней</td>\n                                <td>7-10 рабочих дней</td>\n                                <td></td>\n                                <td class="euro">30€</td>\n                            </tr>\n                            <tr>\n                                <td>до 30/90 дней</td>\n                                <td>7-10 рабочих дней</td>\n                                <td class="euro">270€</td>\n                                <td class="euro">200€</td>\n                            </tr>\n                            <tr>\n                                <td>90/180 бизн.млт.</td>\n                                <td>7-10 рабочих дней</td>\n                                <td class="euro">400€</td>\n                                <td class="euro">500€</td>\n                            </tr>\n                            <tr>\n                                <td>180/365 бизн.млт.</td>\n                                <td>7-10 рабочих дней</td>\n                                <td class="euro">500€</td>\n                                <td class="euro">350€</td>\n                            </tr>\n                            <tr>\n                                <td>3 года бизн.млт.</td>\n                                <td>7-10 рабочих дней</td>\n                                <td class="euro">600€</td>\n                                <td class="euro">450€</td>\n                            </tr>\n                        </table>\n                    </div>', 1, '2015-12-07 02:20:35', '2015-12-07 02:20:35');

-- --------------------------------------------------------

--
-- Структура таблицы `ext_translations`
--

CREATE TABLE IF NOT EXISTS `ext_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookup_unique_idx` (`locale`,`object_class`,`field`,`foreign_key`),
  KEY `translations_lookup_idx` (`locale`,`object_class`,`foreign_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
