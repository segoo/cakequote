-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Lun 25 Février 2013 à 23:47
-- Version du serveur: 5.5.9
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `cakequote`
--

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `groups`
--

INSERT INTO `groups` VALUES(1, 'administrators');
INSERT INTO `groups` VALUES(2, 'moderators');
INSERT INTO `groups` VALUES(3, 'editors');

-- --------------------------------------------------------

--
-- Structure de la table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` char(15) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated` (`updated`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `quotes`
--

INSERT INTO `quotes` VALUES(1, 'jc', 'Joseph Conrad disait...', 'La croyance en une origine surnaturelle du mal n''est pas nécessaire. Les hommes sont à eux seuls capables des pires atrocités.', 1, '2013-02-19 14:06:17', NULL);
INSERT INTO `quotes` VALUES(2, 'em', 'Emerson disait...', 'Tout est mystère, et la clé d''un mystère est un autre mystère.', 1, '2013-02-19 15:19:09', NULL);
INSERT INTO `quotes` VALUES(3, 'wc', 'Winston Churchill disait...', 'Plus loin on regarde vers le passé, plus loin on voit vers l''avenir', 2, '2013-02-19 15:21:22', NULL);
INSERT INTO `quotes` VALUES(4, 'mieux-vaut', 'Nietzsche disait...', 'Mieux vaut être seul que mal accompagné.', 2, '2013-02-19 15:21:18', NULL);
INSERT INTO `quotes` VALUES(5, 'ein', 'Einstein disait...', 'L''imagination est plus importante que la connaissance, car la connaissance est limitée... tandis que l''imagination engendre le monde entier.', 2, '2013-02-19 15:21:58', NULL);
INSERT INTO `quotes` VALUES(6, 'fau', 'Faulkner disait...', 'Ne vous souciez pas d''être meilleur que vos comtemporains ou de vos prédecesseurs, essayez d''être meilleur que vous-même.', 2, '2013-02-19 15:23:30', NULL);
INSERT INTO `quotes` VALUES(11, NULL, 'Euripide disait...', 'Lorsqu''un grand homme est blessé, tous ceux qui prétendent être grand doivent souffrir avec lui.', 6, '2013-02-22 15:26:00', '2013-02-22 15:26:00');
INSERT INTO `quotes` VALUES(9, 'sir', 'Sir Peter Ustinov disait...', 'Une surabondance de rêves s''accompagne malheureusement d''un nombre croissant de cauchemars.', 1, '2013-02-22 00:06:11', '2013-02-22 00:06:11');
INSERT INTO `quotes` VALUES(13, NULL, 'Abraham Lincoln disait...', 'A la fin ce ne sont pas les années écoulées de votre vie qui comptent, mais la vie qui a inondé ces années.', 6, '2013-02-22 15:26:52', '2013-02-22 15:26:52');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(50) NOT NULL,
  `password` char(50) DEFAULT NULL,
  `email` char(200) NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` VALUES(1, 'admin', 'e28a4bde27090352f2fd5bcbaead71ac17090451', 'admin@admin.com', 1, '2013-02-19 13:42:43', '2013-02-21 23:56:59');
INSERT INTO `users` VALUES(2, 'bob', 'pass', 'bob@bob.com', 2, '2013-02-19 15:19:59', NULL);
INSERT INTO `users` VALUES(3, 'alice', 'pass', 'alice@alice.com', 3, '2013-02-19 15:20:16', NULL);
INSERT INTO `users` VALUES(4, 'charlie', 'pass', 'charlie@charlie.com', 3, '2013-02-19 15:20:32', NULL);
INSERT INTO `users` VALUES(5, 'modo', 'e28a4bde27090352f2fd5bcbaead71ac17090451', 'maria@yahoo.com', 2, '2013-02-20 16:58:55', '2013-02-20 16:58:55');
INSERT INTO `users` VALUES(6, 'editor', 'e28a4bde27090352f2fd5bcbaead71ac17090451', 'edi@tor.fr', 3, '2013-02-20 18:39:07', '2013-02-20 18:39:07');
INSERT INTO `users` VALUES(7, 'adminis', 'e28a4bde27090352f2fd5bcbaead71ac17090451', '', 1, '2013-02-21 23:06:39', '2013-02-21 23:06:39');
INSERT INTO `users` VALUES(8, 'Bobby', 'e28a4bde27090352f2fd5bcbaead71ac17090451', 'bo@by.fr', 0, '2013-02-22 10:55:26', '2013-02-22 10:55:26');
INSERT INTO `users` VALUES(9, 'Bobby', 'e28a4bde27090352f2fd5bcbaead71ac17090451', 'bo@by.fr', 0, '2013-02-22 10:56:26', '2013-02-22 10:56:26');
INSERT INTO `users` VALUES(10, 'Bobby', 'e28a4bde27090352f2fd5bcbaead71ac17090451', 'bo@by.fr', 0, '2013-02-22 10:57:02', '2013-02-22 10:57:02');
INSERT INTO `users` VALUES(11, 'Bobby', 'e28a4bde27090352f2fd5bcbaead71ac17090451', 'bo@by.fr', 0, '2013-02-22 10:59:08', '2013-02-22 10:59:08');
INSERT INTO `users` VALUES(12, 'Bobby', 'e28a4bde27090352f2fd5bcbaead71ac17090451', 'bo@by.fr', 0, '2013-02-22 11:02:20', '2013-02-22 11:02:20');
INSERT INTO `users` VALUES(13, 'Bobby', 'e28a4bde27090352f2fd5bcbaead71ac17090451', 'bo@by.fr', 0, '2013-02-22 11:02:54', '2013-02-22 11:02:54');
INSERT INTO `users` VALUES(14, 'Bobby', 'e28a4bde27090352f2fd5bcbaead71ac17090451', 'bo@by.fr', 0, '2013-02-22 11:05:37', '2013-02-22 11:05:37');
INSERT INTO `users` VALUES(15, 'Bobby', 'e28a4bde27090352f2fd5bcbaead71ac17090451', 'bo@by.fr', 0, '2013-02-22 11:05:41', '2013-02-22 11:05:41');
INSERT INTO `users` VALUES(16, 'Bobby', 'e28a4bde27090352f2fd5bcbaead71ac17090451', 'bo@by.fr', 3, '2013-02-22 11:05:55', '2013-02-22 11:05:55');
INSERT INTO `users` VALUES(17, 'Bobby', 'e28a4bde27090352f2fd5bcbaead71ac17090451', 'bo@by.fr', 3, '2013-02-22 11:15:41', '2013-02-22 11:15:41');
INSERT INTO `users` VALUES(18, 'Pati', '127c8225418bc65b8c72ef506f872bb7638bd7ba', 'p@a.t', 3, '2013-02-22 11:16:09', '2013-02-22 11:25:32');
