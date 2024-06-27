-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 27 Haz 2024, 12:38:41
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `film_sitesi`
--
CREATE DATABASE IF NOT EXISTS `film_sitesi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `film_sitesi`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basrol_oyunculari`
--

CREATE TABLE `basrol_oyunculari` (
  `id` int(11) NOT NULL,
  `film_id` int(11) DEFAULT NULL,
  `oyuncu_adi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `basrol_oyunculari`
--

INSERT INTO `basrol_oyunculari` (`id`, `film_id`, `oyuncu_adi`) VALUES
(92, 55, 'Ahmet Mümtaz Taylan'),
(93, 55, 'Uğur Yücel'),
(94, 55, 'Kenan İmirzalıoğlu'),
(95, 55, 'Nejat İşler'),
(96, 55, 'Berrak Tüzünataç'),
(97, 55, 'Ceyda Düvenci'),
(98, 55, 'İlker Aksum'),
(99, 56, 'Gökhan Mumcu'),
(100, 56, 'Shweta Aggarwal'),
(101, 56, 'Suniel Shetty'),
(102, 56, 'Haldun Boysan, Kaan Girgin'),
(103, 57, 'Necati Şaşmaz'),
(104, 57, 'Gürkan Uygun'),
(105, 57, 'Kenan Çoban'),
(106, 57, 'Erhan Ufak'),
(107, 57, 'Bergüzar Korel'),
(108, 57, 'Billy Zane'),
(109, 57, 'Gary Busey'),
(110, 57, 'Diego Serrano'),
(111, 57, 'Ghassan Massoud'),
(112, 58, 'Uğur Arda Başkan (Ayas)'),
(113, 58, 'Emin Öztürk (Mert)'),
(114, 58, 'Deniz Hatun Güler (Ayçin)'),
(115, 58, 'Deniz Baysal (Cücükevi)'),
(116, 59, 'Enes Batur (Akın)'),
(117, 59, 'Şerif Sezer (Kamil)'),
(118, 59, 'Şirin Giobbi (İlayda)'),
(119, 59, 'Levent Kol (Bücür)'),
(120, 59, 'Zafer Algöz (Müdür Mümin)'),
(121, 59, 'Ayşen Gruda (Nene)'),
(122, 60, 'Uğur Yücel (Şerafettin)'),
(123, 60, 'Demet Evgar (Misket)'),
(124, 60, 'Okan Yalabık (Rıza)'),
(125, 60, 'Güven Kıraç (Tonguç)'),
(126, 60, 'Gökçe Özyol (Rıfkı)'),
(127, 60, 'Ahmet Mümtaz Taylan (Kötü Kenan)'),
(128, 61, 'İsmail Hacıoğlu'),
(129, 61, 'Kim Seol'),
(130, 61, 'Çetin Tekindor'),
(131, 61, 'Lee Kyung-Jin'),
(132, 61, 'Ali Atay'),
(133, 61, 'Murat Yıldırım'),
(134, 62, 'Cemal Hünal'),
(135, 62, 'Melis Birkan'),
(136, 62, 'Yıldız Kültür'),
(137, 62, 'Şerif Bozkurt'),
(138, 62, 'Gözde Kansu'),
(139, 62, 'Aslı Aybars'),
(140, 62, 'Goncagül Sunar'),
(141, 63, 'Mete Horozoğlu'),
(142, 63, 'Birce Akalay'),
(143, 63, 'Engin Baykal'),
(144, 63, 'Banu Çiçek'),
(145, 64, 'Şener Şen'),
(146, 64, 'Uğur Yücel'),
(147, 64, 'Şermin Hürmeriç'),
(148, 64, 'Yeşim Salkım'),
(149, 64, 'Kamuran Usluer'),
(150, 64, 'Ülkü Duru, Özkan Uğur'),
(151, 65, 'Altan Erkekli'),
(152, 65, 'Ahmet Mümtaz Taylan'),
(153, 65, 'Melisa Sözen'),
(154, 65, 'Derviş Zaim'),
(155, 65, 'Serhat Tutumluer'),
(156, 65, 'Mesut Akusta'),
(157, 66, 'Kemal Sunal'),
(158, 66, 'Metin Akpınar'),
(159, 66, 'Meltem Cumbul'),
(160, 66, 'Rafet El Roman'),
(161, 66, 'Ali Sunal'),
(162, 67, 'Nihan Aypolat'),
(163, 67, 'Koray Kadirağa'),
(164, 67, 'Pervin Bağdat'),
(165, 68, 'Burak Özçivit'),
(166, 68, 'Biğkem Karavus'),
(167, 68, 'Kurtuluş'),
(168, 68, 'Şakirağaoğlu'),
(169, 68, 'Sedat Kalkavan'),
(170, 68, 'Selma Kutluğ'),
(171, 68, 'Meral Koro'),
(172, 68, 'Ecem Cansu Aktay'),
(173, 68, 'Celalettin Demirel'),
(174, 68, 'Sevgi Türker'),
(175, 69, 'Ayça İnci'),
(176, 69, 'Cem Kurtoğlu'),
(177, 69, 'Sefa Zengin'),
(178, 69, 'Bahtiyar Engin'),
(179, 69, 'Nazlı Ceren Argon'),
(180, 69, 'Yıldırım Öcek'),
(181, 69, 'Hakan Meriçliler'),
(182, 69, 'Levent Sülün'),
(183, 70, 'Beren Saat'),
(184, 70, 'Murat Yıldırım'),
(185, 70, 'Okan Yalabık'),
(186, 70, 'Belçim Bilgin'),
(187, 70, 'Umut Kurt'),
(188, 71, 'Şener Şen'),
(189, 71, 'Ferman'),
(190, 71, 'Cem Yılmaz'),
(191, 71, 'Çetin Tekindor'),
(192, 71, 'Battal Çolakzade'),
(193, 71, 'Melisa Sözen, Okan Yalabık'),
(194, 72, 'Mehmet Günsür'),
(195, 72, 'Azra Akın'),
(196, 72, 'Nejat İşler'),
(197, 72, 'Güven Kıraç'),
(198, 72, 'İsmail Hacıoğlu'),
(199, 72, 'Nurgül Yeşilçay'),
(200, 73, 'Kemal Sunal'),
(201, 73, 'Münir Özkul'),
(202, 73, 'Tarık Akan'),
(203, 73, 'Halit Akçatepe'),
(204, 73, 'Adile Naşit'),
(205, 73, 'Şener Şen'),
(206, 73, 'Ahmet Arıman'),
(207, 73, 'Sıtkı Akçatepe'),
(208, 74, 'Şahan Gökbakar'),
(209, 74, 'Fatma Toptaş'),
(210, 74, 'Tuluğ Çizgen'),
(211, 75, 'Yılmaz Erdoğan'),
(212, 75, 'Tolga Çevik'),
(213, 75, 'Özgü Namal'),
(214, 75, 'Demet Akbağ'),
(215, 75, 'Altan Erkekli'),
(216, 75, 'Cem Yılmaz'),
(217, 76, 'Aytaç Arman'),
(218, 76, 'Güngör Bayrak'),
(219, 76, 'Güven Şengil'),
(220, 76, 'Kamil Sönmez'),
(221, 76, 'Şevket Altuğ'),
(222, 76, 'Hasan Ceylan'),
(223, 77, 'Münir Özkul'),
(224, 77, 'Adile Naşit'),
(225, 78, 'Kemal Sunal'),
(226, 78, 'Müjde Ar'),
(227, 78, 'Şener Şen'),
(228, 78, 'Adile Naşit'),
(229, 78, 'Ayşen Gruda'),
(230, 78, 'Bilge Zobu'),
(231, 78, 'Günfer Feray'),
(232, 79, 'Fahriye Evcen'),
(233, 79, 'Burak Özçivit'),
(234, 80, 'Farah Zeynep Abdullah'),
(235, 80, 'Mehmet Günsür, Kerem Bürsin'),
(236, 81, 'Özcan Deniz'),
(237, 81, 'Şebnem Dönmez'),
(238, 81, 'Haluk Bilginer'),
(239, 81, 'Demet Akbağ'),
(240, 81, 'Cem Özer'),
(241, 81, 'Ata Demirer'),
(242, 81, 'Murat Akkoyunlu'),
(243, 81, 'Uğur Uludağ'),
(244, 82, 'Sedef');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `filmler`
--

CREATE TABLE `filmler` (
  `film_id` int(11) NOT NULL,
  `film_adi` varchar(255) NOT NULL,
  `cikis_tarihi` date NOT NULL,
  `imdb_puani` decimal(3,1) NOT NULL,
  `aciklama` text DEFAULT NULL,
  `basrol_oyunculari` text DEFAULT NULL,
  `film_suresi` int(11) DEFAULT NULL,
  `kategori_id` int(11) NOT NULL,
  `kapak_foto` varchar(255) DEFAULT NULL,
  `fragman_link` varchar(255) DEFAULT NULL,
  `izleme_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `filmler`
--

INSERT INTO `filmler` (`film_id`, `film_adi`, `cikis_tarihi`, `imdb_puani`, `aciklama`, `basrol_oyunculari`, `film_suresi`, `kategori_id`, `kapak_foto`, `fragman_link`, `izleme_link`) VALUES
(55, 'Ejder Kapanı', '2010-01-22', 6.5, 'Şehirdeki tecavüz suçlularını hedef alan bir seri katil ortaya çıkar ve bu durum, İstanbul’da büyük bir korku ve paniğe yol açar. Cinayetleri çözmek için görevlendirilen deneyimli başkomiser Abbas (Uğur Yücel) ve onun genç meslektaşı Akrep Celal (Kenan İmirzalıoğlu), kendilerini karmaşık ve tehlikeli bir kovalamacanın içinde bulurlar.\r\n\r\nCinayetlerin ardındaki gizemi çözmeye çalışırken, dedektifler her kurbanın olay yerine bırakılan gizemli bir ejderha figürüyle karşılaşırlar. Araştırmalar derinleştikçe, Abbas ve Celal, katilin sadece sıradan bir suçlu olmadığını, aksine adalet arayışı içinde olan bir intikamcı olduğunu fark ederler. Bu süreçte, dedektifler kendi içsel çatışmaları ve geçmişleriyle de yüzleşmek zorunda kalırlar.', NULL, 106, 1, '../uploads/Ejder Kapanı.png', 'https://youtu.be/9xQ37XQ8ThQ?si=PIDDph0oAd4r9C1j', 'https://hdfilmcehennemi.cx/ejder-kapani/'),
(56, 'Miras', '2008-03-14', 5.7, 'Hikaye, ünlü iş insanı Kemal Yılmaz’ın ani ölümünün ardından başlıyor. Kemal Yılmaz’ın vefatı, ardında büyük bir servet ve karmaşık aile ilişkileri bırakır. Mirası devralması beklenen oğulları Murat ve Levent, kendilerini beklenmedik bir mücadelenin içinde bulurlar. Miras, sadece büyük bir serveti değil, aynı zamanda çözülmemiş sırları ve gömülü düşmanlıkları da beraberinde getirir.\r\n\r\nMurat ve Levent, babalarının ölümünün ardındaki gizemi çözmeye çalışırken, tehlikeli bir oyunun içine çekilirler. Babalarının eski ortakları, karanlık güçler ve aile içindeki ihanetler, kardeşleri birbirine düşürmekle kalmaz, aynı zamanda hayatta kalma mücadelesi vermelerine neden olur. Film boyunca Murat ve Levent, hem birbirleriyle hem de dış dünyadaki düşmanlarıyla savaşmak zorunda kalır.', NULL, 93, 1, '../uploads/Miras.png', '-', 'https://www.dailymotion.com/video/x5nun6r'),
(57, 'Kurtlar Vadisi Irak', '2006-02-03', 5.7, 'Film, Amerikalı askerlerin Türk özel kuvvetlerine düzenlediği bir baskınla başlar. Bu olay, Türk kamuoyunda büyük bir yankı uyandırır ve intikam isteğiyle yanıp tutuşan Polat Alemdar (Necati Şaşmaz) ve ekibini harekete geçirir. Polat Alemdar, vatanseverliği ve kararlılığıyla tanınan bir gizli operatördür. Ekibiyle birlikte Irak’a doğru yola çıkarak, baskından sorumlu Amerikalı komutan Sam William Marshall\'ı (Billy Zane) bulup adaleti sağlamak için tehlikeli bir göreve atılır.\r\n\r\nIrak’ın kaotik ortamında ilerleyen Polat ve ekibi, yerel direnişçilerle iş birliği yaparak adaleti sağlama çabası içine girerler. Film, savaşın ve işgalin insanlık üzerindeki yıkıcı etkilerini çarpıcı bir şekilde gözler önüne sererken, aksiyon dolu sahneleri ve derinlikli karakter analizleriyle dikkat çeker. Polat Alemdar\'ın kararlılığı ve liderliği, izleyicilere unutulmaz bir kahramanlık hikayesi sunar.', NULL, 124, 1, '../uploads/Kurtlar Vadisi Irak.png', 'https://youtu.be/rmsHO9puwD0?si=FPVWh2dxPtlucyJL', 'https://youtu.be/JulvdANGUbI?si=FQinprvejyuAkN3G'),
(58, 'Ayas', '2013-11-22', 6.0, 'Ayas, anne ve babasıyla birlikte yaşayan, meraklı ve enerjik bir çocuktur. Her gün mahallesinde yeni şeyler keşfeder ve yeni arkadaşlar edinir. En yakın dostları Mert, Ayçin ve Cücükevi ile birlikte, sokakta oynar, sorunları çözer ve birlikte büyümeyi öğrenirler.\r\n\r\nAncak Ayas\'ın hayatı, bir gün mahallesine taşınan yeni bir komşuyla değişir. Bu komşu, Ayas\'ın hayatına farklı bir renk katar ve ona yeni şeyler öğretir. Ayas ve arkadaşları, bu yeni macerada dostluklarını, cesaretlerini ve paylaşmayı öğrenirler.', NULL, 82, 2, '../uploads/Ayas.png', 'https://youtu.be/XKE9hGH5oYo?si=8H30p-INjc0QmxbX', 'https://fullhdfilm.pro/ayas-izle/'),
(59, 'Rafadan Tayfa Dehliz Macerası', '2018-10-26', 6.3, 'Filmin hikayesi, Rafadan Tayfa\'nın lideri Akın, en yakın arkadaşı Kamil ve diğer üyeleriyle birlikte, mahallelerinin eski ve gizemli dehlizlerini keşfetmeleriyle başlar. Dehlizlerin derinliklerine doğru ilerleyen çocuklar, bilinmeyen tehlikelerle karşılaşırken, aynı zamanda değerli bir hazineyi bulma umuduyla heyecan dolu bir maceraya atılırlar.\r\n\r\nAncak hazine peşindeki tek grup onlar değildir. Rakip ekip ve kötü niyetli karakterler de hazineyi ele geçirmek için peşlerine düşer. Rafadan Tayfa, dostluklarını ve birliklerini test eden bu zorlu mücadelede birbirlerine destek olurken, eski mahallelerinde unutulmaz bir serüven yaşarlar.', NULL, 84, 2, '../uploads/Rafadan Tayfa.png', 'https://youtu.be/eF-dwJ5cKsM?si=D3leEKaIvQGM1sPX', 'https://www.fullhdfilmizlesene.de/film/rafadan-tayfa-dehliz-macerasi/'),
(60, 'Kötü Kedi Şerafettin', '2016-02-05', 7.0, 'Film, İstanbul\'un sokaklarında yaşayan serseri kedi Şerafettin\'in maceralarını konu alır. Sert mizacı ve asi ruhuyla tanınan Şerafettin, babası Tonguç, yakın dostları Fare Rıza ve Martı Rıfkı ile birlikte yaşamaktadır. Şerafettin, rutin hayatına devam ederken, bir gün eski düşmanlarıyla karşılaşır ve olaylar çığırından çıkar.\r\n\r\nFilm boyunca Şerafettin, çeşitli belalarla ve düşmanlarla mücadele ederken, bir yandan da komik ve beklenmedik olaylarla başa çıkmak zorunda kalır. Şerafettin\'in hayatta kalma mücadelesi, komik diyaloglar ve absürd durumlarla dolu, hızlı tempolu bir maceraya dönüşür.\r\n', NULL, 86, 2, '../uploads/Kötü Kedi Şerafettin.png', 'https://youtu.be/un5n6tpRT-8?si=oEb1HFclIJboTJUe', 'https://youtu.be/VDzII45fC9Y?si=AKywgFXUIRj_JpTc'),
(61, 'Ayla', '2017-10-27', 8.2, '1950 yılında Kuzey Kore, Güney Kore\'ye saldırdığında Birleşmiş Milletler\'in yaptığı yardım çağrısı sonucu Türkiye, Kore\'ye bir tugay gönderir. Her şey, gönderilen tugayın içindeki askerlerden birisi olan Süleyman Astsubay\'ın (Süleyman Dilbirliği) gece vakti savaş meydanında annesi babası öldürülmüş küçük bir kız çocuğunu bulmasıyla başlar. Sıra 5 yaşındaki küçük kıza isim vermeye gelince Süleyman Astsubay, \"Ay gibi yüzü var, zaten Ay ışığında bulduk.\" diyerek Ayla ismini verir.\r\n\r\n15 ay boyunca Ayla\'nın bakımını üstlenen Süleyman Astsubay\'ın artık Türkiye\'ye dönmesi gerekmektedir. Devamında üst düzey kişilerin de devreye girmesiyle Ayla, Kore\'deki Türk askerî misyonunca kurulmuş olan Ankara Okuluna başlar. Ayla\'yı bırakıp gitmek istemeyen Süleyman Astsubay, onu Türkiye\'ye götürmek için birçok yolu dener. Hatta, Ayla\'yı bir bavulun içine koyup kimselere fark ettirmeden götürmeye bile kalkışır, fakat bir türlü Güney Kore yasalarını aşıp Ayla\'yı Türkiye\'ye dönerken yanına alamaz.\r\n\r\nSavaş günlerini geride bıraktıktan 60 yıl kadar sonra Ayla ve Süleyman Dilbirliği, başarılı ve hevesli gazetecilerin yardımıyla Güney Kore\'de, Ankara Parkı\'nda tekrar bir araya gelirler.', NULL, 124, 3, '../uploads/Ayla.png', 'https://youtu.be/8PELOIYaEiw?si=3rriQuxnbjbJHg04', 'https://youtu.be/DOjJ5ZufarE?si=VE1H1ygQhg75B50n'),
(62, 'Issız Adam', '2008-11-07', 6.8, 'Film, yalnızlık içinde yaşayan Alper\'in hikayesiyle başlar. Alper, eski bir matematik öğretmenidir ve İstanbul\'un trafiği ve kalabalığı arasında hayatını sürdürmektedir. Bir gün, tesadüfen tanıştığı Ada ile aralarında beklenmedik bir yakınlık başlar. Ada\'nın enerjisi ve hayat doluluğu, Alper\'in monoton yaşantısına yeni bir perspektif kazandırır.\r\n\r\nAlper ve Ada arasında başlayan bu ilişki, ikisinin de hayatında derin izler bırakır. Ancak geçmişin gölgeleri ve Alper\'in içsel çatışmaları, mutluluğun önünde engel oluşturur. İkisi de kendi iç dünyalarında yolculuk ederken, aşkın ve anlayışın gücünü keşfederler.', NULL, 93, 3, '../uploads/Issız adam.png', 'https://youtu.be/eFkKOG0uzpo?si=nMNtjadiYPBTlVDB', 'https://www.youtube.com/watch?v=_9OBWPc9h1o&list=PLMAaxzeWQJlVPmpe-VcAoAnQmELPnYwMP&index=2'),
(63, 'Nefes Vatan Sağolsun', '2009-10-16', 8.0, 'Film, 1990\'lı yıllarda Güneydoğu Anadolu\'da terörist gruplarla mücadele eden Türk askerlerinin hikayesini odaklanır. Hikaye, bir grup genç askerin, ülke için verdikleri fedakarlık ve vatan sevgisi etrafında şekillenir. Askerler, operasyonlar sırasında hem fiziksel hem de psikolojik olarak zorlu şartlarla mücadele ederken, bir yandan da insanlık ve adalet mücadelesini sürdürürler.\r\n\r\nFilm, askerlerin olağanüstü cesaretlerini ve dayanıklılıklarını gözler önüne sererken, aynı zamanda savaşın insani ve toplumsal yıkımını da derinlemesine ele alır. Gerçek olaylardan esinlenen Nefes: Vatan Sağolsun, Türk milletinin birlik ve beraberlik ruhunu vurgulayan, duygusal ve etkileyici bir dramatik yapımdır.', NULL, 112, 3, '../uploads/Nefes Vatan Sağolsun.png', 'https://youtu.be/KyNgEddjK0A?si=_xCfenfIrCO20sHL', 'https://youtu.be/il9aTR94Q-Y?si=epA9Ph93izE7iXrC'),
(64, 'Eşkiya', '1996-11-29', 8.1, 'Film, Türkiye\'nin kültürel ve sosyal dokusunu derinlemesine işleyen, duygusal yükü ağır bir hikaye sunar.\r\n\r\nBaran (Şener Şen), uzun yıllar hapis cezası çekmiş bir adamdır ve cezasının sonunda hapisten çıkar. Baran, yıllar önce terk ettiği köyüne geri döner ve burada yeniden hayata tutunmaya çalışır. Ancak köyü artık eski dostları ve düşmanlarıyla doludur.\r\n\r\nKöyde, Baran\'ın uzun süredir hasret kaldığı sevdiği kadın Keje (Uğur Yücel) ile yeniden karşılaşır. Ancak zaman içinde ortaya çıkan sırlar ve geçmişin hesaplaşması, Baran\'ın huzur arayışını zorlar. Baran, geçmişiyle yüzleşirken, köydeki insanların yaşam mücadelesine tanıklık eder ve bu süreçte kendisiyle ve çevresiyle hesaplaşır.', NULL, 122, 4, '../uploads/Eşkıya.png', '-', 'https://hdfilmcehennemi.cx/eskiya/'),
(65, 'Cenneti Beklerken', '2006-12-15', 6.6, 'On yedinci yüzyılda, Osmanlı İmparatorluğu\'nun başkenti İstanbul\'da yaşayan minyatür ustası Eflatun (Serhat Tutumluer), ustalarının kendisine öğrettiklerine karşı gelerek eşinin ve oğlunun ölümü sonrasında, Batılı tarzda portrelerini çizer. Bu tarz portrelerin İslam dinine aykırı olduğunu düşündüğü için içinde çelişkili duygular kabaran Eflatun, bir gün zorla bir Osmanlı vezirinin konağına götürülür. Vezir, Eflatun\'dan, Osmanlı İmparatorluğu\'na karşı ayaklanan Danyal (Nihat İleri) adlı sözde bir şehzadenin, idamından önce Batılı tarzda portresini yapmasını ister.\r\n\r\nÇırağı rehin alınan Eflatun, bu emir karşısında vezirin bir grup silahlı adamıyla birlikte Anadolu bozkırlarına doğru tehlikeli bir yolculuğa çıkar. Yolda rastladığı köle kızı Leyla\'yı (Melisa Sözen) acıyarak yanına alan Eflatun, taht kavgasının ortasında bir yandan var olma mücadelesi verirken diğer yandan da bu güzel köle kız ile gizliden gizliye bir aşk yaşamaya başlar. Verdikleri kayıplara rağmen Şehzade Danyal\'ın hapsedildiği kaleye vardıklarında grubu büyük bir sürpriz beklemektedir.\r\n\r\nKavganın ve aşkın imparatorluğunda hayatta kalma savaşı veren Eflatun ve Leyla, hayalle gerçeğin harmanlandığı bu büyülü masalda kendi cennetlerini yaratırlar.', NULL, 107, 4, '../uploads/Cenneti Beklerken.png', 'https://youtu.be/4oMhByyt7PU?si=6vL9Awb-iZoJdkqM', 'https://jetfilmizle.de/cenneti-beklerken-filmi-izle.html'),
(66, 'Propaganda', '1999-03-05', 7.1, 'Doğup büyüdüğü Hislihisar kasabasına, gümrük muhafaza müdürü olarak dönen Mehdi ve çocukluk arkadaşı Rahim\'in ailelerinin kasabanın ortasından geçen sınır telleri ile parçalanan hayatlarını anlatıyor. Neredeyse yüzyıllardır birlikte yaşayan Hislihisarlıların altüst olan sosyal yaşamlarını, aşklarını, ticaretlerinin önünde duran dikenli telleri ve merkezî otoriteye karşı hayatlarını nasıl savunduklarını görüyor, 1948\'de yaşanan bu trajikomik öykünün yarım asırdır çok fazla değişime uğramadığına tanık oluyorsunuz. Bu arada Mehdi\'nin oğlu Adem ile Rahim\'in kızı Filiz arasındaki tutkulu aşk, aralarından geçen sınır çizgisi nedeniyle iyice imkânsızlaşır.', NULL, 111, 4, '../uploads/Propaganda.png', 'https://youtu.be/kpcaoRWY0I4?si=PeBfkmcNNtHc_86q', 'https://www.hdfilmcehennemi2.cx/propaganda-izle-1'),
(67, 'Dabbe Bir Cin Vakası', '2012-08-03', 5.8, 'Gerçek olaylardan esinlenerek hazırlanmış bir korku filmi. Film, Türkiye\'nin İzmir şehrinde yaşayan Ceyda ve ailesinin başına gelen ürkütücü olayları konu alıyor. Ceyda, evinde ve çevresinde açıklanamayan, korkutucu olaylar yaşamaya başlar. Bu olaylar arttıkça, ailenin huzuru bozulur ve Ceyda, yaşadığı dehşeti çözmek için bir parapsikolog ekibinden yardım almaya karar verir.\r\n\r\nParapsikolog ekibi, evdeki paranormal aktiviteleri incelemek üzere eve yerleşir ve yaşanan olayları kayıt altına almaya başlar. Ancak, araştırmalar ilerledikçe olayların ardındaki korkunç gerçekler ortaya çıkar. Ceyda ve ailesi, cinlerin hedefi haline gelmiştir ve hayatta kalmak için zorlu bir mücadele vermek zorundadırlar.\r\n', NULL, 119, 5, '../uploads/Dabbe Bir Cin Vakası.png', 'https://youtu.be/oA3tVlB2jzk?si=63AhJYUavLUhuHD-', 'https://youtu.be/qdG-TeX3p74?si=xCbJjGK7rTV9UlV5'),
(68, 'Musallat', '2007-11-16', 5.9, 'İstanbul’da yaşayan genç bir çiftin, Suat ve Nurcan’ın, üzerine çöken karanlık ve doğaüstü olayları konu alıyor.\r\n\r\nSuat ve Nurcan, mutlu bir hayat sürmekteyken, Suat\'ın yaşadığı garip ve korkutucu rüyalarla huzurları bozulur. Rüyalarında karanlık varlıkların saldırısına uğrayan Suat, kısa süre sonra gerçek dünyada da tuhaf ve dehşet verici olaylar yaşamaya başlar. Bu olaylar, çiftin hayatını altüst eder ve Suat\'ın psikolojik durumunu hızla kötüleştirir.\r\n\r\nYaşadıkları olayların arkasında karanlık güçlerin olduğuna inanan Suat, çözüm bulmak için doğaüstü olaylar ve cinler hakkında bilgi sahibi olan bir hocadan yardım alır. Ancak, araştırmalar derinleştikçe, Suat ve Nurcan kendilerini korkunç bir kâbusun içinde bulurlar. Cinlerin etkisi altında kalan çift, hayatta kalmak ve bu lanetten kurtulmak için zorlu bir mücadele vermek zorundadır.', NULL, 96, 5, '../uploads/Musallat.png', 'https://youtu.be/-PqXMm-n7HM?si=vo6sS1GmPVpQ6dLt', 'https://fullfilmizle.cx/musallat-1-2007-izle/'),
(69, 'Semum', '2008-02-08', 5.0, 'Film, genç ve güzel bir kadın olan Canan\'ın (Ayça İnci) etrafında gelişen korkutucu olayları konu alıyor. Canan ve eşi Volkan (Burak Hakkı), yeni bir eve taşınır ve burada mutlu bir hayat sürmeye başlarlar. Ancak, kısa süre sonra Canan garip ve ürkütücü olaylar yaşamaya başlar. Rüyalarında ve gerçek hayatta peşini bırakmayan karanlık varlıklar, Canan\'ı derinden etkiler ve onun ruh sağlığını bozar.\r\n\r\nCanan, bu dehşet verici olayların ardındaki gizemi çözmek için araştırmalar yapmaya başlar ve sonunda bir medyumdan yardım almaya karar verir. Medyumun yardımıyla, Canan\'a musallat olan varlığın Semum olduğu ortaya çıkar. Semum, en güçlü ve en tehlikeli cinlerden biridir ve Canan\'ı ele geçirmiştir. Canan ve Volkan, bu korkunç varlıktan kurtulmak için zorlu bir mücadele vermek zorundadırlar.', NULL, 116, 5, '../uploads/Semum.png', 'https://youtu.be/Tle4YXFbDA0?si=dwX5l0VeudZnkl9N', 'https://www.fullhdfilmizlesene.de/film/semum/'),
(70, 'Güz Sancısı', '2009-01-23', 6.1, '1955 yılı güz mevsimine doğru yol alırken, Beyoğlu\'nun ışıltılı güzelliğinin üstüne Türkiye\'nin gerginleşen siyasi ortamının gölgeleri düşmeye başlamıştır. Antakya\'daki güçlü nüfuzu yüzünden DP\'nin yakından ilgilendiği, babasının tek oğlu olan Behçet, İstanbul\'da Hukuk Fakültesi\'nde asistanlık yaparken, yetiştiriliş tarzı ve babasının etkili kimliğinin gölgesinde marjinal düşüncelere doğru sürüklenmektedir.Behçet\'i sürüklendiği yolda tökezleten tek şey, oturduğu dairenin karşısındaki bir başka dairenin penceresinde gizlice izlediği kadın olacaktır. Behçet tarafından izlendiğini bilen bu kadın Elena?dır. Elena, Beyoğlu\'nun kozmopolit güzelliğini oluşturan eşsiz parçalardan biridir. Genç kadın, kendisi de eski bir fahişe olan babaannesi tarafından, üst düzey bürokratlara sunulan bir fahişedir. Babaanne ile torun arasında, yaşadıkları toplumda gayrimüslim olmanın getirdiği dayanışmanın ötesinde, gizemli bir bağımlılık ilişkisi vardır. Gayrimüslimleri taraf olarak belirleyen ve günden güne coşan siyasi dalgaların ortasında, Elena ile Behçet arasındaki karşı konulmaz aşk, kendini savunmaya çalışmaktadır. İki genç, aşkın topraklarında \'aynı\', yaşadıkları ülkenin topraklarında \'farklı\' taraflardadırlar. Behçet, militan bir kalemin günbegün koyulaşan renklerle çizdiği politik çizgide yürürken; attığı her adım onu, düşman uyruğundaki Elena\'dan, yani aşktan biraz daha uzaklaştırmaktadır. Elena ise, babaannesinin ona biçtiği, çıkışı olmayan yazgının duvarlarını Behçet\'e duyduğu aşkla zorlarken, başka bir çıkışsız yazgının; sevgilisini teslim alan marjinal siyasetin duvarlarına çarpacaktır.', NULL, 112, 6, '../uploads/Güz Sancısı.png', 'https://www.sinemalar.com/film/21312/guz-sancisi', 'https://youtu.be/FzhjTqMKGSk?si=QMj3bEhrka5bq2SQ'),
(71, 'Av Mevsimi', '2010-12-03', 7.4, 'Film, İstanbul Emniyet Müdürlüğü Cinayet Büro Amirliği\'nde çalışan deneyimli polislerin ve onların genç meslektaşlarının karmaşık bir cinayet vakasını çözmeye çalışırken yaşadıkları olayları konu alır.\r\n\r\nBaşkomiser Ferman (Şener Şen), nam-ı diğer \"Avcı,\" işine olan bağlılığı ve titizliği ile tanınan deneyimli bir polistir. Onun yardımcısı İdris (Cem Yılmaz) ise keskin zekası ve mizahi kişiliğiyle dikkat çeker. Ekiplerine yeni katılan Hasan (Okan Yalabık), diğer adıyla \"Deli,\" ise genç ve hırslı bir polis memurudur. Üç polis, bir genç kızın vahşi bir cinayete kurban gitmesiyle başlayan karmaşık bir davayı çözmek için bir araya gelirler.\r\n\r\nCinayet soruşturması derinleştikçe, ekip kendilerini daha büyük bir komplonun ve tehlikeli bir avın içinde bulur. Ferman, İdris ve Hasan, katilin izini sürerken kendi iç dünyalarıyla da yüzleşmek zorunda kalırlar. Kendi hayatlarında yaşadıkları trajediler ve kayıplar, onları hem birbirlerine hem de çözdükleri davaya daha da bağlar.', NULL, 138, 6, '../uploads/Av Mevsimi.png', 'https://youtu.be/7Znt70zppYA?si=Zvac0RBwByMbTyJC', 'https://youtu.be/VQWH6FZfnfk?si=wAMFxuGEwPXnbXiO'),
(72, 'Anlat İstanbul', '2005-03-11', 7.3, 'İstanbul\'un büyülü ve karmaşık dünyasında beş ayrı hikaye, beş farklı yönetmenin gözünden seyirciye aktarılır. Kentin her bir köşesi, karakterlerin hayatlarını ve duygusal derinliklerini anlatan öykülerle doludur.\r\n\r\nDeniz Hanedanı:\r\nBir otelde çalışan bir genç kadın olan Serap\'ın hayatı, bir yabancının oteldeki odasına girip çıkmasıyla değişir. Bu beklenmedik olay, onun hayatında derin etkiler bırakır.\r\n\r\nGüneş ve Gökyüzü:\r\nBir zamanlar dans eden ama artık hayatın yükleri altında ezilen bir kadın, hayatında yeni bir umut arayışındadır. Hayatı boyunca tutkuyla bağlı olduğu dans, onun için sadece bir anı olmaktan çıkar.\r\n\r\nŞans Kapıyı Kırınca:\r\nHayatta başarısız olan bir adam, umutsuz bir şekilde intiharı düşünmektedir. Ancak bir gün, hayatı beklenmedik bir şekilde değişir ve o güne kadar görmediği bir şeyi görmeye başlar.\r\n\r\nArafta:\r\nBir işçi, gecenin bir yarısı hayatının en zor kararlarından birini vermek zorunda kalır. Bu karar, aynı zamanda onun geçmişiyle yüzleşmesine neden olur ve hayatının dönüm noktası olur.\r\n\r\nBaşka Bir Gece:\r\nBir gece kulübü sahibi olan bir adam, müşterileriyle ilişkilerinde ve iş hayatında karşılaştığı zorluklarla mücadele ederken, hayatında bir dizi önemli karar almaktadır. Gece kulübü, onun için sadece bir iş yeri değil, aynı zamanda yaşamının bir parçasıdır.', NULL, 95, 6, '../uploads/Anlat İstanbul.png', 'https://youtu.be/JsrNUHWhJ4g?si=TXNRlHJBp8Va2GYG', 'https://www.google.com/search?q=anlat+istanbul+2005+izle&oq=anlat+istanbul+2005+izle&gs_lcrp=EgZjaHJvbWUyCQgAEEUYORiABDIKCAEQABiABBiiBDIKCAIQABiABBiiBDIKCAMQABiABBiiBNIBCDU2NDRqMGo3qAIAsAIA&sourceid=chrome&ie=UTF-8#fpstate=ive&vld=cid:3a4c0208,vid:PRXqfcT'),
(73, 'Hababam Sınıfı', '1975-04-04', 9.2, 'Mahallenin zenginlerinden birinin okulunda eğitim gören bir grup öğrenci, başlarını belaya sokan ve sınıfı sürekli kargaşa içinde tutan öğrencilerdir. Öğrenciler arasında boş zamanlarında yapacakları aktiviteler, derslere karşı ilgileri olmaması ve okuldaki disiplinsiz tavırları nedeniyle sınıf öğretmeni olan Mahmut Hoca\'nın (Münir Özkul) sabrını zorlarlar.\r\n\r\nAncak sınıf, aynı zamanda birbirinden farklı karakterlere sahip olan öğrencilerin bir araya gelmesiyle birlikte eğlenceli ve sıcak bir dostluk ortamı da oluşturur. Her biri kendi benzersiz özellikleriyle öne çıkan öğrenciler, sınıf içinde ve okulun çeşitli etkinliklerinde birlikte maceralara atılırlar.\r\n\r\nFilm, öğrencilerin okulda geçirdikleri zamanı, öğretmenleriyle olan ilişkilerini ve mahallede yaşadıkları günlük olayları komik bir dille anlatır. Her bir karakterin özgün kişilikleri ve sınıf içindeki dinamikleri, izleyicilere hem güldürüp hem de düşündüren bir deneyim sunar.', NULL, 85, 7, '../uploads/Hababam Sınıfı.png', '-', 'https://youtu.be/hf2-8MRPGu8?si=mEg3gV211Wd0VmUL'),
(74, 'Recep İvedik', '2008-02-22', 4.9, 'Recep İvedik, İstanbul\'da yaşayan, sıradan bir adamdır. Kendine özgü mizahi ve bazen absürt tavırlarıyla dikkat çeker. Bir gün yaşadığı apartmanın çatısından düşen bir topu kurtarmak isterken kaza yapar ve mahallesindeki insanlardan dışlanır. Bu olayın ardından yaşadığı sıkıntılar ve çevresinden aldığı tepkiler üzerine, mahallesinden uzaklaşarak yeni bir başlangıç yapmaya karar verir.\r\n\r\nRecep İvedik, bu süreçte akrabalarından birinin köyündeki boş bir eve yerleşir. Köyde, buradaki insanlarla ve yaşantılarıyla tanışır. Zamanla köy halkı arasında sevilen bir karakter haline gelir. Ancak Recep, şehirden getirdiği alışkanlıklar ve tuhaf tavırlarıyla köyde de olaylara karışır ve komik durumlara düşer.\r\n\r\nFilmin temel hikayesi, Recep İvedik\'in yaşadığı bu köy macerası üzerine kuruludur. Onun olaylara bakış açısı, mizahi yaklaşımı ve etrafındaki insanlarla ilişkileri, film boyunca izleyiciye eğlenceli anlar yaşatır.', NULL, 102, 7, '../uploads/Recep İvedik.png', 'https://youtu.be/ite5gbn55TQ?si=6PhLQmQGfhYzPZ7d', 'https://jetfilmizle.de/recep-ivedik-1-izle-2008.html'),
(75, 'Organize İşler', '2005-12-23', 7.4, 'Film, Ankara\'nın kenar mahallelerinden birinde yaşayan Aziz\'in (Yılmaz Erdoğan) etrafında döner. Aziz, birçok suç örgütü ve mafya babası arasında işlerini organize eden zeki ama bir o kadar da şanssız bir adamdır.\r\n\r\nAziz\'in başı, bir yandan karısı Didem (Demet Akbağ) ile evlilik sorunları yaşarken, diğer yandan işlerindeki komik ve karmaşık durumlarla beladadır. Bir gün, Aziz\'in başına beklenmedik bir olay gelir ve onun hayatı tamamen değişir. Bu olay, hem Aziz\'in hem de çevresindekilerin hayatını birbirine bağlar ve komedi dolu maceraların başlamasına sebep olur.\r\n\r\nFilmde, Aziz\'in etrafında dönen renkli karakterler ve onların komik ilişkileri, izleyiciye güldürü dolu bir deneyim sunar. Aziz\'in kurnazlıkla karışık olaylarla başa çıkmaya çalışırken yaşadığı serüvenler, film boyunca seyirciyi ekran başına kilitleyen unsurlardan biridir.', NULL, 124, 7, '../uploads/Organize İşler.png', 'https://youtu.be/9G3UF2146r8?si=ZkfnPrDfHNW1xK3Z', 'https://fullhdfilm.pro/organize-isler-izle/'),
(76, 'Düşman', '1979-02-03', 4.4, '\"İsmail\" (Aytaç Arman) belli bir işi olmayan ve ailesinin karnını doyurmak için her işte çalışan yoksul bir kenar mahâllelidir. Gelişen modern emperyalizmle birlikte İsmail gibi istemeye istemeye, korka korka para kazananların yanında İsmail\'in karısı gibi bu duruma kananlar da vardır. İşte bu mahallede sömürü kaynaklı yanlışların, ahlaksızlıkların görmezden gelinmesinin bu yanlışları bir virüs gibi nasıl herkese bulaştırdığı Yılmaz Güney\'in bakışıyla, Ökten\'in yansıtışıyla anlatılmıştır.', NULL, 120, 8, '../uploads/Düşman.png', 'https://youtu.be/_sRprvq4OKo?si=yo0a26qyks5CfM-N', 'https://dai.ly/x8kx4fy'),
(77, 'Neşeli Günler', '1978-04-16', 8.7, 'Kazım Efendi (Münir Özkul) ve Saadet Hanım (Adile Naşit) turşuculuk yapan kendi hâlinde bir çifttir. Altı çocuklarıyla birlikte yaşamlarını sürdürmektedirler. Sürekli olarak turşu suyu yüzünden kavga etmektedirler. Bir gün yine turşunun limonla mı yoksa sirke ile mi yapıldığı konusunda alevlenen kavga, çiftin ayrılmasına sebep olur. Kazım Efendi üç çocuğunu alır ve evi terk ederken, Saadet Hanım diğer üç çocuğu alır ve çift boşanır. Yıllar sonra ayrılan kardeşler tesadüf eseri birbirlerini bulur ve bir araya gelmek isterler. Ancak yıllardır anne ve babaları dargın olduğu için bu o kadar da kolay olmayacaktır.', NULL, 96, 8, '../uploads/Neşeli Günler.png', 'https://youtu.be/6aSETIqEfso?si=KskFH4TDSmEFbOCZ', 'https://youtu.be/FQ_7cabWOv0?si=zSNALyBOblzg82z1'),
(78, 'Tosun Paşa', '1976-02-01', 8.9, 'Filmin olay örgüsü, 19. yüzyılda Osmanlı İmparatorluğu\'na bağlı Mısır Eyaleti\'nde geçmektedir. Tellioğulları ve Seferoğulları adlı iki meşhur aile, İskenderiye\'nin en değerli yeri olan Yeşil Vadi için birbirleriyle kıyasıya bir mücadeleye girer. Vadinin kime ait olduğuna devlet görevlileri de karar veremezler. Tellioğlu ve Seferoğlu aileleri de bunun üzerine, Yeşil Vadi\'yi ele geçirmek için İskenderiye\'nin en büyük devlet memuru olan Daver Bey\'in kızı Leyla\'yı (Müjde Ar) almak için kıyasıya bir mücadeleye girerler. Daver Bey (Mete Sezer), Leyla\'yı Seferoğulları\'na vermeye karar verir. Bu durumda Tellioğlu ailesi, daha büyük bir torpil için evin uşağı olan Şaban\'ı (Kemal Sunal) Kahire\'nin en hatırı sayılır ve en heybetli paşası olan Tosun Paşa olarak tanıtırlar.\r\n\r\nTosun Paşa kılığındaki Şaban, Tellioğlu ailesinin en büyük oğlu Lütfü\'nün (Şener Şen) yakın arkadaşı gibi davranıp Yeşil Vadi ve Leyla\'yı Tellioğulları\'na kazandıracağına, Leyla\'ya kendisi âşık olur ve her şeyi eline yüzüne bulaştırır. Sonuçta işler Arap saçına döner ve en sonunda hakiki Tosun Paşa, Kahire Sarayı\'ndan çıkar gelir.\r\n\r\nGerçek Tosun Paşa (Oktar Durukan), Yeşil Vadi\'ye el koyar ve Daver Bey\'in kızı Leyla\'yı kendine eş olarak alır. Neticede bu olaydan ötürü kellelerini bile zor kurtaran Tellioğulları, hayatta kaldıklarına şükreder bir hâle gelirler. Herkesin gözünde suçlu Şaban olmuştur. Halbuki Lütfü kendi kazdığı kuyuya düşmüş, esas Tosun Paşa\'nın varlığını bir an için unutmuştur.', NULL, 85, 8, '../uploads/Tosun Paşa.png', 'https://youtu.be/OxSz6qzM2G4?si=50phv8jBHHHp0vg3', 'https://youtu.be/guqpuNWQDhc?si=tb3tBM8HvXg9s7fi'),
(79, 'Aşk Sana Benzer', '2015-01-23', 3.8, 'Aşk Sana Benzer, başrollerini Fahriye Evcen ve Burak Özçivit\'in paylaştığı 2014 yapımı Türk filmidir. 23 Ocak 2015\'te vizyona giren yapım bir aşk hikâyesidir. Muğla\'da bir sahil kasabasında geçmektedir. Deniz dondurmacı, Ali ise balıkçıdır. Deniz\'in eski hayatını unutmak için geldiği sahil kasabasında dondurmacıda çalışmaya başlar. Dondurma malzemesi almak için çıktığındaysa Ali\'yle karşılaşır. Ali ilk gördüğü andan itibaren Deniz\'e vurulmuştur ve peşini hiç bırakmayacaktır.', NULL, 94, 9, '../uploads/Aşk Sana Benzer.png', 'https://youtu.be/0EGFT3xzy9M?si=tjvThPhZJruP7U2f', 'https://hdfilmcehennemi.cx/ask-sana-benzer/'),
(80, 'Unutursam Fısılda', '2014-10-29', 7.5, 'Film, genç bir kadının geçmişiyle hesaplaşma sürecinde yaşadığı duygusal ve hayat dolu yolculuğu konu alır.\r\n\r\nFüsun, annesinin ölümünden sonra İstanbul\'dan köyüne döner ve annesinin gençlik yıllarında yaşadığı aşk hikayesini araştırmaya başlar. Bu süreçte, annesinin aşkını ve gençliğini yeniden keşfederken kendi geçmişiyle de yüzleşmek zorunda kalır. Köydeki yaşlıların anlattığı hikayeler ve annesinin hatıraları arasında gidip gelirken, Füsun\'un hayatı beklenmedik bir şekilde genç ve karizmatik bir adam olan Deniz ile kesişir.\r\n\r\nDeniz, Füsun\'un hayatına girdikçe, ikisinin de geçmişlerindeki yaraları iyileştirmelerine yardımcı olur. Birlikte yaşadıkları anılar, duygusal bağlarını derinleştirir ve ikisi de gelecekle ilgili yeni umutlar besler. Ancak geçmişin izleri ve sırları, Füsun\'un aşk ve yaşamı yeniden tanımlama sürecinde önemli bir rol oynar.', NULL, 118, 9, '../uploads/Unutursam Fısılda.png', 'https://youtu.be/u9x2S9d_1zs?si=wKXtaBnowoBhbSEM', 'https://www.hdfilmcehennemi2.cx/hd-unutursam-fisilda-izle'),
(81, 'Neredesin Firuze', '2004-02-20', 7.4, 'Hayri ve Orhan, piyasaya sürdükleri başarısız kasetler sonucu borç batağında olan iki prodüktördür. İstanbul Plakçılar Çarşısında borçlu olmadıkları kimse kalmamıştır. O sıralar Almanya\'da yaşayan düğün şarkıcısı Ferhat ile irtibata geçerler. Telefonda şarkı söylettikleri Ferhat\'ın sesini çok beğenirler ve hemen harekete geçerler. Şarkıcı olmak düşüncesine saplantılı bir şekilde bağlı olan Ferhat, Hayri\'nin kaset teklifini düşünmeden kabul eder, eşyalarını toplar ve soluğu İstanbul\'da alır. Ferhat\'ı hemen stüdyoya sokarlar ancak kaset borçlar yüzünden basılamaz. Ferhat son bir çare olarak bir televizyon şovuna çıkıp adını duyurmaya çalışır. Ertesi gün ofise Firuze adında zengin ve gizemli bir kadın gelir. Ferhat\'a yatırım yapmak istediğini söyler. Birdenbire Umut Müzik\'teki karabulutlar dağılır. Herkes hayaller kurmaya başlar.', NULL, 128, 9, '../uploads/Neredesin Firuze.png', 'https://youtu.be/4w4HXZNO6qU?si=5fgeeQpnUFkwloPt', 'https://youtu.be/pNLXfoYYnls?si=tV-CZPqgpJAvYl5F'),
(82, 'Deneme', '2000-10-15', 5.0, 'deneme', NULL, 30, 2, '../uploads/Neredesin Firuze.png', 'VOV', 'VOV VOV');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(11) UNSIGNED NOT NULL,
  `ad_soyad` varchar(100) NOT NULL,
  `eposta` varchar(100) NOT NULL,
  `mesaj` text NOT NULL,
  `tarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `kategori_id` int(11) NOT NULL,
  `kategori_adi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`kategori_id`, `kategori_adi`) VALUES
(1, 'Aksiyon'),
(2, 'Animasyon'),
(3, 'Drama'),
(4, 'Klasik'),
(5, 'Korku'),
(6, 'Gerilim'),
(7, 'Komedi'),
(8, 'Nostaljik'),
(9, 'Romantik');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL,
  `kullanici_adi` varchar(50) NOT NULL,
  `sifre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kullanici_adi`, `sifre`) VALUES
(1, 'sedef', 'sedef123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetmenler`
--

CREATE TABLE `yonetmenler` (
  `yonetmen_id` int(11) NOT NULL,
  `film_id` int(11) DEFAULT NULL,
  `yonetmen_adi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yonetmenler`
--

INSERT INTO `yonetmenler` (`yonetmen_id`, `film_id`, `yonetmen_adi`) VALUES
(18, 55, 'Uğur Yücel'),
(19, 56, 'Aydın Sayman'),
(20, 56, 'Tarkan Özel'),
(21, 57, 'Serdar Akar'),
(22, 58, 'Serkan Zelzele'),
(23, 58, 'Mustafa Tuğrul'),
(24, 59, 'İsmail Fidan'),
(25, 60, 'Mehmet Kurtuluş'),
(26, 60, 'Ayşe Ünal'),
(27, 61, 'Can Ulkay'),
(28, 62, 'Çağan Irmak'),
(29, 63, 'Levent Semerci'),
(30, 64, 'Yavuz Turgul'),
(31, 65, 'Derviş Zaim'),
(32, 66, 'Sinan Çetin'),
(33, 67, 'Hasan Karacadağ'),
(34, 68, 'Alper Mestçi'),
(35, 69, 'Hasan Karacadağ'),
(36, 70, 'Tomris Giritlioğlu'),
(37, 71, 'Yavuz Turgul'),
(38, 72, 'Ümit Ünal'),
(39, 72, 'Kudret Sabancı'),
(40, 72, 'Selim Demirdelen'),
(41, 72, 'Ömür Atay'),
(42, 72, 'Yücel Yolcu'),
(43, 73, 'Ertem Eğilmez'),
(44, 74, 'Togan Gökbakar'),
(45, 75, 'Yılmaz Erdoğan'),
(46, 76, 'Zeki Ökten'),
(47, 77, 'Orhan Aksoy'),
(48, 78, 'Kartal Tibet'),
(49, 79, 'A. Taner Elhan'),
(50, 80, 'Çağan Irmak'),
(51, 81, 'Ezel Akay'),
(52, 82, 'Sedef');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `basrol_oyunculari`
--
ALTER TABLE `basrol_oyunculari`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_id` (`film_id`);

--
-- Tablo için indeksler `filmler`
--
ALTER TABLE `filmler`
  ADD PRIMARY KEY (`film_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yonetmenler`
--
ALTER TABLE `yonetmenler`
  ADD PRIMARY KEY (`yonetmen_id`),
  ADD KEY `film_id` (`film_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `basrol_oyunculari`
--
ALTER TABLE `basrol_oyunculari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- Tablo için AUTO_INCREMENT değeri `filmler`
--
ALTER TABLE `filmler`
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `yonetmenler`
--
ALTER TABLE `yonetmenler`
  MODIFY `yonetmen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `basrol_oyunculari`
--
ALTER TABLE `basrol_oyunculari`
  ADD CONSTRAINT `basrol_oyunculari_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `filmler` (`film_id`);

--
-- Tablo kısıtlamaları `filmler`
--
ALTER TABLE `filmler`
  ADD CONSTRAINT `filmler_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategoriler` (`kategori_id`);

--
-- Tablo kısıtlamaları `yonetmenler`
--
ALTER TABLE `yonetmenler`
  ADD CONSTRAINT `yonetmenler_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `filmler` (`film_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
