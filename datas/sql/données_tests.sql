-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 02 Novembre 2015 à 23:02
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `forum`
--

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `description`, `categorie_id`, `classement`, `created`, `updated`) VALUES
(3, 'Général', 'Voilà voilà....', 0, 10, '2015-10-27 16:22:35', '2015-10-30 16:01:41'),
(4, 'Déveleppement', 'dev', 0, 20, '2015-10-27 16:22:52', '2015-10-30 16:04:33'),
(5, 'Réseau', 'reseau', 0, 30, '2015-10-27 16:23:02', '2015-10-30 16:04:45'),
(6, 'Algo, Maths', 'maths', 0, 40, '2015-10-27 16:23:33', '2015-10-30 16:05:12'),
(7, 'EDM, Anglais', 'edm anglais', 0, 50, '2015-10-27 16:23:57', '2015-10-30 16:05:43'),
(8, 'Autres', 'autres', 0, 60, '2015-10-27 16:24:06', '2015-10-30 16:05:56'),
(9, 'Base de données', '', 4, 0, '2015-10-27 16:24:41', '2015-10-27 16:25:08'),
(10, 'PHP', '', 4, 0, '2015-10-27 16:25:15', '0000-00-00 00:00:00'),
(11, 'Java', '', 4, 0, '2015-10-27 16:25:20', '0000-00-00 00:00:00'),
(12, 'Algorithmes appliqués', '', 6, 0, '2015-10-27 16:26:12', '0000-00-00 00:00:00'),
(13, 'Mathématiques de l''informatique', '', 6, 0, '2015-10-27 16:29:20', '0000-00-00 00:00:00'),
(14, 'Mathématiques approfondis', '', 6, 0, '2015-10-27 16:29:56', '0000-00-00 00:00:00'),
(15, 'SGBD', 'Système de Gestion de Base de Données', 9, 0, '2015-10-28 16:33:53', '0000-00-00 00:00:00'),
(16, 'Teeeeeest treees loooo nnnngg', 'bla.', 10, 0, '2015-11-02 22:13:26', '0000-00-00 00:00:00');

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id`, `contenu`, `sujet_id`, `utilisateur_id`, `created`, `updated`) VALUES
(1, 'Voici un message', 3, 3, '2015-10-30 16:35:45', '0000-00-00 00:00:00'),
(2, 'Voici un autre message', 3, 4, '2015-10-30 16:35:58', '0000-00-00 00:00:00'),
(3, 'ta mere', 3, 4, '2015-11-02 19:27:12', '0000-00-00 00:00:00'),
(7, 'test', 3, 3, '2015-11-02 19:58:16', '0000-00-00 00:00:00'),
(8, 'ok', 3, 3, '2015-11-02 20:30:42', '0000-00-00 00:00:00');

--
-- Contenu de la table `sujets`
--

INSERT INTO `sujets` (`id`, `titre`, `contenu`, `categorie_id`, `utilisateur_id`, `created`, `updated`) VALUES
(3, 'Commencements', 'Dans ce forum vous trouverez des réponses aux question posé par des étudiants en BTS SIO.', 3, 3, '2015-10-27 16:35:20', '0000-00-00 00:00:00'),
(4, 'test', 'Restabat ut Caesar post haec properaret accitus et abstergendae causa suspicionis sororem suam, eius uxorem, Constantius ad se tandem desideratam venire multis fictisque blanditiis hortabatur. quae licet ambigeret metuens saepe cruentum, spe tamen quod eum lenire poterit ut germanum profecta, cum Bithyniam introisset, in statione quae Caenos Gallicanos appellatur, absumpta est vi febrium repentina. cuius post obitum maritus contemplans cecidisse fiduciam qua se fultum existimabat, anxia cogitatione, quid moliretur haerebat.', 9, 3, '2015-10-27 16:37:16', '0000-00-00 00:00:00'),
(5, 'test2', 'blabla blablabl a blablablabl ablablablab  lablablablab lablabl ablabla blabla blab labla blablabl ablablabla blabla blablabla blablabl ab lablabl ablablab lablablabl ablablab lablabl ablablabla blablabla blabl a blablablab lablablab lablablabl ablabla blablablab  lablabl ablablablablabl ablablablab lablabl  ablablablablab lablablabl ablablabla  blablablabl ablablabl abla blablablablablabl abla blablabla blablablabla', 4, 3, '2015-10-27 17:23:02', '0000-00-00 00:00:00'),
(6, 'test3', 'test', 4, 3, '2015-10-28 04:06:16', '0000-00-00 00:00:00'),
(7, 'test4', 'test', 9, 3, '2015-10-28 04:12:14', '0000-00-00 00:00:00'),
(8, 'test', 'test', 15, 3, '2015-10-30 15:54:43', '0000-00-00 00:00:00'),
(9, 'test', 'test', 6, 4, '2015-11-02 20:59:42', '0000-00-00 00:00:00'),
(11, 'Teeeeee ssssstttt tttrrres loooooo nnnnnn gggggg', 'bla.', 16, 3, '2015-11-02 22:14:00', '0000-00-00 00:00:00');

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `sexe`, `dateNaiss`, `mail`, `login`, `password`, `token`, `created`, `updated`) VALUES
(4, 'test', 'test', 0, '0000-00-00', 'test', 'test', '098f6bcd4621d373cade4e832627b4f6', 0, '2015-10-28 04:53:59', '2015-11-02 21:01:59');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
