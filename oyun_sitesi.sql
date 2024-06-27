-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 27 Haz 2024, 19:22:55
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
-- Veritabanı: `oyun_sitesi`
--
CREATE DATABASE IF NOT EXISTS `oyun_sitesi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `oyun_sitesi`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admins`
--

CREATE TABLE `admins` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'melek', '2003', '2024-06-25 14:53:11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `destek_kaydi`
--

CREATE TABLE `destek_kaydi` (
  `id` int(11) NOT NULL,
  `adsoyad` varchar(100) NOT NULL,
  `eposta` varchar(100) NOT NULL,
  `mesaj` text NOT NULL,
  `kayit_tarihi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `id` int(11) NOT NULL,
  `kategori_adi` varchar(255) NOT NULL,
  `gorsel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`id`, `kategori_adi`, `gorsel`) VALUES
(39, 'Aksiyon', '../img/kategoriler/aksiyon.png'),
(40, 'Açık Dünya', '../img/kategoriler/acik_dunya.png'),
(42, 'Çok Oyunculu', '../img/kategoriler/cok_oyunculu.png'),
(43, 'Hayatta Kalma', '../img/kategoriler/hayatta_kalma.png'),
(44, 'Korku', '../img/kategoriler/korku.png'),
(45, 'Macera', '../img/kategoriler/macera.png'),
(46, 'Nişancı', '../img/kategoriler/nisanci.png'),
(48, 'Ücretli', '../img/kategoriler/ucretli.png'),
(49, 'Ücretsiz Popüler', '../img/kategoriler/ucretsiz_populer.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oyunlar`
--

CREATE TABLE `oyunlar` (
  `id` int(11) NOT NULL,
  `oyun_adi` varchar(255) NOT NULL,
  `gorsel` varchar(255) NOT NULL,
  `aktif_oyuncu_sayisi` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `aciklama` text NOT NULL,
  `yapimci` varchar(255) NOT NULL,
  `yayinlanma_tarihi` date NOT NULL,
  `rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `oyunlar`
--

INSERT INTO `oyunlar` (`id`, `oyun_adi`, `gorsel`, `aktif_oyuncu_sayisi`, `kategori_id`, `aciklama`, `yapimci`, `yayinlanma_tarihi`, `rating`) VALUES
(66, 'Echo Of The Horizon', '../img/yuklemeler/echo_of_the_horizon.png', 145000, 40, 'Echo Of the Horizon, kusursuz ve sürükleyici bir açık dünya deneyimi sunan nefes kesici bir oyundur. Uzak bir dış gezegende geçen oyunda, gerçek ve özgürlük arayışıyla hareket eden cesur bir savaşçı olan Echo\\\'nun rolünü üstleniyorsunuz. Oyun, oyuncuların yemyeşil ormanlardan ve yükselen dağlardan geniş şehirlere ve antik kalıntılara kadar çeşitli manzaraları özgürce keşfetmelerine olanak tanır. Gizli sırları keşfedin, gizli medeniyetleri ortaya çıkarın ve dünyada yaşayan çeşitli karakterlerle etkileşime geçin. Oyun 12 yaş ve üzeri için uygundur. Ücretsiz bir oyundur.', 'Echo Of The Horizon CO. L.L.C', '2024-04-26', 7.7),
(69, 'Ashen', '../img/yuklemeler/ashen.png', 250000, 39, 'Genişleyen bir açık dünyada geçen Ashen, gezgininize yeni aydınlatılmış bir dünyada rehberlik etmeyi amaçlayan sıkı, 3. şahıs, beceriye dayalı bir aksiyon RPG\'sidir. Başkalarıyla birlikte savaşın, dostluklar kurun ve dünyayı tekrar karanlığa gömmeye kararlı gölge yaratıklarını alt edin. Gizemli zindanları keşfedin, destansı patronlarla savaşın ve muhteşem manzaralar ve efsanevi yaratıklarla dolu çeşitli bölgeleri keşfedin. Yolculuğunuzda size katılacak ve evinizi canlı bir şehre dönüştürecek karakterlerle tanışın. Bu yeni ışık çağında Ashen\'ı korumalı ve aç gölgeleri sonsuza kadar yok etmelisiniz. 12 yaş ve üzeri için uygundur. Ücreti Epic Games\'te 300₺\'dir.', 'Annapurna Interactive', '2018-12-07', 6.3),
(70, 'EVE Online', '../img/yuklemeler/eve_online.png', 400000, 39, 'EVE Online, tüm zamanların en büyük tek mekânlı MMO\'sudur. 7.000\'den fazla güneş sistemine ve oyuncular tarafından yaratılan yaklaşık 20 yıllık zengin tarihe sahip bu çok katmanlı evrene katıl ve dev PvP ya da PvE savaşlarından maden çıkarmaya, keşfe ve endüstriye kadar her şeyi ücretsiz olarak oyna. 12 yaş ve üzeri için uygundur. ', 'CCP Games', '2003-05-06', 7.8),
(71, 'No Straight Road', '../img/yuklemeler/no_straight_road.png', 350000, 39, 'Ritim dolu üçüncü şahıs dövüşünü harika müziklerle birleştiren muhteşem bir aksiyon-macera olan NO STRAIGHT ROADS\'ta bir rock grubu kurun ve EDM imparatorluğunu sona erdirin. 12 yaş ve üzeri için uygundur. Ücreti Epic Games\'te 39₺\'dir.', 'Fireshine Games', '2020-08-25', 7.6),
(72, 'The New Order', '../img/yuklemeler/the_new_order.png', 110000, 40, 'Dünyadaki yıkıcı bir felaket, yerleşik siyaseti alaşağı eder ve altı fraksiyonun ortaya çıkmasına yol açar. Bu gruplar arasındaki çatışmalar, kendi hedeflerini ve avantajlarını takip ettikçe yoğunlaşıyor. Her gruptan kahramanlar, sibernetik ve güçlendirilmiş teçhizatlar kullanarak Terranium\'u ve diğer değerli mineralleri ele geçirmek için çatışmalara dalıyor.\r\nRekabetçi ve taktiksel atış poligonlarında gezinirken, kahramanların oluşturulduğu, oynanışların ortaya çıktığı ve servetlerin kazanıldığı, zorluklar, kişiselleştirme ve ödüllerden oluşan zengin bir dokuyu keşfedeceksiniz. Ücretsiz bir oyundur.', '3MERGED', '2024-06-11', 6.8),
(73, 'Wuthering Waves', '../img/yuklemeler/wuthering_waves.png', 90000, 40, 'Wuthering Waves, yüksek derecede özgürlük sunan, hikâye açısından zengin bir açık dünya aksiyon RYO\'dur. Kayıp anılarını geri kazanıp Ağıt\'ı (Lament) alt etmek için zengin bir Rezonatör (Resonator) grubu ile birlikte yolculuğa çıkan bir Rover olarak derin uykundan uyanıyorsun. Oyun 12 yaş ve üzeri için uygundur. Ücretsiz bir oyundur.\r\n', 'KURO GAMES', '2024-05-23', 4.4),
(74, 'Fall Guys', '../img/yuklemeler/fall_guys.png', 800000, 42, 'Tehlikelerden kaçınıp zafere doğru dalarak bir sakarlık efsanesi ol. İster acemi ister uzman ol, ister tek başına ister ekibinle yarış, Fall Guys sürekli yenilenen yoğun bir eğlence sunuyor!Kaosu yaratan kişi olmayı mı tercih edersin? Kendi engelli parkurunu inşa edip arkadaşlarınla veya toplulukla paylaş. Kendi Parkurunu yarat: Fall Guys Creative, acımasız özel turlar oluşturup bunları toplulukla paylaşmanı sağlayan bir seviye düzenleme aracı. Rekabet ve İşbirliği: Rekabetçi oyunlarla işbirliği gerektiren mücadeleler arasında yuvarlan veya 3 arkadaşınla Blunderdome\'a meydan oku! 3 yaş ve üzeri için uygundur. Ücretsiz bir oyundur.', 'Mediatonic', '2020-08-03', 7),
(75, 'Horizon Chase 2', '../img/yuklemeler/horizon_chase_2.png', 500000, 42, 'Horizon Chase 2 , ödüllü yarış oyunları serisinin geldiği son nokta! Arcade kategorisinde hayat bulan bu oyun, sürükleyici ve hızlı tempolu oynanışıyla seni de içine çekecek. Arcade yarışlarının altın yılları, modern ve tamamen yenilenmiş bir oyuncu deneyimiyle geri dönüyor.90\'ların klasik oynanış mekanikleri, araçların üzerinde her daim tam kontrole sahip olmanı sağlar. Karmaşık kurulumları unut: Sollamalara, yol ayrımlarına ve nitrolara yalnızca birkaç adım uzaktasın. Kaşla göz arasında rakiplerini geçmek de senin elinde. Eline alıp oynaması kolay olsa da ustalaşması zor olan bu oyun , rakiplerini atlatıp bitiş çizgisinden geçmek için çevik refleksler ve keskin yarış becerileri gerektiriyor. Epic Games\'te oyunun ücreti 456₺\'dir.', 'Epic Games', '2003-09-14', 6.8),
(76, 'Volley Pals', '../img/yuklemeler/volley_pals.png', 400000, 42, 'Basitleştirilmiş voleybol olarak oynanan 2 boyutlu oyunumuzda ana amaç topa vurup karşı takımın sahasına düşürmektir. Geleneksel voleybolda hoş karşılanmayabilecek birçok davranışı Volley Pals\'ta serbest kıldık. Bunlara örnek olarak: karşı takımın sahasına atlamak, karşı takım servisini kullanamadan sizin onların servisini kullanabilmeniz, ağ direğinin yüksekliğiyle oynamak, hatta oyun içerisinde taş-kağıt-makas oynayabilmek ve videoda da görebileceğiniz daha birçok çeşitli şey. 3 yaş ve üzeri için uygundur. Epic Games\'te oyunun ücreti 38₺\'dir.', 'NAISU', '2023-05-19', 5.8),
(77, 'Asilium', '../img/yuklemeler/asilium.png', 115000, 43, '\"Asilium\", Asilium Studio tarafından geliştirilen, açık dünya MMORPG (Devasa Çok Oyunculu Çevrimiçi Hayatta Kalma Oyunu) olarak tasarlanan ve aynı zamanda entegre bir yapay zeka sistemi tarafından geliştirilmiş bir meta veri deneyimi sunan bir oyundur. 12 yaş ve üzeri için uygundur. Ücretsiz bir oyundur.', 'Asilium Yazılım A.Ş.', '2024-05-25', 5.2),
(78, 'Hero Battle Fantasy Arena', '../img/yuklemeler/hero_battle_fantasy_arena.png', 110000, 43, 'Karanlık fantezi dünyasında bu epik aksiyon-hayatta kalma oyununda amansız düşman ordularına karşı savaş. Uzun süre hayatta kalmak için çeşitli runeleri ve yetenekleri öğrenin. Daha da yoğun aksiyon için yerel çok oyunculu modda arkadaşlarınızla savaşın! Oyun 3 yaş ve üzeri için uygundur. Epic Games\'te oyunun ücreti 15.50₺\'dir.', 'Beor Games', '2024-01-19', 4.8),
(79, 'The Outlast Trials', '../img/yuklemeler/the_outlast_trials.png', 700000, 43, 'Red Barrels seni beyin uyuşturan bir dehşeti deneyimlemeye davet ediyor, ama bu sefer arkadaşlarla. Deneylere tek başına veya ekip olarak katılabileceksin ve yeterince hayatta kalabilir ve tedaviyi tamamlarsan Murkoff, yaşamana seve seve izin verecek… ama sen aynı kişi olacak mısın?\r\nSoğuk Savaş döneminde geçen oyunda insan kobaylar, Murkoff Corporation çalışanları tarafından gelişmiş beyin yıkama ve zihin kontrolü yöntemlerinde test edilmek üzere istemsizce kullanılıyor. Güvensizlik, korku ve şiddet dolu bir dünyada ahlaki değerlerin zorlanacak, dayanıklılığın test edilecek ve akıl sağlığın altüst olacak. 15 yaş ve üzeri için uygundur. Epic Games\'te oyunun ücreti 269₺\'dir.', 'Red Barrels', '2023-05-18', 8.4),
(80, 'Cruelty', '../img/yuklemeler/cruelty.png', 750000, 44, '\"CRUELTY\" Japon yapımı bir sıçramalı korku filmidir.\r\nBir kaza geçirdiniz ve bilincinizi kaybettiniz.\r\nUyandığınız anda kendinizi bu Dünya\'ya ait olmayan bir kabus dünyasında buluyorsunuz. Çılgınlığın hüküm sürdüğü bir mezbahada korkunç sahneler yaşanıyor ve kaçınılmaz terör sizi bekliyor.\r\nHayatta kalmak için, ilerledikçe canavar varlıkların bakışlarından kaçarken bu korku dünyasındaki sayısız gizemi çözmelisiniz. 18 yaş ve üzeri için uygundur. Epic Games\'te ücreti 95₺\'dir.', '838s Maniacs', '2024-06-13', 8),
(81, 'Killing Floor 2', '../img/yuklemeler/killing_floor_2.png', 847000, 44, 'KILLING FLOOR 2\'de oyuncular, Horzine Corporation\'ın haydut unsurları tarafından yaratılan Zed\'ler adı verilen korkunç, öldürücü klonlar tarafından istila edildikten sonra kıta Avrupa\'sına iniyorlar. 6 oyunculu Co-Op ve 12 oyunculu Zed\'e Karşı katliam kargaşası. 18 yaş ve üzeri için uygundur. Epic Games\'te ücreti 49₺\'dir.', 'Tripwire Etkileşimli', '2020-09-07', 7.6),
(82, 'Quest Room', '../img/yuklemeler/quest_room.png', 430000, 44, 'Quest Room, korku türünde atmosferik bir oyundur; burada zor seçimlerle yüzleşmeniz, zekanızı göstermeniz, hareketlerinizi doğru şekilde koordine etmeniz ve mantığı kullanmanız gerekecek. Oyunun başında kilitli odada görünüyorsunuz, etrafınızda etkileşime girebileceğiniz birçok farklı nesne var. Görevin asıl amacı odadan çıkmaktır ve bunu yapmak için bilmeceleri çözmeniz ve gizli ipuçları bulmanız gerekir.\r\nSeni Neler Bekliyor?\r\nÇeşitli bulmacaları çözün.\r\nÖğeleri toplayın.\r\nNesnelerle etkileşim kurun.\r\nAna karakterin gizemli hikayesi.\r\nFarklı odalar.\r\nTam daldırma atmosferi. 16 yaş ve üzeri için uygundur. Epic Games\'te ücreti 139₺\'dir.', 'Tozlu Oyun', '2024-03-05', 8.4),
(83, 'Dark and Darker', '../img/yuklemeler/dark_and_darker.png', 225450, 45, 'Dark and Darker\'ın ücretsiz sürümü, oyuncuların tek bir karakter oluşturmasına ve tüm haritalarda Normal modda oynamasına, görevleri tamamlamasına ve bir ganimet zulası oluşturmasına olanak tanır! Ücretsiz sürümde vakit geçirmekten keyif alan ve oyunun sunduğu her şeyi deneyimlemek isteyen oyuncular, 15 Redstone parçası (30,00 $ eşdeğeri) karşılığında tam sürüme yükseltebilirler. Oyunun tam sürümü, oyuncuların zorlukla kazandıkları donanımlarını daha da tehlikeli zindanlara girmek ve bahisleri artırmak için donatabilecekleri High-Roller moduna erişimi içerir. Oyuncular ayrıca diğer maceracılarla ticaret yapabilecekleri pazaryerine, toplam 9 karakter yuvasına ve Paylaşılan Zulaya tam erişim elde edecekler! \r\nBu sürümün oyunculara Dark and Darker\'ın sunduğu bazı şeyleri deneyimleme şansı vereceğini ve oyun testlerinden bu yana oynamamış olan oyunculara da tam sürüme geçmeden önce nelerin yeni olduğunu görme şansı vereceğini umuyoruz. 16 yaş ve üzeri için uygundur. Ücretsiz bir oyundur.', 'IRONMACE', '2023-08-08', 5.2),
(84, 'Sift Heads Cartels', '../img/yuklemeler/sift_heads_cartels.png', 260000, 45, 'Vinnie, Kiro ve Shorty\'nin şehir gangsterleri ve İtalyan mafyasıyla savaştığı heyecan verici bir üçlemeye başlayın. Silahları yükseltin, kanlı bir hikayeye dalın ve gelişmiş oyun özelliklerinin keyfini çıkarın. Bu aksiyon dolu macerada savaşın, yükseltin ve hedeflerinizi kovalayın! 12 yaş ve üzeri için uygundur. Epic Games\'te ücreti 250₺\'dir.', 'Pyrozen', '2024-06-20', 7.9),
(85, 'Survival Fountain of Youth', '../img/yuklemeler/survival_fountain_of_youth.png', 70000, 45, 'Hayatta Kalma: Gençlik Çeşmesi sizi tarihi Keşif Çağı\'ndan ilham alan heyecan verici bir maceraya davet ediyor. Bir gemi kazasının ardından kendinizi, hayatta kalma sanatında ustalaşmanız gereken ıssız adalarda mahsur kalmış halde buluyorsunuz. Alet yapmaktan barınak inşa etmeye, av avlamaktan avcılarla savaşmaya kadar her eylem önemlidir. 16 yaş ve üzeri için uygundur. Epic Games\'te ücreti 395₺\'dir.', '345000', '2024-05-21', 6.3),
(86, 'Clid The Snail', '../img/yuklemeler/clid_the_snail.png', 650000, 46, 'İnsanlığın artık uzak bir anıdan ibaret olduğu bir dünyada belalı ve alkolik salyangoz Clid olarak memleketin olan kaleden sürgün ediliyorsun. Sadık ve konuşkan ateş böceği Belu\'yla birlikte yola çıkarak, toplumdan dışlanmış başka tuhaf karakterlerin olduğu bir ekiple tanışıp yeni bir ev bulacaksın. Bu yeni arkadaş grubuyla birlikte yeni amacın, diyarın altını üstüne getiren gizemli sümüklü böcek salgınına son vermek olacak.\r\nAlastor\'un üyeleri arasında içine kapanık bir kirpi, bir şaman kaplumbağa, dilsiz bir yarasa, bir ninja kurbağa ve tek gözlü bir bukalemun var. Her görevden sonra evine dönerek dinlenebilir, kaynak stoku yapabilir, ekipmanını geliştirebilir ve arkadaşlık ilişkilerini ilerletebilirsin. Bu eşsiz karakterleri daha yakından tanı ve geçmişlerini açığa çıkararak hikâyenin temelinde yatanları öğren.\r\nSilahlarını, el bombalarını ve sana özel salyangoz kabuklarını yaratıcılıkla kullanarak düşmanlarını alt et. Çevrenden avantaj sağla ve zafere ulaşmak için doğru yerde konuşlanmayı öğren. Epic Games\'te ücreti 69₺\'dir.', 'Weird Beluga S.L.', '2021-12-15', 8.2),
(87, 'Destiny 2', '../img/yuklemeler/destiny_2.png', 700000, 46, 'Yıldızlar boyunca yayılan kuzey ışıklarının parıldayan sınırları içinde gizemli bir nesne belirir ve Nessus\'ın yüzeyine düşer. Bu gezegene seyahat et ve yalnızca Yankı olarak bilinen bu nesneyi aramaya başla.\r\nDestiny 2\'nin dünyasına dalıp güneş sisteminin gizemlerini keşfet ve etkileyici bir FPS deneyimi edin. Güçlü elementsel becerileri aç ve Gardiyanının görünüşünü ve oynayış tarzını özelleştirmek için benzersiz teçhizatlar topla. Destiny 2\'nin sinematik hikâyesinin, zorlu işbirliği görevlerinin ve çeşitli PvP modlarının keyfini ister arkadaşlarınla ister tek başına çıkar. Hemen ücretsiz olarak indir ve yıldızlara kendi efsaneni yaz.\r\nSürükleyici Bir Hikâye\r\nKötü şöhretli düşmanların saldırısı altında olan bir güneş sisteminde insanların son şehri olan Last City\'yi savunan Gardiyanlarından birisin. Gözünü yıldızlara çevir ve karanlığın karşısına çık. Efsanen şimdi başlıyor. 16 yaş ve üzeri için uygundur. Ücretsiz bir oyundur. ', 'Bungie', '2017-10-24', 5.4),
(88, 'Destroy All Humans 2 Reprobed', '../img/yuklemeler/destroy_all_humans_2_reprobed.png', 20000, 46, 'Kimyasallardan kaynaklanan tüm ihtişamıyla özgür 60\'ları deneyimleyin ve ana geminizi havaya uçuran KGB\'den intikamınızı alın. Köleleştirmeye geldiğiniz insan türünün bazı üyeleriyle ittifaklar kurmanız gerekecek.\r\nAna Özellikler\r\nKlasik silahları ve Meteor Shower (Meteor Yağmuru) gibi yeni teknolojileri kullanarak bu hippilere patronun kim olduğunu gösterin\r\n1960\'ların dünyasını keşfedin ve güvenilir uçan dairenizle kurgusal şehirleri yerle bir edin\r\nGörevinizi baltalamak isteyenlere karşı çok daha büyük ve açık bir dünyada savunma yapın\r\nBecerilerinizi geliştirmek için farklı ülkelerden insanları toplayıp onları DNA kokteyllerine dönüştürün\r\nİki kişi oynamak için bir arkadaşınızı davet edin ve yerel 2 oyunculu bölünmüş ekran eşli oyunla tüm hikâyenin tadını çıkarın! Epic Games\'te ücreti 189₺\'dir.', 'Black Forest Games', '2022-08-30', 6.7),
(89, 'Crown Trick', '../img/yuklemeler/crown_trick.png', 450000, 48, 'Crown Trick, sıra tabanlı dövüş ve beceri-eşya etkileşimi stratejisi ile öne çıkan, şahane animasyonlara sahip, rogue-like RPG tarzı bir macera oyudur. Düşmanları yenmek ve yer altı dünyasının gizemlerini açığa çıkarmak için elementlerde ustalaşmanın çok önemli olduğu, seninle beraber hareket eden bir labirente gir. Zindana her girişinde seni bekleyen yeni deneyimlerle bu zorlu macerada tacın verdiği gücün sana rehberlik etmesine izin ver!\r\nYöntemsel Olarak Oluşturulmuş Labirent\r\nYöntemsel olarak oluşturulan labirent, zindana her girişinde farklı bir deneyim yaşamanı sağlar. Geleneksel açık haritaların aksine, Crown Trick seni canavarlarla savaşabilmen için küçük bir zindan odasına kilitler. Tüm haritaya erişimin olmadığı için de düşmana nasıl bir saldırı gerçekleştireceğine dair stratejik olarak karar vermekten başka çaren kalmaz. 7 yaş ve üzeri için uygundur. 440₺\'dir.', 'NEXT Studios', '2020-10-10', 7.3),
(90, 'Dead By Daylight', '../img/yuklemeler/dead_by_daylight.png', 570000, 48, 'Dead by Daylight, oyunculardan birinin acımasız bir Katil\'i ve kalan dört oyuncunun yakalanmaktan, işkence görmekten ve öldürülmekten kaçmaya çalışan Kurbanları oynadığı çok oyunculu (4\'e karşı 1) bir korku oyunudur.\r\nKurbanlar üçüncü şahıs olarak oynarlar, dolayısıyla daha iyi durumsal farkındalığa sahiplerdir. Katil ise birinci şahıs olarak oynar ve avlarına daha çok odaklanabilir.\r\nKarşılaşmalarda Kurbanların amacı, Katil\'e yakalanmadan Ölüm Alanı\'ndan kaçmak. Fakat bu kulağa geldiği kadar kolay değil, özellikle de her oynayışta ortamın değiştiği düşünülünce. 18 yaş ve üzeri için uygundur. 451₺\'dir.', 'Behaviour Interactive', '2021-12-09', 8.4),
(92, 'League Of Legends', '../img/yuklemeler/league_of_legends.png', 156000, 49, 'Takım stratejisini bireysel ustalıkla buluşturan en çetin 5\'e 5 savaş arenası oyununda becerilerini sergile. Rolünü seç, dizilimini kusursuzlaştır ve haritanın dört bir yanında savaşarak rakibin merkezini yık. Tamamen ücretsiz. İyi olan takım kazansın. 150\'den fazla şampiyon, herkese uygun oynanış tarzı. Suikastçı olup sezdirmeden yaklaş, nişancı olup hedefine kurşun yağdır veya destek olup takım arkadaşlarına kalkan ver. Zarif kılıç ustalarından devasa canavarlara, çeşitli ve devamlı büyüyen şampiyon havuzundan istediğini seç ve oynamak istediğin gibi oyna. Ücretsiz bir oyundur.', 'Riot Games', '2021-11-04', 8.8),
(93, 'Rocket League', '../img/yuklemeler/rocket_league.png', 960000, 49, 'Arcade tarzı futbol ve arabaların yarattığı yüksek oktanlı kaosu indir ve mücadeleye başla! Arabanı özelleştir, sahaya çık ve tüm zamanların en çok beğenilen spor oyunlarından birinde mücadele et! Hemen indir ve şutunu çek!\r\n1e1, 2ye2 ve 3e3 Çevrimiçi Modlarda tek başına veya arkadaşlarınla sahaya çık ya da Rumble, Snow Day veya Hoops gibi Ekstra Modların tadını çıkar. Rocket Pass\'teki öğeleri aç, Rekabetçi Derecelerde yüksel, Rekabetçi Turnuvalarda mücadele et, Görevleri tamamla, çapraz platform ilerlemesinin tadını çıkar ve daha fazlasını yap! Saha seni bekliyor. Şutunu çek! Ücretsiz bir oyundur.', 'Psyonix LLC', '2015-07-07', 7.9),
(94, 'Valorant', '../img/yuklemeler/valorant.png', 200000, 49, 'DÜNYANIN DÖRT BİR YANINDA SAVAŞIN\r\n\r\nTarzınızı ve deneyiminizi harmanlayarak küresel rekabet sahnesinde boy gösterin. Keskin nişancılığınızı ve taktiksel yeteneklerinizi kullanarak saldırın ve savunun. Her turda tek bir cana sahip olduğunuz için hayatta kalmak istiyorsanız rakiplerinden daha hızlı düşünmeniz gerekir.\r\n\r\nEN GÜÇLÜ SİLAHINIZ HAYAL GÜCÜNÜZ\r\n\r\nİş silahlar ve mermilerle bitmiyor; her duruma uyum sağlayan, hızlı ve ölümcül yeteneklere sahip ajanlardan birini seçin ve kendinizi gösterebileceğiniz anları kollayın. Tüm haritalar takım stratejileri, muhteşem oyunlar ve kıran kırana geçen karşılaşmalar için özel olarak tasarlandı. Başkalarının yıllar sonra bile taklit etmeye çalışacağı performanslar gösterin. 16 yaş  ve üzeri için uygundur. Ücretsiz bir oyundur.', 'Riot Games', '2020-06-02', 7.6),
(95, 'Unravel', '../img/yuklemeler/unravel.png', 30000, 48, 'Çevre Kuzey İskandinavya’nın nefes kesen yemyeşil ortamlarından ilham alan oyunda, doğanın güzellikleri ve içinde barındırdığı tehlikeleri arasında gezintiye çıkın.\r\nBulmacalar\r\nYarny\'nin ipliğini kullanarak çevreyle etkileşime girebilir, ağaçlar arasında sallanabilir, uçan bir uçurtmaya binebilir; kısaca istediğiniz her şeyi yapabilirsiniz. Araçlar basit olabilir, ama karmaşık bulmacaları çözme yeteneğine sahiptirler.\r\nTemel Alınan Hikaye\r\nUzun süredir kayıp bir ailenin anılarını birleştiren içten hikayeyi açın. Bu öykü hiç sözcük kullanılmadan anlatılıyor; her şeyi birbirine bağlayan şey, Yarny. 7 yaş ve üzeri için uygundur. 720₺\'dir.', 'Coldwood Interactive', '2016-02-09', 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `id` int(11) NOT NULL,
  `oyun_id` int(11) NOT NULL,
  `adsoyad` varchar(100) NOT NULL,
  `yorum` text NOT NULL,
  `yorum_tarihi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `oyun_id`, `adsoyad`, `yorum`, `yorum_tarihi`) VALUES
(11, 94, 'Melek Aksoy', 'Çok beğendim!', '2024-06-27 13:45:18');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `destek_kaydi`
--
ALTER TABLE `destek_kaydi`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `oyunlar`
--
ALTER TABLE `oyunlar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_oyun_yorum` (`oyun_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `destek_kaydi`
--
ALTER TABLE `destek_kaydi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Tablo için AUTO_INCREMENT değeri `oyunlar`
--
ALTER TABLE `oyunlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `oyunlar`
--
ALTER TABLE `oyunlar`
  ADD CONSTRAINT `oyunlar_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategoriler` (`id`);

--
-- Tablo kısıtlamaları `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD CONSTRAINT `fk_oyun_yorum` FOREIGN KEY (`oyun_id`) REFERENCES `oyunlar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

