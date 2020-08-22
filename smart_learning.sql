-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 22, 2020 at 01:14 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

--
-- Dumping data for table `pma__favorite`
--

INSERT INTO `pma__favorite` (`username`, `tables`) VALUES
('root', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data for table `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'quiz_sql', 'table', 'SmartLearning', ''),
('root', 'users', 'table', 'SmartLearning', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"SmartLearning\",\"table\":\"quiz_sql\"},{\"db\":\"SmartLearning\",\"table\":\"quiz_ml\"},{\"db\":\"SmartLearning\",\"table\":\"users\"},{\"db\":\"SmartLearning\",\"table\":\"leaderboard\"},{\"db\":\"SmartLearning\",\"table\":\"quiz\"},{\"db\":\"SmartLearning\",\"table\":\"quiz-ml\"},{\"db\":\"test2\",\"table\":\"history\"},{\"db\":\"test2\",\"table\":\"answer\"},{\"db\":\"test2\",\"table\":\"options\"},{\"db\":\"test2\",\"table\":\"rank\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'SmartLearning', 'quiz_ml', '{\"sorted_col\":\"`quiz_ml`.`id` ASC\"}', '2020-08-10 16:08:20'),
('root', 'SmartLearning', 'quiz_sql', '[]', '2020-08-10 09:17:11'),
('root', 'SmartLearning', 'users', '{\"CREATE_TIME\":\"2020-08-08 21:02:13\"}', '2020-08-09 11:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-08-22 11:13:36', '{\"Console\\/Mode\":\"collapse\",\"NavigationTreeEnableGrouping\":false,\"Server\\/hide_db\":\"\",\"Server\\/only_db\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `SmartLearning`
--
CREATE DATABASE IF NOT EXISTS `SmartLearning` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `SmartLearning`;

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard`
--

CREATE TABLE `leaderboard` (
  `uidUsers` varchar(128) NOT NULL,
  `quiz_sql_marks` int(11) NOT NULL DEFAULT 0,
  `quiz_ml_marks` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leaderboard`
--

INSERT INTO `leaderboard` (`uidUsers`, `quiz_sql_marks`, `quiz_ml_marks`, `total`) VALUES
('testuser1', 5, 9, 14),
('testuser2', 8, 2, 10),
('testuser3', 0, 0, 0),
('testuser4', 15, 0, 15),
('testuser5', 0, 0, 0),
('testuser6', 0, 0, 0),
('testuser7', 0, 0, 0),
('testuser8', 10, 8, 18),
('testuser9', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_ml`
--

CREATE TABLE `quiz_ml` (
  `id` int(11) NOT NULL,
  `que` text NOT NULL,
  `option 1` text NOT NULL,
  `option 2` text NOT NULL,
  `option 3` text NOT NULL,
  `option 4` text NOT NULL,
  `ans` text NOT NULL,
  `marks` int(11) NOT NULL DEFAULT 1,
  `userans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_ml`
--

INSERT INTO `quiz_ml` (`id`, `que`, `option 1`, `option 2`, `option 3`, `option 4`, `ans`, `marks`, `userans`) VALUES
(10, 'Which of the following is NOT a clustering algorithm?', 'DBScan', 'K-Means', 'HMM', 'GMM', 'HMM', 3, 'K-Means'),
(1, 'Which of these algorithms is NOT a classification algorithm?', 'Perceptron', 'PCA', 'SVM', 'AdaBoost', 'AdaBoost', 3, 'Perceptron'),
(2, 'Which of the following machine learning algorithm can be used for imputing missing values of both categorical and continuous variables?', 'K-NN', 'Linear Regression', 'Logistic Regression', 'None of the above', 'K-NN', 2, 'Logistic Regression'),
(3, 'Which of the following is true about Manhattan distance?', 'It can be used for continuous variables', 'It can be used for categorical variables', 'It can be used for categorical as well as continuous', 'None of these', 'It can be used for continuous variables', 2, 'It can be used for categorical variables'),
(4, 'A company has build a kNN classifier that gets 100% accuracy on training data. When they deployed this model on client side it has been found that the model is not at all accurate. Which of the following thing might gone wrong?', 'It is probably a overfitted model', 'It is probably a underfitted model', 'Can’t say', 'None of these', 'It is probably a overfitted model', 4, 'Can’t say'),
(5, 'In k-NN what will happen when you increase/decrease the value of k?', 'The boundary becomes smoother with increasing value of K', 'The boundary becomes smoother with decreasing value of K', ' Smoothness of boundary doesn’t dependent on value of K', 'None of these', 'The boundary becomes smoother with increasing value of K', 3, 'The boundary becomes smoother with decreasing value of K'),
(6, 'Which of the following is an example of a deterministic algorithm?', 'PCA', 'K-Means', 'DBScan', 'SVM', 'PCA', 1, 'PCA'),
(7, 'What would you do in PCA to get the same projection as SVD?', 'Transform data to zero mean', 'Transform data to zero median', 'Not possible', 'None of these', 'Transform data to zero mean', 1, 'Transform data to zero mean'),
(8, 'Let’s say, you are using activation function X in hidden layers of neural network. At a particular neuron for any given input, you get the output as “-0.0001”. Which of the following activation function could X represent?', 'ReLU', 'tanh', 'SIGMOID', 'None of these', 'tanh', 4, 'SIGMOID'),
(9, 'Which of the factors affect the performance of learner system does not include?', 'Representation scheme used', 'Training scenario', 'Type of feedback', 'Good data structures', 'Good data structures', 2, 'Training scenario');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_sql`
--

CREATE TABLE `quiz_sql` (
  `id` int(11) NOT NULL,
  `que` text NOT NULL,
  `option 1` text NOT NULL,
  `option 2` text NOT NULL,
  `option 3` text NOT NULL,
  `option 4` text NOT NULL,
  `ans` text NOT NULL,
  `marks` int(11) NOT NULL DEFAULT 1,
  `userans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_sql`
--

INSERT INTO `quiz_sql` (`id`, `que`, `option 1`, `option 2`, `option 3`, `option 4`, `ans`, `marks`, `userans`) VALUES
(1, 'What is the full form of SQL?', 'Structured Query Language', 'Structured Query List', 'Simple Query Language', 'None of these', 'Structured Query Language', 1, 'Simple Query Language'),
(2, 'Which is the subset of SQL commands used to manipulate Oracle database structure, including tables?', 'Data Definition Language(DDL)', 'Data Manipulation Language(DML)', 'Both of above', 'None', 'Data Definition Language(DDL)', 3, 'Data Manipulation Language(DML)'),
(3, 'Which operator performs pattern matching?', 'BETWEEN', 'LIKE', 'EXIST', 'None of the above', 'LIKE', 1, 'LIKE'),
(4, 'What operator tests column for the absense of data?', 'EXIST', 'NOT', 'IS NULL', 'None of these', 'IS NULL', 2, 'IS NULL'),
(5, 'Which command is used to change a table storage characteristics?', 'ALTER', 'CHANGE', 'MODIFY', 'All of the above', 'ALTER', 1, 'ALTER'),
(6, 'Which SQL function is used to count the number of rows in a SQL query?', 'COUNT()', 'NUMBER()', 'SUM()', 'COUNT(*)', 'COUNT(*)', 2, 'COUNT(*)'),
(7, 'Which SQL keyword is used to retrieve a maximum value?', 'MOST', 'TOP', 'MAX', 'UPPER', 'MAX', 1, 'MAX'),
(8, 'Which of the following is not a DDL command?', 'UPDATE', 'TRUNCATE', 'ALTER', 'NONE OF THE ABOVE', 'UPDATE', 1, 'UPDATE'),
(9, 'Which of the following statement is true?', 'DELETE does not free the space containing the table and TRUNCATE free the space containing the table', 'Both DELETE and TRUNCATE free the space containing the table', 'Both DELETE and TRUNCATE does not free the space containing the table', 'DELETE free the space containing the table and TRUNCATE does not free the space containing the table', 'DELETE does not free the space containing the table and TRUNCATE free the space containing the table', 3, 'DELETE does not free the space containing the table and TRUNCATE free the space containing the table'),
(10, 'What is the purpose of the SQL AS clause?', 'The AS SQL clause is used to change the name of a column in the result set or to assign a name to a derived column', 'The AS clause is used with the JOIN clause only', 'The AS clause defines a search condition', 'All of the mentioned', 'The AS SQL clause is used to change the name of a column in the result set or to assign a name to a derived column', 4, 'The AS SQL clause is used to change the name of a column in the result set or to assign a name to a derived column');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `uidUsers` varchar(128) NOT NULL,
  `emailUsers` varchar(128) NOT NULL,
  `pwdUsers` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUsers`, `uidUsers`, `emailUsers`, `pwdUsers`) VALUES
(8, 'testuser8', 'tu8@sl.com', '$2y$10$.BaM43MtDEptR90aMmpXX.edvnvnijSlmCKI4JbHaTQWRFJLuW9KK'),
(9, 'testuser9', 'tu9@sl.com', '$2y$10$QRPuPtePzlZJ8JnYBtx6NurPkmVCoOws6fEGnIJbbttOz9JgoQfBS'),
(10, 'testuser1', 'tu1@sl.com', '$2y$10$m1CJT4wYANefO9/703oUv.JpScDVuCFeIYx2kM5l3ddWd1lriLy9G'),
(11, 'testuser2', 'tu2@sl.com', '$2y$10$Eo9mauX5ZwnZx.sWrsL86.WLnAC2ltWmtBqgTVbhXsjSzHrpWrZVm'),
(12, 'testuser3', 'tu3@sl.com', '$2y$10$ngNbev1iNF4Y8usz5mLL4O2jQgO/FQi.DzQzn2gi74/PLVUw39HtO'),
(13, 'testuser4', 'tu4@sl.com', '$2y$10$m4RaivkHOVIA1ZATx8yxlu.DX8pvSToNXa48.nPf8HbT6PTvWogu.'),
(14, 'testuser5', 'tu5@sl.com', '$2y$10$o2Nj5IH05SmS5jFramFctOYMhXea2/k/R79B8l/UiNLUYjpHjE5o2'),
(15, 'testuser6', 'tu6@sl.com', '$2y$10$aszt2Glo5zl/PLehxUtoqOSVhe9pgBpDE7sIc2zVcNIo9lPVcCSAK'),
(16, 'testuser7', 'tu7@sl.com', '$2y$10$ay2/5L7YE6Q764BmNKZc0uHUlzOgDuEWl1x4K0KKEu5vOrPWj0Jcq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leaderboard`
--
ALTER TABLE `leaderboard`
  ADD PRIMARY KEY (`uidUsers`);

--
-- Indexes for table `quiz_sql`
--
ALTER TABLE `quiz_sql`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
--
-- Database: `test2`
--
CREATE DATABASE IF NOT EXISTS `test2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test2`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'abhishekbishnoi694@gmail.com', 'abhishek@123');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('5b141d712647f', '5b141d71485b9'),
('5b141d718f873', '5b141d71978be'),
('5b141d71ddb46', '5b141d71e5f43'),
('5b141d721a738', '5b141d7222884'),
('5b141d7260b7d', '5b141d7268b9a'),
('5b141d72a6fa1', '5b141d72aefcb'),
('5b141d72d7a1c', '5b141d72dfa7b'),
('5b141d731429b', '5b141d731c234'),
('5b141d7345176', '5b141d734cd1b'),
('5b141d737ddfc', '5b141d73858df'),
('5b1422651fdde', '5b1422654ab51'),
('5b14226574ed5', '5b1422657d064'),
('5b142265b5d08', '5b142265c09f5'),
('5b1422661d93f', '5b14226635e0d'),
('5b14226663cf4', '5b1422666bf2b'),
('5b1422669481b', '5b1422669c8ea'),
('5b142266c525c', '5b142266cd369'),
('5b14226711d91', '5b14226719fb1'),
('5b1422674286d', '5b1422674a9ee'),
('5b1422677371f', '5b1422677b3fc');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('suryaprasadtripathy8@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:56:00'),
('pinky@gmail.com', '5b141b8009cf0', 30, 10, 10, 0, '2018-06-03 16:57:45'),
('priyanka@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:59:06'),
('suryaprasadtripathy8@gmail.com', '5b141f1e8399e', 26, 10, 9, 1, '2018-06-03 17:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('5b141d712647f', 'Personal Home Page', '5b141d71485b9'),
('5b141d712647f', 'Private Home Page', '5b141d71485dc'),
('5b141d712647f', 'Pretext Hypertext Processor', '5b141d71485e0'),
('5b141d712647f', 'Preprocessor Home Page', '5b141d71485e4'),
('5b141d718f873', 'Rasmus Lerdorf', '5b141d71978be'),
('5b141d718f873', 'Willam Makepiece', '5b141d71978cc'),
('5b141d718f873', 'Drek Kolkevi', '5b141d71978d1'),
('5b141d718f873', 'List Barely', '5b141d71978d4'),
('5b141d71ddb46', '.html', '5b141d71e5f2b'),
('5b141d71ddb46', '.ph', '5b141d71e5f3c'),
('5b141d71ddb46', '.php', '5b141d71e5f43'),
('5b141d71ddb46', '.xml', '5b141d71e5f48'),
('5b141d721a738', 'for loop', '5b141d7222820'),
('5b141d721a738', 'do-while loop', '5b141d722282f'),
('5b141d721a738', 'foreach loop', '5b141d7222880'),
('5b141d721a738', 'All of the above', '5b141d7222884'),
('5b141d7260b7d', 'echo (â€œHello Worldâ€);', '5b141d7268b8a'),
('5b141d7260b7d', 'print (â€œHello Worldâ€);', '5b141d7268b95'),
('5b141d7260b7d', 'printf (â€œHello Worldâ€);', '5b141d7268b98'),
('5b141d7260b7d', 'All of the above', '5b141d7268b9a'),
('5b141d72a6fa1', 'file()', '5b141d72aefcb'),
('5b141d72a6fa1', 'arr_file()', '5b141d72aefd8'),
('5b141d72a6fa1', 'arrfile()', '5b141d72aefdc'),
('5b141d72a6fa1', 'file_arr()', '5b141d72aefe0'),
('5b141d72d7a1c', 'Magic Function', '5b141d72dfa7b'),
('5b141d72d7a1c', 'Inbuilt Function', '5b141d72dfa85'),
('5b141d72d7a1c', 'Default Function', '5b141d72dfa88'),
('5b141d72d7a1c', 'User Defined Function', '5b141d72dfa8b'),
('5b141d731429b', 'CREATE TABLE table_name (column_name column_type);', '5b141d731c234'),
('5b141d731429b', 'CREATE table_name (column_type column_name);', '5b141d731c242'),
('5b141d731429b', 'CREATE table_name (column_name column_type);', '5b141d731c248'),
('5b141d731429b', 'CREATE TABLE table_name (column_type column_name);', '5b141d731c24b'),
('5b141d7345176', 'get_array() and get_row()', '5b141d734cd10'),
('5b141d7345176', 'fetch_array() and fetch_row()', '5b141d734cd1b'),
('5b141d7345176', 'get_array() and get_column()', '5b141d734cd1d'),
('5b141d7345176', 'fetch_array() and fetch_column()', '5b141d734cd20'),
('5b141d737ddfc', 'explode()', '5b141d73858d0'),
('5b141d737ddfc', 'implode()', '5b141d73858df'),
('5b141d737ddfc', 'concat()', '5b141d73858e3'),
('5b141d737ddfc', 'concatenate()', '5b141d73858e8'),
('5b1422651fdde', '32 bits', '5b1422654ab3a'),
('5b1422651fdde', '128 bytes', '5b1422654ab48'),
('5b1422651fdde', '64 bits', '5b1422654ab4d'),
('5b1422651fdde', '16 bytes', '5b1422654ab51'),
('5b14226574ed5', 'IP', '5b1422657d052'),
('5b14226574ed5', 'TCP', '5b1422657d05f'),
('5b14226574ed5', 'UDP', '5b1422657d064'),
('5b14226574ed5', 'ARP', '5b1422657d069'),
('5b142265b5d08', 'Session layer', '5b142265c09e3'),
('5b142265b5d08', 'Physical layer', '5b142265c09f5'),
('5b142265b5d08', 'Data Link layer', '5b142265c09fa'),
('5b142265b5d08', 'Application layer', '5b142265c09ff'),
('5b1422661d93f', '12.0.0.1', '5b14226635df5'),
('5b1422661d93f', '168.172.19.39', '5b14226635e04'),
('5b1422661d93f', '172.15.14.36', '5b14226635e09'),
('5b1422661d93f', '192.168.24.43', '5b14226635e0d'),
('5b14226663cf4', 'Application', '5b1422666bf2b'),
('5b14226663cf4', 'Presentation', '5b1422666bf39'),
('5b14226663cf4', 'Session', '5b1422666bf3e'),
('5b14226663cf4', 'Transport', '5b1422666bf42'),
('5b1422669481b', 'VTP', '5b1422669c8dc'),
('5b1422669481b', 'STP', '5b1422669c8ea'),
('5b1422669481b', 'RIP', '5b1422669c8ef'),
('5b1422669481b', 'CDP', '5b1422669c8f3'),
('5b142266c525c', '14', '5b142266cd353'),
('5b142266c525c', '15', '5b142266cd361'),
('5b142266c525c', '16', '5b142266cd365'),
('5b142266c525c', '30', '5b142266cd369'),
('5b14226711d91', '255.255.255.192', '5b14226719fa0'),
('5b14226711d91', '255.255.255.224', '5b14226719fb1'),
('5b14226711d91', '255.255.255.240', '5b14226719fb7'),
('5b14226711d91', '255.255.255.248', '5b14226719fbb'),
('5b1422674286d', '6', '5b1422674a9ee'),
('5b1422674286d', '8', '5b1422674aa01'),
('5b1422674286d', '30', '5b1422674aa06'),
('5b1422674286d', '32', '5b1422674aa0b'),
('5b1422677371f', '127.0.0.0', '5b1422677b3e9'),
('5b1422677371f', '1.0.0.127', '5b1422677b3f7'),
('5b1422677371f', '127.0.0.1', '5b1422677b3fc'),
('5b1422677371f', '127.0.0.255', '5b1422677b400');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('5b141b8009cf0', '5b141d712647f', 'What does PHP stand for?', 4, 1),
('5b141b8009cf0', '5b141d718f873', 'Who is the father of PHP?', 4, 2),
('5b141b8009cf0', '5b141d71ddb46', 'PHP files have a default file extension of.', 4, 3),
('5b141b8009cf0', '5b141d721a738', 'Which of the looping statements is/are supported by PHP?', 4, 4),
('5b141b8009cf0', '5b141d7260b7d', 'Which of the following PHP statements will output Hello World on the screen?', 4, 5),
('5b141b8009cf0', '5b141d72a6fa1', 'Which one of the following function is capable of reading a file into an array?', 4, 6),
('5b141b8009cf0', '5b141d72d7a1c', 'A function in PHP which starts with __ (double underscore) is know as..', 4, 7),
('5b141b8009cf0', '5b141d731429b', 'Which one of the following statements is used to create a table?', 4, 8),
('5b141b8009cf0', '5b141d7345176', 'Which of the methods are used to manage result sets using both associative and indexed arrays?', 4, 9),
('5b141b8009cf0', '5b141d737ddfc', 'Which one of the following functions can be used to concatenate array elements to form a single delimited string?', 4, 10),
('5b141f1e8399e', '5b1422651fdde', 'How long is an IPv6 address?', 4, 1),
('5b141f1e8399e', '5b14226574ed5', 'Which protocol does DHCP use at the Transport layer?', 4, 2),
('5b141f1e8399e', '5b142265b5d08', 'Where is a hub specified in the OSI model?', 4, 3),
('5b141f1e8399e', '5b1422661d93f', 'Which of the following is private IP address?', 4, 4),
('5b141f1e8399e', '5b14226663cf4', 'If you use either Telnet or FTP, which is the highest layer you are using to transmit data?', 4, 5),
('5b141f1e8399e', '5b1422669481b', 'Which of the following is a layer 2 protocol used to maintain a loop-free network?', 4, 6),
('5b141f1e8399e', '5b142266c525c', 'What is the maximum number of IP addresses that can be assigned to hosts on a local subnet that uses the 255.255.255.224 subnet mask?', 4, 7),
('5b141f1e8399e', '5b14226711d91', 'You need to subnet a network that has 5 subnets, each with at least 16 hosts. Which classful subnet mask would you use?', 4, 8),
('5b141f1e8399e', '5b1422674286d', 'You have an interface on a router with the IP address of 192.168.192.10/29. Including the router interface, how many hosts can have IP addresses on the LAN attached to the router interface?', 4, 9),
('5b141f1e8399e', '5b1422677371f', 'To test the IP stack on your local host, which IP address would you ping?\r\n\r\n', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('5b141b8009cf0', 'Php & Mysqli', 3, 1, 10, '2018-06-03 16:46:56'),
('5b141f1e8399e', 'Ip Networking', 3, 1, 10, '2018-06-03 17:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('pinky@gmail.com', 30, '2018-06-03 16:57:45'),
('priyanka@gmail.com', 22, '2018-06-03 16:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('Swagatika Padhi', 'National Institute of Science and Technology, Berhampur', 'pinky@gmail.com', 'pinky'),
('Priyanka Pattnaik', 'National Institute of Science and Technology, Berhampur', 'priyanka@gmail.com', 'pinka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
