-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 25 2020 г., 18:09
-- Версия сервера: 8.0.15
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `feedback_base`
--

-- --------------------------------------------------------

--
-- Структура таблицы `feedback_list`
--

CREATE TABLE `feedback_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_feedback` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_feedback` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_feedback` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text_feedback` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `feedback_list`
--

INSERT INTO `feedback_list` (`id`, `name_feedback`, `email_feedback`, `text_feedback`) VALUES
(55, 'Никита Петров', 'Петров@mail.ru', 'Цена-качество приятно порадовали! Очень простое и интуитивное управление.'),
(56, 'Марк Попов', 'Попов@outlook.com', 'Рекомендую к приобретению! Работает и отлично, самое главное)'),
(57, 'Виталий Иванов', 'Иванов@mail.ru', 'Покупали маме - она в восторге, пользуется больше года 3 раза в день. Хорошее качество сборки, хорошие материалы.'),
(58, 'Лев Смирнов', 'Смирнов@outlook.com', 'За свои деньги, лучше не найти. Рекомендую к приобретению!'),
(59, 'Екатерина Соколовa', 'Соколовa@rambler.ru', 'Работает и отлично, самое главное) Цена-качество приятно порадовали!'),
(60, 'Лев Васильев', 'Васильев@yandex.ru', 'Рекомендую к приобретению! За свои деньги, лучше не найти.'),
(61, 'Артем Кузнецов', 'Кузнецов@rambler.ru', 'Лучшее соотношение цены и качества. Очень простое и интуитивное управление.'),
(62, 'Даниил Иванов', 'Иванов@mail.ru', 'Рекомендую к приобретению! Цена приятно удивила.'),
(63, 'Альбина Алексеевa', 'Алексеевa@outlook.com', 'Отлично выполняет свои функции. Цена приятно удивила.'),
(64, 'Виталий Соколов', 'Соколов@rambler.ru', 'Отлично выполняет свои функции. Лучшее соотношение цены и качества.'),
(65, 'Екатерина Ивановa', 'Ивановa@mail.ru', 'Цена-качество приятно порадовали! Цена-качество приятно порадовали!'),
(66, 'Наталья Петровa', 'Петровa@rambler.ru', 'Покупали маме - она в восторге, пользуется больше года 3 раза в день. Мне очень нравится.'),
(67, 'Марк Васильев', 'Васильев@outlook.com', 'Очень простое и интуитивное управление. Очень простое и интуитивное управление.'),
(68, 'Иван Семенов', 'Семенов@outlook.com', 'Лаконичный и элегантный дизайн. Использую три года.'),
(69, 'Дмитрий Семенов', 'Семенов@mail.ru', 'За свои деньги, лучше не найти. Лаконичный и элегантный дизайн.'),
(70, 'Анна Кузнецовa', 'Кузнецовa@gmail.com', 'Цена приятно удивила. Покупали маме - она в восторге, пользуется больше года 3 раза в день.'),
(71, 'Иван Попов', 'Попов@rambler.ru', 'Покупали маме - она в восторге, пользуется больше года 3 раза в день. За свои деньги, лучше не найти.'),
(72, 'Виктория Петровa', 'Петровa@mail.ru', 'Рекомендую к приобретению! Покупали маме - она в восторге, пользуется больше года 3 раза в день.'),
(73, 'Альбина Ивановa', 'Ивановa@rambler.ru', 'Хорошее качество сборки, хорошие материалы. Мне очень нравится.'),
(74, 'Алина Соколовa', 'Соколовa@rambler.ru', 'Отлично выполняет свои функции. Очень простое и интуитивное управление.'),
(75, 'Лев Васильев', 'Васильев@rambler.ru', 'Использую три года. Цена-качество приятно порадовали!'),
(76, 'Виктория Ивановa', 'Ивановa@mail.ru', 'Использую три года. Хорошее качество сборки, хорошие материалы.'),
(77, 'Алиса Петровa', 'Петровa@yandex.ru', 'Мне очень нравится. Лучшее соотношение цены и качества.'),
(78, 'Дмитрий Кузнецов', 'Кузнецов@mail.ru', 'За свои деньги, лучше не найти. Очень простое и интуитивное управление.'),
(79, 'Алина Васильевa', 'Васильевa@outlook.com', 'Цена приятно удивила. Покупали маме - она в восторге, пользуется больше года 3 раза в день.'),
(80, 'Даниил Петров', 'Петров@yandex.ru', 'Мне очень нравится. Цена-качество приятно порадовали!'),
(81, 'Алиса Соколовa', 'Соколовa@rambler.ru', 'Хорошее качество сборки, хорошие материалы. За свои деньги, лучше не найти.'),
(82, 'Екатерина Соколовa', 'Соколовa@outlook.com', 'Лаконичный и элегантный дизайн. Лаконичный и элегантный дизайн.'),
(83, 'Николай Попов', 'Попов@mail.ru', 'За свои деньги, лучше не найти. Покупали маме - она в восторге, пользуется больше года 3 раза в день.'),
(84, 'Алина Смирновa', 'Смирновa@yandex.ru', 'Очень простое и интуитивное управление. Использую три года.'),
(85, 'София Михайловa', 'Михайловa@yandex.ru', 'Использую три года. Использую три года.'),
(86, 'Екатерина Семеновa', 'Семеновa@yandex.ru', 'Отлично выполняет свои функции. Хорошее качество сборки, хорошие материалы.'),
(87, 'Анна Михайловa', 'Михайловa@yandex.ru', 'Очень простое и интуитивное управление. Работает и отлично, самое главное)'),
(88, 'Алина Поповa', 'Поповa@outlook.com', 'За свои деньги, лучше не найти. Отлично выполняет свои функции.'),
(89, 'Альбина Алексеевa', 'Алексеевa@yandex.ru', 'Хорошее качество сборки, хорошие материалы. Очень простое и интуитивное управление.'),
(90, 'София Михайловa', 'Михайловa@gmail.com', 'Покупали маме - она в восторге, пользуется больше года 3 раза в день. Рекомендую к приобретению!'),
(91, 'Иван Попов', 'Попов@mail.ru', 'Работает и отлично, самое главное) Лаконичный и элегантный дизайн.'),
(92, 'Никита Алексеев', 'Алексеев@yandex.ru', 'Использую три года. Цена-качество приятно порадовали!'),
(93, 'Вениамин Кузнецов', 'Кузнецов@mail.ru', 'Лучшее соотношение цены и качества. Отлично выполняет свои функции.'),
(94, 'Екатерина Соколовa', 'Соколовa@yandex.ru', 'За свои деньги, лучше не найти. Цена-качество приятно порадовали!'),
(95, 'Вениамин Кузнецов', 'Кузнецов@outlook.com', 'Цена приятно удивила. Цена-качество приятно порадовали!'),
(96, 'Екатерина Ивановa', 'Ивановa@mail.ru', 'Покупали маме - она в восторге, пользуется больше года 3 раза в день. Очень простое и интуитивное управление.'),
(97, 'София Соколовa', 'Соколовa@mail.ru', 'Очень простое и интуитивное управление. Лучшее соотношение цены и качества.'),
(98, 'Альбина Поповa', 'Поповa@gmail.com', 'За свои деньги, лучше не найти. Работает и отлично, самое главное)'),
(99, 'Алина Ивановa', 'Ивановa@rambler.ru', 'Покупали маме - она в восторге, пользуется больше года 3 раза в день. Рекомендую к приобретению!'),
(100, 'Никита Иванов', 'Иванов@gmail.com', 'Очень простое и интуитивное управление. Лучшее соотношение цены и качества.'),
(101, 'Вениамин Алексеев', 'Алексеев@yandex.ru', 'Цена приятно удивила. Цена-качество приятно порадовали!'),
(102, 'Николай Семенов', 'Семенов@yandex.ru', 'Цена-качество приятно порадовали! За свои деньги, лучше не найти.'),
(103, 'Екатерина Семеновa', 'Семеновa@outlook.com', 'Лаконичный и элегантный дизайн. Рекомендую к приобретению!'),
(104, 'Виталий Васильев', 'Васильев@gmail.com', 'Цена-качество приятно порадовали! Покупали маме - она в восторге, пользуется больше года 3 раза в день.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `feedback_list`
--
ALTER TABLE `feedback_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `feedback_list`
--
ALTER TABLE `feedback_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
