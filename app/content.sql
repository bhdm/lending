-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 21 2016 г., 16:57
-- Версия сервера: 5.6.27-0ubuntu1
-- Версия PHP: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lending`
--

-- --------------------------------------------------------

--
-- Структура таблицы `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `content`
--

INSERT INTO `content` (`id`, `title`, `body`, `enabled`, `created`, `updated`) VALUES
(5, '>Новые правила оформления <br>шенгенских виз!', ' <h2 style="text-align: center">Новые правила оформления <br>шенгенских виз!</h2>\r\n                    <p style="text-align: center; font-size: 18px">\r\n                        14 сентября 2015 г. введена обязательная процедура<br>\r\n                        сканирования отпечатков пальцев.<br>\r\n                        В связи с этим каждый заявитель должен будет явиться<br>\r\n                        на подачу документов лично в Консульство/Визовый центр, чтобы предоставить свои биометрические данные.<br>\r\n                        1 раз в 5 лет !!!\r\n                        <br>\r\n                        <br>\r\n                        <br>\r\n\r\n                    </p>', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Процесс сдачи отпечатков пальцев', '<h2 style="text-align: center;">\r\n                        Процесс сдачи отпечатков пальцев<br>\r\n                        занимает всего несколько минут!\r\n                    </h2>\r\n                    <p style="text-align: center; font-size: 18px">\r\n                        От Сдачи отпечатков освобождаются дети до 12 лет ,<br>\r\n                        и лица, у которых физически нет возможности<br>\r\n                        взять отпечатки пальцев.\r\n                        <br>\r\n                        <br>\r\n                        <br>\r\n                    </p>\r\n                </div>', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Сотрудники нашей компании всегда рады', '<p style="text-align: justify; font-size: 18px">\r\n                            Сотрудники нашей компании всегда рады проконсультировать вас по всем вопросам относительно\r\n                            получения шенгенской визы. Обладая многолетним опытом в сфера, мы знаем все тонкости и\r\n                            подробности этого дела, и считаем своим долгом помогать нашим клиентам в получении всей\r\n                            необходимой информации.\r\n                        </p>', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Контакты', '123001 г. Москва, Трехпрудный пер., 11/13 стр.2 м.Тверская, м.Маяковская <br />\r\n                            телефон: <span class="text-big green">\r\n                                <a href="callto:+74993406132" class="phone">+7 (499) 340-61-62</a>\r\n                            </span>', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Гражданам Европы, США, Канады и Австралии', '<span style="font-size: 20px;font-weight: 700;font-style: italic;">Гражданам Европы, США, Канады и Австралии</span>\r\n                        для получения российской визы достаточно факсовой или электронной копии  ваучера.\r\n                        Эту копию и оригинал Вашего паспорта надо предъявить в российское Консульство за рубежом и в\r\n                        установленные для этого сроки, обычно 4-5 рабочих дней, оформить въездную российскую визу\r\n                        (весь текст и строка по стоимости в одной рамке).', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Гражданам Южной Америки, Африки и Азии', '<span style="font-size: 20px;font-weight: 700;font-style: italic;">Гражданам Южной Америки, Африки и Азии</span>\r\n                        для получения российской визы туристический ваучер необходимо предъявить в оригинале.\r\n                        Для этого Вы можете воспользоваться услугами экспресс-почты.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Таблица 1', '<table class="table-3">\r\n                        <tr>\r\n                            <th>СРОК ИЗГОТОВЛЕНИЯ</th>\r\n                            <th>21 р.д</th>\r\n                            <th>17 р.д</th>\r\n                            <th>15 р.д</th>\r\n                            <th>13 р.д</th>\r\n                            <th>7-8 р.д</th>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Однократная на 1 мес</td>\r\n                            <td>—</td>\r\n                            <td>—</td>\r\n                            <td>4400</td>\r\n                            <td>4700</td>\r\n                            <td>4000</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Однократная на 3 мес</td>\r\n                            <td>—</td>\r\n                            <td>—</td>\r\n                            <td>4500</td>\r\n                            <td>4900</td>\r\n                            <td>4200</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Двухкратная на 1 мес</td>\r\n                            <td>—</td>\r\n                            <td>—</td>\r\n                            <td>4600</td>\r\n                            <td>5200</td>\r\n                            <td>4800</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Двухкратная на 3 мес</td>\r\n                            <td>—</td>\r\n                            <td>—</td>\r\n                            <td>4800</td>\r\n                            <td>5400</td>\r\n                            <td>5000</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Многократная на 6 мес</td>\r\n                            <td>3900</td>\r\n                            <td>4900</td>\r\n                            <td>6300</td>\r\n                            <td>7100</td>\r\n                            <td>—</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Многократная на 12 мес</td>\r\n                            <td>4300</td>\r\n                            <td>5100</td>\r\n                            <td>6500</td>\r\n                            <td>7900</td>\r\n                            <td>—</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Многократная на 5 лет</td>\r\n                            <td>—</td>\r\n                            <td>—</td>\r\n                            <td>28000</td>\r\n                            <td>—</td>\r\n                            <td>—</td>\r\n                        </tr>\r\n                    </table>', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Телекс', 'Телекс оформляется через Департамент Консульской службы МИД РФ и отсылается им непосредственно в <br />\r\n                    российское Консульство за рубежом по особым каналам связи. Для получения визы необходимо кроме <br />\r\n                    обычного пакета документов сообщить номер телекса.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Таблица 2', '<table class="table-3">\r\n                        <tr>\r\n                            <th>СРОК ИЗГОТОВЛЕНИЯ</th>\r\n                            <th>5 р.д</th>\r\n                            <th>13 р.д</th>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Однократная на 1 мес</td>\r\n                            <td>6800</td>\r\n                            <td>—</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Однократная на 3 мес</td>\r\n                            <td>7000</td>\r\n                            <td>—</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Двухкратная на 1 мес</td>\r\n                            <td>6900</td>\r\n                            <td>—</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Двухкратная на 3 мес</td>\r\n                            <td>7200</td>\r\n                            <td>—</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Многократная на 6 мес</td>\r\n                            <td>—</td>\r\n                            <td>10500</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Многократная на 12 мес</td>\r\n                            <td>—</td>\r\n                            <td>10900</td>\r\n                        </tr>\r\n                    </table>', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Таблица 3', '<table class="table-3">\r\n                        <tr>\r\n                            <th>ПИСЬМО-ПРИГЛАШЕНИЕ ДЛЯ ГРАЖДАН ЕС И США</th>\r\n                            <th>1 день</th>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style="text-align: left;">Однократное/Двухкратное 1 мес (1 день)</td>\r\n                            <td>4500-5300</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style="text-align: left;">Однократное/Двухкратное 3 мес (1 день)</td>\r\n                            <td>4900-5500</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style="text-align: left;">Многократное 1 год / 3 года* (1 день)</td>\r\n                            <td>7700 / 12000</td>\r\n                        </tr>\r\n\r\n                        <tr>\r\n                            <th colspan="2">НА БЛАНКЕ ТТП (ТОРГОВО-ПРОМЫШЛЕННАЯ ПАЛАТА)</th>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style="text-align: left;">Однократное/Двухкратное 1 на бланке ТТП (3-5 раб. дней)</td>\r\n                            <td>5100/5900</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style="text-align: left;">Однократное/Двухкратное 3 на бланке ТТП (3-5 раб. дней)</td>\r\n                            <td>4900-5500</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style="text-align: left;">Многократное на 1 год на бланке ТТП (5-7 раб. дней)</td>\r\n                            <td>15000</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style="text-align: left;">Многократное на 3/5** (5-7 раб. дней)</td>\r\n                            <td>22500 / 25500</td>\r\n                        </tr>\r\n\r\n                    </table>', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
