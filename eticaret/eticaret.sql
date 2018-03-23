-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 23 Mar 2018, 06:56:53
-- Sunucu sürümü: 5.7.17-log
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_maps` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_zopim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_bakim` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_url`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/21929logo-teal-small.png', 'http://spicyrestaurant.azurewebsites.net', 'ModaBaz Online Store', 'Elektron Magaza', 'eticaret, moda, vouge, fashion, deb, kisi, qadin, ', 'Azar Aghayev', '+99455 638 37 10', '+99455 638 37 10', '+99455 638 37 10', 'azik666@list.ru', 'Baki', 'Neriman Nerimanov', 'Aga Nematulla 79', '7/24 acix online magaza', 'ayar_maps_api', 'ayar_analystic', 'ayar_zopim', 'www.facebook.com', 'www.twitter.com', 'www.google.com', 'www.youtube.com', 'mail.alanadiniz.com', 'azer', 'password', '587', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `banka_id` int(11) NOT NULL,
  `banka_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_iban` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_hesapadsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesapadsoyad`, `banka_durum`) VALUES
(1, 'Garanti Bankasi', 'TR445578901246', 'Azar Aghayev', '1'),
(2, 'Kapital Bank', 'AZE56748838901', 'Azer Agayev', '1'),
(3, 'Ak Bank', 'TR67893467289', 'Vagif Aghayev', '1'),
(4, 'Bank Respublika', 'AZE56748838232', 'Vaqif Agayev', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'ModaBaz tarixi haqqinda qisa melumat.', '<p>Lorem Ipsum, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n', 'cqih5hGQPLY', 'ModaBaz vizyonu haqqinda melumat burada yazilacax', 'ModaBaz misyonu haqqinda melumat burada yazilacax');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_ust` int(2) NOT NULL,
  `kategori_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_ust`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(1, 'Ayakkabilar', 0, 'ayakkabilar', 0, '1'),
(2, 'Gomlekler', 0, 'gomlekler', 1, '1'),
(3, 'Tisortler', 6, 'tisortler', 2, '1'),
(4, 'Pantalonlar', 0, 'pantalonlar', 3, '1'),
(6, 'Bluzlar', 0, 'bluzlar', 5, '1'),
(7, 'Trikolar', 0, 'trikolar', 6, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tc` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_mail` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_il` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ilce` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_unvan` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`) VALUES
(147, '2017-07-08 15:21:45', '', '9958928923212', '', 'root', '08508408076', '40ecce55acefbbbbf7a91568683309e1', 'Vaqif Aghayev', '', '', '', '', '5', 1),
(153, '2018-03-07 18:57:15', '', '', '', 'vaqif@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Vaqif Aghayev', '', '', '', '', '1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `menu_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(1, '0', 'Hakkimizda', '', 'hakkimizda.php', 1, '1', 'hakkimizda'),
(2, '0', 'iletisim', '<p>bla bla blaaa</p>\r\n', 'iletisim', 3, '1', 'iletisim'),
(4, '0', 'Kategoriler', '', 'kategoriler', 2, '1', 'kategoriler'),
(5, '', 'Gizlilik Kosullarimiz', '<p>L&uuml;tfen bu İnternet Sitesini kullanmadan &ouml;nce aşağıdaki Kullanım Şartlarını ve Yasal Uyarıları Dikkatle Okuyun</p>\r\n\r\n<p>PepsiCo, Inc. (&ldquo;PepsiCo&rdquo;) İnternet sitesine hoş geldiniz. Aşağıda bu internet sitesi &uuml;zerinden bize sağlayabileceğiniz kişisel bilgilerle ilgili Gizlilik Koşullarımızı bulacaksınız. Amacımız mahremiyetinizi ve İnternet &uuml;zerinden bize sunduğunuz bilgileri korumaktır.</p>\r\n\r\n<p>PepsiCo bu internet sitesini Amerika Birleşik Devletleri&rsquo;nin New York Eyaleti&rsquo;nin Purchase şehrindeki ofisinden işletmektedir. Bu internet sitesiyle ilgili b&uuml;t&uuml;n konular Amerika Birleşik Devletleri&rsquo;nin New York Eyaleti&rsquo;nin kanunlarına tabidir ve onlar kapsamında yorumlanır.</p>\r\n\r\n<p>Bu internet sitesine erişerek bu Gizlilik Koşulları&rsquo;nı ve bu siteye yazılmış Kullanım Şartları&rsquo;nı kabul ettiğinizi belirtirsiniz.</p>\r\n\r\n<p>Bu internet sitesi 13 yaşın altındaki &ccedil;ocuklara y&ouml;nelik değildir ve sitede 13 yaşın altındaki &ccedil;ocuklardan bilerek kişisel bilgi toplamayız. Eğer sitede kasıtsız olarak 13 yaşın altındaki bir ziyaret&ccedil;inin kişisel bilgilerini aldığımızın farkına varırsak, bu bilgileri kayıtlarımızdan sileriz.</p>\r\n\r\n<p>Diğer Sitelere Bağlantı Verme</p>\r\n\r\n<p>Bu politika www.PepsiCo.com&rsquo;u (PepsiCo&rsquo;nun kurumsal internet sitesini) kapsar. İştiraklerimizden ve/veya programlarımızdan bazıları kendi, muhtemelen farklı politikalarını kendi internet sitelerine yazabilirler. Sizi o internet sitelerine bağlantı verirken o politikaları g&ouml;zden ge&ccedil;irmeye teşvik ediyoruz.</p>\r\n\r\n<p>Topladığımız bilgiler ve onları kullanım şeklimiz</p>\r\n\r\n<p>Kişisel Bilgiler &ndash; Bu internet sitesinde kişisel bilgiler (isminiz, adresiniz, telefon numaranız ve e-posta adresiniz gibi) verebilirsiniz. Bilgileri vermek i&ccedil;in kullanabileceğiniz bazı y&ouml;ntemler ve verebileceğiniz bilgi tipleri aşağıdadır. Size bilgiyi nasıl kullanabileceğimizi de a&ccedil;ıklayacağız.</p>\r\n\r\n<p>Bizimle İrtibat Kurun-&nbsp;Sitedeki &ldquo;Bizimle İrtibat Kurun&rdquo; bağlantısından bize e-posta g&ouml;nderirseniz sorularınıza ve yorumlarınıza cevap verebilmek i&ccedil;in sizden isminiz ve e-posta adresiniz gibi bilgiler isteriz. İlave bilgiler de verebilirsiniz.</p>\r\n\r\n<p>İ&ccedil;eriği Bir Arkadaşa Yolla &ndash;&nbsp;Bazı i&ccedil;erikleri arkadaşlarınıza yollayabilirsiniz. Bunu yapmak i&ccedil;in sizden isminizi ve arkadaşınızın e-posta adresini vermenizi isteriz. Bu bilgiyi i&ccedil;eriği arkadaşınıza yollamak i&ccedil;in kullanırız.</p>\r\n\r\n<p>Internet Protokol&uuml; Adresi</p>\r\n\r\n<p>Sitemizin b&uuml;t&uuml;n ziyaret&ccedil;ilerinin İnternet Protokol&uuml; adreslerini toplarız. IP adresinizi sitemizi y&ouml;netmemize yardımcı olmak i&ccedil;in kullanırız. IP adresiniz sitemizi ne zaman ziyaret ettiğinizi belirlemek i&ccedil;in de kullanılır.</p>\r\n\r\n<p>Sitenin &ldquo;Kariyerler&rdquo; Kısmı i&ccedil;in İlave Politikalar</p>\r\n\r\n<p>Eğer bu sitenin &ldquo;Kariyerler&rdquo; veya &ldquo;İş Fırsatları&rdquo; kısımlarında kişisel bilgi verirseniz, bu bilginin kullanımı ve korunması kariyer.net internet sitesinde yazılı Kariyer.net Gizlilik Koşulları&rsquo;na tabidir. Daha fazla bilgi i&ccedil;in www.kariyer.net adresini ziyaret edin.</p>\r\n\r\n<p>Paylaştığımız Bilgiler</p>\r\n\r\n<p>İnternet sitemizin ziyaret&ccedil;ileri hakkındaki kişisel bilgileri burada a&ccedil;ıklanan haller haricinde satmayız ya da başka bir suretle a&ccedil;ıklamayız. Bu sitenin ziyaret&ccedil;ilerinin sağladığı bilgileri adımıza hizmetler y&uuml;r&uuml;tmek i&ccedil;in tuttuğumuz hizmet sağlayıcılarla paylaşabiliriz. Bu hizmet sağlayıcıların adımıza hizmetler y&uuml;r&uuml;tmek ya da yasal gereksinimlere uymak i&ccedil;in gerekli olan haller dışında bu bilgileri kullanmaları ya da a&ccedil;ıklamaları yasaktır. Ek olarak, (i) kanunen ya da yasal bir s&uuml;re&ccedil; nedeniyle a&ccedil;ıklamamız gerekiyorsa, (ii) emniyet g&ouml;revlilerine ya da diğer devlet yetkililerine (iii) a&ccedil;ıklamanın fiziksel hasarı veya mali kaybı &ouml;nlemek veya ş&uuml;pheli veya ger&ccedil;ek yasadışı faaliyete ilişkin bir soruşturmayla ilişkili olarak gerekli veya uygun olduğunu d&uuml;ş&uuml;nd&uuml;ğ&uuml;m&uuml;z zaman hakkınızdaki bilgileri a&ccedil;ıklayabiliriz.</p>\r\n\r\n<p>Şirketimizin ya da varlıklarımızın tamamını ya da bir kısmını satmamız ya da devretmemiz halinde hakkınızdaki bilgileri devretme hakkını saklı tutarız. B&ouml;yle bir satış ya da devir meydana gelirse, devralanı bu internet sitesinden verdiğiniz kişisel bilgileri bu Gizlilik Koşulları&rsquo;na uygun bir şekilde kullanmaya teşvik etmek i&ccedil;in makul &ccedil;aba g&ouml;stereceğiz.</p>\r\n\r\n<p>Aktardığımız Bilgiler</p>\r\n\r\n<p>Bu sitede topladığımız kişisel bilgileri iş yaptığımız diğer &uuml;lkelere aktarabiliriz, ama bunu sadece yukarıda a&ccedil;ıklanmış ama&ccedil;larla yapacağız. Bilgilerinizi diğer &uuml;lkelere aktardığımız zaman uygulanabilen kanunlar aksini gerektirmediği s&uuml;rece o bilgiyi burada a&ccedil;ıklandığı gibi koruyacağız.</p>\r\n\r\n<p>Kişisel Bilgiyi Nasıl Koruruz?</p>\r\n\r\n<p>Bu internet sitesinden verdiğiniz kişisel bilgileri yetkisiz a&ccedil;ıklanmaya, kullanıma, değiştirmeye ya da tahribata karşı korumak i&ccedil;in idari, teknik ve fiziksel tedbirler uyguluyoruz. Bu sitede verdiğiniz kişisel bilgilerin g&uuml;venli kalması i&ccedil;in G&uuml;venli Şifreleme Protokol&uuml; (SSL) teknolojisini kullanıyoruz.</p>\r\n\r\n<p>Gizlilik Beyanımızın G&uuml;ncellemeleri</p>\r\n\r\n<p>Bu Gizlilik Beyanı &ccedil;evrimi&ccedil;i bilgi uygulamalarımızdaki değişiklikleri yansıtması i&ccedil;in periyodik olarak ve &ouml;nceden size haber verilmeden g&uuml;ncellenebilir. Gizlilik Beyanımızdaki &ouml;nemli değişiklikleri size bildirmek i&ccedil;in bu internet sitesine bir bildirim yazacak ve en son ne zaman g&uuml;ncellendiğini belirteceğiz.</p>\r\n\r\n<p>Bizimle İrtibat Kurma</p>\r\n\r\n<p>Eğer bu Gizlilik Beyanı hakkında sorularınız veya yorumlarınız varsa veya siz ya da tercihleriniz hakkındaki bilgileri g&uuml;ncellememizi istiyorsanız l&uuml;tfen aşağıda listelenen adreslerden ya da telefon numaralarından biri vasıtasıyla bizimle irtibat kurun.</p>\r\n\r\n<p>PepsiCo T&uuml;rkiye</p>\r\n\r\n<p>Didem Şinik<br />\r\nAlemdağ Caddesi, Inkılap Mahallesi, Siteyolu Sokak<br />\r\nNo:2, 34768, Umraniye &ndash; Istanbul<br />\r\ne-posta:&nbsp;didem.sinik@pepsico.com<br />\r\nTel: +90 216 635 40 00<br />\r\nFax: +90 216 634 50 09</p>\r\n\r\n<p>PepsiCo Beverages</p>\r\n\r\n<p>Eda G&ouml;kmen &Uuml;&ccedil;erler<br />\r\nTekfen Tower B&uuml;y&uuml;kdere Cad. No:209, 34394 , 4. Levent &ndash; Istanbul &ndash; T&uuml;rkiye<br />\r\nTel: 90(212) 319 30 00<br />\r\nFax: 90 (212) 357 01 80<br />\r\ne-posta:&nbsp;eda.gokmenucerler@pepsico.com</p>\r\n\r\n<p>Frito Lay</p>\r\n\r\n<p>M&uuml;ge T&uuml;mer<br />\r\nAlemdağ Caddesi, Inkılap Mahallesi, Siteyolu Sokak,<br />\r\nNo:2, 34768, &Uuml;mraniye &ndash; Istanbul<br />\r\nTel: +90 216 635 40 00<br />\r\nFax: +90 216 634 50 09<br />\r\ne-posta:&nbsp;muge.tumer@pepsico.com</p>\r\n', '', 5, '1', 'gizlilik-kosullarimiz'),
(6, '', 'Gizlilik Kosullarimiz', '<p>L&uuml;tfen bu İnternet Sitesini kullanmadan &ouml;nce aşağıdaki Kullanım Şartlarını ve Yasal Uyarıları Dikkatle Okuyun</p>\r\n\r\n<p>PepsiCo, Inc. (&ldquo;PepsiCo&rdquo;) İnternet sitesine hoş geldiniz. Aşağıda bu internet sitesi &uuml;zerinden bize sağlayabileceğiniz kişisel bilgilerle ilgili Gizlilik Koşullarımızı bulacaksınız. Amacımız mahremiyetinizi ve İnternet &uuml;zerinden bize sunduğunuz bilgileri korumaktır.</p>\r\n\r\n<p>PepsiCo bu internet sitesini Amerika Birleşik Devletleri&rsquo;nin New York Eyaleti&rsquo;nin Purchase şehrindeki ofisinden işletmektedir. Bu internet sitesiyle ilgili b&uuml;t&uuml;n konular Amerika Birleşik Devletleri&rsquo;nin New York Eyaleti&rsquo;nin kanunlarına tabidir ve onlar kapsamında yorumlanır.</p>\r\n\r\n<p>Bu internet sitesine erişerek bu Gizlilik Koşulları&rsquo;nı ve bu siteye yazılmış Kullanım Şartları&rsquo;nı kabul ettiğinizi belirtirsiniz.</p>\r\n\r\n<p>Bu internet sitesi 13 yaşın altındaki &ccedil;ocuklara y&ouml;nelik değildir ve sitede 13 yaşın altındaki &ccedil;ocuklardan bilerek kişisel bilgi toplamayız. Eğer sitede kasıtsız olarak 13 yaşın altındaki bir ziyaret&ccedil;inin kişisel bilgilerini aldığımızın farkına varırsak, bu bilgileri kayıtlarımızdan sileriz.</p>\r\n\r\n<p>Diğer Sitelere Bağlantı Verme</p>\r\n\r\n<p>Bu politika www.PepsiCo.com&rsquo;u (PepsiCo&rsquo;nun kurumsal internet sitesini) kapsar. İştiraklerimizden ve/veya programlarımızdan bazıları kendi, muhtemelen farklı politikalarını kendi internet sitelerine yazabilirler. Sizi o internet sitelerine bağlantı verirken o politikaları g&ouml;zden ge&ccedil;irmeye teşvik ediyoruz.</p>\r\n\r\n<p>Topladığımız bilgiler ve onları kullanım şeklimiz</p>\r\n\r\n<p>Kişisel Bilgiler &ndash; Bu internet sitesinde kişisel bilgiler (isminiz, adresiniz, telefon numaranız ve e-posta adresiniz gibi) verebilirsiniz. Bilgileri vermek i&ccedil;in kullanabileceğiniz bazı y&ouml;ntemler ve verebileceğiniz bilgi tipleri aşağıdadır. Size bilgiyi nasıl kullanabileceğimizi de a&ccedil;ıklayacağız.</p>\r\n\r\n<p>Bizimle İrtibat Kurun-&nbsp;Sitedeki &ldquo;Bizimle İrtibat Kurun&rdquo; bağlantısından bize e-posta g&ouml;nderirseniz sorularınıza ve yorumlarınıza cevap verebilmek i&ccedil;in sizden isminiz ve e-posta adresiniz gibi bilgiler isteriz. İlave bilgiler de verebilirsiniz.</p>\r\n\r\n<p>İ&ccedil;eriği Bir Arkadaşa Yolla &ndash;&nbsp;Bazı i&ccedil;erikleri arkadaşlarınıza yollayabilirsiniz. Bunu yapmak i&ccedil;in sizden isminizi ve arkadaşınızın e-posta adresini vermenizi isteriz. Bu bilgiyi i&ccedil;eriği arkadaşınıza yollamak i&ccedil;in kullanırız.</p>\r\n\r\n<p>Internet Protokol&uuml; Adresi</p>\r\n\r\n<p>Sitemizin b&uuml;t&uuml;n ziyaret&ccedil;ilerinin İnternet Protokol&uuml; adreslerini toplarız. IP adresinizi sitemizi y&ouml;netmemize yardımcı olmak i&ccedil;in kullanırız. IP adresiniz sitemizi ne zaman ziyaret ettiğinizi belirlemek i&ccedil;in de kullanılır.</p>\r\n\r\n<p>Sitenin &ldquo;Kariyerler&rdquo; Kısmı i&ccedil;in İlave Politikalar</p>\r\n\r\n<p>Eğer bu sitenin &ldquo;Kariyerler&rdquo; veya &ldquo;İş Fırsatları&rdquo; kısımlarında kişisel bilgi verirseniz, bu bilginin kullanımı ve korunması kariyer.net internet sitesinde yazılı Kariyer.net Gizlilik Koşulları&rsquo;na tabidir. Daha fazla bilgi i&ccedil;in www.kariyer.net adresini ziyaret edin.</p>\r\n\r\n<p>Paylaştığımız Bilgiler</p>\r\n\r\n<p>İnternet sitemizin ziyaret&ccedil;ileri hakkındaki kişisel bilgileri burada a&ccedil;ıklanan haller haricinde satmayız ya da başka bir suretle a&ccedil;ıklamayız. Bu sitenin ziyaret&ccedil;ilerinin sağladığı bilgileri adımıza hizmetler y&uuml;r&uuml;tmek i&ccedil;in tuttuğumuz hizmet sağlayıcılarla paylaşabiliriz. Bu hizmet sağlayıcıların adımıza hizmetler y&uuml;r&uuml;tmek ya da yasal gereksinimlere uymak i&ccedil;in gerekli olan haller dışında bu bilgileri kullanmaları ya da a&ccedil;ıklamaları yasaktır. Ek olarak, (i) kanunen ya da yasal bir s&uuml;re&ccedil; nedeniyle a&ccedil;ıklamamız gerekiyorsa, (ii) emniyet g&ouml;revlilerine ya da diğer devlet yetkililerine (iii) a&ccedil;ıklamanın fiziksel hasarı veya mali kaybı &ouml;nlemek veya ş&uuml;pheli veya ger&ccedil;ek yasadışı faaliyete ilişkin bir soruşturmayla ilişkili olarak gerekli veya uygun olduğunu d&uuml;ş&uuml;nd&uuml;ğ&uuml;m&uuml;z zaman hakkınızdaki bilgileri a&ccedil;ıklayabiliriz.</p>\r\n\r\n<p>Şirketimizin ya da varlıklarımızın tamamını ya da bir kısmını satmamız ya da devretmemiz halinde hakkınızdaki bilgileri devretme hakkını saklı tutarız. B&ouml;yle bir satış ya da devir meydana gelirse, devralanı bu internet sitesinden verdiğiniz kişisel bilgileri bu Gizlilik Koşulları&rsquo;na uygun bir şekilde kullanmaya teşvik etmek i&ccedil;in makul &ccedil;aba g&ouml;stereceğiz.</p>\r\n\r\n<p>Aktardığımız Bilgiler</p>\r\n\r\n<p>Bu sitede topladığımız kişisel bilgileri iş yaptığımız diğer &uuml;lkelere aktarabiliriz, ama bunu sadece yukarıda a&ccedil;ıklanmış ama&ccedil;larla yapacağız. Bilgilerinizi diğer &uuml;lkelere aktardığımız zaman uygulanabilen kanunlar aksini gerektirmediği s&uuml;rece o bilgiyi burada a&ccedil;ıklandığı gibi koruyacağız.</p>\r\n\r\n<p>Kişisel Bilgiyi Nasıl Koruruz?</p>\r\n\r\n<p>Bu internet sitesinden verdiğiniz kişisel bilgileri yetkisiz a&ccedil;ıklanmaya, kullanıma, değiştirmeye ya da tahribata karşı korumak i&ccedil;in idari, teknik ve fiziksel tedbirler uyguluyoruz. Bu sitede verdiğiniz kişisel bilgilerin g&uuml;venli kalması i&ccedil;in G&uuml;venli Şifreleme Protokol&uuml; (SSL) teknolojisini kullanıyoruz.</p>\r\n\r\n<p>Gizlilik Beyanımızın G&uuml;ncellemeleri</p>\r\n\r\n<p>Bu Gizlilik Beyanı &ccedil;evrimi&ccedil;i bilgi uygulamalarımızdaki değişiklikleri yansıtması i&ccedil;in periyodik olarak ve &ouml;nceden size haber verilmeden g&uuml;ncellenebilir. Gizlilik Beyanımızdaki &ouml;nemli değişiklikleri size bildirmek i&ccedil;in bu internet sitesine bir bildirim yazacak ve en son ne zaman g&uuml;ncellendiğini belirteceğiz.</p>\r\n\r\n<p>Bizimle İrtibat Kurma</p>\r\n\r\n<p>Eğer bu Gizlilik Beyanı hakkında sorularınız veya yorumlarınız varsa veya siz ya da tercihleriniz hakkındaki bilgileri g&uuml;ncellememizi istiyorsanız l&uuml;tfen aşağıda listelenen adreslerden ya da telefon numaralarından biri vasıtasıyla bizimle irtibat kurun.</p>\r\n\r\n<p>PepsiCo T&uuml;rkiye</p>\r\n\r\n<p>Didem Şinik<br />\r\nAlemdağ Caddesi, Inkılap Mahallesi, Siteyolu Sokak<br />\r\nNo:2, 34768, Umraniye &ndash; Istanbul<br />\r\ne-posta:&nbsp;didem.sinik@pepsico.com<br />\r\nTel: +90 216 635 40 00<br />\r\nFax: +90 216 634 50 09</p>\r\n\r\n<p>PepsiCo Beverages</p>\r\n\r\n<p>Eda G&ouml;kmen &Uuml;&ccedil;erler<br />\r\nTekfen Tower B&uuml;y&uuml;kdere Cad. No:209, 34394 , 4. Levent &ndash; Istanbul &ndash; T&uuml;rkiye<br />\r\nTel: 90(212) 319 30 00<br />\r\nFax: 90 (212) 357 01 80<br />\r\ne-posta:&nbsp;eda.gokmenucerler@pepsico.com</p>\r\n\r\n<p>Frito Lay</p>\r\n\r\n<p>M&uuml;ge T&uuml;mer<br />\r\nAlemdağ Caddesi, Inkılap Mahallesi, Siteyolu Sokak,<br />\r\nNo:2, 34768, &Uuml;mraniye &ndash; Istanbul<br />\r\nTel: +90 216 635 40 00<br />\r\nFax: +90 216 634 50 09<br />\r\ne-posta:&nbsp;muge.tumer@pepsico.com</p>\r\n', '', 5, '1', 'gizlilik-kosullarimiz');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`sepet_id`, `kullanici_id`, `urun_id`, `urun_adet`) VALUES
(1, 153, 7, 1),
(2, 153, 4, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `siparis_no` int(11) DEFAULT NULL,
  `kullanici_id` int(11) NOT NULL,
  `siparis_toplam` float(9,2) NOT NULL,
  `siparis_tip` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_banka` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_odeme` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `siparis_no`, `kullanici_id`, `siparis_toplam`, `siparis_tip`, `siparis_banka`, `siparis_odeme`) VALUES
(1, '2018-03-11 19:26:27', NULL, 153, 360.00, 'Banka Havalesi', 'Garanti Bankasi', '0'),
(2, '2018-03-11 19:38:57', NULL, 153, 360.00, 'Banka Havalesi', 'Kapital Bank', '0'),
(3, '2018-03-11 19:49:42', NULL, 153, 360.00, 'Banka Havalesi', 'Bank Respublika', '0'),
(4, '2018-03-11 19:51:06', NULL, 153, 360.00, 'Banka Havalesi', 'Bank Respublika', '0'),
(5, '2018-03-11 19:58:54', NULL, 153, 360.00, 'Banka Havalesi', 'Garanti Bankasi', '0'),
(6, '2018-03-11 20:02:19', NULL, 153, 360.00, 'Banka Havalesi', 'Garanti Bankasi', '0'),
(7, '2018-03-11 20:08:49', NULL, 153, 360.00, 'Banka Havalesi', 'Kapital Bank', '0'),
(8, '2018-03-11 20:10:51', NULL, 153, 360.00, 'Banka Havalesi', 'Garanti Bankasi', '0'),
(9, '2018-03-11 20:27:50', NULL, 153, 0.00, 'Banka Havalesi', 'Kapital Bank', '0'),
(10, '2018-03-11 20:42:03', NULL, 153, 0.00, 'Banka Havalesi', 'Ak Bank', '0'),
(11, '2018-03-11 21:02:25', NULL, 153, 360.00, 'Banka Havalesi', 'Garanti Bankasi', '0'),
(12, '2018-03-11 21:08:37', NULL, 153, 360.00, 'Banka Havalesi', 'Garanti Bankasi', '0'),
(13, '2018-03-11 22:25:38', NULL, 153, 360.00, 'Banka Havalesi', 'Garanti Bankasi', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

CREATE TABLE `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL,
  `siparis_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(2) NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `urun_id`, `urun_adet`, `urun_fiyat`) VALUES
(1, 12, 7, 0, 40.00),
(2, 12, 4, 0, 80.00),
(3, 13, 7, 1, 40.00),
(4, 13, 4, 4, 80.00);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(2, 'Slider 1', 'dimg/slider/23239240012438128838slide-1.jpg', 1, '', '1'),
(3, 'Slider 2', 'dimg/slider/28437slide-2.jpg', 2, '', '1'),
(4, 'Slider 3', 'dimg/slider/25373slide-3.jpg', 3, '', '1'),
(5, 'Slider 4', 'dimg/slider/23830slide-4.jpg', 4, '', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `urun_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urun_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `urun_onecikar` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kategori_id`, `urun_zaman`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(2, 2, '2018-03-08 20:10:40', 'Mavi desensiz gomlek', 'mavi-desensiz-gomlek', '<p>Lorem Ipsum, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n', 25.00, '', 'mavi', 100, '1', '0'),
(3, 4, '2018-03-08 22:01:48', 'Ramsey JX', 'ramsey-jx', '<p>Yaygın inancın tersine, Lorem Ipsum rastgele s&ouml;zc&uuml;klerden oluşmaz. K&ouml;kleri M.&Ouml;. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir ge&ccedil;mişi vardır. Virginia&#39;daki Hampden-Sydney College&#39;dan Latince profes&ouml;r&uuml; Richard McClintock, bir Lorem Ipsum pasajında ge&ccedil;en ve anlaşılması en g&uuml;&ccedil; s&ouml;zc&uuml;klerden biri olan &#39;consectetur&#39; s&ouml;zc&uuml;ğ&uuml;n&uuml;n klasik edebiyattaki &ouml;rneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, &Ccedil;i&ccedil;ero tarafından M.&Ouml;. 45 tarihinde kaleme alınan &quot;de Finibus Bonorum et Malorum&quot; (İyi ve K&ouml;t&uuml;n&uuml;n U&ccedil; Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı b&ouml;l&uuml;mlerinden gelmektedir. Bu kitap, ahlak kuramı &uuml;zerine bir tezdir ve R&ouml;nesans d&ouml;neminde &ccedil;ok pop&uuml;ler olmuştur. Lorem Ipsum pasajının ilk satırı olan &quot;Lorem ipsum dolor sit amet&quot; 1.10.32 sayılı b&ouml;l&uuml;mdeki bir satırdan gelmektedir.</p>\r\n', 90.00, '', 'ramsey', 100, '1', '0'),
(4, 7, '2018-03-08 22:03:56', 'Karaca', 'karaca', '<p>Yaygın inancın tersine, Lorem Ipsum rastgele s&ouml;zc&uuml;klerden oluşmaz. K&ouml;kleri M.&Ouml;. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir ge&ccedil;mişi vardır. Virginia&#39;daki Hampden-Sydney College&#39;dan Latince profes&ouml;r&uuml; Richard McClintock, bir Lorem Ipsum pasajında ge&ccedil;en ve anlaşılması en g&uuml;&ccedil; s&ouml;zc&uuml;klerden biri olan &#39;consectetur&#39; s&ouml;zc&uuml;ğ&uuml;n&uuml;n klasik edebiyattaki &ouml;rneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, &Ccedil;i&ccedil;ero tarafından M.&Ouml;. 45 tarihinde kaleme alınan &quot;de Finibus Bonorum et Malorum&quot; (İyi ve K&ouml;t&uuml;n&uuml;n U&ccedil; Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı b&ouml;l&uuml;mlerinden gelmektedir. Bu kitap, ahlak kuramı &uuml;zerine bir tezdir ve R&ouml;nesans d&ouml;neminde &ccedil;ok pop&uuml;ler olmuştur. Lorem Ipsum pasajının ilk satırı olan &quot;Lorem ipsum dolor sit amet&quot; 1.10.32 sayılı b&ouml;l&uuml;mdeki bir satırdan gelmektedir.</p>\r\n', 80.00, '', 'karaca', 40, '1', '1'),
(5, 1, '2018-03-08 20:10:40', 'Kemal Tanca Mocassini', 'kemal-tanca-mocassini', '<p>Lorem Ipsum, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n', 250.00, '', 'kemal tanca', 100, '1', '1'),
(6, 3, '2018-03-08 22:01:48', 'Kigili', 'kigili', '<p>Yaygın inancın tersine, Lorem Ipsum rastgele s&ouml;zc&uuml;klerden oluşmaz. K&ouml;kleri M.&Ouml;. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir ge&ccedil;mişi vardır. Virginia&#39;daki Hampden-Sydney College&#39;dan Latince profes&ouml;r&uuml; Richard McClintock, bir Lorem Ipsum pasajında ge&ccedil;en ve anlaşılması en g&uuml;&ccedil; s&ouml;zc&uuml;klerden biri olan &#39;consectetur&#39; s&ouml;zc&uuml;ğ&uuml;n&uuml;n klasik edebiyattaki &ouml;rneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, &Ccedil;i&ccedil;ero tarafından M.&Ouml;. 45 tarihinde kaleme alınan &quot;de Finibus Bonorum et Malorum&quot; (İyi ve K&ouml;t&uuml;n&uuml;n U&ccedil; Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı b&ouml;l&uuml;mlerinden gelmektedir. Bu kitap, ahlak kuramı &uuml;zerine bir tezdir ve R&ouml;nesans d&ouml;neminde &ccedil;ok pop&uuml;ler olmuştur. Lorem Ipsum pasajının ilk satırı olan &quot;Lorem ipsum dolor sit amet&quot; 1.10.32 sayılı b&ouml;l&uuml;mdeki bir satırdan gelmektedir.</p>\r\n', 30.00, '', 'kigili', 100, '1', '1'),
(7, 6, '2018-03-08 22:03:56', 'Mango', 'mango', '<p>Yaygın inancın tersine, Lorem Ipsum rastgele s&ouml;zc&uuml;klerden oluşmaz. K&ouml;kleri M.&Ouml;. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir ge&ccedil;mişi vardır. Virginia&#39;daki Hampden-Sydney College&#39;dan Latince profes&ouml;r&uuml; Richard McClintock, bir Lorem Ipsum pasajında ge&ccedil;en ve anlaşılması en g&uuml;&ccedil; s&ouml;zc&uuml;klerden biri olan &#39;consectetur&#39; s&ouml;zc&uuml;ğ&uuml;n&uuml;n klasik edebiyattaki &ouml;rneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, &Ccedil;i&ccedil;ero tarafından M.&Ouml;. 45 tarihinde kaleme alınan &quot;de Finibus Bonorum et Malorum&quot; (İyi ve K&ouml;t&uuml;n&uuml;n U&ccedil; Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı b&ouml;l&uuml;mlerinden gelmektedir. Bu kitap, ahlak kuramı &uuml;zerine bir tezdir ve R&ouml;nesans d&ouml;neminde &ccedil;ok pop&uuml;ler olmuştur. Lorem Ipsum pasajının ilk satırı olan &quot;Lorem ipsum dolor sit amet&quot; 1.10.32 sayılı b&ouml;l&uuml;mdeki bir satırdan gelmektedir.</p>\r\n', 40.00, '', 'mango', 40, '1', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunfoto`
--

CREATE TABLE `urunfoto` (
  `urunfoto_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urunfoto_resimyol` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `urunfoto_sira` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunfoto`
--

INSERT INTO `urunfoto` (`urunfoto_id`, `urun_id`, `urunfoto_resimyol`, `urunfoto_sira`) VALUES
(5, 5, 'dimg/urun/22230240933113421349mocassini.jpg', 1),
(6, 5, 'dimg/urun/27823308532939928951mocassini2.jpg', 2),
(7, 5, 'dimg/urun/29530284682581124026mocassini3.jpg', 3),
(8, 5, 'dimg/urun/24944208552041431457mocassini4.jpg', 4),
(9, 7, 'dimg/urun/20073217093025121377bluz.jpg', 0),
(10, 7, 'dimg/urun/25806217402385425357bluz2.jpg', 0),
(11, 7, 'dimg/urun/28961221642065729462bluz3.jpg', 0),
(12, 7, 'dimg/urun/27029268132553426246bluz4.jpg', 0),
(13, 6, 'dimg/urun/30307229442130623240tisort2.jpg', 0),
(14, 6, 'dimg/urun/22697264243197329737tisort.jpg', 0),
(15, 6, 'dimg/urun/31354268572252928313tisort3.jpg', 0),
(16, 6, 'dimg/urun/25936232002929323454tisort4.jpg', 0),
(17, 4, 'dimg/urun/31871257652162125023triko.jpg', 0),
(18, 4, 'dimg/urun/21034277473019827925triko2.jpg', 0),
(19, 4, 'dimg/urun/29625247443108322068triko3.jpg', 0),
(20, 4, 'dimg/urun/27472312382143624700triko4.jpg', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `yorum_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `urun_id` int(11) NOT NULL,
  `yorum_onay` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `kullanici_id`, `yorum_detay`, `yorum_zaman`, `urun_id`, `yorum_onay`) VALUES
(1, 153, 'bla bla bla', '2018-03-09 19:32:58', 7, '1'),
(2, 0, 'bal bal jandjandj', '2018-03-09 20:34:52', 7, '0'),
(5, 153, 'bnbmnmn', '2018-03-09 20:41:27', 0, '0'),
(6, 153, 'cdfdfdfd fvdf', '2018-03-09 20:44:14', 0, '0'),
(7, 153, 'kjfsf sdsdj', '2018-03-09 20:56:32', 0, '0'),
(8, 153, 'jjhjh jjj', '2018-03-09 21:23:16', 7, '1'),
(9, 153, 'kjjjj jjkklll', '2018-03-09 21:23:28', 7, '1'),
(10, 153, 'dhsjdhsjhd', '2018-03-10 20:30:07', 7, '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `siparis_detay`
--
ALTER TABLE `siparis_detay`
  ADD PRIMARY KEY (`siparisdetay_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urunfoto`
--
ALTER TABLE `urunfoto`
  ADD PRIMARY KEY (`urunfoto_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Tablo için AUTO_INCREMENT değeri `siparis_detay`
--
ALTER TABLE `siparis_detay`
  MODIFY `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Tablo için AUTO_INCREMENT değeri `urunfoto`
--
ALTER TABLE `urunfoto`
  MODIFY `urunfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
