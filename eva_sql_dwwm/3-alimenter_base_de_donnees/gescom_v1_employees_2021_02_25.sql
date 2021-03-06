DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `emp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `emp_superior_id` int(10) UNSIGNED DEFAULT NULL,
  `emp_pos_id` int(10) UNSIGNED NOT NULL,
  `emp_lastname` varchar(50) NOT NULL,
  `emp_firstname` varchar(50) NOT NULL,
  `emp_address` varchar(150) NOT NULL,
  `emp_zipcode` varchar(5) NOT NULL,
  `emp_city` varchar(50) NOT NULL,
  `emp_mail` varchar(255) NOT NULL,
  `emp_phone` varchar(10) NOT NULL,
  `emp_salary` decimal(8,2) UNSIGNED DEFAULT NULL,
  `emp_enter_date` date NOT NULL,
  `emp_gender` char(1) NOT NULL,
  `emp_children` tinyint(2) NOT NULL,
  `emp_sho_id` tinyint(3) UNSIGNED NOT NULL,
  `emp_dep_id` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `emp_superior_id` (`emp_superior_id`),
  KEY `emp_pos_id` (`emp_pos_id`),
  KEY `emp_shop_id` (`emp_sho_id`),
  KEY `emp_dep_id` (`emp_dep_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

INSERT INTO `employees` (`emp_id`, `emp_superior_id`, `emp_pos_id`, `emp_lastname`, `emp_firstname`, `emp_address`, `emp_zipcode`, `emp_city`, `emp_mail`, `emp_phone`, `emp_salary`, `emp_enter_date`, `emp_gender`, `emp_children`, `emp_sho_id`, `emp_dep_id`) VALUES
(1, 17, 5, 'MOLETTE', 'Denis', '27 avenue Paul Lepoulpe', '80000', 'Amiens', 'dmolette@blabla.fr', '0102030405', '18473.00', '2020-05-05', 'M', 8, 1, 4),
(2, 3, 2, 'NAGER', 'Emma', '14 rue Tabaga', '80300', 'Albert', 'emmanager@laposte.net', '0102030405', '39576.00', '2015-03-27', 'F', 0, 1, 6),
(3, NULL, 1, 'LEBOSSE', 'Hugo', '28 mail Ludovic Cruchot', '75001', 'Paris', 'leboss@jarditou.com', '0102030405', '350000.78', '2000-01-01', 'M', 2, 1, 8),
(4, 17, 6, 'LAPAGE', 'Edith', '22 rue Stevy Boulay', '60300', 'Senlis', 'lapage60300@yahoo.fr', '0102030405', '18473.00', '2012-12-01', 'F', 1, 1, 6),
(5, 17, 1, 'DRESSAMERE', 'Yvan', '224 avenue Caumartin', '75009', 'Paris', 'yvan75009@outlook.com', '0102030405', '39576.00', '2007-11-04', 'M', 0, 1, 6),
(6, 5, 3, 'MERCE', 'Coco', '56 cours Loana', '02000', 'Laon', 'merce@wazaa.net', '0102030405', '30000.00', '2010-07-31', 'F', 2, 1, 6),
(7, 2, 3, 'AMAR', 'Yann', '4 rue du papillon de lumi??re', '62000', 'Arras', 'amar@azerty.com', '0102030405', '30000.00', '2008-05-28', 'M', 3, 2, 6),
(8, 17, 13, 'ASAP', 'Liliane', 'Appartement 202-3846 Suspendisse Chemin', 'FA46 ', 'Pekanbaru', 'convallis@Integer.com', '0102030405', '18473.00', '2007-03-20', 'F', 5, 3, 6),
(9, 17, 34, 'LAVISSE', 'Edouard', '131-3667 Arcu. Rd.', '80136', 'Rivery', 'nulla.magna@Proinvel.co.uk', '0102030405', '24000.00', '2016-12-17', 'M', 2, 1, 4),
(10, 17, 14, 'HILLARY', 'Dorian', '6824 Placerat. Route', '12787', 'Parramatta', 'mus@Morbi.co.uk', '0102030405', '20450.00', '2002-03-10', 'M', 2, 2, 6),
(11, 26, 27, 'POUTIN', 'Vladimir', '251-633 Convallis Impasse', '8373 ', 'Colchester', 'facilisis.vitae.orci@indolor.net', '0102030405', '29500.00', '2015-05-03', 'M', 4, 1, 10),
(12, 17, 7, 'DECLAN', 'Richard', 'Appartement 870-7677 Magna Av.', '42980', 'Dornbirn', 'Mauris@amet.ca', '0102030405', '51802.00', '2003-06-25', 'M', 2, 1, 5),
(13, 17, 14, 'ABRAHAM', 'Fran??ois', '612-4178 Urna Chemin', '87784', 'Llanidloes', 'sodales@malesuadaInteger.com', '0102030405', '20450.00', '2012-09-08', 'M', 5, 3, 6),
(14, 17, 4, 'COOPER', 'Dale', '6954 Mauris Av.', '17543', 'Kalyan', 'Nunc.ullamcorper.velit@penatibuset.org', '0102030405', '39576.00', '2000-01-21', 'M', 4, 3, 6),
(15, 17, 8, 'FULLER', 'Christophe', '977-8389 Dui. Ave', '9229', 'Konstanz', 'semper@metus.edu', '0102030405', '18473.00', '2006-02-19', 'M', 1, 1, 2),
(16, 7, 17, 'TRON', 'Paul', '2323 Metus. Rue', '20403', 'Jumet', 'eu@gravidamauris.org', '0102030405', '51802.00', '2013-04-08', 'M', 1, 2, 6),
(17, 17, 14, 'HASZIC', 'Alec', '370-2193 Sed Rd.', '39132', 'Orangeville', 'cursus.Nunc@amet.edu', '0102030405', '20450.00', '2006-09-15', 'M', 4, 3, 6),
(18, 17, 10, 'VADENT', 'Sophie', 'CP 131, 8783 Nisi Impasse', '26972', 'Burnaby', 'a@vitaepurusgravida.org', '0102030405', '51802.00', '2014-06-26', 'F', 2, 1, 2),
(19, 17, 14, 'BALZAC', 'J??r??my', 'CP 630, 2906 Mollis Route', '0247', 'Colchester', 'penatibus.et@sempertellusid.net', '0102030405', '20450.00', '2009-07-29', 'M', 3, 3, 6),
(20, 17, 14, 'YETTA', 'Ahmed', '228-2670 Luctus. Route', '85726', 'Havillers', 'non@ac.edu', '0102030405', '20450.00', '2008-03-13', 'M', 0, 2, 6),
(21, 6, 3, 'CHERET', 'Philippe', '443 Non Rue', '58015', 'Dolcedo', 'placerat.augue.Sed@mi.net', '0102030405', '30000.00', '2002-06-30', 'M', 2, 3, 6),
(22, 5, 17, 'FERRIS', 'Anne', 'Appartement 172-7219 Ante Chemin', '5155 ', 'North Waziristan', 'Duis.risus.odio@at.com', '0102030405', '51802.00', '2015-05-21', 'F', 0, 3, 6),
(23, 17, 12, 'TERIEUR', 'Alex', 'Appartement 733-1291 Velit Av.', '60100', 'Creil', 'alex@integereu.edu', '0102030405', '30000.00', '2019-03-19', 'M', 3, 3, 6),
(24, 17, 4, 'JANA', 'Vincent', '1229 Laoreet Av.', '07789', 'Bad Ischl', 'lacus@iderat.org', '0102030405', '39576.00', '2008-06-06', 'M', 5, 2, 6),
(25, 4, 17, 'LABALLE', 'Willy', '113-6834 At Rd.', 'B4X 7', 'Labuissi??re', 'Suspendisse@nec.ca', '0102030405', '51802.00', '2004-03-06', 'M', 1, 1, 6),
(26, 17, 8, 'COCU', 'St??phanie', 'CP 382, 9910 Massa. Avenue', '50718', 'Regina', 'ac.metus.vitae@quamquisdiam.net', '0102030405', '18473.00', '2013-07-11', 'F', 4, 2, 2),
(27, 17, 13, 'DELISLE', 'St??phane', 'Appartement 406-5833 Facilisis, Av.', '26986', 'Sainte-Flavie', 'natoque.penatibus.et@utnullaCras.edu', '0102030405', '18473.00', '2002-09-01', 'M', 4, 1, 6),
(28, 17, 7, 'FULTON', 'Bernard', 'Appartement 896-3857 Sit Rue', '78933', 'Versailles', 'elit.elit@blanditNamnulla.ca', '0102030405', '51802.00', '2011-04-23', 'M', 1, 1, 8),
(29, 17, 13, 'KELSIE', 'Kirsten', '5586 Mus. Ave', 'C2W 9', 'Kumluca', 'pharetra.Quisque@Suspendisse.net', '0102030405', '18473.00', '2000-03-30', 'M', 4, 3, 6),
(30, 17, 19, 'RHONDA', 'Bradley', '7331 Pede. Rue', '01971', 'Pishin Valley', 'Nunc.lectus@leoMorbi.co.uk', '0102030405', '18473.00', '2013-10-18', 'M', 0, 1, 5),
(31, 17, 12, 'ASPEN', 'Casey', '7026 Orci Route', '13075', 'Impe', 'enim@ornareelitelit.co.uk', '0102030405', '30000.00', '2018-03-01', 'F', 4, 3, 6),
(32, 17, 8, 'KELSIE', 'Nadia', '723 Orci Rd.', '9989', 'Isola del Gran Sasso d\'Italia', 'amet.risus.Donec@bibendumDonec.ca', '0102030405', '18473.00', '2003-10-17', 'F', 2, 1, 2),
(33, 17, 18, 'DUMOULIN', 'Isabelle', 'Appartement 235-4026 Maecenas Chemin', '77-30', 'Glovertown', 'amet@habitant.edu', '0102030405', '51802.00', '2009-04-07', 'F', 4, 1, 5),
(34, 17, 11, 'DRAKE', 'Ray', '902-1314 Ut Route', '93131', 'Sorbo Serpico', 'sapien.cursus@Donec.com', '0102030405', '39576.00', '2019-12-10', 'M', 1, 3, 6),
(35, 17, 11, 'RICHARD', 'Destiny', '5004 Tellus Ave', '39013', 'Ambon', 'consectetuer@laciniaSedcongue.com', '0102030405', '39576.00', '2009-06-30', 'F', 2, 1, 6),
(36, 17, 12, 'DUFOURD', 'Steve', '356-7367 Nec, Impasse', '30661', 'Bonnert', 'in@Nunc.edu', '0102030405', '30000.00', '2013-08-19', 'M', 5, 3, 6),
(37, 7, 2, 'BECK', 'Carl', '9194 Nulla Ave', '87-14', 'Paris', 'tellus@et.ca', '0102030405', '39576.00', '2004-02-09', 'M', 1, 2, 6),
(38, 17, 14, 'SIMONE', 'George', '700-7880 Gravida Av.', '52439', 'Allentown', 'nostra@fringillaest.ca', '0102030405', '20450.00', '2000-04-07', 'M', 2, 3, 6),
(39, 17, 11, 'DORIAN', 'Zelda', 'CP 315, 4816 Dui. Chemin', '13801', 'Saravena', 'vehicula@turpis.org', '0102030405', '39576.00', '2000-08-12', 'F', 1, 3, 6),
(40, 17, 13, 'FARINI', 'Jana', 'CP 578, 8898 Purus Impasse', '91148', 'Wiener Neustadt', 'cursus.in.hendrerit@egetvariusultrices.ca', '0102030405', '18473.00', '2016-09-19', 'M', 0, 2, 6),
(41, 17, 12, 'GINGER', 'Tara', 'Appartement 254-6736 Sit Route', '74002', 'Amstelveen', 'iaculis@rutrum.org', '0102030405', '30000.00', '2001-05-31', 'F', 5, 2, 6),
(42, 17, 13, 'CHARLOT', 'Elijah', '725-5577 Dictum Chemin', '63145', 'Annan', 'luctus.et@Nunc.net', '0102030405', '18473.00', '2001-04-10', 'M', 3, 1, 6),
(43, 17, 12, 'DUPOND', 'Adrian', 'CP 919, 5276 Leo. Rue', '18974', 'Perquenco', 'Lorem.ipsum@amagnaLorem.net', '0102030405', '30000.00', '2010-10-19', 'M', 3, 2, 6),
(44, 17, 14, 'ISAAC', 'Christine', 'Appartement 717-2181 Et Impasse', '88779', 'Roux', 'lacus@Donecnonjusto.co.uk', '0102030405', '20450.00', '2016-01-09', 'F', 1, 2, 6),
(45, 17, 14, 'QUAMAR', 'Allistair', 'Appartement 223-3446 Mollis Rd.', '55469', 'G??ssing', 'orci@ultricesiaculis.ca', '0102030405', '20450.00', '2016-10-30', 'M', 0, 3, 6),
(46, 17, 5, 'PRINCE', 'Laurent', '665 Nibh. Rd.', '75217', 'Driffield', 'Curae.Phasellus.ornare@quamdignissimpharetra.net', '0102030405', '18473.00', '2003-10-15', 'M', 2, 1, 4),
(47, 2, 2, 'DUMAS', 'Ingrid', '396-7762 Magna. Route', '50406', 'Frigento', 'in.molestie@anteipsumprimis.org', '0102030405', '39576.00', '2017-04-28', 'F', 1, 3, 6),
(48, 17, 19, 'RAMERY', 'Bruno', '863 Nec Ave', '21485', 'Sint-Kruis-Winkel', 'at.lacus.Quisque@maurisipsum.edu', '0102030405', '18473.00', '2000-06-14', 'M', 5, 1, 5),
(49, 17, 11, 'MALACHI', 'Ren??', 'Appartement 165-7157 Auctor Impasse', '40583', 'Wambeek', 'tincidunt.orci@dolorvitae.co.uk', '0102030405', '39576.00', '2002-07-15', 'M', 1, 1, 6),
(50, 17, 13, 'RENSTER', 'Jeannette', 'CP 758, 4652 Mauris Chemin', '85874', 'Gelbressee', 'iaculis@elementumat.ca', '0102030405', '18473.00', '2007-06-22', 'F', 5, 3, 6),
(51, 17, 12, 'BERTAUX', 'Marc', '1664 Bibendum Avenue', '3274', 'Allein', 'mauris.blandit@temporarcuVestibulum.org', '0102030405', '30000.00', '2014-05-10', 'M', 5, 1, 6),
(52, 17, 11, 'RIGEL', 'Armand', 'CP 694, 2496 Eget Rue', '1104', 'Drachten', 'Aenean.eget.metus@orciin.com', '0102030405', '39576.00', '2013-05-11', 'M', 4, 3, 6),
(53, 17, 12, 'WYLIE', 'Jean-Michel', 'CP 725, 3993 Nec Av.', '97875', 'Maule', 'ac.turpis@maurissapiencursus.co.uk', '0102030405', '30000.00', '2014-12-21', 'M', 5, 2, 6),
(54, 26, 27, 'HONORA', 'Anita', '414-9179 Phasellus Rue', '6971', 'Werder', 'Suspendisse.commodo.tincidunt@quispede.org', '0102030405', '29500.00', '2009-06-18', 'F', 5, 1, 10),
(55, 17, 29, 'LANNOY', 'Julia', 'Appartement 111-9165 Metus. Rue', '0521 ', 'Mata de Pl??tano', 'Mauris.ut@urnajusto.co.uk', '0102030405', '18473.00', '2018-06-08', 'F', 0, 1, 5),
(56, 17, 19, 'RICHAUMONT', 'Kendall', '954-5221 Dictum Avenue', '45146', 'Gulfport', 'natoque.penatibus.et@ametconsectetueradipiscing.net', '0102030405', '18473.00', '2007-01-20', 'M', 1, 1, 5),
(57, 17, 14, 'MALIK', 'Keiko', 'Appartement 633-956 Quis, Rd.', '45000', 'Orl??ans', 'pede.ultrices.a@lacusEtiam.org', '0102030405', '20450.00', '2003-03-21', 'F', 2, 2, 6),
(58, 17, 6, 'HECTOR', 'Macaulay', '2095 In Ave', '52-91', 'Emar??se', 'sem.Nulla.interdum@lobortis.ca', '0102030405', '18473.00', '2007-12-26', 'M', 3, 2, 6),
(59, 4, 2, 'HANNAH', 'Amity', '537-1971 Vestibulum Rd.', '8203 ', 'Palagano', 'fermentum@quisturpisvitae.co.uk', '0102030405', '39576.00', '2013-08-01', 'M', 2, 2, 6),
(60, 17, 8, 'HEDY', 'Katell', 'CP 850, 1578 In Rue', '9661', 'Connah\'s Quay', 'lorem.sit.amet@pellentesque.co.uk', '0102030405', '18473.00', '2010-07-26', 'M', 0, 2, 2),
(61, 17, 8, 'BELL', 'Oleg', 'Appartement 679-9483 Fringilla Route', 'B4 6E', 'Parndorf', 'Aenean.massa.Integer@dui.org', '0102030405', '18473.00', '2012-03-25', 'M', 2, 2, 2),
(62, 17, 13, 'PAULA', 'Tasha', 'Appartement 193-7862 Mollis. Rue', '24446', 'McCallum', 'adipiscing.lobortis.risus@semmolestiesodales.com', '0102030405', '18473.00', '2018-02-03', 'F', 1, 2, 6),
(63, 17, 12, 'POPOV', 'Yuri', '6111 Risus. Ave', '60214', 'Compi??gne', 'yuri@gmail.com', '0102030405', '30000.00', '2012-08-06', 'M', 5, 1, 6),
(64, 17, 6, 'DENIS', 'Jeanine', '8325 Ornare Avenue', '71414', 'Colico', 'Integer.id@blanditviverraDonec.edu', '0102030405', '18473.00', '2011-11-30', 'F', 4, 3, 6),
(65, 17, 20, 'KEELY', 'Nassim', '14 avenue Isabelle Herdhebaut', '94086', 'San Juan de Dios', 'n.keely@yahoo.fr', '0102030405', '27000.00', '2000-10-15', 'M', 4, 2, 1),
(66, 17, 22, 'FULTON', 'Michel', '245 avenue du Pr??sident Roosevelt', '80000', 'Amiens', 'faucibus@leoMorbi.org', '0102030405', '18473.00', '2001-02-16', 'M', 4, 1, 6),
(67, 17, 14, 'Cole', 'ALLISTAIR', '27 rue Denis Garnier', '58318', 'Sierning', 'vel@vitae.net', '0102030405', '20450.00', '2007-11-26', 'M', 3, 3, 6),
(68, 17, 11, 'JOEL', 'Rose', '855-6714 Metus. Rue', '00046', 'Lestizza', 'risus.a@odio.com', '0102030405', '39576.00', '2000-12-26', 'F', 2, 3, 6),
(69, 17, 5, 'PRAZART', 'Emmanuel', '8515 Nullam Av.', '80500', 'Montdidier', 'dolor.tempus@augueid.com', '0102030405', '18473.00', '2004-03-15', 'M', 0, 2, 6),
(70, 17, 23, 'GUERAFI', 'Hakim', '480-2381 Volutpat. Avenue', '41233', 'Porto Cesareo', 'hguerafi@laposte.net', '0102030405', '18473.00', '2017-04-16', 'M', 5, 1, 3),
(71, 17, 13, 'AIMEE', 'Germaine', '5466 Nec Avenue', '96176', 'Melipilla', 'lorem@sociis.edu', '0102030405', '18473.00', '2010-05-21', 'F', 2, 2, 6),
(72, 17, 23, 'CARTER', 'Robin', '497 Chemin Ante', '60195', 'Duncan', 'nisi@blandit.ca', '0102030405', '18473.00', '2012-01-20', 'M', 1, 2, 3),
(73, 7, 2, 'LIRMA', 'Hugues', '91 bis rue Jarno', '62000', 'Arras', 'hugues.lirma@jarditou.com', '0102030405', '39576.00', '2019-07-10', 'M', 5, 2, 6),
(74, 17, 22, 'FITZGERALD', 'Neil', 'CP 545, 2293 Aenean Rue', '4431', 'Algarrobo', 'Quisque.purus@Donectincidunt.org', '0102030405', '18473.00', '2014-06-25', 'M', 2, 2, 6),
(75, 17, 24, 'AINSLEY', 'Hayden', '633-8228 Et Av.', '6878', 'G??strow', 'Etiam@Cumsociis.ca', '0102030405', '18473.00', '2003-05-25', 'M', 3, 1, 3),
(76, 17, 12, 'HILARY', 'Zia', '2945 Volutpat. Av.', 'T0X 3', 'Rabbi', 'ut.quam.vel@semut.net', '0102030405', '30000.00', '2006-04-17', 'F', 2, 1, 6),
(77, 17, 24, 'MADELINE', 'Jonas', 'Appartement 521-8237 Ligula. Chemin', 'Z4232', 'Noginsk', 'ac.metus@tellusloremeu.net', '0102030405', '18473.00', '2016-04-06', 'M', 2, 3, 3),
(78, 17, 14, 'TIMON', 'Alyssa', 'CP 503, 6759 Ultricies Avenue', '79444', 'Rockhampton', 'Sed.et.libero@necorci.org', '0102030405', '20450.00', '2005-03-25', 'F', 3, 1, 6),
(79, 17, 24, 'PETER', 'Carly', 'Appartement 792-2242 Semper Rd.', '29429', 'Greater Sudbury', 'Etiam.imperdiet@Cumsociisnatoque.ca', '0102030405', '18473.00', '2017-11-16', 'F', 5, 3, 3),
(80, 17, 21, 'TEEGAN', 'Benjamin', '915-3308 Morbi Avenue', '8258', 'Bottidda', 'habitant.morbi.tristique@tempor.com', '0102030405', '18473.00', '2015-05-16', 'M', 5, 1, 1),
(81, 17, 12, 'WILLA', 'Nina', 'CP 708, 8796 Proin Avenue', '6562', 'Innsbruck', 'eros@sem.edu', '0102030405', '30000.00', '2009-03-12', 'F', 0, 1, 6),
(82, 17, 11, 'CHANEY', 'Irma', '4854 Proin Chemin', '22235', 'Fort Providence', 'ultricies.sem.magna@non.com', '0102030405', '39576.00', '2006-01-31', 'F', 2, 1, 6),
(83, 17, 24, 'LAITH', 'Ariel', 'CP 298, 9838 Porttitor Rue', '40182', 'Wilmington', 'non.bibendum@penatibus.co.uk', '0102030405', '18473.00', '2016-01-17', 'F', 3, 1, 3),
(84, 17, 12, 'CALDWELL', 'Megan', 'CP 183, 6687 Vel Ave', '71913', 'Leerbeek', 'Proin.sed@tellusPhaselluselit.ca', '0102030405', '30000.00', '2012-01-05', 'M', 0, 3, 6),
(85, 17, 22, 'HERMAN', 'Alan', 'CP 248, 4557 Augue. Route', '03002', 'Bridgeport', 'Phasellus@molestietortor.org', '0102030405', '18473.00', '2010-04-16', 'M', 0, 3, 6),
(86, 2, 2, 'MICHAEL', 'Quinn', '777-2337 Pretium Chemin', '6350', 'Bilaspur', 'tellus@Uttinciduntvehicula.edu', '0102030405', '39576.00', '2002-09-26', 'M', 5, 1, 6),
(87, 17, 13, 'DOLLE-RAYMOND', 'Christian', '3578 Fermentum Avenue', '69961', 'Greenwich', 'lobortis.quis@Phasellus.net', '0102030405', '18473.00', '2018-12-25', 'M', 0, 1, 6),
(88, 17, 25, 'CALLUM', 'Howard', '7637 Nisi Av.', '16638', 'Gagliano del Capo', 'Aliquam@euligulaAenean.net', '0102030405', '33020.40', '2017-10-23', 'M', 2, 2, 6),
(89, 6, 3, 'KEANE', 'Ashton', '772-9554 Ipsum Av.', '4095 ', 'Khanpur', 'metus@eratvel.edu', '0102030405', '30000.00', '2005-09-07', 'M', 4, 1, 6),
(90, 17, 12, 'RANA', 'Charles-Henri', '2425 Aliquam Impasse', '10892', 'La Roche-sur-Yon', 'nisi.nibh@diamSeddiam.ca', '0102030405', '30000.00', '2007-01-29', 'f', 1, 2, 6),
(91, 17, 20, 'CARDON', 'Yvonne', '986-8855 Lacus. Ave', '1865', 'Corozal', 'Integer@metuseu.edu', '0102030405', '27000.00', '2000-10-31', 'F', 5, 3, 1),
(92, 17, 23, 'MASON', 'Martin', 'Appartement 397-5505 Leo, Avenue', '83701', 'General Lagos', 'a.facilisis@mollis.com', '0102030405', '18473.00', '2003-12-29', 'M', 1, 3, 3),
(93, 17, 25, 'ADENA', 'Doroth??e', '5988 Varius Chemin', '1666', 'Bonvicino', 'sem.consequat.nec@sagittisDuis.co.uk', '0102030405', '33020.40', '2017-12-04', 'F', 5, 1, 6),
(94, 17, 19, 'ZELDA', 'Britney', '5 rue de la mine', '62300', 'Lens', 'pellentesque@neque.edu', '0102030405', '18473.00', '2018-07-15', 'F', 1, 2, 5),
(95, 17, 11, 'RENARD', 'Caroline', '142-9516 Sed Rd.', '5685', 'Ross-on-Wye', 'mauris.Integer@tristiquesenectuset.net', '0102030405', '39576.00', '2007-02-02', 'F', 1, 3, 6),
(96, 17, 34, 'GISELA', 'Guy', '440-6585 Risus. Route', '80800', 'Corbie', 'facilisis@nullamagnamalesuada.edu', '0102030405', '24000.00', '2009-11-29', 'M', 1, 1, 4),
(97, 17, 26, 'ROSOFT', 'Mike', '646-1281 Vestibulum, Route', '15948', 'Barranquilla', 'id.libero.Donec@idmagna.com', '0102030405', '28822.00', '2005-06-11', 'M', 2, 1, 10),
(98, 26, 28, 'MARAT', 'Hans', '8882 Sollicitudin Chemin', '45142', 'Solihull', 'ornare.sagittis@eleifendCras.net', '0102030405', '38459.27', '2009-08-14', 'M', 2, 2, 10),
(99, 26, 27, 'LEMAIRE', 'Pierre-Jean', 'CP 456, 6156 Orci Ave', '96335', 'Nottingham', 'nulla.at.sem@anteblandit.ca', '0102030405', '29500.00', '2008-05-21', 'M', 4, 1, 10),
(100, 26, 31, 'TRENET', 'Nathan', 'CP 286, 8977 Magna. Rue', '63661', 'Kasli', 'Lorem.ipsum.dolor@facilisis.ca', '0102030405', '20450.00', '2005-02-19', 'M', 2, 1, 10),
(101, 17, 12, 'MECHELLE', 'Leila', 'CP 295, 7493 Sit Avenue', '87341', 'Rosarno', 'mi@tempordiamdictum.org', '0102030405', '30000.00', '2001-02-26', 'M', 3, 3, 6),
(102, 26, 32, 'DEVIN', 'Timoth??e', 'Appartement 161-9249 Ac Rd.', '55053', 'Wismar', 'fringilla@orciDonec.ca', '0102030405', '24051.59', '2015-11-15', 'M', 4, 1, 10),
(103, 17, 14, 'PALMER', 'Mia', '1044 Vivamus Ave', 'K1K 9', 'Rajanpur', 'et@lectus.edu', '0102030405', '20450.00', '2015-10-05', 'M', 1, 2, 6),
(104, 17, 30, 'QUIN', 'Josiah', '1390 Sollicitudin Chemin', '07573', 'Kanpur Cantonment', 'tellus.imperdiet@cursuspurusNullam.org', '0102030405', '18473.00', '2010-10-07', 'M', 1, 1, 5),
(105, 17, 9, 'COHEN', 'David', '4687 Ullamcorper Avenue', '41-72', 'Augusta', 'faucibus.orci.luctus@faucibus.com', '0102030405', '51802.00', '2016-05-21', 'M', 5, 1, 1),
(106, 26, 32, 'XENOS', 'Illiana', '8543 Sed Impasse', '73070', 'Castelvecchio di Rocca Barbena', 'sem.mollis.dui@tinciduntadipiscingMauris.edu', '0102030405', '24051.59', '2001-10-05', 'M', 5, 1, 10),
(107, 26, 31, 'MANNICK', 'S??bastien', 'CP 797, 7428 At, Av.', '53215', 'S??derhamn', 'Donec@quamafelis.edu', '0102030405', '20450.00', '2013-02-14', 'M', 2, 1, 10);