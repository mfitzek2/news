-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Stř 30. bře 2016, 23:38
-- Verze serveru: 10.1.9-MariaDB
-- Verze PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `informator`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `news`
--

CREATE TABLE `news` (
  `id_news` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `content` text COLLATE utf8_czech_ci,
  `date` date NOT NULL,
  `published` tinyint(1) DEFAULT '0',
  `category` enum('hardware','software','networking','programming') COLLATE utf8_czech_ci DEFAULT 'hardware'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `news`
--

INSERT INTO `news` (`id_news`, `title`, `content`, `date`, `published`, `category`) VALUES
(1, 'Samsung nabízí prohnuté monitory', 'Prohnuté či zahnuté monitory už nejsou ani na našem trhu žádná novinka. Jejich řady nyní obohacuje Samsung pomocí třech nových modelů, a to 27" CF591 a pak dvou modelů CF390 s úhlopříčkami 23,5" a 27". Stojí za to?</p>\r\n<p>Co se týče prohnutých monitorů, pak ty jsou zajímavé především při vyšších úhlopříčkách, což se tedy o 23,5" panelu moc říci nedá. Zbylé dva modely ale už mají úhlopříčky 27", což už je lepší a uživatel bude mít díky tomu veškerou zobrazovací plochu lépe viditelnou. Velký prohnutý monitor by měl být také lepší z hlediska hraní, neboť uživatel má mít pocit, že je více obklopen herním světem, než když se dívá na plochou obrazovku. Ale to nemusí všichni vidět stejně.</p>\r\n<p>Co si tedy Samsung pro nás přichystal? Jsou to monitory CF591 (27 palců) a CF390 (23,5 a 27 palců), jež mají stejné specifikace týkající se panelů a liší se krom výbavy obrazových rozhraní už jen v drobnostech. Všechny mají označení 1800R, čili poloměr zakřivení 1800 mm. Dále tu máme různé funkce, jimž vévodí AMD FreeSync (zde ale na HDMI) zahrnutá také u všech třech modelů a dále tu je režim Eye Saver potlačující vyzařování škodlivého modrého světla. Monitory využívají panely s technologií VA a model CF591 je schopen díky jisté technologii Samsung Active Color Crystal zajistit 119% pokrytí barevného prostoru sRGB. Právě ten by měl tedy nabídnout nejkvalitnější zobrazení barev a také je pro to vybaven daleko bohatější nabídkou rozhraní, kdežto CF390 se musí spokojit s D-Sub a HDMI. Vedle toho má také vestavěny 5W reproduktory. Monitory Samsung CF591 a CF390 budou dostupné od letošního května. CF591 přijde na 9490 Kč s daní, menší CF390 na 5690 Kč a větší pak na 7290 Kč.', '2016-03-16', 1, 'hardware'),
(2, 'Biotiskárna ITOP vyrábí tkáně pro transplantaci', 'Potenciál 3D tiskáren je skutečně obrovský a dokáže zasáhnout mnoho odvětví. Nyní se můžeme podívat na 3D biotiskárnu, která je schopna tvořit i tkáně, jež budou moci být skutečně využity pro transplantaci.\r\nJedná se o 3D biotiskárnu ITOP (Integrated Tissue–Organ Printer), kterou vyvinuli vědci z amerického Wake Forest Institute for Regenerative Medicine. Ta je schopna tvořit tkáně, jež prý už v aktuální podobě lze transplantovat lidským pacientům, a jako takové tak zahrnují systém zásobení buněk potřebným kyslíkem a živinami. Zkrátka jde třeba o umělé ucho, které by se mělo chovat podobně jako naše vlastní. Tiskárna ITOP je přitom výsledek desetiletého výzkumu a krom ucha zvládne v podstatě jakýkoliv jiný tvar.\r\n\r\n', '2016-02-10', 1, 'hardware'),
(3, 'Windows 10 nebudou zdarma navždy', 'Společnost Microsoft vydala operační systém Windows 10 už loni v létě. Tehdy jej nabídla majitelům předchozích dvou verzí úplně zadarmo, čehož mohou využít i nyní. Možnost bezplatného přechodu však nebude navždy, americký softwarový gigant ji ukončí už za pár měsíců.\r\nNa dotaz, zda nebude lhůta pro bezplatný upgrade na novější verzi prodloužena, odpověděli zástupci Microsoftu jasně. „Platí, co jsme oznámili minulé léto. Upgrade zdarma platí pro uživatele Windows 7 a Windows 8.1 po dobu jednoho roku od uvedení Windows 10 na trh,“ uvedla pro Novinky.cz Jana Vávrová z tiskového oddělení Microsoftu.\r\nTo jinými slovy znamená, že možnost přechodu zdarma je k dispozici jen do konce letošního července. Pak budou případní zájemci o přechod nuceni pořídit licenci za plnou cenu.', '2016-03-02', 1, 'software'),
(4, 'Firefox se naučí předčítat články', 'Prohlížeč Firefox od společnosti Mozilla by měl v nadcházejících týdnech dostat zajímavé vylepšení – naučí se číst text na internetových stránkách. Lidé si tak budou moci nechat předčítat na webu zprávy, recepty, ale například i horoskopy.\r\nMinulý rok Firefox uvedl režim pro snadné čtení. V něm ze stránky zmizí grafické prvky, reklamy apod. a můžete si nerušeně přečíst samotný obsah. V aktuálních vývojových verzí Firefoxu 47 a 48 už nemusíte ani číst – Firefox vám článek přečte nahlas sám,“ uvedl Michal Stanke ze serveru Mozilla.cz.\r\nAktuálně je prohlížeč s logem ohnivé lišky dostupný pro běžné uživatele ve verzi 45. Funkce předčítání webového obsahu by tak měla být dostupná v horizontu několika týdnů.\r\nNová vychytávka, kterou Mozilla nazývá Narrate, ale nebude fungovat na všech webových stránkách. „Podmínkou je přístupnost stránky a její fungování v režimu čtečky, tedy aby mohl Firefox rozeznat text článku od zbytku obsahu,“ doplnil Stanke.\r\nFunkce Narrate bude nejprve dostupná ve Firefoxu pro klasické počítače. Lze předpokládat, že časem se objeví také ve verzi pro chytré telefony.', '2016-03-15', 0, 'software'),
(5, 'Microsoft si došlápne na piráty', 'Společnost Microsoft si počítačových pirátů v minulých letech příliš nevšímala. Když byla na nějakém počítači detekována nelegální kopie programu, uživatel byl na to pouze upozorněn. Nyní by však mohl nastat zlom, protože se zástupci amerického softwarového gigantu kvůli tisícům nelegálních operačních systémů Windows a kancelářských balíků Office obrátili na soud.\r\nNelegální instalace Windows a Office dokáže Microsoft odhalit již dlouhá léta. Program, který je schopný ověřit legálnost, se zpravidla stáhne do PC jako aktualizace. V případě, že bude mít podezření na pochybení, uživatele vyzve k nápravě.\r\nV americkém Washingtonu totiž Microsoft podal žalobu na společnost Comcast, tedy tamního poskytovatele internetového připojení. Toho chce žalobou přinutit k tomu, aby prozradil identitu jednoho svého uživatele.\r\nCelým problémem se údajně zabýval kyberforenzní tým Microsoftu. „Identifikovali jsme několik tisíc aktivací z IP adresy 173.11.224.197, která je v současnosti přidělena do sítě kabelového poskytovatele internetu Comcast,“ citoval server TorrentFreak z žaloby amerického softwarového gigantu.\r\nTisíce nelegálních klíčů měly být použity právě k aktivování Windows a Office.', '2016-03-09', 1, 'software'),
(6, 'Na FIT se rodí univerzální chytrá domácnost', 'Přesto se však všichni shodnou, že internetu věcí patří budoucnost a dříve či později bude mít nějaké to síťové rozhraní každý spotřebič. Na tuto éru své studenty pomalu připravují i technické vysoké školy. Jednou z nich je i Fakulta informačních technologií brněnského VUT, kde se poslední dva roky rodí projekt BeeeOn (GitHub).\r\nBeeeOn dnes tvoří všechny klíčové pilíře, ze kterých by se měla skládat chytrá domácnost. Jeho součástí je tedy experimentální senzor, který sbírá data, brána, která získává data ze všech podobných senzorů, server, který tato data ukládá a analyzuje, no a nakonec nesmí chybět ani mobilní aplikace pro Android, která to všechno zprostředkuje běžnému domácímu uživateli, jenž z jednoho místa bude moci třeba rozsvítit v obývacím pokoji nebo se podívat, jak se v průběhu noci vyvíjela vlhkost v ložnici.', '2016-02-10', 1, 'networking'),
(7, 'Knihovna jQuery oslavila deset let existence', 'Pravděpodobně nejpopulárnější javascriptová knihovna jQuery včera oslavila deset let existence. Její autor John Resig ji poprvé světu představil 14. ledna 2006 na newyorském barcampu. Od té doby se stala běžnou součástí téměř každého webu, ačkoliv má i své kritiky. Ti poukazují zejména na to, že vše, co nabízí, zvládne i samotný Javascript a autoři webů rozměrnou knihovnu zbytečně používají i na drobnosti.', '2016-02-24', 1, 'programming');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`),
  ADD KEY `title` (`title`) USING BTREE,
  ADD KEY `date` (`date`) USING BTREE,
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
