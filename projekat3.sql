-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 10:49 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekat3`
--
CREATE DATABASE IF NOT EXISTS `projekat3` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `projekat3`;

-- --------------------------------------------------------

--
-- Table structure for table `autor`
--

CREATE TABLE `autor` (
  `autor_id` int(11) NOT NULL,
  `autor_ime` varchar(256) NOT NULL,
  `autor_eadresa` varchar(191) NOT NULL,
  `autor_lozinka` varchar(256) NOT NULL,
  `autor_info` longtext NOT NULL,
  `autor_uloga` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autor`
--

INSERT INTO `autor` (`autor_id`, `autor_ime`, `autor_eadresa`, `autor_lozinka`, `autor_info`, `autor_uloga`) VALUES
(1, 'Администратор', 'djordje.petrovic@valjevskagimnazija.edu.rs', '$2y$10$p5Ah0R31zxDrnvpvvrxbFOC9F6u1WDEZ5bRvoGf8M72Y6JnKKeOGq', 'Професор', 'admin'),
(2, 'Ученик', 'it@valjevskagimnazija.edu.rs', '$2y$10$zR1OGz30bkHi1vn9NdjJ5ehtuXnd7uK30XSeG7OVL7PWV.98xIwNa', 'Ученички налог', 'admin'),
(3, 'Уредник', 'djp@gmail.com', '$2y$10$p5Ah0R31zxDrnvpvvrxbFOC9F6u1WDEZ5bRvoGf8M72Y6JnKKeOGq', 'Основне информације о уреднику', 'autor');

-- --------------------------------------------------------

--
-- Table structure for table `clanak`
--

CREATE TABLE `clanak` (
  `clanak_id` int(20) NOT NULL,
  `clanak_naslov` varchar(256) NOT NULL,
  `clanak_sadrzaj` longtext NOT NULL,
  `clanak_kategorija` int(20) NOT NULL,
  `clanak_autor` int(20) NOT NULL,
  `clanak_datum` varchar(256) NOT NULL,
  `clanak_reci` varchar(256) NOT NULL,
  `clanak_slika` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clanak`
--

INSERT INTO `clanak` (`clanak_id`, `clanak_naslov`, `clanak_sadrzaj`, `clanak_kategorija`, `clanak_autor`, `clanak_datum`, `clanak_reci`, `clanak_slika`) VALUES
(3, 'iPhone: Револуција у свету мобилних телефона', '<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;"> Када је Apple 2007. године представио први iPhone, свет мобилних телефона је доживео револуцију. Овај иновативни уређај, са својим интуитивним корисничким интерфејсом и елегантним дизајном, поставио је нове стандарде у индустрији.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;">Са сваком новом генерацијом, iPhone је продубљивао свој утицај на начин на који користимо мобилне телефоне. Од првог модела, који је представио концепт апликација и App Store, до најновијих модела са naprednim функцијама као што су Face ID и Augmented Reality, iPhone је увек био на челу иновација.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;">Али, iPhone није само уређај - он је и платформа која омогућава развој нових апликација и услуга. Од социјалних медија до игара, од фитнес апликација до апликација за учење, iPhone је отворио врата за миријаде нових могућности.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;">У будућности, можемо очекивати да ће iPhone наставити да игра важну улогу у обликовању света мобилних телефона. Са својом посвећеношћу иновацијама и квалитету, Apple је показао да је iPhone више од само уређаја - он је револуција у свету мобилних телефона.</p>', 1, 1, '05/09/22', 'iPhone, Apple, Tehnologija', 'slike/iPhone1.webp'),
(4, 'Како iPhone менја начин на који комуницирамо', '<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;">Од свог појављивања 2007. године, iPhone је донео бројне промене у начину на који комуницирамо. Са својим иновативним функцијама као што су iMessage, FaceTime и Siri, iPhone је увео нове и ефикасне начине за повезивање са другима.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;">Од простог слања текстуалних порука до вишеособних видео разговора, iPhone је омогућио корисницима да остану повезани на начине који нису били могући раније. Ове функције су постале неопходне у свакодневном животу, било да је реч о пословним састанцима, дружењу са пријатељима или чак и медицинским консултацијама.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;">Осим тога, iPhone је такође омогућио нове начине изражавања. Са функцијама као што су Animoji и Memoji, корисници могу да креирају персонализоване анимације које отпорављају њихове емоције и личност на јединствен и забаван начин.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;">У будућности, можемо очекивати да ће iPhone наставити да обликује начин на који комуницирамо. Са својим фокусом на иновацијама и корисничком искуству, iPhone је поставио нове стандарде за комуникацију у дигиталном добу.</p>', 1, 1, '05/09/22', 'iPhone, Apple, Tehnologija', 'slike/iPhone2.jpg'),
(5, 'Тајне функције iPhone-а које ће вам олакшати живот','<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;">iPhone је познат по својим иновативним функцијама, али неке од њих нису увек очигледне на први поглед. Ове тајне функције могу значајно да унапреде ваше корисничко искуство и да вам олакшају живот.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;">На пример, да ли сте знали да iPhone има уграђену функцију за мерење нивоа? Ова функција вам омогућава да проверите да ли је површина равна, што је идеално за постављање слика или мебља. Или, да ли сте знали да можете да користите ваш iPhone као увеличало? Ова функција може бити корисна када треба да прочитате мали текст или да видите детаље на малом предмету.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;">Осим тога, iPhone има и бројне функције доступности које могу помоћи корисницима са различитим потребама. На пример, функција VoiceOver чита екран на глас, док функција Live Listen омогућава iPhone-у да функционише као слушни апарат.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;">Све ове функције чине iPhone још моћнијим уређајем. Учењем о овим ‘тајним’ функцијама, можете максимално искористити свој iPhone и обогатити своје корисничко искуство.</p>', 1, 1, '05/09/22', 'iPhone,Тehnologija', 'slike/5b8ff280d6ef36.83272173.jpg'),
(6, 'Савети и трикови за максимално искоришћавање iPhone-а.', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">iPhone је моћан уређај са многим функцијама, али да бисте га искористили на најбољи начин, потребно је знати неколико савета и трикова.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">На пример, да ли сте знали да можете брзо приступити камери из закључаног екрана? Само превуците екран улево и бићете спремни за снимање. Или, да ли сте знали да можете користити тастер за јачину звука за снимање фотографија? Ово је посебно корисно када снимате слике једном руком.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Такође, iPhone има и бројне функције за управљање батеријом. Можете да видите које апликације троше највише батерије и да промените своје поставке да бисте продужили трајање батерије. Или, можете да користите режим ниске потрошње батерије да бисте сачували батерију када вам је најпотребнија.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Сви ови савети и трикови могу вам помоћи да максимално искористите свој iPhone. Било да сте нови корисник или ветеран, увек има нешто ново да се научи о овом моћном уређају.</p>', 1, 1, '05/09/22', 'iPhone, Tehnologija, Apple', 'slike/5b8ff2cb8caa82.06082791.jpeg'),
(7, 'iPhone и будућност мобилне технологије', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Као један од водећих играча у индустрији мобилних телефона, iPhone је увек био на челу иновација. Од свог појављивања 2007. године, iPhone је поставио нове стандарде и обликовао будућност мобилне технологије.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Са сваком новом генерацијом, iPhone је представљао нове функције и технологије које су подигле бар када је реч о перформансама, функционалности и корисничком искуству. Било да је реч о висококвалитетним камерама, иновативним функцијама безбедности или побољшаној батерији, iPhone је увек био корак испред конкуренције.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">У будућности, можемо очекивати да ће iPhone наставити да води пут када је реч о мобилној технологији. Са својим фокусом на иновацијама и квалитету, iPhone је поставио солидан фундамент за будуће генерације мобилних уређаја.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Без обзира на то шта будућност донесе, једно је сигурно: iPhone ће наставити да игра важну улогу у обликовању света мобилних телефона и технологије уопште.</p>', 1, 1, '05/09/22', 'iPhone, Tehnologija, Apple', 'slike/5b8ff329977968.83179454.jpg'),

(8, 'iPad: Трансформација персоналне технологије','<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Од свог појављивања 2010. године, iPad је променио начин на који размишљамо о персоналној технологији. Са својим интуитивним корисничким интерфејсом, великим екраном и моћним перформансама, iPad је представио нову категорију уређаја која је била негде између смартфона и лаптопа.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Од гледања филмова и читања књига до цртања и писања, iPad је омогућио корисницима да раде ствари које нису биле могуће на традиционалним компјутерима или смартфонима. Са својим App Store, iPad је такође отворио врата за миријаде апликација дизајнираних специјално за велики екран.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Сваком новом генерацијом, iPad је продубљивао свој утицај на персоналну технологију. Било да је реч о увођењу Retina дисплеја, промоцији мултитаскинга или покретању Apple Pencil, iPad је увек био на челу иновација.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">У будућности, можемо очекивати да ће iPad наставити да игра важну улогу у обликовању персоналне технологије. Са својим фокусом на иновацијама и квалитету, iPad је поставио солидан фундамент за будуће генерације мобилних уређаја.</p>', 2, 3, '06/09/22', 'iPad, Apple', 'slike/5b910bf4c231d6.09606856.jpg'),
(9, 'Како iPad обликује образовање и учење', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Како iPad обликује образовање и учење. Од свог појављивања, iPad је имао значајан утицај на образовање. Својим интуитивним интерфејсом, великим екраном и многобројним образовним апликацијама, iPad је променио начин на који ученици уче и професори преподавају.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Ученици могу користити iPad за приступ образовним материјалима, као што су е-књиге и интерактивни уџбеници, а такође могу користити специјализоване апликације за учење нових вештина. Професори могу користити iPad за организацију часова, праћење напретка ученика и интерактивно преподавање.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Осим тога, iPad је омогућио нове облике учења који нису били могући раније. На пример, ученици могу користити аугментовану стварност за истраживање света око себе или за визуализацију сложених концепата.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">У будућности, можемо очекивати да ће iPad наставити да игра важну улогу у образовању. Са својим фокусом на иновацијама и корисничком искуству, iPad је поставио нове стандарде за образовну технологију.</p>', 2, 1, '07/09/22', 'Apple, iPad', 'slike/5b928a8a1e9d13.55215673.jpg'),
(10, 'Тајне функције iPad-а које ће вам олакшати живот', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\"> iPad је познат по својим иновативним функцијама, али неке од њих нису увек очигледне на први поглед. Ове тајне функције могу значајно да унапреде ваше корисничко искуство и да вам олакшају живот.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">На пример, да ли сте знали да iPad има уграђену функцију за мерење нивоа? Ова функција вам омогућава да проверите да ли је површина равна, што је идеално за постављање слика или мебља. Или, да ли сте знали да можете да користите ваш iPad као увеличало? Ова функција може бити корисна када треба да прочитате мали текст или да видите детаље на малом предмету.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Осим тога, iPad има и бројне функције доступности које могу помоћи корисницима са различитим потребама. На пример, функција VoiceOver чита екран на глас, док функција Live Listen омогућава iPad-у да функционише као слушни апарат.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Све ове функције чине iPad још моћнијим уређајем. Учењем о овим "тајним" функцијама, можете максимално искористити свој iPad и обогатити своје корисничко искуство.</p>', 2, 1, '07/09/22', 'iPad,Apple', 'slike/5b928ab6770d17.70201715.jpg'),
(11, 'Савети и трикови за максимално искоришћавање iPad-а', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">iPad је моћан уређај са многим функцијама, али да бисте га искористили на најбољи начин, потребно је знати неколико савета и трикова.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">На пример, да ли сте знали да можете брзо приступити камери из закључаног екрана? Само превуците екран улево и бићете спремни за снимање. Или, да ли сте знали да можете да користите тастер за јачину звука за снимање фотографија? Ово је посебно корисно када снимате слике једном руком.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Такође, iPad има и бројне функције за управљање батеријом. Можете да видите које апликације троше највише батерије и да промените своје поставке да бисте продужили трајање батерије. Или, можете да користите режим ниске потрошње батерије да бисте сачували батерију када вам је најпотребнија.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Сви ови савети и трикови могу вам помоћи да максимално искористите свој iPad. Било да сте нови корисник или ветеран, увек има нешто ново да се научи о овом моћном уређају.</p>', 3, 1, '07/09/22', 'iPad, Apple', 'slike/5b928ae413f5f4.93705553.jpg'),
(12, 'iPad Pro и Apple Pencil: Промена парадигме цртања и дизајна', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Уводом iPad Pro и Apple Pencil, Apple је унапредио начин на који уметници и дизајнери стварају.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">iPad Pro, са својим великим, високорезолутивним екраном и моћним процесором, пружа идеалну платформу за цртање и дизајн. Додатак Apple Pencil, са својом прецизношћу и осетљивошћу на притисак, омогућава уметницима да стварају са невероватном детаљношћу и контролом.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Ова комбинација технологија је променила начин на који уметници и дизајнери раде, омогућавајући им да стварају директно на дигиталној платформи без потребе за традиционалним материјалима. Ово је отворило нове могућности за креативност и иновације.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">У будућности, можемо очекивати да ће iPad Pro и Apple Pencil наставити да обликују свет цртања и дизајна. Са својим фокусом на иновацијама и корисничком искуству, они ће наставити да постављају нове стандарде и да отварају нове могућности за креативне професионалце.</p>', 2, 1, '07/09/22', 'iPad,Apple, Apple pencil, Dizajn', 'slike/5b928b3368a887.29604818.jpg'),

(13, 'MacBook: Промена парадигме персоналних рачунара', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Од свог појављивања, MacBook је променио начин на који гледамо на персоналне рачунаре. Са својим елегантним дизајном, моћним перформансама и интуитивним оперативним системом, MacBook је поставио нове стандарде у свету персоналних рачунара.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Од обраде текста до графичког дизајна, од програмирања до мултимедије, MacBook је омогућио корисницима да раде ствари које нису биле могуће на традиционалним персоналним рачунарима. Овај моћни алат је отворио нове могућности за креативност и производњу.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Сваком новом генерацијом, MacBook је продубљивао свој утицај на персоналну технологију. Било да је реч о увођењу Retina дисплеја, промоцији мултитаскинга или покретању Touch Bar, MacBook је увек био на челу иновација.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">У будућности, можемо очекивати да ће MacBook наставити да игра важну улогу у обликовању персоналне технологије. Са својим фокусом на иновацијама и квалитету, MacBook је поставио солидан фундамент за будуће генерације персоналних рачунара.</p>', 3, 1, '07/09/22', 'MacBook, Apple', 'slike/5b928b7944f3f4.55722982.jpg'),
(14, 'Како MacBook обликује свет дизајна и програмирања', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">MacBook је постао неизоставан алат за дизајнере и програмере широм света. Са својим моћним функцијама и интуитивним интерфејсом, MacBook омогућава креативцима да реализују своје идеје на нове и иновативне начине.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Било да је реч о развоју софтвера, веб дизајну, графичком дизајну или аудио и видео продукцији, MacBook пружа алате и перформансе које професионалци требају да би били на врху своје игре. Од моћних апликација као што су Final Cut Pro и Logic Pro до интегрисаних развојних окружења као што је Xcode, MacBook је опремљен да подржи широк спектар креативних потреба.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Осим тога, са својим компактним дизајном и дуготрајном батеријом, MacBook омогућава креативцима да раде где год да се налазе, било да је то у кафићу, на аеродрому или у студију за снимање.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">У будућности, можемо очекивати да ће MacBook наставити да игра важну улогу у обликовању света дизајна и програмирања. Са својим фокусом на иновацијама и квалитету, MacBook је поставио нове стандарде за професионалне креативне алате.</p>', 3, 1, '07/09/22', 'MacBook, Apple', 'slike/5b928bb51bf8c7.35073143.jpg'),
(15, 'Тајне функције MacBook-а које ће вам олакшати рад. ', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">MacBook је познат по својим иновативним функцијама, али неке од њих нису увек очигледне на први поглед. Ове тајне функције могу значајно да унапреде ваше корисничко искуство и да вам олакшају рад.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">На пример, да ли сте знали да можете да користите функцију Quick Look за брзи преглед докумената без отварања апликације? Или, да ли сте знали да можете да користите функцију Hot Corners за активирање различитих функција премештањем показивача миша у један од четири угла екрана?</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Осим тога, MacBook има и бројне функције доступности које могу помоћи корисницима са различитим потребама. На пример, функција VoiceOver чита екран на глас, док функција Zoom омогућава увећање екрана за лакше читање и навигацију.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Све ове функције чине MacBook још моћнијим уређајем. Учењем о овим "тајним" функцијама, можете максимално искористити свој MacBook и обогатити своје корисничко искуство.</p>', 3, 1, '07/09/22', 'Apple, MacBook', 'slike/5b928bfce0b9e2.09431968.jpg'),
(16, 'Савети и трикови за максимално искоришћавање MacBook-а', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">MacBook је моћан уређај са многим функцијама, али да бисте га искористили на најбољи начин, потребно је знати неколико савета и трикова.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">На пример, да ли сте знали да можете да користите функцију Hot Corners за активирање различитих функција премештањем показивача миша у један од четири угла екрана? Или, да ли сте знали да можете да користите функцију Quick Look за брзи преглед докумената без отварања апликације?</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Такође, MacBook има и бројне функције за управљање батеријом. Можете да видите које апликације троше највише батерије и да промените своје поставке да бисте продужили трајање батерије. Или, можете да користите режим ниске потрошње батерије да бисте сачували батерију када вам је најпотребнија.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Сви ови савети и трикови могу вам помоћи да максимално искористите свој MacBook. Било да сте нови корисник или ветеран, увек има нешто ново да се научи о овом моћном уређају.</p>', 3, 1, '07/09/22', 'Apple, MacBook', 'slike/5b928c38bc1a57.99310868.jpg'),
(17, 'MacBook: Пионир у ери преносивих рачунара. ', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Од свог појављивања, MacBook је био водећи у промени начина на који гледамо на преносиве рачунаре. Са својим сопственим стилом, моћним перформансама и једноставним оперативним системом, MacBook је поставио нове стандарде у свету преносивих рачунара.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Од обраде текста до графичког дизајна, од програмирања до мултимедије, MacBook је омогућио корисницима да раде ствари које нису биле могуће на традиционалним преносивим рачунарима. Овај моћни алат је отворио нове могућности за креативност и производњу.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Сваком новом генерацијом, MacBook је продубљивао свој утицај на преносиву технологију. Било да је реч о увођењу Retina дисплеја, промоцији мултитаскинга или покретању Touch Bar, MacBook је увек био на челу иновација.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">У будућности, можемо очекивати да ће MacBook наставити да игра важну улогу у обликовању преносиве технологије. Са својим фокусом на иновацијама и квалитету, MacBook је поставио солидан фундамент за будуће генерације преносивих рачунара.</p>', 3, 1, '07/09/22', 'Apple, MacBook, Produktivnost', 'slike/5b928c64b228d8.01980890.jpg');
-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE `kategorija` (
  `kategorija_id` int(11) NOT NULL,
  `kategorija_naziv` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`kategorija_id`, `kategorija_naziv`) VALUES
(1, 'iPhone'),
(2, 'iPad'),
(3, 'MacBook');

-- --------------------------------------------------------

--
-- Table structure for table `podesavanje`
--

CREATE TABLE `podesavanje` (
  `podesavanje_naziv` varchar(191) NOT NULL,
  `podesavanje_vrednost` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `podesavanje`
--

INSERT INTO `podesavanje` (`podesavanje_naziv`, `podesavanje_vrednost`) VALUES
('pocetna_veliki_naslov', 'Пројекат 3 из предмета Веб програмирање'),
('pocetna_veliki_podnaslov', 'Ово је трећи пројекат из предмета Веб програмирање, за ученике са посебним способностима за рачунарство и информатику. Добродошли на нову платформу.');

-- --------------------------------------------------------

--
-- Table structure for table `stranica`
--

CREATE TABLE `stranica` (
  `stranica_id` int(11) NOT NULL,
  `stranica_naslov` varchar(256) NOT NULL,
  `stranica_sadrzaj` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stranica`
--

INSERT INTO `stranica` (`stranica_id`, `stranica_naslov`, `stranica_sadrzaj`) VALUES
(1, 'О нама', '<h2>Неки текст на страници</h2>\r\n<p>Updated Content Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed consectetur nulla, vitae suscipit quam. Nulla facilisi. Fusce porta tincidunt velit ut pharetra. Etiam ac convallis nulla. Curabitur rutrum leo nec tincidunt faucibus. Suspendisse potenti. Aliquam erat volutpat. Phasellus sapien velit, pharetra vel tellus in, vehicula tempor metus. Sed malesuada elit eget tortor rhoncus blandit. Aenean sit amet urna at leo tempus sollicitudin ac eu nulla. Nam iaculis lorem eget lorem aliquet finibus. Maecenas ut egestas tortor, vitae mollis nibh. Phasellus imperdiet hendrerit libero eu vestibulum. Ut vitae sodales risus.<br />Duis pharetra imperdiet nunc, pharetra venenatis justo pellentesque sed. Etiam interdum lobortis massa, non pharetra enim vulputate vel. Phasellus molestie turpis rhoncus dui interdum sollicitudin. Phasellus urna ex, euismod eget massa at, consequat luctus odio. Quisque varius tortor nisl, tincidunt tempus velit mollis eget. Praesent vitae feugiat risus. Sed vestibulum mattis finibus. Cras maximus auctor libero. Morbi consectetur tellus tristique imperdiet hendrerit.</p>'),
(2, 'Контакт', '<table>\r\n<tbody>\r\n<tr>\r\n<td>Име:</td>\r\n<td>Ђорђе Петровић</td>\r\n</tr>\r\n</tbody>\r\n</table>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`autor_id`),
  ADD UNIQUE KEY `autor_eadresa` (`autor_eadresa`);

--
-- Indexes for table `clanak`
--
ALTER TABLE `clanak`
  ADD PRIMARY KEY (`clanak_id`);

--
-- Indexes for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD PRIMARY KEY (`kategorija_id`);

--
-- Indexes for table `podesavanje`
--
ALTER TABLE `podesavanje`
  ADD PRIMARY KEY (`podesavanje_naziv`);

--
-- Indexes for table `stranica`
--
ALTER TABLE `stranica`
  ADD PRIMARY KEY (`stranica_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `autor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clanak`
--
ALTER TABLE `clanak`
  MODIFY `clanak_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `kategorija`
--
ALTER TABLE `kategorija`
  MODIFY `kategorija_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stranica`
--
ALTER TABLE `stranica`
  MODIFY `stranica_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
