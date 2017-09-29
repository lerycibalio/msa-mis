CREATE DATABASE  IF NOT EXISTS `msadb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `msadb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: msadb
-- ------------------------------------------------------
-- Server version	5.7.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `accid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(45) DEFAULT NULL,
  `hash` varchar(60) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  PRIMARY KEY (`accid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (0,'root','$2a$10$UrRQ9T/hHzOW09IrWgdG8OthmnXTR3rkGSn8BEdH/XBMa5zEaaDWK',0),(1,'admin','$2a$10$Z1R3EjdfdyL38Hi5sx6SNeouxq9LspdMSR1uIe5CT7//YhcHTDnyO',1),(2,'clerk','$2a$10$imp8QC1nEzOWieBu5MsFtOV94cAQdindJs/SvWHJPv4JRp32DZgHO',2),(3,'amcruz','$2a$10$cnx4o492KmFQ3iMzFQhIJejgdyIK0WP3djYPaYoBGXc9r6IVDhSgC',1),(4,'abmakiling','$2a$10$EE3B7nbkf/pPregTIHs03u.NF/XTT1MHJgOQY/tHPf1G.GdfCQqym',1),(5,'btdelacruz','$2a$10$zNAIBoTkZ.Gj67uNsPLluejzU3nJPu8V/P1meYHkamxCIt05.gil6',2),(6,'brdelossantos','$2a$10$QoL7kaFx9yu8FTB54xGn.OhLuhbHL0vlMkmNGcJ7zwJoQ1dLgz21W',2);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `AID` int(11) NOT NULL AUTO_INCREMENT,
  `GID` int(11) DEFAULT NULL,
  `AType` int(11) DEFAULT NULL,
  `Country` varchar(60) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `StreetNo` varchar(45) DEFAULT NULL,
  `Brgy` varchar(45) DEFAULT NULL,
  `Street` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AID`),
  KEY `Guard-Add_idx` (`GID`),
  CONSTRAINT `Guard-Add` FOREIGN KEY (`GID`) REFERENCES `guards` (`GID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=893 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,1,'Finland','Kontiolahti','444','Colorado','Artisan'),(2,2,1,'Cyprus','Léfka','8','Debra','Florence'),(3,3,1,'Colombia','Medellín','0','Dawn','Scoville'),(4,4,1,'Papua New Guinea','Kavieng','7690','Sunfield','Pleasure'),(5,5,1,'Canada','Mattawa','882','Sugar','Fairfield'),(6,6,1,'Brazil','Indaial','61','Blackbird','Weeping Birch'),(7,7,1,'Poland','Bolszewo','06','Fallview','Susan'),(8,8,1,'South Korea','Icheon-si','191','Arizona','Waywood'),(9,9,1,'Brazil','Bandeirantes','19706','Moose','Kensington'),(10,10,1,'Morocco','Zerkten','1687','Cody','Schurz'),(11,11,1,'Angola','Lucapa','159','Hintze','Armistice'),(12,12,1,'United States','Yonkers','0','Straubel','Bartelt'),(13,13,1,'France','Valence','836','Mockingbird','Hudson'),(15,15,1,'Nicaragua','San Ramón','649','Kennedy','Valley Edge'),(16,16,1,'Tanzania','Kabanga','7338','Prentice','Hansons'),(17,17,1,'Thailand','Lap Lae','411','Hoepker','Loftsgordon'),(18,18,1,'China','Shisandaogou','84853','Hintze','Hoepker'),(19,19,1,'Indonesia','Gununggoong','4','Nancy','Reindahl'),(20,20,1,'China','Gantang','30','Mallory','Thompson'),(21,21,1,'Iran','Semīrom','037','Hazelcrest','Montana'),(22,22,1,'Greece','Lidoríki','9779','School','Bluejay'),(23,23,1,'Indonesia','Tlogosadang','10732','Northview','Daystar'),(24,24,1,'New Caledonia','Koumac','0757','Roth','Calypso'),(25,25,1,'Philippines','Tranca','73','Lien','Jackson'),(26,26,1,'China','Aoluguya Ewenke Minzu','27','Comanche','Dunning'),(27,27,1,'Venezuela','Santa Cruz','9056','Springview','Corben'),(28,28,1,'Vietnam','Thị Trấn Bắc Hà','0592','Harbort','Tony'),(29,29,1,'China','Liyang','2','Sheridan','Loeprich'),(30,30,1,'Vietnam','Bằng Lũng','26778','Veith','Ridgeview'),(31,31,1,'Kyrgyzstan','Kara Suu','6','Kenwood','Lotheville'),(32,32,1,'Indonesia','Karangtengah','2','Judy','Reinke'),(33,33,1,'Sweden','Karlstad','334','Dixon','Arapahoe'),(34,34,1,'Pakistan','Sakrand','34422','Fairview','Bunker Hill'),(35,35,1,'Portugal','Duas Igrejas','176','4th','Dahle'),(36,36,1,'Canada','Princeton','4168','Rigney','Manley'),(37,37,1,'Greece','Petroúpolis','60898','Southridge','Maple Wood'),(38,38,1,'Indonesia','Tengah','6','Rusk','Cambridge'),(39,39,1,'Belarus','Kapyl’','061','Mayer','Superior'),(40,40,1,'Indonesia','Tempaling','77695','Beilfuss','Russell'),(41,41,1,'Namibia','Okakarara','201','Buena Vista','Delaware'),(42,42,1,'Azerbaijan','Bakıxanov','83600','Karstens','Dixon'),(43,43,1,'Philippines','Looc','60999','Buell','Straubel'),(44,44,1,'Argentina','La Falda','7','Onsgard','Buhler'),(45,45,1,'Ivory Coast','Lakota','1174','Sloan','Gulseth'),(46,46,1,'China','Jiaoshi','95670','Cordelia','Annamark'),(47,47,1,'Georgia','Batumi','152','Green','Pennsylvania'),(48,48,1,'Indonesia','Timurlorong','3','Moland','Claremont'),(49,49,1,'China','Yongtai','03','Claremont','Ryan'),(50,50,1,'France','Saint-Herblain','1','Fairview','Quincy'),(51,51,1,'Brazil','Registro','08233','Comanche','Graedel'),(52,52,1,'China','Yushu','4','Thackeray','Fordem'),(53,53,1,'Sweden','Timrå','4792','Green Ridge','Fairview'),(54,54,1,'Armenia','Horrom','054','Holy Cross','Swallow'),(55,55,1,'Philippines','Labog','8','Coleman','Bellgrove'),(56,56,1,'Poland','Dziergowice','76582','Northview','Everett'),(57,57,1,'France','Angoulême','0','Burrows','Summer Ridge'),(58,58,1,'Philippines','Bigaa','7828','Bluestem','Service'),(59,59,1,'Norway','Arendal','38','Upham','Hagan'),(60,60,1,'Portugal','Portelinha','4','Oak Valley','Nancy'),(61,61,1,'China','Dalianwan','41634','Dovetail','Tennessee'),(62,62,1,'France','Toulon','96476','Oneill','Summit'),(63,63,1,'United States','Jacksonville','246','2nd','Kingsford'),(64,64,1,'United States','Boston','8170','Pine View','Milwaukee'),(65,65,1,'Italy','Messina','1','Scott','Old Gate'),(66,66,1,'China','Tianhekou','715','Fieldstone','Bunting'),(67,67,1,'Portugal','Baguim do Monte','01028','Cherokee','Aberg'),(68,68,1,'Brazil','Tarauacá','86869','Dorton','Di Loreto'),(69,69,1,'China','Weiguo','10','Montana','Wayridge'),(70,70,1,'Greece','Anthoúsa','90936','Troy','Hazelcrest'),(71,71,1,'Indonesia','Gogosuket','1','West','Merry'),(72,72,1,'China','Hengliang','4','Acker','Surrey'),(73,73,1,'Honduras','San Marcos','64','Clemons','Moland'),(74,74,1,'Sweden','Luleå','122','Loftsgordon','Jenifer'),(75,75,1,'Indonesia','Teluk Pinang','5624','Northwestern','Alpine'),(76,76,1,'China','Fengcheng','32428','Monica','Park Meadow'),(77,77,1,'Indonesia','Poja','95106','Aberg','Canary'),(78,78,1,'Portugal','Aldeia de Além','34073','Michigan','Bobwhite'),(79,79,1,'Indonesia','Rukunlima Bawah','5573','Shelley','Waubesa'),(80,80,1,'China','Helang','4712','Cambridge','Riverside'),(81,81,1,'Colombia','Puerto Colombia','393','Shopko','West'),(82,82,1,'Mauritania','Zouérat','858','Village Green','Portage'),(83,83,1,'Russia','Koygorodok','32','Crest Line','Forest Dale'),(84,84,1,'Serbia','Ilandža','333','Debs','Anhalt'),(85,85,1,'United States','Boston','01','Comanche','Riverside'),(86,86,1,'France','Montpellier','464','Superior','Troy'),(87,87,1,'France','Paris 17','018','Hoepker','Clyde Gallagher'),(88,88,1,'Czech Republic','Nýdek','49','Laurel','Raven'),(89,89,1,'Argentina','Córdoba','4','Arapahoe','Warner'),(90,90,1,'China','Xazgat','7714','Dryden','Waubesa'),(91,91,1,'Finland','Riihimäki','78694','Thackeray','Ridge Oak'),(92,92,1,'Finland','Kirkkonummi','8920','Helena','Bobwhite'),(93,93,1,'China','Yongding','28394','Bellgrove','Schiller'),(94,94,1,'Russia','Stodolishche','9','Roth','Buena Vista'),(95,95,1,'Democratic Republic of the Congo','Uvira','30','Montana','Mandrake'),(96,96,1,'Ivory Coast','Soubré','927','Randy','Vermont'),(97,97,1,'Ukraine','Savran’','1142','Jackson','Green Ridge'),(98,98,1,'Israel','Herzliyya','1','Stuart','Twin Pines'),(99,99,1,'Peru','Churubamba','10931','Kensington','Haas'),(100,100,1,'China','Gantang','9637','Farmco','Green Ridge'),(101,101,1,'Serbia','Nikolinci','90','Eliot','Onsgard'),(102,102,1,'Mexico','San Isidro','88','Buena Vista','Anzinger'),(103,103,1,'Greece','Káto Glikóvrisi','864','Summit','Loftsgordon'),(104,104,1,'Peru','Llocllapampa','46489','Troy','Onsgard'),(105,105,1,'South Korea','Cheongju-si','841','Maryland','Bellgrove'),(106,106,1,'Indonesia','Semongkat','8007','American','Meadow Valley'),(107,107,1,'Japan','Nishi-Tokyo-shi','80','Thackeray','Mayer'),(108,108,1,'Thailand','Huai Yot','35','Blaine','Doe Crossing'),(109,109,1,'France','Arbois','2','Corben','Continental'),(110,110,1,'China','Tongyangdao','43502','Ridge Oak','Golf View'),(111,111,1,'France','Lille','23731','Ramsey','Hauk'),(112,112,1,'Poland','Przemęt','02473','Bartillon','Londonderry'),(113,113,1,'Japan','Nakanojōmachi','54324','Everett','Fallview'),(114,114,1,'China','Heze','9830','Ronald Regan','Jay'),(115,115,1,'Sweden','Charlottenberg','94','Pankratz','Manley'),(116,116,1,'Russia','Primorka','795','Tomscot','Schurz'),(117,117,1,'China','Xiaochuan','5','Scoville','East'),(118,118,1,'Colombia','Funza','2','Blaine','Bunting'),(119,119,1,'Philippines','Mailag','96990','Darwin','Bunting'),(120,120,1,'Japan','Inashiki','54','Lakewood','Westerfield'),(121,121,1,'Ethiopia','Debre Mark’os','22','Dapin','Dovetail'),(122,122,1,'United States','Washington','07','Drewry','Northport'),(123,123,1,'Indonesia','Peuteuy','04','Bultman','Canary'),(124,124,1,'China','Fenshui','25','Cordelia','Forster'),(125,125,1,'Palestinian Territory','Banī Zayd','1272','Katie','Dunning'),(126,126,1,'Philippines','Rosario','56487','Pepper Wood','Logan'),(127,127,1,'China','Jiaomingsi','2922','Northwestern','Saint Paul'),(128,128,1,'Brazil','Murici','23782','Valley Edge','Oak'),(129,129,1,'Russia','Khotynets','28598','Everett','Stang'),(130,130,1,'Venezuela','Seboruco','36144','Merry','Hintze'),(131,131,1,'China','Shuangfeng','8','Oakridge','Acker'),(132,132,1,'Portugal','Santa Bárbara de Padrões','41','Acker','Warner'),(133,133,1,'France','Tarbes','735','Anhalt','Hoepker'),(134,134,1,'Faroe Islands','Sandur','9','Loftsgordon','Hoffman'),(135,135,1,'Brazil','Itumbiara','0','Thackeray','Jana'),(136,136,1,'Indonesia','Potlot','1756','Melody','Coolidge'),(137,137,1,'Russia','Glotovka','28','Dorton','Buhler'),(138,138,1,'Russia','Rostov-na-Donu','18683','Morningstar','Dakota'),(139,139,1,'Andorra','la Massana','27932','Moulton','Arrowood'),(140,140,1,'Peru','Cocabamba','95071','Cascade','Burrows'),(141,141,1,'United States','Washington','236','Spenser','Rigney'),(142,142,1,'New Zealand','Wakefield','04','David','Monica'),(143,143,1,'Russia','Verkhnevilyuysk','88','Welch','Linden'),(144,144,1,'Morocco','Smimou','06399','Ilene','Tomscot'),(145,145,1,'Russia','Shchelkovo','24','Bellgrove','Milwaukee'),(146,146,1,'China','Kertai','2','Warbler','Havey'),(147,147,1,'Albania','Gostimë','8','Summerview','Forest'),(148,148,1,'Chile','Chonchi','3','Dennis','Loftsgordon'),(149,149,1,'Indonesia','Bentengjawa','70757','Golf Course','Birchwood'),(150,150,1,'Indonesia','Pasararba','65','Monument','Lawn'),(151,151,1,'Belarus','Mstsislaw','37','Raven','Killdeer'),(152,152,1,'Portugal','Vale Boeiro','54534','Forest Run','Arapahoe'),(153,153,1,'China','Hailin','44','Delaware','Trailsway'),(154,154,1,'China','Huangbei','76','Briar Crest','Florence'),(155,155,1,'Indonesia','Cipesing','70','Dapin','Oakridge'),(156,156,1,'China','Huangtan','52','Montana','Loftsgordon'),(157,157,1,'Portugal','Castanheira','05','Bonner','Victoria'),(158,158,1,'Argentina','Puerto Eldorado','29','Gerald','Oak Valley'),(159,159,1,'China','Huangjinbu','77','Warrior','Grayhawk'),(160,160,1,'Bosnia and Herzegovina','Piskavica','67','Kenwood','Quincy'),(161,161,1,'China','Tangdong','5','Autumn Leaf','Golf'),(162,162,1,'Brazil','Catalão','22753','Superior','Loeprich'),(163,163,1,'Sweden','Oskarshamn','577','Larry','Monument'),(164,164,1,'Japan','Toyota','5623','Bluestem','Autumn Leaf'),(165,165,1,'Indonesia','Belang','701','8th','Northport'),(166,166,1,'Indonesia','Bualu','60797','Melvin','Towne'),(167,167,1,'Indonesia','Daleman','1','Thompson','Amoth'),(168,168,1,'Philippines','Pidigan','4814','Prentice','International'),(169,169,1,'China','Damu','69374','Schmedeman','Garrison'),(170,170,1,'Libya','Al Jadīd','582','Logan','Rigney'),(171,171,1,'Russia','Setun’','5','Superior','Gulseth'),(172,172,1,'Brazil','Fortaleza','306','Anthes','Lakeland'),(173,173,1,'United States','Tucson','4','Ludington','Stephen'),(174,174,1,'France','Villeneuve-d\'Ascq','97881','Rieder','Glacier Hill'),(175,175,1,'China','Aihua','8','John Wall','Dahle'),(176,176,1,'Nicaragua','El Rosario','43459','Dahle','Stephen'),(177,177,1,'Czech Republic','Doudleby nad Orlicí','36','Mifflin','Fisk'),(178,178,1,'Finland','Kuusjoki','29','Green Ridge','Butternut'),(179,179,1,'China','Shiyaogou','9','Jenna','Aberg'),(180,180,1,'China','Erping','56175','Heath','Troy'),(181,181,1,'China','Huayang','2174','Forest','Del Sol'),(182,182,1,'Israel','Gedera','903','Fuller','Commercial'),(183,183,1,'Ukraine','Luzhany','5','Bay','Spaight'),(184,184,1,'Honduras','Quimistán','46','Elmside','Waywood'),(185,185,1,'Portugal','Maiorca','07501','Forest Dale','Westend'),(186,186,1,'Portugal','Pisões','591','Arapahoe','Forest Run'),(187,187,1,'China','Dongtang','7','Jana','Forest'),(188,188,1,'China','Fuyang','8407','Jenifer','Mcbride'),(189,189,1,'Poland','Lutowiska','5177','Florence','Surrey'),(190,190,1,'Indonesia','Rukem','1','Buell','Mandrake'),(191,191,1,'China','Longxi','99575','Bashford','Hallows'),(192,192,1,'China','Dezhou','71','Schmedeman','Butterfield'),(193,193,1,'China','Yili','6235','Helena','Mosinee'),(194,194,1,'Indonesia','Rawa Satu','7224','Sachs','Pond'),(195,195,1,'Brazil','São João da Boa Vista','681','Lyons','Continental'),(196,196,1,'Poland','Walce','9997','Myrtle','Algoma'),(197,197,1,'Papua New Guinea','Mendi','3581','Crescent Oaks','Summerview'),(198,198,1,'Ecuador','Otavalo','2','Kingsford','Upham'),(199,199,1,'Venezuela','Santa María de Caparo','82197','Colorado','Muir'),(200,200,1,'Bhutan','Lhuentse','4','Almo','Rigney'),(347,1,2,'China','Pingba','4','Vahlen','Pond'),(348,2,2,'United States','Garland','52','New Castle','Vermont'),(349,3,2,'Armenia','Myasnikyan','269','Coolidge','Marquette'),(350,4,2,'Ireland','Swords','4137','Shoshone','Derek'),(351,5,2,'Philippines','Tajao','8','Oak','Golf'),(352,6,2,'United States','San Francisco','2668','Jay','Larry'),(353,7,2,'China','Chengbei','445','Haas','Cottonwood'),(354,8,2,'Malaysia','Kuantan','98698','Dixon','Boyd'),(355,9,2,'China','Gubeikou','83','Schlimgen','Mallory'),(356,10,2,'Belarus','Druya','67','Basil','Buhler'),(357,11,2,'China','Bahaodi','20','Glendale','Magdeline'),(358,12,2,'Sweden','Karlstad','694','4th','Rowland'),(359,13,2,'Brazil','Conde','42139','Schiller','Bartelt'),(361,15,2,'China','Duogongma','35643','Vermont','Parkside'),(362,16,2,'Tanzania','Makumbako','1911','Summit','Vermont'),(363,17,2,'China','Taosha','436','Forest Run','Anhalt'),(364,18,2,'Malaysia','Kota Kinabalu','25965','Huxley','Nancy'),(365,19,2,'Nigeria','Gora','5892','Pawling','Gale'),(366,20,2,'South Korea','Kunsan','31','Superior','Jay'),(367,21,2,'Madagascar','Ankazoabo','48066','Mayer','Holy Cross'),(368,22,2,'Honduras','La Jutosa','2','Sommers','Susan'),(369,23,2,'Argentina','Allen','02021','Katie','Hansons'),(370,24,2,'Jamaica','Port Maria','2800','3rd','Sutherland'),(371,25,2,'Portugal','Almeirim','36641','Manitowish','Rutledge'),(372,26,2,'China','Zhongxing','7399','Lunder','Del Mar'),(373,27,2,'Philippines','Simod','0434','Claremont','Center'),(374,28,2,'Sweden','Kista','0','Melrose','Dunning'),(375,29,2,'Mali','San','26','Stoughton','Macpherson'),(376,30,2,'Vietnam','Tiền Hải','22','Norway Maple','Gale'),(377,31,2,'Brazil','Santa Quitéria do Maranhão','97358','Dwight','Esker'),(378,32,2,'Honduras','Ayapa','9','Steensland','Oriole'),(379,33,2,'China','Shangshaleng','901','Sommers','Nobel'),(380,34,2,'Botswana','Mathambgwane','4131','Porter','Warbler'),(381,35,2,'Djibouti','Tadjoura','8445','Esch','Manitowish'),(382,36,2,'Japan','Ichinohe','89','Hagan','Fremont'),(383,37,2,'Mexico','Loma Alta','865','Artisan','Moose'),(384,38,2,'China','Biaoshan','5','Granby','Northridge'),(385,39,2,'China','Linquan','6','Talmadge','Crest Line'),(386,40,2,'Russia','Belovo','2','Main','Havey'),(387,41,2,'Nicaragua','León','9584','Jay','Waywood'),(388,42,2,'Greece','Neochórion','0','Oxford','Ramsey'),(389,43,2,'Belarus','Vishnyeva','159','Caliangt','Tennyson'),(390,44,2,'Poland','Olesno','62044','Park Meadow','Marcy'),(391,45,2,'Croatia','Bršadin','23716','Gina','Russell'),(392,46,2,'Indonesia','Gedongmulyo','7','Messerschmidt','Golf'),(393,47,2,'Thailand','Lom Sak','081','Pine View','Monument'),(394,48,2,'Slovenia','Senovo','87','Bay','Sugar'),(395,49,2,'Peru','Mollepampa','5','Claremont','Dorton'),(396,50,2,'China','Tangxi','1','Lighthouse Bay','Kropf'),(397,51,2,'Russia','Paratunka','41','Cascade','Memorial'),(398,52,2,'Russia','Novogurovskiy','464','Ilene','Caliangt'),(399,53,2,'Swaziland','Tshaneni','6','Tennessee','Randy'),(400,54,2,'Argentina','Tandil','23170','Dawn','Evergreen'),(401,55,2,'Japan','Mitake','2055','Grover','Helena'),(402,56,2,'Nepal','Nawal','571','Golden Leaf','Hollow Ridge'),(403,57,2,'Mexico','Lazaro Cardenas','5','Bartillon','Sutherland'),(404,58,2,'China','Beishan','09','Kipling','Nelson'),(405,59,2,'Panama','Río Alejandro','93170','Warner','John Wall'),(406,60,2,'Indonesia','Leles','3239','Monterey','Scofield'),(407,61,2,'Ukraine','Kulykiv','40','Daystar','Michigan'),(408,62,2,'China','Jingyang','390','Coleman','Victoria'),(409,63,2,'China','Beijiang','75633','Norway Maple','Caliangt'),(410,64,2,'Vietnam','Thị Trấn Nước Hai','8','Schurz','Northfield'),(411,65,2,'Pakistan','Jahāniān Shāh','5','6th','Buell'),(412,66,2,'Malaysia','Ipoh','24602','Heath','Karstens'),(413,67,2,'Serbia','Sombor','88012','North','Melody'),(414,68,2,'Brazil','Gravataí','98','Merry','Reinke'),(415,69,2,'Philippines','Pola','900','Bowman','Center'),(416,70,2,'Colombia','Guaitarilla','5103','Northridge','Memorial'),(417,71,2,'Russia','Gryaznovskoye','2','Monterey','Debra'),(418,72,2,'China','Baoping','87600','Milwaukee','Independence'),(419,73,2,'Indonesia','Selasari','257','1st','High Crossing'),(420,74,2,'Czech Republic','Zbraslav','540','Cambridge','Monica'),(421,75,2,'China','Changning','19948','Texas','Erie'),(422,76,2,'Serbia','Stepanovićevo','959','Golf Course','7th'),(423,77,2,'Indonesia','Bireun','71','Fuller','Arkansas'),(424,78,2,'Poland','Czarna Białostocka','85707','Lotheville','Mockingbird'),(425,79,2,'China','Fucheng','63605','Rieder','Helena'),(426,80,2,'Sudan','Geneina','920','Eastlawn','Westerfield'),(427,81,2,'Brazil','Lapa','69','Manley','Harbort'),(428,82,2,'Ivory Coast','Vavoua','31','Sugar','Lakewood'),(429,83,2,'Russia','Sobinka','47','Hudson','Stang'),(430,84,2,'Indonesia','Parungjawa','43706','Darwin','Morrow'),(431,85,2,'Poland','Jedlnia-Letnisko','41398','Surrey','Judy'),(432,86,2,'Philippines','Apurawan','14','Pearson','Jana'),(433,87,2,'Brazil','Buritizeiro','029','Novick','Pleasure'),(434,88,2,'Indonesia','Kampungsusah','5','Dennis','Bobwhite'),(435,89,2,'China','Yushu','9','Emmet','Towne'),(436,90,2,'Philippines','Lumil','6','Nova','Killdeer'),(437,91,2,'Norway','Oslo','82','Summerview','Eagan'),(438,92,2,'China','Jianxincun','54679','Schmedeman','Lien'),(439,93,2,'China','Qiganjidie','60','Norway Maple','Iowa'),(440,94,2,'China','Fenghuanglu','473','Parkside','Algoma'),(441,95,2,'China','Xiaoxi','816','Towne','Fremont'),(442,96,2,'Indonesia','Hantara','6','Oxford','Transport'),(443,97,2,'China','Jingmao','020','Kropf','Ronald Regan'),(444,98,2,'China','Lintingkou','91','Nova','Forest Dale'),(445,99,2,'China','Qingping','314','Delladonna','Sage'),(446,100,2,'Poland','Mońki','25','Shoshone','Talisman'),(447,101,2,'Philippines','Santo Domingo','2304','Center','Browning'),(448,102,2,'Iraq','Ar Ruţbah','7','Carberry','Beilfuss'),(449,103,2,'Democratic Republic of the Congo','Kabare','67','Bay','Macpherson'),(450,104,2,'Brazil','Diamantino','683','Eliot','Merchant'),(451,105,2,'Colombia','Ábrego','39409','Vidon','Coolidge'),(452,106,2,'Sweden','Svalöv','397','Marquette','West'),(453,107,2,'Indonesia','Campaka','4819','Redwing','Pierstorff'),(454,108,2,'China','Banqiao','97464','Meadow Vale','Forster'),(455,109,2,'Poland','Krotoszyn','2','Beilfuss','7th'),(456,110,2,'Panama','Nuevo Emperador','735','Melvin','Forest Run'),(457,111,2,'Russia','Neftegorsk','17','Heffernan','Debra'),(458,112,2,'Argentina','San Javier','95','Talisman','Erie'),(459,113,2,'Indonesia','Koanara','3645','Garrison','Vernon'),(460,114,2,'China','Shuitai','2','Erie','Johnson'),(461,115,2,'Yemen','Al Ḩumaydāt','65','Nancy','Lawn'),(462,116,2,'Azerbaijan','Sumqayıt','1','Maple','Aberg'),(463,117,2,'Cuba','Cárdenas','97','Texas','Messerschmidt'),(464,118,2,'Nigeria','Ikang','50509','Forest Dale','Morningstar'),(465,119,2,'Nigeria','Osogbo','18226','Shelley','Michigan'),(466,120,2,'Peru','Camilaca','58342','Linden','Pierstorff'),(467,121,2,'Sweden','Sölvesborg','689','Pepper Wood','Steensland'),(468,122,2,'China','Yuhang','603','Menomonie','Saint Paul'),(469,123,2,'Russia','Amga','23','4th','Manitowish'),(470,124,2,'Philippines','Guijalo','8','Loftsgordon','Anniversary'),(471,125,2,'Indonesia','Dowan','31528','Nobel','Londonderry'),(472,126,2,'Poland','Drawsko','4','Scott','Fair Oaks'),(473,127,2,'Zambia','Lusaka','5006','Magdeline','Eagle Crest'),(474,128,2,'Indonesia','Watuagung','8','Delaware','Rusk'),(475,129,2,'Tanzania','Somanda','501','Maple','Kings'),(476,130,2,'Sweden','Strömsnäsbruk','6504','Meadow Valley','East'),(477,131,2,'China','Bacheng','8978','Carey','Superior'),(478,132,2,'Laos','Không','95557','Colorado','Grayhawk'),(479,133,2,'Ecuador','Manta','6502','Arapahoe','Loftsgordon'),(480,134,2,'Morocco','Tissa','67','Sundown','Knutson'),(481,135,2,'Indonesia','Krajan Nglinggis','9','Vahlen','Cody'),(482,136,2,'Poland','Nowy Dwór Gdański','47','Delladonna','Manufacturers'),(483,137,2,'China','Baitu','4','Merrick','Larry'),(484,138,2,'Democratic Republic of the Congo','Libenge','75','Burrows','Algoma'),(485,139,2,'Finland','Liljendal','0','Continental','Nancy'),(486,140,2,'Brazil','Tabatinga','60131','Barnett','Troy'),(487,141,2,'China','Sanli','41','Corry','Northridge'),(488,142,2,'Japan','Handa','436','Mandrake','Sachs'),(489,143,2,'Togo','Bafilo','0','Talisman','Boyd'),(490,144,2,'Portugal','Canedo','073','Bunker Hill','Butternut'),(491,145,2,'China','Qianshan','9','Green Ridge','Mallard'),(492,146,2,'Yemen','Ta‘izz','2451','7th','Northridge'),(493,147,2,'Indonesia','Krajan Ngerdani','61809','Sunbrook','Manitowish'),(494,148,2,'Sweden','Skinnskatteberg','21','Fisk','Glacier Hill'),(495,149,2,'China','Baitian','39837','Butterfield','Straubel'),(496,150,2,'Kazakhstan','Ridder','228','Banding','Warbler'),(497,151,2,'Poland','Baranów','63861','New Castle','Helena'),(498,152,2,'Morocco','Tiouli','69280','Kedzie','Killdeer'),(499,153,2,'China','Yangxu','8394','Myrtle','Summit'),(500,154,2,'Libya','Al Burayqah','3','Bartelt','Knutson'),(501,155,2,'France','Caen','368','Sugar','Barby'),(502,156,2,'Russia','Ovsyanka','3696','Granby','Roth'),(503,157,2,'Tajikistan','Norak','5619','Forest Run','Melby'),(504,158,2,'China','Chaoshui','2','Cardinal','Pennsylvania'),(505,159,2,'Sierra Leone','Masoyila','48','High Crossing','Green'),(506,160,2,'Peru','Nazca','15','8th','Sutteridge'),(507,161,2,'Laos','Xaysetha','8313','Eastlawn','Park Meadow'),(508,162,2,'Russia','Novyye Gorki','6506','Badeau','Bartillon'),(509,163,2,'Sweden','Stockholm','61','Declaration','Thompson'),(510,164,2,'China','Yuyang','52857','Spohn','Declaration'),(511,165,2,'Kosovo','Kačanik','0912','Cody','Lakewood'),(512,166,2,'New Zealand','Winton','6','Moulton','Warrior'),(513,167,2,'China','Lutou','37619','Waywood','Monterey'),(514,168,2,'Indonesia','Pora','37184','Killdeer','Waubesa'),(515,169,2,'China','Taha Man Zu','52','Memorial','Kenwood'),(516,170,2,'Kyrgyzstan','Chayek','58','Delaware','Clyde Gallagher'),(517,171,2,'Canada','Saint-Eustache','3604','Tennyson','Katie'),(518,172,2,'China','Loujiadian','711','Randy','Lotheville'),(519,173,2,'Brazil','Votorantim','67','Del Sol','Hoard'),(520,174,2,'Kazakhstan','Ush-Tyube','76','Eagle Crest','5th'),(521,175,2,'Japan','Kōchi-shi','45872','Express','Hovde'),(522,176,2,'Indonesia','Taimaman','756','Canary','Granby'),(523,177,2,'Portugal','Alpedrinha','9','Straubel','Montana'),(524,178,2,'Indonesia','Ploso','5635','Fallview','Stephen'),(525,179,2,'Morocco','Tafraout','801','Merchant','Fulton'),(526,180,2,'Palestinian Territory','Dayr Sāmit','2','Park Meadow','Corry'),(527,181,2,'China','Shuinan','062','Mariners Cove','Eastlawn'),(528,182,2,'China','Gujiadian','4','Express','Stuart'),(529,183,2,'Canada','Grand Bank','4','North','Lukken'),(530,184,2,'China','Jidong','58714','Roth','Hoffman'),(531,185,2,'Indonesia','Nanggorak','94993','Grover','Schmedeman'),(532,186,2,'China','Jiangmen','76940','Shasta','Lillian'),(533,187,2,'Ireland','Ballina','82','Glacier Hill','Everett'),(534,188,2,'China','Ruilin','69','Elka','Butterfield'),(535,189,2,'Japan','Yono','0468','Menomonie','Fordem'),(536,190,2,'Ethiopia','Addis Ababa','0703','Lien','Loeprich'),(537,191,2,'Indonesia','Bulubrangsi','7','Melvin','Maryland'),(538,192,2,'Thailand','Yaring','428','Sunfield','Lien'),(539,193,2,'China','Qingzhou','1','Lerdahl','Twin Pines'),(540,194,2,'Japan','Tōkamachi','77','Mayer','La Follette'),(541,195,2,'Gambia','Sun Kunda','781','Manufacturers','Luster'),(542,196,2,'Indonesia','Cipicung','2377','Jackson','Butternut'),(543,197,2,'China','Macheng','08','Continental','Susan'),(544,198,2,'China','Longchi','533','Prentice','Oakridge'),(545,199,2,'South Korea','Imsil','23398','Northwestern','North'),(546,200,2,'Bangladesh','Cox’s Bāzār','56','Warner','Golden Leaf'),(693,1,3,'Japan','Kitakami','47','High Crossing','Pine View'),(694,2,3,'Iran','Eqlīd','77','Harbort','Kennedy'),(695,3,3,'Brazil','Ibiá','2952','Meadow Ridge','Bunting'),(696,4,3,'China','Zhuting','60','Gerald','Mcguire'),(697,5,3,'United States','Lexington','2441','Lakewood Gardens','Straubel'),(698,6,3,'China','Shunhe','8607','Packers','Marcy'),(699,7,3,'Indonesia','Kuniran','1','Lakeland','Center'),(700,8,3,'Japan','Kamiichi','787','Bay','Prentice'),(701,9,3,'France','Senlis','39','Sachtjen','Johnson'),(702,10,3,'Japan','Ōgaki','2','Lillian','Mcguire'),(703,11,3,'Philippines','Magsalangi','03086','Elmside','Springview'),(704,12,3,'Indonesia','Talun','6212','Talmadge','Transport'),(705,13,3,'Albania','Otllak','740','Corben','Surrey'),(707,15,3,'Poland','Kraków','7236','Shoshone','Orin'),(708,16,3,'Indonesia','Kuma','468','Laurel','American'),(709,17,3,'France','Hyères','3','Ramsey','Chinook'),(710,18,3,'Sierra Leone','Sumbuya','87031','Messerschmidt','Warbler'),(711,19,3,'Niger','Niamey','242','Dennis','Packers'),(712,20,3,'Ghana','Akim Swedru','8','Sullivan','Bobwhite'),(713,21,3,'China','Wulin','5','Buell','Packers'),(714,22,3,'Pakistan','Kunjāh','1099','Elmside','Welch'),(715,23,3,'Bolivia','Jorochito','25','Mesta','Maywood'),(716,24,3,'Colombia','Ríohacha','0206','Buell','Weeping Birch'),(717,25,3,'Argentina','Comandante Luis Piedra Buena','51','Gerald','Loftsgordon'),(718,26,3,'Mexico','San Sebastian','3275','Dakota','Swallow'),(719,27,3,'Uzbekistan','Kitob','9','Parkside','Mayer'),(720,28,3,'China','Ruoqiang','4474','Blaine','Gulseth'),(721,29,3,'Czech Republic','Sadov','7','Rowland','Cardinal'),(722,30,3,'Dominican Republic','El Puerto','30970','Upham','Welch'),(723,31,3,'Norway','Porsgrunn','4940','Pleasure','Washington'),(724,32,3,'Indonesia','Cigaleuh Kulon','35','Grim','Del Mar'),(725,33,3,'Japan','Kameda-honchō','6','Doe Crossing','Nevada'),(726,34,3,'Nigeria','Mafa','83589','Twin Pines','Boyd'),(727,35,3,'Haiti','Mirebalais','85892','Autumn Leaf','Emmet'),(728,36,3,'China','Gucheng','9774','Lotheville','Kedzie'),(729,37,3,'Jordan','‘Izrā','63258','Corben','Fulton'),(730,38,3,'Brazil','Itapetinga','7','Sunnyside','Holy Cross'),(731,39,3,'China','Erdaocha','02047','Judy','Almo'),(732,40,3,'Tunisia','La Goulette','13','Johnson','Little Fleur'),(733,41,3,'France','Mende','0062','Waubesa','Victoria'),(734,42,3,'Indonesia','Tutul','38','Bowman','Swallow'),(735,43,3,'Poland','Leśnica','0124','Ridge Oak','Park Meadow'),(736,44,3,'Serbia','Senta','7023','Melvin','Erie'),(737,45,3,'Jamaica','Gordon Town','42503','Morning','Oxford'),(738,46,3,'Bangladesh','Muktāgācha','50','Melody','Claremont'),(739,47,3,'Indonesia','Sumberkenanga','0','Clarendon','Coolidge'),(740,48,3,'Czech Republic','Řehlovice','4','Dapin','Forster'),(741,49,3,'Thailand','Ban Na San','77','Stoughton','Grasskamp'),(742,50,3,'Portugal','Veiga','8523','Eggendart','Boyd'),(743,51,3,'China','Anzihao','68809','Ryan','Bellgrove'),(744,52,3,'China','Yushang','70','Harbort','Cody'),(745,53,3,'Brazil','Jaguaribe','13809','Toban','Golf View'),(746,54,3,'Russia','Kommunar','087','Jay','Stang'),(747,55,3,'Vietnam','Thị Trấn Vạn Hà','8','Spenser','Corry'),(748,56,3,'Japan','Sukumo','4','Sachs','Bartillon'),(749,57,3,'Philippines','Paagahan','44','Commercial','Forster'),(750,58,3,'Nigeria','Abakaliki','7730','Northridge','Fallview'),(751,59,3,'Russia','Irtyshskiy','247','Burrows','Anthes'),(752,60,3,'United Kingdom','Middleton','20','Brown','Ilene'),(753,61,3,'Honduras','Liure','25074','Ronald Regan','Bluestem'),(754,62,3,'Spain','Palma De Mallorca','48623','Kingsford','Daystar'),(755,63,3,'Peru','Canchayllo','833','Autumn Leaf','Nevada'),(756,64,3,'Portugal','Alburitel','7713','Mcguire','Sommers'),(757,65,3,'Denmark','Frederiksberg','3','Ridge Oak','Del Sol'),(758,66,3,'China','Xiaofayi','81205','Sullivan','Service'),(759,67,3,'France','Amiens','9','Anderson','Dovetail'),(760,68,3,'China','Mengla','50471','Anzinger','Forest Run'),(761,69,3,'France','Paris 06','3580','Portage','Coleman'),(762,70,3,'China','Xijiang','18777','Warbler','Ruskin'),(763,71,3,'Tanzania','Uyovu','88373','Manufacturers','Thompson'),(764,72,3,'Madagascar','Mananara','37777','Bonner','Independence'),(765,73,3,'Philippines','Buenlag','470','Victoria','Hermina'),(766,74,3,'Brazil','Estrela','958','Green','Marquette'),(767,75,3,'China','Tengqiao','23','Lillian','Manufacturers'),(768,76,3,'Japan','Ishiki','9','Manufacturers','Union'),(769,77,3,'Canada','St. Catharines','69','Hoard','Beilfuss'),(770,78,3,'Brazil','Biritiba Mirim','87','Milwaukee','Bartelt'),(771,79,3,'Argentina','San Ramón de la Nueva Orán','738','Bluejay','Menomonie'),(772,80,3,'Thailand','Bang Nam Priao','5178','Swallow','Dwight'),(773,81,3,'China','Liucun','4546','Iowa','Vahlen'),(774,82,3,'Indonesia','Pagelaran','72164','Westerfield','Shasta'),(775,83,3,'Brazil','Porto União','6368','Alpine','Kingsford'),(776,84,3,'Chile','Rengo','6','Straubel','Muir'),(777,85,3,'Panama','San Ignacio de Tupile','1','Meadow Valley','High Crossing'),(778,86,3,'China','Chunjiang','9171','Sloan','Swallow'),(779,87,3,'Sweden','Örnsköldsvik','206','Union','Melby'),(780,88,3,'Denmark','Frederiksberg','4383','Dixon','Declaration'),(781,89,3,'Guatemala','Chiantla','6375','Beilfuss','Gulseth'),(782,90,3,'Indonesia','Pelem','3730','Dixon','2nd'),(783,91,3,'Russia','Rognedino','35','Farragut','Evergreen'),(784,92,3,'Mexico','Miguel Hidalgo','63','Spohn','Jana'),(785,93,3,'Dominican Republic','Nizao','7524','Gateway','New Castle'),(786,94,3,'Indonesia','Karanglo','66','Butternut','Forster'),(787,95,3,'Poland','Krynice','9','Stoughton','John Wall'),(788,96,3,'Poland','Wola Filipowska','0','Evergreen','Red Cloud'),(789,97,3,'China','Hanfeng','7','Magdeline','Warrior'),(790,98,3,'Japan','Kamaishi','89179','Monument','Butternut'),(791,99,3,'Jamaica','Williamsfield','299','Warrior','Butternut'),(792,100,3,'China','Dazhou','9615','Schiller','Lillian'),(793,101,3,'China','Jingshan','67068','Almo','Thierer'),(794,102,3,'Poland','Dębica','8','Cardinal','Sauthoff'),(795,103,3,'China','Xianyi','981','Pearson','Pankratz'),(796,104,3,'France','Roissy Charles-de-Gaulle','3071','American','Butterfield'),(797,105,3,'Chile','Villa Presidente Frei, Ñuñoa, Santiago, Chile','42','Crowley','Leroy'),(798,106,3,'Indonesia','Caringin Lor','35679','Waubesa','Monument'),(799,107,3,'China','Xigaoshan','57','Mesta','Pine View'),(800,108,3,'Poland','Jedlińsk','0033','Maryland','Sommers'),(801,109,3,'Paraguay','Fram','4542','Cherokee','Coleman'),(802,110,3,'Canada','Peachland','6793','Maywood','Cascade'),(803,111,3,'Pakistan','Miān Channūn','00286','Hayes','6th'),(804,112,3,'Portugal','Santo Adrião Vizela','85','Sunbrook','Morningstar'),(805,113,3,'China','Nankai','33225','Eggendart','Carey'),(806,114,3,'China','Jinniu','2','Linden','Cody'),(807,115,3,'Czech Republic','Opařany','50953','Talisman','Lawn'),(808,116,3,'China','Jieguanting','95','Harbort','Spaight'),(809,117,3,'China','Jiawu','44177','Brown','Bartillon'),(810,118,3,'Russia','Strezhevoy','56','Novick','Corscot'),(811,119,3,'China','Fujia','536','Meadow Valley','Dakota'),(812,120,3,'Angola','Caluquembe','143','Forest Dale','Swallow'),(813,121,3,'Philippines','San Ramon','684','Northland','Blue Bill Park'),(814,122,3,'China','Shihuajian','2','Monument','Myrtle'),(815,123,3,'China','Tadou','190','Swallow','Bay'),(816,124,3,'Ukraine','Zalesnoye','02','Valley Edge','Mitchell'),(817,125,3,'France','Cesson-Sévigné','87664','Merry','Hazelcrest'),(818,126,3,'Niger','Maradi','78','Lerdahl','Vermont'),(819,127,3,'Japan','Hikari','061','Sunfield','High Crossing'),(820,128,3,'Indonesia','Campraksanta','0','Twin Pines','Lyons'),(821,129,3,'Portugal','Cova da Iria','9','Barby','Kingsford'),(822,130,3,'Azerbaijan','Altıağac','56268','Valley Edge','Sherman'),(823,131,3,'Tanzania','Kidodi','603','South','Meadow Ridge'),(824,132,3,'Russia','Maromitsa','3','Anzinger','Heath'),(825,133,3,'Philippines','Nampicuan','9600','Bashford','Cambridge'),(826,134,3,'China','Bangjun','56','Shoshone','Granby'),(827,135,3,'Indonesia','Krajan','95','Continental','Continental'),(828,136,3,'China','Chifeng','787','Little Fleur','Southridge'),(829,137,3,'Portugal','Cobre','354','Mcguire','Reinke'),(830,138,3,'Canada','Saint-Bruno','86915','Mallory','Loeprich'),(831,139,3,'France','Vincennes','069','Cherokee','Magdeline'),(832,140,3,'China','Hanjiaji','864','Myrtle','Talmadge'),(833,141,3,'Belarus','Lyozna','191','Northridge','Tomscot'),(834,142,3,'Indonesia','Jungkat Selatan','19564','Knutson','Farmco'),(835,143,3,'China','Qilin','2','Lillian','Calypso'),(836,144,3,'Brazil','Macaíba','1','Carberry','1st'),(837,145,3,'Thailand','Wichit','0','Old Shore','Independence'),(838,146,3,'Thailand','Mae Sot','186','Talmadge','Loeprich'),(839,147,3,'United States','Miami','8','Sommers','Browning'),(840,148,3,'Japan','Shinjō','6','Kinsman','Schiller'),(841,149,3,'China','Duodaoshi','180','Buell','Cambridge'),(842,150,3,'China','Duyang','68537','Valley Edge','Ronald Regan'),(843,151,3,'Portugal','Alverca do Ribatejo','70','Moland','Bay'),(844,152,3,'Comoros','Nioumamilima','01303','Hoard','Oak'),(845,153,3,'Ukraine','Zaliznychne','4','Shelley','Park Meadow'),(846,154,3,'China','Liushan','4','Bultman','Starling'),(847,155,3,'Japan','Mihara','49','Shasta','Northland'),(848,156,3,'Russia','Proletarskiy','837','Fallview','Lotheville'),(849,157,3,'China','Baihe','143','Golf View','Blaine'),(850,158,3,'Greece','Kými','05694','Commercial','Westend'),(851,159,3,'Brazil','Marechal Deodoro','666','Southridge','Knutson'),(852,160,3,'Canada','Lumby','600','Service','Hoard'),(853,161,3,'Philippines','Cabugao','22','Graceland','Bartelt'),(854,162,3,'Ethiopia','Sirre','71','Macpherson','Oriole'),(855,163,3,'China','Longxi','836','Prairieview','Sundown'),(856,164,3,'Russia','Yablochnyy','76','Barby','Sugar'),(857,165,3,'Tanzania','Kihurio','482','Golf View','Lukken'),(858,166,3,'Turkmenistan','Saýat','409','Thompson','Cascade'),(859,167,3,'China','Heitan','45160','Linden','Hansons'),(860,168,3,'Mexico','Emiliano Zapata','3202','Schlimgen','Everett'),(861,169,3,'Portugal','Ferreiros','506','Oak Valley','Marcy'),(862,170,3,'Indonesia','Kampungmasjid','1','Main','Mccormick'),(863,171,3,'Ireland','Dún Laoghaire','353','Clyde Gallagher','Elmside'),(864,172,3,'China','Meishan','474','Bultman','Eggendart'),(865,173,3,'Chad','Massakory','081','3rd','Iowa'),(866,174,3,'China','Yanshang','02','Mandrake','Golf Course'),(867,175,3,'China','Shentang','661','Center','Luster'),(868,176,3,'Poland','Brudzeń Duży','36','Rieder','Merry'),(869,177,3,'Sweden','Flen','95','Cardinal','Fallview'),(870,178,3,'Equatorial Guinea','Río Campo','20400','Derek','Mariners Cove'),(871,179,3,'Sweden','Älmhult','1392','Brentwood','Scott'),(872,180,3,'France','Palaiseau','28225','Stuart','Forster'),(873,181,3,'China','Jinchuan','7274','Heath','Warrior'),(874,182,3,'Kazakhstan','Sayaq','56','Aberg','Debra'),(875,183,3,'Greece','Makrochóri','9967','Delladonna','Summit'),(876,184,3,'Uruguay','Soriano','71524','Clyde Gallagher','Porter'),(877,185,3,'Belarus','Orsha','7','High Crossing','Talmadge'),(878,186,3,'China','Xiaba','6131','Orin','American'),(879,187,3,'China','Gyangkar','51','South','Continental'),(880,188,3,'South Africa','Bothaville','95265','Schurz','Pierstorff'),(881,189,3,'Poland','Wielki Kack','1872','Elgar','Jana'),(882,190,3,'Peru','Yanac','45541','Lukken','Oneill'),(883,191,3,'Nigeria','Igbo-Ukwu','2','Haas','Brown'),(884,192,3,'Zambia','Mansa','3','Crest Line','Lakeland'),(885,193,3,'China','Maoping','56081','Petterle','Heath'),(886,194,3,'Guatemala','Cuilco','89','Sunfield','Bellgrove'),(887,195,3,'Brazil','Piúma','44658','Namekagon','Oak'),(888,196,3,'China','Duowa','94','Oxford','Arapahoe'),(889,197,3,'Philippines','Rominimbang','6739','Anhalt','Arapahoe'),(890,198,3,'Venezuela','Sabaneta','05','Mariners Cove','Anthes'),(891,199,3,'Indonesia','Lokuuy','43','Chinook','Logan'),(892,200,3,'Peru','Pozuzo','37264','Grayhawk','Riverside');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adjustment_log`
--

DROP TABLE IF EXISTS `adjustment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adjustment_log` (
  `AdjID` int(11) NOT NULL AUTO_INCREMENT,
  `PID` int(11) DEFAULT NULL,
  `AdjType` int(11) DEFAULT NULL,
  `AdjDate` timestamp NULL DEFAULT NULL,
  `Value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AdjID`),
  KEY `Adj-Payroll_idx` (`PID`),
  CONSTRAINT `fk_adjustmentlog_payroll` FOREIGN KEY (`PID`) REFERENCES `payroll` (`PID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adjustment_log`
--

LOCK TABLES `adjustment_log` WRITE;
/*!40000 ALTER TABLE `adjustment_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `adjustment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `AtID` int(11) NOT NULL AUTO_INCREMENT,
  `DID` int(11) DEFAULT NULL,
  `PID` int(11) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `TimeIn` varchar(45) DEFAULT '12:00 AM',
  `TimeOut` varchar(45) DEFAULT '12:00 AM',
  PRIMARY KEY (`AtID`),
  UNIQUE KEY `unique_index` (`Date`,`DID`),
  KEY `Attendance-DutyDetails_idx` (`DID`),
  KEY `fk_attendance1_idx` (`PID`),
  CONSTRAINT `Attendance-DutyDetails` FOREIGN KEY (`DID`) REFERENCES `dutydetails` (`DID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_attendance1` FOREIGN KEY (`PID`) REFERENCES `period` (`PID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1646 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1224,2,130,'2017-09-04 00:00:00','01:00 AM','12:00 PM'),(1225,2,130,'2017-09-11 00:00:00','01:00 AM','12:00 PM'),(1226,2,130,'2017-09-05 00:00:00','01:00 AM','12:00 PM'),(1227,2,130,'2017-09-12 00:00:00','01:00 AM','12:00 PM'),(1228,2,130,'2017-09-06 00:00:00','01:00 AM','12:00 PM'),(1229,2,130,'2017-09-13 00:00:00','01:00 AM','12:00 PM'),(1230,2,130,'2017-09-07 00:00:00','01:00 AM','12:00 PM'),(1231,2,130,'2017-09-14 00:00:00','01:00 AM','12:00 PM'),(1232,2,130,'2017-09-01 00:00:00','01:00 AM','12:00 PM'),(1233,2,130,'2017-09-08 00:00:00','01:00 AM','12:00 PM'),(1234,2,130,'2017-09-15 00:00:00','01:00 AM','12:00 PM'),(1235,2,130,'2017-09-02 00:00:00','01:00 AM','12:00 PM'),(1236,2,130,'2017-09-09 00:00:00','01:00 AM','12:00 PM'),(1237,2,130,'2017-09-03 00:00:00','01:00 AM','12:00 PM'),(1238,2,130,'2017-09-10 00:00:00','01:00 AM','12:00 PM'),(1284,3,134,'2017-09-01 00:00:00','01:00 AM','09:00 AM'),(1285,9,134,'2017-09-11 00:00:00','01:00 AM','09:00 AM'),(1286,9,134,'2017-09-12 00:00:00','01:00 AM','09:00 AM'),(1287,9,134,'2017-09-13 00:00:00','01:00 AM','09:00 AM'),(1288,9,134,'2017-09-08 00:00:00','01:00 AM','09:00 AM'),(1289,9,134,'2017-09-15 00:00:00','01:00 AM','09:00 AM'),(1290,9,134,'2017-09-09 00:00:00','01:00 AM','09:00 AM'),(1291,9,134,'2017-09-10 00:00:00','01:00 AM','09:00 AM'),(1332,4,140,'2017-09-04 00:00:00','01:00 AM','09:00 AM'),(1333,4,140,'2017-09-11 00:00:00','01:00 AM','09:00 AM'),(1334,4,140,'2017-09-05 00:00:00','01:00 AM','09:00 AM'),(1335,4,140,'2017-09-12 00:00:00','01:00 AM','09:00 AM'),(1336,4,140,'2017-09-06 00:00:00','01:00 AM','09:00 AM'),(1337,4,140,'2017-09-13 00:00:00','01:00 AM','09:00 AM'),(1338,4,140,'2017-09-07 00:00:00','01:00 AM','09:00 AM'),(1339,4,140,'2017-09-14 00:00:00','01:00 AM','09:00 AM'),(1340,4,140,'2017-09-01 00:00:00','01:00 AM','09:00 AM'),(1341,4,140,'2017-09-08 00:00:00','01:00 AM','09:00 AM'),(1342,4,140,'2017-09-15 00:00:00','01:00 AM','09:00 AM'),(1343,4,140,'2017-09-02 00:00:00','01:00 AM','09:00 AM'),(1344,4,140,'2017-09-09 00:00:00','01:00 AM','09:00 AM'),(1345,4,140,'2017-09-03 00:00:00','01:00 AM','09:00 AM'),(1346,4,140,'2017-09-10 00:00:00','01:00 AM','09:00 AM'),(1392,5,144,'2017-09-04 00:00:00','01:00 AM','09:00 AM'),(1393,5,144,'2017-09-11 00:00:00','01:00 AM','09:00 AM'),(1394,5,144,'2017-09-05 00:00:00','01:00 AM','09:00 AM'),(1395,5,144,'2017-09-12 00:00:00','01:00 AM','09:00 AM'),(1396,5,144,'2017-09-06 00:00:00','01:00 AM','09:00 AM'),(1397,5,144,'2017-09-13 00:00:00','01:00 AM','09:00 AM'),(1398,5,144,'2017-09-07 00:00:00','01:00 AM','09:00 AM'),(1399,5,144,'2017-09-14 00:00:00','01:00 AM','09:00 AM'),(1400,5,144,'2017-09-01 00:00:00','01:00 AM','09:00 AM'),(1401,5,144,'2017-09-08 00:00:00','01:00 AM','09:00 AM'),(1402,5,144,'2017-09-15 00:00:00','01:00 AM','09:00 AM'),(1436,6,148,'2017-09-04 00:00:00','01:00 AM','09:00 AM'),(1437,6,148,'2017-09-11 00:00:00','01:00 AM','09:00 AM'),(1438,6,148,'2017-09-05 00:00:00','01:00 AM','09:00 AM'),(1439,6,148,'2017-09-12 00:00:00','01:00 AM','09:00 AM'),(1440,6,148,'2017-09-06 00:00:00','01:00 AM','09:00 AM'),(1441,6,148,'2017-09-13 00:00:00','01:00 AM','09:00 AM'),(1442,6,148,'2017-09-07 00:00:00','01:00 AM','09:00 AM'),(1443,6,148,'2017-09-14 00:00:00','01:00 AM','09:00 AM'),(1444,6,148,'2017-09-01 00:00:00','01:00 AM','09:00 AM'),(1445,6,148,'2017-09-08 00:00:00','01:00 AM','09:00 AM'),(1446,6,148,'2017-09-15 00:00:00','01:00 AM','09:00 AM'),(1480,7,152,'2017-09-04 00:00:00','01:00 AM','09:00 AM'),(1481,7,152,'2017-09-11 00:00:00','01:00 AM','09:00 AM'),(1482,7,152,'2017-09-05 00:00:00','01:00 AM','09:00 AM'),(1483,7,152,'2017-09-12 00:00:00','01:00 AM','09:00 AM'),(1484,7,152,'2017-09-06 00:00:00','01:00 AM','09:00 AM'),(1485,7,152,'2017-09-13 00:00:00','01:00 AM','09:00 AM'),(1486,7,152,'2017-09-07 00:00:00','01:00 AM','09:00 AM'),(1487,7,152,'2017-09-14 00:00:00','01:00 AM','09:00 AM'),(1488,7,152,'2017-09-01 00:00:00','01:00 AM','09:00 AM'),(1489,7,152,'2017-09-08 00:00:00','01:00 AM','09:00 AM'),(1490,7,152,'2017-09-15 00:00:00','01:00 AM','09:00 AM'),(1491,7,152,'2017-09-02 00:00:00','01:00 AM','09:00 AM'),(1492,7,152,'2017-09-09 00:00:00','01:00 AM','09:00 AM'),(1493,7,152,'2017-09-03 00:00:00','01:00 AM','09:00 AM'),(1494,7,152,'2017-09-10 00:00:00','01:00 AM','09:00 AM'),(1540,8,156,'2017-09-04 00:00:00','01:00 AM','09:00 AM'),(1541,8,156,'2017-09-11 00:00:00','01:00 AM','09:00 AM'),(1542,8,156,'2017-09-05 00:00:00','01:00 AM','09:00 AM'),(1543,8,156,'2017-09-12 00:00:00','01:00 AM','09:00 AM'),(1544,8,156,'2017-09-06 00:00:00','01:00 AM','09:00 AM'),(1545,8,156,'2017-09-13 00:00:00','01:00 AM','09:00 AM'),(1546,8,156,'2017-09-07 00:00:00','01:00 AM','09:00 AM'),(1547,8,156,'2017-09-14 00:00:00','01:00 AM','09:00 AM'),(1548,8,156,'2017-09-01 00:00:00','01:00 AM','09:00 AM'),(1549,8,156,'2017-09-08 00:00:00','01:00 AM','09:00 AM'),(1550,8,156,'2017-09-15 00:00:00','01:00 AM','09:00 AM'),(1551,8,156,'2017-09-02 00:00:00','01:00 AM','09:00 AM'),(1552,8,156,'2017-09-09 00:00:00','01:00 AM','09:00 AM'),(1553,8,156,'2017-09-03 00:00:00','01:00 AM','09:00 AM'),(1554,8,156,'2017-09-10 00:00:00','01:00 AM','09:00 AM'),(1600,1,160,'2017-09-04 00:00:00','12:00 AM','12:00 AM'),(1601,1,160,'2017-09-11 00:00:00','12:00 AM','12:00 AM'),(1602,1,160,'2017-09-05 00:00:00','12:00 AM','12:00 AM'),(1603,1,160,'2017-09-12 00:00:00','12:00 AM','12:00 AM'),(1604,1,160,'2017-09-06 00:00:00','12:00 AM','12:00 AM'),(1605,1,160,'2017-09-13 00:00:00','12:00 AM','12:00 AM'),(1606,1,160,'2017-09-07 00:00:00','12:00 AM','12:00 AM'),(1607,1,160,'2017-09-14 00:00:00','12:00 AM','12:00 AM'),(1608,1,160,'2017-09-01 00:00:00','12:00 AM','12:00 AM'),(1609,1,160,'2017-09-08 00:00:00','12:00 AM','12:00 AM'),(1610,1,160,'2017-09-15 00:00:00','12:00 AM','12:00 AM'),(1611,1,160,'2017-09-02 00:00:00','12:00 AM','12:00 AM'),(1612,1,160,'2017-09-09 00:00:00','12:00 AM','12:00 AM'),(1613,1,160,'2017-09-03 00:00:00','12:00 AM','12:00 AM'),(1614,1,160,'2017-09-10 00:00:00','12:00 AM','12:00 AM');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basicpay`
--

DROP TABLE IF EXISTS `basicpay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basicpay` (
  `BPID` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(6,2) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`BPID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basicpay`
--

LOCK TABLES `basicpay` WRITE;
/*!40000 ALTER TABLE `basicpay` DISABLE KEYS */;
INSERT INTO `basicpay` VALUES (1,90.00,'1970-01-01 00:00:00','1989-07-01 00:00:00',0),(2,100.00,'1989-07-01 00:00:00','1990-12-01 00:00:00',0),(3,115.00,'1990-12-01 00:00:00','1997-01-01 00:00:00',0),(4,125.00,'1997-01-01 00:00:00','1998-01-01 00:00:00',0),(5,130.00,'1998-01-01 00:00:00','1999-11-01 00:00:00',0),(6,150.00,'1999-11-01 00:00:00','2000-11-01 00:00:00',0),(7,160.00,'2000-11-01 00:00:00','2001-05-01 00:00:00',0),(8,170.00,'2001-05-01 00:00:00','2004-01-01 00:00:00',0),(9,195.00,'2004-01-01 00:00:00','2005-02-05 00:00:00',0),(10,210.00,'2005-02-05 00:00:00','2006-07-27 00:00:00',0),(11,230.00,'2006-07-27 00:00:00','2008-06-16 00:00:00',0),(12,250.00,'2008-06-16 00:00:00','2009-09-18 00:00:00',0),(13,255.00,'2009-09-15 00:00:00','2010-09-01 00:00:00',0),(14,274.00,'2010-09-01 00:00:00','2012-01-01 00:00:00',0),(15,290.00,'2012-01-01 00:00:00','2014-06-01 00:00:00',0),(16,317.00,'2014-06-01 00:00:00','2016-12-16 00:00:00',0),(17,340.00,'2016-12-16 00:00:00',NULL,NULL),(18,530.00,'2017-08-23 00:00:00','2017-08-27 00:00:00',0),(20,1240.00,'2044-06-14 00:00:00','9999-12-31 00:00:00',2),(21,340.00,'2017-08-27 00:00:00','9999-12-31 00:00:00',1);
/*!40000 ALTER TABLE `basicpay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certifier`
--

DROP TABLE IF EXISTS `certifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certifier` (
  `ccid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `fn` varchar(45) DEFAULT NULL,
  `mn` varchar(45) DEFAULT NULL,
  `ln` varchar(60) DEFAULT NULL,
  `contactno` varchar(60) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`ccid`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certifier`
--

LOCK TABLES `certifier` WRITE;
/*!40000 ALTER TABLE `certifier` DISABLE KEYS */;
INSERT INTO `certifier` VALUES (1,1,'Elisha','Vliechop','Bischop','420-(455)310-7258',1),(2,2,'Moira','Cruz','Yearby','86-(766)732-6569',1),(3,3,'Marietta','Villalobo','Wardle','62-(108)898-2798',1),(4,4,'Cameron','Abad','McKeller','92-(847)233-9064',1),(5,5,'Kenon','Garcia','Vernalls','62-(340)829-9956',1),(6,6,'Bertina','Dela Cruz','Archibald','254-(375)754-3770',1),(7,7,'Ingra','Cruz','De Moreno','84-(860)515-2184',1),(8,8,'Darryl','Ramon','Christley','961-(352)150-4129',1),(9,9,'Kathe','Roberto','Aish','86-(118)909-6090',1),(10,10,'Diana','Angeles','Trymme','93-(292)516-7758',1),(11,11,'Micki','Garcia','Maddy','503-(405)353-8756',1),(12,1,'Erminia','Ang','Firle','977-(214)798-3762',1),(13,2,'Sheree','Sy','Playfoot','86-(770)212-7886',1),(14,3,'Bryan','Tan','Mogra','63-(658)500-5682',1),(15,4,'Lorinda','Go','Dener','63-(965)412-0693',1),(16,5,'Marcille','Acosta','Bradforth','66-(146)895-9649',1),(17,6,'Inglis','Frohman','Oxlade','62-(275)692-8008',1),(18,7,'Sidoney','Cruz','Fidele','62-(204)381-0542',1),(19,8,'Ruddy','Santos','Schnitter','55-(691)792-9118',1),(20,9,'Nessie','Gonzales','Oakwood','62-(513)429-2046',1),(21,10,'Creight','Gonzaga','Danilovitch','98-(581)375-3990',1),(22,11,'Reginald','Ang','Sissel','62-(669)819-3344',1),(23,1,'Charlene','Sy','Corpes','351-(965)192-8751',1),(24,2,'Patten','Te','Cottage','31-(223)182-7393',1),(25,3,'Jessica','Go','Mannering','62-(375)227-2460',1),(26,4,'Emile','De Vries','Bax','55-(445)218-2903',1),(27,5,'Kennith','Amber','Dymond','252-(150)407-0002',1),(28,6,'Shanta','Patterson','Abramson','81-(635)582-7390',1),(29,7,'Christel','Robertson','Pally','353-(783)976-3171',1),(30,8,'Edin','Richardson','Franke','993-(925)725-2483',1),(31,9,'Kimmi','Gregory','MacRannell','46-(786)143-1975',1),(32,10,'Novelia','Valinskiy','Bayford','98-(572)146-3014',1),(33,11,'Susanna','Charleson','Tison','46-(789)351-4678',1),(34,1,'Gualterio','Brundle','Scane','1-(312)290-2006',1),(35,2,'Bryon','Sherbrooke','Darling','86-(932)161-0351',1),(36,3,'Henka','Cromett','Ruddiforth','86-(384)166-2529',1),(37,4,'Lanna','Sedgwick','Nerney','351-(775)854-4023',1),(38,5,'Clovis','Bussell','Reiling','62-(452)925-6205',1),(39,6,'Emmeline','MacFadden','Lampet','46-(105)250-7216',1),(40,7,'Conrad','Filppetti','Powder','593-(568)840-0997',1),(41,8,'Corey','Yanuk','Edy','82-(793)886-3791',1),(42,9,'Fonz','Benley','Gounod','86-(300)279-1440',1),(43,10,'Gabbie','Connechy','Latchmore','86-(314)408-3740',1),(44,11,'Misty','Goudie','Lochhead','62-(585)583-2693',1),(45,12,'Daron','Nixon','Lorait','7-(235)239-0982',1),(46,13,'Farr','MacRorie','Pipet','963-(565)299-8579',1),(47,14,'Gill','Huntall','Tyrie','86-(249)969-7293',1),(48,15,'Giselbert','Rawstorn','Jillis','86-(647)285-7622',1),(49,16,'Wylie','Ocheltree','Ivoshin','81-(700)770-4088',1);
/*!40000 ALTER TABLE `certifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `CID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `ClientStreetNo` varchar(45) DEFAULT NULL,
  `ClientStreet` varchar(45) DEFAULT NULL,
  `ClientBrgy` varchar(45) DEFAULT NULL,
  `ClientCity` varchar(45) DEFAULT NULL,
  `ContactPerson` varchar(45) DEFAULT NULL,
  `ContactNo` varchar(45) DEFAULT NULL,
  `Manager` varchar(45) DEFAULT NULL,
  `CStatus` int(11) DEFAULT NULL,
  `ofcrate` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Genuity Media Solutions Inc.','865','Real St.','Manresa','Kabacan City','Nickle, Asa Sorum','811-1253','Millman, Fredrick Tierney',0,400.00),(2,'Marshall & Ilsley Corporation','1450','Felipe Agoncillo St.','Katipunan','Digos City','Kurzinski, Brady Sharr','757-8097','Oberpriller, Anibal Bagdon',0,600.00),(3,'GMall of Toril','3693','Carmen Planas St.','Kaunlaran','Santa Catalina City','Nickless, Carol Voll','351-8333','Fumagalli, Willie Lynch',0,550.00),(4,'Comcast Corp.','2721','NAIA Rd.','Don Galo','Basilisa City','Jazwa, Tanner Conchado','118-8983','Washor, Jayson Argue',0,600.00),(5,'SkyCable - Cabaguio','803','Capitol Hills Dr. ','Kaunlaran','Santa Maria City','Hushon, Mel Flugum','156-2884','Boisselle, Rosario Pieters',0,550.00),(6,'SPX Cargo Forwarders','3456','Burke St.','Dona Josefa','Santa Cruz City','Hellman, Mario Gazitano','138-1562','Jendro, Terry Bianchin',0,600.00),(7,'Creative Logistics Corp.','1237','Jose Laurel St.','Dona Josefa','Aleosan City','Macandog, Charlie Diker','440-4023','Falla, Roderick Schweers',0,550.00),(8,'Western Union - Bukidnon','3509','Recto Ave.','Loyola Heights','Magsaysay City','Housler, Timothy Zimmermann','791-4640','Havice, Colby Sepulueda',1,400.00),(9,'Gemstar-TV Guide International Inc.','1522','Carmen Planas St.','Edang','Sarangani City','Ballog, Rodger Stifflemire','299-9234','Sampley, Bobby Pasquarella',0,400.00),(10,'Peoples Energy Corp.','983','Jorge Bocobo St.','Manuyo Dos','Can-avid City','Atterbury, Ramiro Dumpe','316-2955','Kleese, Ahmad Boltz',0,400.00),(11,'BellSouth Corporation','1227','Jose Gil St.','Libis Reparo','Salcedo City','Bickman, Lou Hemry','772-8808','Fedd, Arnoldo Elenbaas',1,500.00),(12,'AquaLife Inc.','618','Benavidez St.','Katipunan','Lupon','Brabson, Silas Kranawetter','428-3170','Videtto, Trey Stansberry',1,500.00),(13,'Convergys Corp.','2339','Scout Limbaga St.','Little Baguio','Panabo City','Battie, Aldo Cueto','386-2873','Eshmon, Floyd Zaccaria',0,600.00),(14,'Adobe Systems Incorporated','1279','Bayoran St.','Masambong','Mlang','Straughan, Mario Zavasky','679-1629','Mcdargh, Aldo Has',1,900.00),(15,'Ateneo de Davao University','8113','Roxas St.','Roxas','Davao City','Veracruz, Joyce Ann','092345875425','Veracruz, Joyce Ann',0,400.00),(16,'Astoria Financial Corporation - South','12','Mangga St.','Sta. Maria','Sta. Cruz','Sales, Kyle','238-2837','Sales, Ryle',0,450.00);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `msadb`.`client_AFTER_INSERT` AFTER INSERT ON `client` FOR EACH ROW
BEGIN
INSERT INTO `msadb`.`log_action` 
    (`session_id`, `ltimestamp`, `crudcode`, `isaction`, `eventcode`) 
    VALUES (@cuser, NOW(), 'C', '1', '1CClient');
    INSERT INTO `msadb`.`log_values` (`log_id`, `new`) VALUES ((Select LAST_INSERT_ID()), NEW.`name`);
    
	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `msadb`.`client_AFTER_UPDATE` AFTER UPDATE ON `client` FOR EACH ROW
BEGIN
INSERT INTO `msadb`.`log_action`
              (
                          `session_id`,
                          `ltimestamp`,
                          `crudcode`,
                          `isaction`,
                          `eventcode`,
                          `instance_name`
              )
              VALUES
              (
                          @cuser,
                          now(),
                          'U',
                          '0',
                          '1UClientDetail',
                          CONCAT('Client: ', OLD.`name`)
              );
              
IF NEW.Name
 <> OLD.Name
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'Name', OLD.Name
, NEW.Name
);

end if;

IF NEW.ClientStreetNo
 <> OLD.ClientStreetNo
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'ClientStreetNo
', OLD.ClientStreetNo
, NEW.ClientStreetNo
);

end if;

IF NEW.ClientStreet
 <> OLD.ClientStreet
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'ClientStreet
', OLD.ClientStreet
, NEW.ClientStreet
);

end if;

IF NEW.ClientBrgy
 <> OLD.ClientBrgy
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'ClientBrgy
', OLD.ClientBrgy
, NEW.ClientBrgy
);

end if;

IF NEW.ClientCity
 <> OLD.ClientCity
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'ClientCity
', OLD.ClientCity
, NEW.ClientCity
);

end if;

IF NEW.ContactPerson
 <> OLD.ContactPerson
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'ContactPerson
', OLD.ContactPerson
, NEW.ContactPerson
);

end if;

IF NEW.ContactNo
 <> OLD.ContactNo
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'ContactNo
', OLD.ContactNo
, NEW.ContactNo
);

end if;

IF NEW.Manager <> OLD.Manager THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'Manager', OLD.Manager, NEW.Manager);

end if;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `contribdetails`
--

DROP TABLE IF EXISTS `contribdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contribdetails` (
  `contrib_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_effective` datetime NOT NULL,
  `date_dissolved` datetime DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`contrib_id`,`date_effective`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contribdetails`
--

LOCK TABLES `contribdetails` WRITE;
/*!40000 ALTER TABLE `contribdetails` DISABLE KEYS */;
INSERT INTO `contribdetails` VALUES (1,'1970-01-01 00:00:00','2015-05-23 00:00:00',1,0),(2,'1970-01-01 00:00:00','2015-05-23 00:00:00',2,0),(3,'2015-05-23 00:00:00','2017-07-16 00:00:00',1,0),(4,'2015-05-23 00:00:00','2017-01-01 00:00:00',2,0),(5,'2017-07-16 00:00:00','9999-12-31 00:00:00',1,1),(6,'2017-01-01 00:00:00','9999-12-31 00:00:00',2,1),(7,'2017-10-06 00:00:00','9999-12-31 00:00:00',1,2);
/*!40000 ALTER TABLE `contribdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `msadb`.`contribdetails_BEFORE_DELETE` BEFORE DELETE ON `contribdetails` FOR EACH ROW
BEGIN
	-- 1.) Scan if what the contribtype is.
    IF OLD.`type` = 1  THEN -- SSS
		DELETE FROM msadb.ssscontrib WHERE ssscontrib.contrib_id = OLD.contrib_id;
	END IF;
    
    IF OLD.`type` = 2 THEN -- Withholding Taax
		DELETE FROM msadb.withtax_bracket WHERE withtax_bracket.contrib_id = OLD.contrib_id;
        -- This calls another trigger in withtax_bracket, that deletes withtax_value.alters
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dependents`
--

DROP TABLE IF EXISTS `dependents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependents` (
  `DeID` int(11) NOT NULL AUTO_INCREMENT,
  `DRelationship` int(11) DEFAULT NULL,
  `FN` varchar(45) DEFAULT NULL,
  `MN` varchar(45) DEFAULT NULL,
  `LN` varchar(45) DEFAULT NULL,
  `GID` int(11) DEFAULT NULL,
  PRIMARY KEY (`DeID`),
  KEY `Guards-Dep_idx` (`GID`),
  CONSTRAINT `Guards-Dep` FOREIGN KEY (`GID`) REFERENCES `guards` (`GID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=971 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependents`
--

LOCK TABLES `dependents` WRITE;
/*!40000 ALTER TABLE `dependents` DISABLE KEYS */;
INSERT INTO `dependents` VALUES (1,4,'Kathyrn','Artist','Sabeiha',1),(2,5,'Hunter','Pounder','Manjarres',1),(3,6,'Larry','Liskovec','Aery',1),(4,2,'Whitney','Flever','Arruda',1),(5,2,'Christopher','Fiscel','Coomer',1),(6,4,'Vanessa','Puleio','Lightbody',2),(7,5,'Antony','Gastel','Torivio',2),(8,6,'Ervin','Borio','Strnad',2),(9,2,'Edmund','Bergfield','Naccarato',2),(10,2,'Darren','Faron','Schaab',2),(11,4,'Cherlyn','Keomanivong','Kuhnemund',3),(12,5,'Nicky','Mclennon','Pettry',3),(13,6,'Emory','Dellaripa','Prestidge',3),(14,1,'Dot','Dennies','Nogoda',3),(15,4,'Portia','Fantini','Heldt',4),(16,5,'Zackary','Ahl','Rohrscheib',4),(17,6,'Mario','Balogh','Peetoom',4),(18,2,'Dean','Fuesting','Hoosier',4),(19,2,'Rodrick','Romenesko','Patriss',4),(20,2,'Kendrick','Nicley','Lencioni',4),(21,4,'Shellie','Siburt','Mashall',5),(22,5,'Gregory','Pientka','Brevil',5),(23,6,'Kristofer','Tajima','Oien',5),(24,2,'Eloy','Yann','Macdaniel',5),(25,2,'Graham','Zombory','Zhanel',5),(26,4,'Stella','Wrigley','Angerer',6),(27,5,'Winfred','Drozda','Encalade',6),(28,6,'Maxwell','Figgs','Turziano',6),(29,2,'Johnie','Hronick','Killilea',6),(30,4,'Dinah','Cecilio','Avelino',7),(31,5,'Markus','Rossiter','Hosendove',7),(32,6,'Edgar','Fleer','Hatchette',7),(33,2,'Bennie','Allsop','Becherer',7),(34,2,'Bill','Braget','Nani',7),(35,4,'Samara','Schrull','Lewandowsky',8),(36,5,'Stevie','Sandona','Desamito',8),(37,6,'Clifton','Soffel','Sobotka',8),(38,1,'Demetrius','Mcgwin','Bali',8),(39,1,'Salome','Bansbach','Hickernell',8),(40,4,'Roslyn','Kayrouz','Putz',9),(41,5,'Buford','Hoit','Politis',9),(42,6,'Agustin','Vickerman','Featherston',9),(43,2,'Roland','Sesso','Malla',9),(44,2,'Val','Buchetto','Tixier',9),(45,4,'Shelli','Stief','Haggins',10),(46,5,'Alfonso','Schlett','Rataj',10),(47,6,'Tobias','Buroker','Dummermuth',10),(48,1,'Emely','Swiderski','Kocaj',10),(49,1,'Shayna','Koehn','Quesada',10),(50,1,'Jackeline','Sarff','Ure',10),(51,4,'Sol','Smolic','Chervin',11),(52,5,'Marcos','Feibusch','Stottlar',11),(53,6,'Jacinto','Deblieck','Prioletti',11),(54,1,'Sherlene','Strenge','Mallo',11),(55,4,'Kathern','Henthorn','Dilcher',12),(56,5,'Donny','Roff','Leveille',12),(57,6,'Timmy','Waddouds','Mcpartlin',12),(58,1,'Dong','Mcelvy','Silvis',12),(59,1,'Zulema','Hussaini','Presta',12),(60,1,'Evelynn','Hackenberg','Desautels',12),(61,4,'Chanelle','Dack','Giorno',13),(62,5,'Bill','Cables','Ludden',13),(63,6,'Mel','Mcnelley','Manalili',13),(64,1,'Noelle','Limesand','Kayat',13),(69,4,'Melvina','Enkerud','Bonwell',15),(70,5,'Wes','Glor','Metters',15),(71,6,'Cleveland','Jenney','Hauck',15),(72,1,'Lasonya','Erby','Vulich',15),(73,1,'Eveline','Gucker','Mcinerny',15),(74,4,'Charlie','Burgun','Brasington',16),(75,5,'Buford','Poulos','Ogren',16),(76,6,'Quintin','Patraw','Galasso',16),(77,2,'Kendrick','Summar','Cotto',16),(78,2,'Darrel','Kepp','Hillery',16),(79,4,'Nguyet','Nilsen','Mario',17),(80,5,'Darin','Schreyer','Diana',17),(81,6,'Boyd','Kissack','Waldock',17),(82,1,'Ivey','Nealon','Petrosyan',17),(83,1,'Reta','Piotrowski','Olive',17),(84,1,'Scarlet','Meinberg','Urbani',17),(85,4,'Amee','Yambo','Snead',18),(86,5,'Raleigh','Stoeckel','Heber',18),(87,6,'Trey','Mora','Scattergood',18),(88,2,'Terence','Odin','Baris',18),(89,4,'Bronwyn','Shamsiddeen','Caporiccio',19),(90,5,'Kristofer','Setler','Mcbrien',19),(91,6,'Merlin','Demeo','Bondura',19),(92,1,'Melia','Mccandles','Heminover',19),(93,1,'Anabel','Gemmer','Vilegas',19),(94,4,'Candyce','Sanots','Breiland',20),(95,5,'Hubert','Drozda','Gessert',20),(96,6,'Irwin','Barbrick','Lamontagne',20),(97,2,'Lucas','Gabbett','Casassa',20),(98,4,'Misti','Anick','Bazemore',21),(99,5,'Clinton','Szumigala','Easterlin',21),(100,6,'Brice','Salway','Wachowiak',21),(101,1,'Michelina','Mohler','Boso',21),(102,1,'Dara','Bassetti','Gefroh',21),(103,1,'Babette','Orttenburger','Rieley',21),(104,4,'Ginny','Lacombe','Kitten',22),(105,5,'Young','Byrant','Weisenstein',22),(106,6,'Lawrence','Rados','Vidrio',22),(107,1,'Na','Palumbo','Modest',22),(108,1,'Marylou','Frankie','Flakes',22),(109,4,'Vi','Dunmore','Welding',23),(110,5,'Modesto','Einhorn','Martz',23),(111,6,'Curt','Gutenberg','Sinistore',23),(112,2,'Max','Calpin','Bumm',23),(113,4,'Sunday','Mauney','Pav',24),(114,5,'Zack','Medhus','Rasmuson',24),(115,6,'Donnie','Cicarella','Arthun',24),(116,1,'Tamala','Macha','Kozlik',24),(117,1,'Marsha','Dewolfe','Bulan',24),(118,4,'Sharyl','Pritzel','Sweaney',25),(119,5,'Tory','Adamski','Postert',25),(120,6,'Jerrell','Heckman','Kruczek',25),(121,2,'Alva','Attridge','Debois',25),(122,2,'Darrel','Schunk','Tremillo',25),(123,4,'Ivonne','Chartrand','Flax',26),(124,5,'Reed','Staebell','Derby',26),(125,6,'Adrian','Stampley','Gallaugher',26),(126,2,'Yong','Aharoni','Catherwood',26),(127,4,'Elia','Baters','Wohner',27),(128,5,'Joey','Tobon','Reitler',27),(129,6,'Jeremiah','Mielcarek','Regueira',27),(130,2,'Jesse','Bresee','Gerache',27),(131,4,'Goldie','Marflak','Greenhouse',28),(132,5,'Fredrick','Washman','Wenthold',28),(133,6,'Don','Alcon','Kotzen',28),(134,1,'Kindra','Saraniti','Steinworth',28),(135,1,'Ilse','Whitworth','Arrocho',28),(136,4,'Marisa','Meconi','Maulding',29),(137,5,'Matthew','Shain','Sissom',29),(138,6,'Ervin','Broderson','Caparros',29),(139,1,'Corrie','Keto','Karlinsky',29),(140,1,'Candyce','Gochnour','Basha',29),(141,1,'Becky','Howells','Schapiro',29),(142,4,'Pinkie','Cuffman','Cujas',30),(143,5,'Marcel','Baker','Kienast',30),(144,6,'Graham','Kondracki','Cezil',30),(145,1,'Georgiana','Bantillan','Galyean',30),(146,4,'Yetta','Giampapa','Vogds',31),(147,5,'Terry','Killmon','Formaggioni',31),(148,6,'Glenn','Taschner','Ohl',31),(149,1,'Ping','Pagnello','Deroven',31),(150,4,'Ilda','Cabotage','Steensland',32),(151,5,'Britt','Brace','Newson',32),(152,6,'Elvin','Hettenhausen','Dandridge',32),(153,1,'Rikki','Goody','Giannattasio',32),(154,4,'Creola','Colinger','Molt',33),(155,5,'Duane','Nellum','Lino',33),(156,6,'Andrew','Raulston','Yokota',33),(157,2,'Al','Metevia','Kenley',33),(158,2,'Guillermo','Lyme','Engelsman',33),(159,2,'Alfredo','Geitner','Romeo',33),(160,4,'Rosy','Caminiti','Tovias',34),(161,5,'Wilbur','Kazabi','Lavergne',34),(162,6,'Alfred','Gimbel','Peri',34),(163,1,'Lupita','Laine','Stricklan',34),(164,4,'Iona','Medling','Coner',35),(165,5,'Chadwick','Kiefer','Leimberger',35),(166,6,'Kendrick','Martenez','Delpapa',35),(167,1,'Otelia','Hungate','Grief',35),(168,1,'Blanch','Svehla','Vanostrand',35),(169,1,'Porsha','Winker','Varma',35),(170,4,'Ivonne','Francisque','Eitniear',36),(171,5,'Doug','Cawon','Lehew',36),(172,6,'Branden','Delorenzo','Nevils',36),(173,2,'Mac','Vigueras','Dzubak',36),(174,4,'Evangeline','Pytlewski','Trumps',37),(175,5,'Rodolfo','Weismiller','Leithiser',37),(176,6,'Colby','Lipovsky','Walby',37),(177,2,'Britt','Weyers','Dory',37),(178,2,'Raleigh','Marocco','Tacker',37),(179,2,'Rufus','Cheas','Shober',37),(180,4,'Lannie','Yoshikawa','Tandy',38),(181,5,'Kent','Hornandez','Wrzesinski',38),(182,6,'Valentine','Brande','Sibel',38),(183,1,'Margart','Martens','Loveh',38),(184,1,'Latrisha','Stradling','Bovie',38),(185,4,'Vivan','Latendresse','Samick',39),(186,5,'Garry','Nanda','Zadow',39),(187,6,'Al','Wilk','Eustis',39),(188,2,'Leigh','Braue','Boye',39),(189,2,'Donovan','Atwood','Bloomquist',39),(190,4,'Jeanene','Subler','Canela',40),(191,5,'Oscar','Yaw','Trueman',40),(192,6,'Coy','Massengale','Aquino',40),(193,2,'Winfred','Hrbek','Friemering',40),(194,2,'Pete','Dolejsi','Grit',40),(195,4,'Ariana','Lanfear','Murrey',41),(196,5,'Gavin','Prechtel','Heist',41),(197,6,'Micheal','Hemby','Mcclour',41),(198,2,'Dante','Savio','Schuneman',41),(199,4,'Annabel','Salvadge','Siket',42),(200,5,'Elden','Monroig','Liebermann',42),(201,6,'Nickolas','Roik','Balasubramani',42),(202,1,'Olevia','Watchman','Wojtanowski',42),(203,4,'Kourtney','Belloma','Taubman',43),(204,5,'Tyson','Dihel','Molski',43),(205,6,'Tommy','Enstad','Nagelschmidt',43),(206,2,'Rufus','Avelino','Brissett',43),(207,2,'Stevie','Ammons','Pebbles',43),(208,4,'Annamarie','Wanland','Repenning',44),(209,5,'Benton','Hafeman','Tao',44),(210,6,'Ezekiel','Riggott','Layous',44),(211,1,'Marlys','Delagado','Geidl',44),(212,1,'Shaunda','Laskey','Shippee',44),(213,4,'Jerica','Poska','Kawachi',45),(214,5,'Raleigh','Gebbia','Hilts',45),(215,6,'Anibal','Corrett','Bedoka',45),(216,1,'Siu','Ennett','Wires',45),(217,1,'Dionna','Deerman','Masuda',45),(218,1,'Marta','Flansburg','Arambulo',45),(219,4,'Mabelle','Dietz','Attridge',46),(220,5,'Byron','Coberly','Beydler',46),(221,6,'Randall','Rolf','Marsella',46),(222,2,'Brad','Milby','Puerto',46),(223,2,'Devin','Pullan','Lingren',46),(224,2,'Silas','Christaldi','Murfin',46),(225,4,'Matha','Deats','Foote',47),(226,5,'Dan','Villela','Remmers',47),(227,6,'Michel','Bridgens','Kowald',47),(228,1,'Barabara','Gockley','Sauvage',47),(229,4,'Pauline','Bironas','Bessent',48),(230,5,'Xavier','Romandia','Ando',48),(231,6,'Efrain','Sahota','Granucci',48),(232,1,'Trish','Portales','Trinidad',48),(233,1,'Luise','Dillabough','Cocroft',48),(234,4,'Luciana','Haumesser','Soldner',49),(235,5,'Don','Reddington','Cheatwood',49),(236,6,'Randall','Lashomb','Cassetta',49),(237,1,'Sally','Venneri','Daly',49),(238,1,'Lauralee','Crunkleton','Rickenbacker',49),(239,4,'Kaila','Hronek','Deskins',50),(240,5,'Hobert','Thornberry','Zens',50),(241,6,'Boyd','Longhi','Willamson',50),(242,1,'Sherry','Hockema','Ziyad',50),(243,1,'Valentina','Orttenburger','Kitty',50),(244,1,'Jodie','Trembley','Plasse',50),(245,4,'Neida','Renzoni','Beck',51),(246,5,'Xavier','Benthin','Kotheimer',51),(247,6,'Bret','Delone','Kocourek',51),(248,2,'Gino','Michelini','Fishbein',51),(249,2,'Clifton','Cristiano','Faulcon',51),(250,4,'Ermelinda','Macalma','Paonessa',52),(251,5,'Asa','Francescon','Nybo',52),(252,6,'Bert','Reuber','Wiscombe',52),(253,1,'Amber','Massman','Mizzell',52),(254,1,'Shondra','Farland','Aniol',52),(255,4,'Charity','Gacia','Hupper',53),(256,5,'Grover','Owings','Batimon',53),(257,6,'Edward','Strole','Licause',53),(258,2,'Fritz','Behunin','Artus',53),(259,4,'Matilda','Wekenmann','Epple',54),(260,5,'Kenneth','Fuster','Spratlen',54),(261,6,'Zachariah','Siracusa','Eskelsen',54),(262,1,'Dotty','Whitmarsh','Ferkel',54),(263,4,'Wanda','Miyasaki','Warney',55),(264,5,'Tobias','Felmlee','Lebaron',55),(265,6,'Ike','Dampier','Solo',55),(266,2,'Clyde','Dachs','Phippen',55),(267,2,'Phillip','Wmith','Haushalter',55),(268,2,'Alvin','Broadnay','Boelke',55),(269,4,'Celena','Ifeanyi','Swehla',56),(270,5,'Carmine','Danko','Claucherty',56),(271,6,'Kurt','Delara','Brociner',56),(272,2,'Carol','Tosch','Blackmoore',56),(273,2,'Weston','Mckelvin','Schoenhals',56),(274,4,'Melony','Brzenk','Sprafka',57),(275,5,'Don','Mustoe','Brokaw',57),(276,6,'Garth','Kahana','Spier',57),(277,2,'Hobert','Stancil','Przybyl',57),(278,2,'Ahmad','Menden','Lugardo',57),(279,2,'Benton','Manheim','Keefe',57),(280,4,'Hattie','Mousser','Hamberg',58),(281,5,'Rolando','Wikins','Spancake',58),(282,6,'Grover','Shaer','Vanbramer',58),(283,2,'Calvin','Diers','Valdo',58),(284,4,'Harriett','Prechtl','Titterington',59),(285,5,'Yong','Tutino','Keer',59),(286,6,'Marvin','Naccarato','Profit',59),(287,2,'Lowell','Douthett','Topp',59),(288,4,'Maryann','Knepshield','Mallard',60),(289,5,'Delmar','Djuric','Loreman',60),(290,6,'Ivory','Hushon','Mungia',60),(291,1,'Jana','Cenat','Kindell',60),(292,4,'Carmen','Bodor','Witherington',61),(293,5,'Garfield','Chowdhury','Harjochee',61),(294,6,'Ricky','Genich','Scarce',61),(295,2,'Odis','Vardaman','Wassell',61),(296,2,'Carter','Burnie','Lamudio',61),(297,2,'Josh','Szczesny','Ging',61),(298,4,'January','Mcgoff','Vanalstine',62),(299,5,'Rex','Kuszlyk','Rudeen',62),(300,6,'Tracey','Enock','Felonia',62),(301,1,'Alisa','Dyle','Lembcke',62),(302,1,'Christal','Onukogu','Furubotten',62),(303,4,'Blanche','Yott','Annino',63),(304,5,'Ismael','Vera','Kiflezghie',63),(305,6,'Hector','Crognale','Connell',63),(306,1,'Suzanne','Heybrock','Ape',63),(307,1,'Luciana','Larita','Ecord',63),(308,1,'Danyel','Pettiford','Feliz',63),(309,4,'Tammie','Lampros','Pillitteri',64),(310,5,'Kory','Dumlao','Vandeusen',64),(311,6,'Zackary','Sjolander','Mehling',64),(312,1,'Candace','Neuenswander','Borgert',64),(313,1,'Aiko','Molleur','Beserra',64),(314,4,'Grisel','Lichtman','Britcher',65),(315,5,'Glenn','Lennan','Scandalios',65),(316,6,'Jasper','Dixie','Woodley',65),(317,2,'Mack','Joun','Nagler',65),(318,4,'James','Lavongsar','Branyan',66),(319,5,'Darrel','Aveline','Wick',66),(320,6,'Jackson','Xang','Laurino',66),(321,2,'Chad','Ratzloff','Ballengee',66),(322,2,'Peter','Metzler','Pettie',66),(323,4,'Jana','Keawe','Fajardo',67),(324,5,'Grover','Veeder','Tolden',67),(325,6,'Danilo','Hawthorne','Rumrill',67),(326,1,'Kera','Hartly','Burrichter',67),(327,1,'Blanch','Leek','Ralph',67),(328,1,'Adelia','Rositano','Brodhag',67),(329,4,'Kassandra','Stabile','Keasey',68),(330,5,'Ike','Sanipasi','Cawley',68),(331,6,'Norris','Mathiason','Urso',68),(332,2,'Herman','Corn','Hennick',68),(333,2,'Neville','Combass','Matysiak',68),(334,2,'Renato','Hawke','Antila',68),(335,4,'Andre','Clacher','Smarr',69),(336,5,'Brent','Winikoff','Rutter',69),(337,6,'Carl','Stamey','Sembrat',69),(338,2,'Emory','Galper','Cafasso',69),(339,2,'Deon','Tea','Defrance',69),(340,4,'Rosalee','Bowden','Mortland',70),(341,5,'Walton','Sugiki','Waddell',70),(342,6,'Jack','Pietila','Ferencz',70),(343,1,'Rochelle','Haisten','Koeninger',70),(344,1,'Gene','Dagle','Wrinn',70),(345,4,'Leana','Moffa','Fugo',71),(346,5,'Tory','Seabrooks','Bardo',71),(347,6,'Alvin','Speroni','Skeans',71),(348,2,'Lazaro','Tysinger','Pesek',71),(349,2,'Isidro','Sherrick','Sirpilla',71),(350,2,'Clayton','Creggett','Sally',71),(351,4,'Brittany','Theam','Macallister',72),(352,5,'Matthew','Hinz','Quatrevingt',72),(353,6,'Brock','Autovino','Bedar',72),(354,1,'Verdell','Kossmann','Blanzy',72),(355,1,'Sunday','Quince','Waddle',72),(356,1,'Macy','Deskin','Parmelee',72),(357,4,'Maddie','Steagell','Hiestand',73),(358,5,'Cyril','Kinniburgh','Holzem',73),(359,6,'Danilo','Nurmi','Hayne',73),(360,1,'Verna','Factor','Okray',73),(361,1,'Angeles','Hanebutt','Darius',73),(362,4,'Gaylene','Morn','Konger',74),(363,5,'Tony','Orchard','Bichler',74),(364,6,'Martin','Bienenstock','Tukis',74),(365,1,'Violet','Tullison','Burman',74),(366,1,'Ingeborg','Whitmyre','Chabbez',74),(367,1,'Ericka','Guzzardo','Elman',74),(368,4,'Magdalena','Chrzanowski','Dunay',75),(369,5,'Austin','Datri','Beekman',75),(370,6,'Ivory','Bailon','Sgro',75),(371,1,'Halina','Rossotto','Gormanous',75),(372,1,'Vicki','Addo','Boruff',75),(373,4,'Cherish','Hofmans','Boehmke',76),(374,5,'Johnie','Bonomo','Rocher',76),(375,6,'Rodney','Carriveau','Lembo',76),(376,1,'Reita','Cyler','Michello',76),(377,1,'Melody','Beyda','Quiver',76),(378,4,'Albertine','Slotkin','Evangelo',77),(379,5,'Jayson','Bieler','Gallaspy',77),(380,6,'Enoch','Tekell','Boxton',77),(381,1,'Xiomara','Matto','Hysell',77),(382,4,'Pasty','Gerache','Rollind',78),(383,5,'Jasper','Dishong','Voeks',78),(384,6,'Calvin','Licalzi','Dingee',78),(385,1,'Lia','Greenstreet','Morning',78),(386,1,'Shirlee','Avancena','Murnan',78),(387,1,'Maricruz','Oswald','Mackey',78),(388,4,'Tonisha','Cwalinski','Huus',79),(389,5,'Noel','Delatorre','Kahrer',79),(390,6,'Asa','Tomasson','Attard',79),(391,2,'Ivory','Ellworths','Mickels',79),(392,2,'Emory','Tiangco','Lochen',79),(393,4,'Marna','Couchman','Prukop',80),(394,5,'Julio','Deno','Ockey',80),(395,6,'Al','Boustead','Weitz',80),(396,2,'Donnie','Hadesty','Mabray',80),(397,2,'Aaron','Godkin','Osman',80),(398,4,'Tiffiny','Walzier','Comiso',81),(399,5,'Ira','Almstead','Jeffress',81),(400,6,'Ferdinand','Strausbaugh','Garnica',81),(401,2,'Andrew','Yearous','Luebbers',81),(402,2,'Sammie','Dixon','Mehling',81),(403,2,'Ronald','Bronston','Millare',81),(404,4,'Yvone','Belgrade','Cardin',82),(405,5,'Vincenzo','Zumbach','Albro',82),(406,6,'Quincy','Deed','Baldree',82),(407,2,'Stacy','Garraway','Landreth',82),(408,2,'Cornelius','Rodregez','Vaillencourt',82),(409,2,'Fredrick','Bakko','Perona',82),(410,4,'Florance','Vanroekel','Garrard',83),(411,5,'Bruce','Sessom','Popovec',83),(412,6,'Vernon','Sachez','Boever',83),(413,1,'Angie','Chinweze','Kildoo',83),(414,4,'Lourie','Chum','Worsham',84),(415,5,'Mel','Wigington','Groetsch',84),(416,6,'Valentin','Riffee','Ishihara',84),(417,1,'Cleora','Herrick','Verbasco',84),(418,1,'Cordia','Brugger','Reinfeld',84),(419,4,'Shera','Rabelo','Lafayette',85),(420,5,'Reuben','Connelly','Koterba',85),(421,6,'Pierre','Lunn','Grandin',85),(422,1,'Rachele','Bruh','Dotter',85),(423,1,'Macy','Jamar','Solarski',85),(424,1,'Suzann','Cutler','Zielesch',85),(425,4,'Lakita','Laware','Vanhamlin',86),(426,5,'Grover','Debbins','Muyres',86),(427,6,'Shannon','Curbow','Gahl',86),(428,1,'Lona','Mccaddon','Boldizsar',86),(429,1,'Fredda','Vandyck','Ayre',86),(430,1,'Leann','Olesky','Kaufhold',86),(431,4,'Renay','Dennies','Seen',87),(432,5,'Cleo','Lenger','Barrentine',87),(433,6,'Everett','Krusen','Koral',87),(434,2,'Loyd','Branco','Fineberg',87),(435,4,'Toby','Schiefelbein','Tramble',88),(436,5,'Devin','Deglow','Scalet',88),(437,6,'Bruce','Deland','Keels',88),(438,2,'Branden','Fuchser','Bernt',88),(439,2,'Oren','Grenke','Apela',88),(440,4,'Maggie','Spiney','Hofmans',89),(441,5,'Lupe','Autman','Pair',89),(442,6,'Damon','Adrien','Weisinger',89),(443,1,'Scott','Goon','Readinger',89),(444,4,'Lyla','Beseke','Laundry',90),(445,5,'Bill','Reprogle','Brei',90),(446,6,'Ricky','Eley','Wraight',90),(447,1,'Emiko','Baile','Allessio',90),(448,1,'Esmeralda','Rach','Dellapenna',90),(449,1,'Cinda','Garthwaite','Kaleta',90),(450,4,'Erlene','Mossien','Cozart',91),(451,5,'Miles','Imholte','Decourley',91),(452,6,'Keenan','Davito','Ritzman',91),(453,1,'Jennie','Rienzo','Calvo',91),(454,4,'Ona','Nayes','Squeo',92),(455,5,'Lindsay','Taillefer','Honer',92),(456,6,'Hayden','Botta','Pinnix',92),(457,1,'Adela','Sumruld','Bownds',92),(458,1,'Tammy','Suermann','Midcap',92),(459,4,'Roxana','Krieg','Fegette',93),(460,5,'Jayson','Dashiell','Billegas',93),(461,6,'Weston','Mcowen','Prukop',93),(462,1,'Lettie','Sappington','Lacson',93),(463,4,'Tomeka','Effler','Heffron',94),(464,5,'Jacinto','Gregan','Applin',94),(465,6,'Kory','Eckblad','Maret',94),(466,1,'Nettie','Jakubek','Gremler',94),(467,4,'Debbi','Kalama','Olivares',95),(468,5,'Devin','Rakestraw','Burkhammer',95),(469,6,'Buford','Shima','Blatchford',95),(470,2,'Ferdinand','Keglovic','Acuff',95),(471,4,'Carita','Awbrey','Hamiss',96),(472,5,'Agustin','Piccioni','Reagle',96),(473,6,'Kenneth','Hedtke','Mallak',96),(474,2,'Efren','Seaney','Timpson',96),(475,4,'Georgiana','Chitwood','Stormo',97),(476,5,'Bradly','Whirley','Josten',97),(477,6,'Carlos','Maedke','Pax',97),(478,2,'Chi','Pexton','Glaubke',97),(479,4,'Rosann','Sherling','Maceda',98),(480,5,'Robin','Koehler','Zarzuela',98),(481,6,'Drew','Scudder','Torrens',98),(482,2,'Hal','Mcadoo','Bable',98),(483,4,'Delilah','Bario','Cleveland',99),(484,5,'Weldon','Clippard','Miyasaki',99),(485,6,'Doug','Gregoroff','Kriegshauser',99),(486,1,'Regan','Branter','Peasel',99),(487,1,'Kelsie','Nikach','Whiddon',99),(488,4,'Audrie','Tirk','Mlenar',100),(489,5,'Perry','Odhner','Rummler',100),(490,6,'Ezra','Patchell','Crosiar',100),(491,2,'Wyatt','Beaumonte','Tellman',100),(492,2,'Moises','Wubbel','Schuetze',100),(493,4,'Brooke','Schuppert','Sankaran',101),(494,5,'Calvin','Joosten','Aye',101),(495,6,'Theo','Cabebe','Becklund',101),(496,1,'Maryann','Padol','Boeck',101),(497,4,'Zita','Enns','Yslava',102),(498,5,'Clifton','Koenigsfeld','Inafuku',102),(499,6,'Ward','Mork','Terhark',102),(500,1,'Selina','Buccieri','Eden',102),(501,1,'Darby','Roehrig','Cree',102),(502,4,'Alexandria','Strandberg','Gjorven',103),(503,5,'Darron','Nanni','Cudd',103),(504,6,'Derek','Scelsi','Tiede',103),(505,1,'Elna','Slaght','Mccrane',103),(506,4,'Georgia','Graczyk','Greening',104),(507,5,'Carol','Waldren','Cereceres',104),(508,6,'Kory','Katis','Mackey',104),(509,2,'Ryan','Calvary','Kenngott',104),(510,2,'Alvin','Zanchez','Lafevre',104),(511,4,'Tiara','Hirz','Cupe',105),(512,5,'Gus','Catalina','Gorham',105),(513,6,'Philip','Adkerson','Mcduff',105),(514,2,'Buford','Seabrooks','Plumber',105),(515,2,'Delbert','Bohan','Scheidel',105),(516,4,'Cindy','Sauber','Bostian',106),(517,5,'Sebastian','Mersinger','Heilig',106),(518,6,'Oswaldo','Ortmeyer','Harper',106),(519,1,'Mireya','Carrino','Mollicone',106),(520,4,'Cathern','Freitas','Guinther',107),(521,5,'Maxwell','Kachel','Coyier',107),(522,6,'Oswaldo','Zakes','Feris',107),(523,2,'Irving','Garofolo','Mcclod',107),(524,4,'Lashon','Rawlings','Lafevers',108),(525,5,'Fred','Takai','Dagel',108),(526,6,'Kendrick','Siebens','Lowek',108),(527,2,'Doug','Vreugdenhil','Hames',108),(528,2,'Josue','Whittley','Eldrige',108),(529,4,'Bernetta','Crisman','Dari',109),(530,5,'Jaime','Minus','Touhey',109),(531,6,'Matt','Wenner','Orn',109),(532,2,'Nicky','Sieving','Simoneau',109),(533,4,'Aisha','Schuelke','Sobota',110),(534,5,'Glenn','Mika','Valintine',110),(535,6,'Hipolito','Heatley','Cardonia',110),(536,1,'Michelina','Battis','Bhalla',110),(537,4,'Maryanna','Dyke','Horney',111),(538,5,'Merlin','Layher','Furney',111),(539,6,'Johnny','Massey','Quincel',111),(540,1,'Kamala','Heitland','Tyacke',111),(541,1,'Lucie','Rastelli','Fosser',111),(542,1,'Maude','Kemple','Smutzler',111),(543,4,'Sarina','Sawney','Dawley',112),(544,5,'Daron','Wiginton','Camancho',112),(545,6,'Delmer','Gremler','Manfredini',112),(546,1,'Kyra','Bisby','Russi',112),(547,4,'Olimpia','Landborg','Gehris',113),(548,5,'Roy','Felsted','Mundschau',113),(549,6,'Donovan','Sette','Toala',113),(550,2,'Ronald','Shindorf','Tewa',113),(551,4,'Hiedi','Gruver','Hamett',114),(552,5,'Israel','Ferron','Battis',114),(553,6,'Tory','Mordue','Sandholm',114),(554,2,'Keven','Belko','Gugliotti',114),(555,4,'Regan','Polemeni','Leandry',115),(556,5,'Hayden','Perone','Wetherington',115),(557,6,'Billy','Falor','Frazzano',115),(558,1,'Sofia','Musumeci','Geddes',115),(559,1,'Laci','Schilawski','Scharpman',115),(560,4,'Yaeko','Buntjer','Partlow',116),(561,5,'Donnie','Turdo','Loarca',116),(562,6,'Timothy','Hussy','Craiger',116),(563,1,'Winifred','Mcclaine','Athans',116),(564,1,'Martin','Carlson','Pinion',116),(565,4,'Angelena','Sieligowski','Griesbaum',117),(566,5,'Prince','Kloska','Toepel',117),(567,6,'Linwood','Alfero','Santellan',117),(568,1,'Anne','Pardoe','Iwami',117),(569,1,'Shu','Huff','Lachowicz',117),(570,4,'Christal','Italiano','Cuckler',118),(571,5,'Alonso','Thorman','Garder',118),(572,6,'Genaro','Merten','Lace',118),(573,1,'Lottie','Garfinkle','Drish',118),(574,1,'Tobi','Braunstein','Burnsed',118),(575,1,'Elma','Fontenelle','Kucel',118),(576,4,'Sherita','Dolberry','Gurry',119),(577,5,'Mervin','Kruppa','Vriens',119),(578,6,'Ferdinand','Medaries','Tole',119),(579,1,'Tanika','Vipperman','Majeske',119),(580,1,'Cristi','Donald','Brigance',119),(581,1,'Cierra','Hennard','Essery',119),(582,4,'Lilian','Lehew','Kalmen',120),(583,5,'Willy','Steerman','Alessandro',120),(584,6,'Rafael','Harlan','Sadri',120),(585,1,'Minerva','Helling','Oroz',120),(586,1,'Judy','Hazelip','Wence',120),(587,4,'Stacia','Tlatelpa','Jaradat',121),(588,5,'Kendrick','Kosorog','Norkus',121),(589,6,'Edwardo','Coryea','Hodes',121),(590,1,'Kandis','Machlin','Tronaas',121),(591,1,'Alix','Almond','Siskey',121),(592,4,'Saran','Ngov','Burrill',122),(593,5,'Hans','Baughn','Doty',122),(594,6,'Terence','Wackerbarth','Cords',122),(595,2,'Roscoe','Martinez','Holtgrefe',122),(596,2,'Angel','Wurster','Sanda',122),(597,4,'Richelle','Bukowski','Messa',123),(598,5,'Andre','Callendar','Sarraga',123),(599,6,'Randell','Karjala','Frediani',123),(600,2,'Stewart','Arenson','Uniacke',123),(601,2,'Ignacio','Werthman','Armillei',123),(602,2,'Domingo','Lanze','Staberg',123),(603,4,'Florinda','Henthorn','Hannem',124),(604,5,'Leonard','Tudman','Rosel',124),(605,6,'Thurman','Mcvoy','Giang',124),(606,2,'Houston','Krzywicki','Hannold',124),(607,2,'Earle','Witherbee','Becker',124),(608,4,'In','Doxtater','Melito',125),(609,5,'Kenton','Shirkey','Stroble',125),(610,6,'Xavier','Faggs','Hebner',125),(611,2,'Bo','Vlashi','Peerbolt',125),(612,4,'Maryalice','Rexwinkle','Kalis',126),(613,5,'Emory','Coverdell','Sofia',126),(614,6,'Duncan','True','Corzine',126),(615,1,'Tashia','Castlen','Pierceall',126),(616,4,'Charlie','Miskell','Thraen',127),(617,5,'Glenn','Vovak','Ballmer',127),(618,6,'Grover','Stum','Stagman',127),(619,2,'Genaro','Blady','Decraene',127),(620,4,'Amira','Diffenderfer','Amorello',128),(621,5,'Nicolas','Cafagno','Heidkamp',128),(622,6,'Fredrick','Oliff','Chernay',128),(623,1,'Phyliss','Kleftogiannis','Kaarlela',128),(624,4,'Marquitta','Wrobliski','Aliotta',129),(625,5,'Xavier','Luhmann','Navas',129),(626,6,'Dino','Mithcell','Robella',129),(627,2,'Blaine','Pennig','Kipps',129),(628,4,'Lynette','Amble','Disarufino',130),(629,5,'Edwardo','Evanchyk','Agreste',130),(630,6,'Lazaro','Blakeman','Nikolic',130),(631,2,'Weldon','Halder','Trotochaud',130),(632,4,'Freida','Stephco','Possick',131),(633,5,'Darron','Keyon','Schoessow',131),(634,6,'Guadalupe','Reph','Betties',131),(635,2,'Matthew','Schamel','Proano',131),(636,2,'Will','Meirick','Barze',131),(637,4,'Adriana','Berrocal','Hazy',132),(638,5,'Gavin','Maggard','Brofft',132),(639,6,'Marcos','Piecuch','Wakefield',132),(640,1,'Lela','Rudzinski','Bierner',132),(641,1,'Zoe','Jaussen','Ludgate',132),(642,4,'Cathy','Murdoch','Donnely',133),(643,5,'Asa','Poelman','Ohta',133),(644,6,'Jerry','Schoffstall','Monares',133),(645,2,'Will','Damico','Lalone',133),(646,2,'Alexis','Rossin','Mozdzierz',133),(647,4,'Hang','Pettus','Detering',134),(648,5,'Isidro','Behen','Oxborrow',134),(649,6,'Domingo','Polansky','Booze',134),(650,2,'Kenneth','Tinnell','Poppenhagen',134),(651,2,'Lou','Minus','Adie',134),(652,4,'Virgen','Irizarri','Malueg',135),(653,5,'Sammy','Sherles','Seier',135),(654,6,'Rolf','Thistle','Prosser',135),(655,2,'Paul','Phinazee','Jarriett',135),(656,4,'Sam','Mckinney','Rase',136),(657,5,'Winfred','Kaut','Smoley',136),(658,6,'Bennie','Lecato','Isaacson',136),(659,2,'Lacy','Dezarn','Milholland',136),(660,4,'Erna','Knoepke','Varron',137),(661,5,'Jere','Coan','Willmott',137),(662,6,'Paul','Cleverly','Hongisto',137),(663,1,'Joleen','Hempel','Fetters',137),(664,1,'Tula','Rubloff','Stepter',137),(665,1,'Raymond','Olson','Gadbury',137),(666,4,'Zena','Wisz','Steffenhagen',138),(667,5,'Jesus','Hunsinger','Manly',138),(668,6,'Darin','Araujo','Dannunzio',138),(669,2,'Roman','Bering','Hentges',138),(670,4,'Gertude','Tresch','Koppen',139),(671,5,'Antony','Hirschy','Wicklund',139),(672,6,'Daren','Pillot','Fjetland',139),(673,2,'Randal','Wrights','Klavetter',139),(674,2,'Randal','Pavy','Shine',139),(675,2,'Oswaldo','Glowski','Napoles',139),(676,4,'Dionne','Bottone','Elhassan',140),(677,5,'Wilton','Ciccolini','Dekeyzer',140),(678,6,'Julius','Callaham','Coachman',140),(679,1,'Marry','Pesto','Golder',140),(680,1,'Love','Cardeiro','Woodrum',140),(681,1,'Jackeline','Pfleiderer','Garnes',140),(682,4,'Evie','Chvilicek','Zegarelli',141),(683,5,'Hector','Englund','Mahanna',141),(684,6,'Mac','Bolebruch','Weyers',141),(685,1,'Mirian','Vea','Corderman',141),(686,1,'Aline','Lillich','Kouns',141),(687,4,'Sheryl','Huelsman','Balling',142),(688,5,'Lino','Buroker','Stodgell',142),(689,6,'Adam','Holtzer','Printz',142),(690,1,'Claribel','Sitterson','Patry',142),(691,4,'Venice','Bisges','Buxton',143),(692,5,'Johnny','Macdonell','Trometter',143),(693,6,'August','Rotenberry','Ludera',143),(694,2,'Tyrell','Mccarns','Brocklebank',143),(695,2,'Walker','Frija','Arnwine',143),(696,4,'Tracee','Kagey','Bloom',144),(697,5,'Rosario','Wida','Hetz',144),(698,6,'Martin','Manatt','Kosak',144),(699,2,'Rickey','Camposano','Villaluz',144),(700,2,'Moshe','Sheller','Upole',144),(701,2,'Neville','Zwicker','Forslund',144),(702,4,'Antonio','Degollado','Catena',145),(703,5,'Lane','Blackaby','Basil',145),(704,6,'Kevin','Angelilli','Iltzsch',145),(705,1,'Marlys','Ranieri','Enzor',145),(706,1,'Avelina','Raco','Halsall',145),(707,1,'Neta','Baillie','Handcock',145),(708,4,'Charity','Vessar','Belen',146),(709,5,'Devin','Geanopulos','All',146),(710,6,'Donn','Melillo','Knilands',146),(711,1,'Penni','Arichabala','Folkman',146),(712,4,'Zandra','Arollo','Masenten',147),(713,5,'Landon','Antinarelli','Chianese',147),(714,6,'Walter','Baich','Elswick',147),(715,1,'Jaimee','Ohlsen','Wittig',147),(716,1,'Valerie','Floros','Bellis',147),(717,4,'Samatha','Rumpf','Cork',148),(718,5,'Ernesto','Travis','Werline',148),(719,6,'Damon','Cossa','Miglorie',148),(720,1,'Katina','Rehmer','Pursley',148),(721,1,'Shizue','Mracek','Mclay',148),(722,1,'Mayola','Kaua','Rafiq',148),(723,4,'Shana','Ober','Buol',149),(724,5,'Francis','Bussom','Cutno',149),(725,6,'Dong','Naeher','Rambousek',149),(726,1,'Michell','Santilukka','Dobkin',149),(727,1,'Cristi','Yaegle','Sexauer',149),(728,1,'Shery','Daschofsky','Cerrello',149),(729,4,'Lindsey','Ziencina','Dubson',150),(730,5,'Isaiah','Schnider','Aispuro',150),(731,6,'Ramiro','Novinger','Volk',150),(732,2,'Ira','Drabant','Dalmau',150),(733,2,'Zackary','Gauci','Platter',150),(734,4,'Theo','Tosto','Avelino',151),(735,5,'Lucas','Guasp','Lucken',151),(736,6,'Reyes','Algier','Acosto',151),(737,2,'Clyde','Staebler','Gochanour',151),(738,2,'Alan','Tomb','Harlan',151),(739,4,'Aaron','Pollutro','Reefer',152),(740,5,'Tyrell','Wolk','Taney',152),(741,6,'Isreal','Bendig','Samoyoa',152),(742,2,'Renato','Mcglew','Grajek',152),(743,4,'Winifred','Heydel','Tartaglia',153),(744,5,'Garfield','Merlette','Goldade',153),(745,6,'Terry','Fleischner','Coates',153),(746,1,'Shantel','Sperka','Jagielski',153),(747,1,'Gene','Duensing','Marchionni',153),(748,4,'Lyndia','Seecharan','Ruppert',154),(749,5,'Rickey','Ishman','Ezell',154),(750,6,'Jim','Rico','Dehne',154),(751,1,'Minh','Kovarik','Kardas',154),(752,1,'Melony','Meginnes','Muss',154),(753,1,'Han','Isgur','Shoun',154),(754,4,'Xuan','Ide','Bonanni',155),(755,5,'Marco','Tromba','Buzzanca',155),(756,6,'Kent','Berbes','Gaut',155),(757,2,'Cyril','Quarnstrom','Kincaide',155),(758,2,'Paul','Rosol','Rudell',155),(759,4,'Ariane','Leners','Parris',156),(760,5,'Keenan','Colder','Teskey',156),(761,6,'Alden','Haggar','Smallman',156),(762,1,'Rossana','Heagy','Stevener',156),(763,1,'Rose','Waley','Nori',156),(764,4,'Hope','Bultema','Minutillo',157),(765,5,'Leif','Abrell','Cerroni',157),(766,6,'Markus','Villescas','Kellaway',157),(767,2,'Whitney','Yamashiro','Scates',157),(768,2,'Hoyt','Hillan','Zmuda',157),(769,4,'Maudie','Feyen','Mingioni',158),(770,5,'Graham','Fyffe','Holtsclaw',158),(771,6,'Chi','Leclear','Geibel',158),(772,1,'Karoline','Swinson','Brownsword',158),(773,1,'Johnsie','Sevy','Verges',158),(774,4,'Britany','Dastrup','Zakarian',159),(775,5,'Mckinley','Nemzek','Lomack',159),(776,6,'Herb','Arbeiter','Dielman',159),(777,2,'Kasey','Mound','Ligget',159),(778,4,'Kathyrn','Butter','Kist',160),(779,5,'Max','Ramesh','Junes',160),(780,6,'Stephan','Copus','Bihl',160),(781,1,'Julienne','Garwin','Gonzelas',160),(782,1,'Minerva','Staffen','Kostick',160),(783,4,'Danille','Fineran','Sharps',161),(784,5,'Ahmad','Kahal','Citroni',161),(785,6,'Mickey','Whiddon','Vitek',161),(786,2,'Napoleon','Newburn','Sterns',161),(787,2,'Scottie','Belnap','Arriaga',161),(788,2,'Pete','Okel','Hauber',161),(789,4,'Latonia','Jurkovich','Robichard',162),(790,5,'Devin','Golds','Guarnieri',162),(791,6,'Vernon','Waage','Cleghorn',162),(792,1,'Retha','Lenzini','Wesolick',162),(793,1,'Tambra','Millstein','Sandles',162),(794,4,'Brittanie','Daigle','Flicek',163),(795,5,'Aaron','Messina','Kovack',163),(796,6,'Abram','Klinger','Glockner',163),(797,2,'Bruno','Holdorf','Sampang',163),(798,4,'Cathryn','Brunfield','Tomme',164),(799,5,'Dan','Cram','Nipps',164),(800,6,'Randell','Mugge','Fingerman',164),(801,1,'Melony','Feulner','Hulsman',164),(802,1,'Joellen','Liendo','Morefield',164),(803,4,'Willette','Dolmajian','Kasper',165),(804,5,'Julius','Spreng','Clawson',165),(805,6,'Lino','Wittrup','Hoaglin',165),(806,2,'Erik','Barile','Pangle',165),(807,4,'Reta','Shido','Bulan',166),(808,5,'Alonso','Lehtinen','Hnot',166),(809,6,'Lemuel','Stonebarger','Edgin',166),(810,1,'Reynalda','Landor','Koeck',166),(811,1,'Tera','Heidtbrink','Leahey',166),(812,4,'Marta','Vandekieft','Skalak',167),(813,5,'Tyrell','Thames','Jendras',167),(814,6,'Eloy','Ensell','Brough',167),(815,1,'Robbyn','Woulard','Schultz',167),(816,1,'Salina','Unterzuber','Irving',167),(817,4,'Anette','Mccathran','Humbles',168),(818,5,'Abraham','Taunton','Sandate',168),(819,6,'Les','Berni','Bognuda',168),(820,1,'Misti','Herlong','Going',168),(821,4,'Fredericka','Varuzzo','Schehr',169),(822,5,'Shaun','Pravata','Vignarath',169),(823,6,'Bruno','Pasto','Marushia',169),(824,1,'Lurlene','Maushardt','Stuesse',169),(825,4,'Veola','Wendte','Ihrig',170),(826,5,'Dong','Heinandez','Brueck',170),(827,6,'Freeman','Jamal','Jolls',170),(828,1,'Margarette','Rea','Printz',170),(829,4,'Sophia','Eagen','Meirick',171),(830,5,'Guillermo','Tutas','Gallishaw',171),(831,6,'Francisco','Pailthorpe','Beyea',171),(832,1,'Shonna','Robeson','Duane',171),(833,4,'Ardell','Manino','Pleet',172),(834,5,'Guadalupe','Parone','Jordon',172),(835,6,'Rosario','Pounds','Lasane',172),(836,1,'Latonia','Cortez','Pavone',172),(837,1,'Dion','Leisey','Wedman',172),(838,4,'Lina','Sampang','Zolocsik',173),(839,5,'Rodolfo','Jaegers','Kears',173),(840,6,'Vicente','Himelstein','Lesley',173),(841,2,'Arlie','Hendershott','Cartez',173),(842,2,'Joseph','Mackowiak','Remey',173),(843,4,'Vannessa','Wollman','Burrichter',174),(844,5,'Vernon','Casada','Olshan',174),(845,6,'Josef','Matsui','Macola',174),(846,1,'Rina','Goodsite','Duemmel',174),(847,1,'Renae','Chaligoj','Mccollum',174),(848,4,'Deidre','Jupiter','Acy',175),(849,5,'Daren','Sieger','Engberg',175),(850,6,'Sherman','Mccartney','Rooker',175),(851,2,'Calvin','Tuorto','Dumesnil',175),(852,4,'Aracelis','Piatek','Figueiras',176),(853,5,'Rodolfo','Swallows','Heimark',176),(854,6,'Rigoberto','Eveleigh','Mclaine',176),(855,2,'Waylon','Scullawl','Weirauch',176),(856,4,'Lenita','Poster','Henretta',177),(857,5,'Phillip','Moodie','Gojmerac',177),(858,6,'Gus','Voth','Bluth',177),(859,2,'Zachery','Tritto','Drungo',177),(860,2,'Lanny','Companion','Archut',177),(861,4,'Tammera','Sozio','Adloff',178),(862,5,'Mervin','Falconio','Rodberg',178),(863,6,'Jacinto','Stamer','Balcerzak',178),(864,2,'Carmen','Kvaternik','Lamoreux',178),(865,2,'Waylon','Brandorff','Karwoski',178),(866,4,'Sherita','Gustafson','Breitbach',179),(867,5,'Roland','Penninger','Tuschhoff',179),(868,6,'Alvaro','Haab','Desha',179),(869,1,'Athena','Michalowski','Eberts',179),(870,1,'Carrol','Maroni','Mcgarrah',179),(871,4,'Pam','Kastens','Hadesty',180),(872,5,'Miles','Secky','Seminario',180),(873,6,'Hoyt','Burtschi','Clunie',180),(874,1,'Cecelia','Stears','Munhall',180),(875,4,'Latosha','Lewandowsky','Dekenipp',181),(876,5,'Long','Laurange','Mcgorry',181),(877,6,'Grover','Bailiff','Guedjian',181),(878,1,'Nu','Cujas','Huus',181),(879,1,'Sebrina','Sigala','Foglesong',181),(880,1,'Chantelle','Waltos','Kocab',181),(881,4,'Terra','Lefton','Introini',182),(882,5,'Garret','Lohman','Laforest',182),(883,6,'Josef','Nicolaus','Gorglione',182),(884,2,'Malcolm','Petrouits','Krome',182),(885,2,'Weston','Rach','Honn',182),(886,4,'Anika','Shatzer','Magallanez',183),(887,5,'Claudio','Bruffee','Licor',183),(888,6,'Elvis','Posnick','Redemer',183),(889,2,'Tommy','Marsh','Channell',183),(890,2,'Hollis','Scanio','Noriega',183),(891,4,'Ewa','Fergoson','Jobes',184),(892,5,'Valentin','Rhode','Pinion',184),(893,6,'Weston','Maglioli','Hett',184),(894,1,'Kristyn','Mckearin','Beaudreau',184),(895,1,'Inocencia','Hairster','Tarbell',184),(896,4,'Delorse','Lovig','Reveles',185),(897,5,'Hank','Delfi','Dekrey',185),(898,6,'Leigh','Matusiewicz','Ausby',185),(899,2,'Freeman','Stange','Traynham',185),(900,4,'Blythe','Yopp','Hofe',186),(901,5,'Alva','Laplant','Saluto',186),(902,6,'Bryce','Varquez','Verigan',186),(903,1,'Zella','Moisa','Dubin',186),(904,4,'Ollie','Charvet','Fallon',187),(905,5,'Carlos','Pagels','Jiron',187),(906,6,'Lee','Ribsamen','Reicks',187),(907,2,'Lorenzo','Clucas','Gossett',187),(908,4,'Angela','Cardon','Eastmond',188),(909,5,'Irving','So','Spoerl',188),(910,6,'Sid','Bucknell','Mccurren',188),(911,2,'Thurman','Politi','Gedo',188),(912,4,'Fredda','Fuse','Loeser',189),(913,5,'Stevie','Fleischhacker','Pfohl',189),(914,6,'Rolando','Bechler','Gilden',189),(915,1,'Kendra','Hathaway','Darosa',189),(916,1,'Michelina','Norsworthy','Potthoff',189),(917,1,'Josie','Butta','Diamante',189),(918,4,'Liane','Utsler','Eichberg',190),(919,5,'Rolando','Paulseth','Ceranski',190),(920,6,'Ahmad','Reilly','Goecke',190),(921,1,'Katharine','Haessly','Sheler',190),(922,4,'Irish','Mordecai','Loker',191),(923,5,'Leandro','Poties','Miran',191),(924,6,'Gus','Blazon','Taj',191),(925,2,'Mohammed','Russwurm','Schlagel',191),(926,4,'Quyen','Burtch','Bolda',192),(927,5,'Homer','Hotaki','Cobham',192),(928,6,'Douglass','Koenigsman','Mcgunnigle',192),(929,2,'Kim','Urik','Gamberg',192),(930,2,'Peter','Rosati','Escutia',192),(931,2,'Mario','Pendergrass','Risha',192),(932,4,'Macie','Tienda','Cipolla',193),(933,5,'Hosea','Mcclee','Merel',193),(934,6,'Antony','America','Begor',193),(935,1,'Winnie','Fahrendorff','Ballantine',193),(936,1,'Amie','Cabrera','Atchley',193),(937,1,'Caridad','Abruzzino','Frankford',193),(938,4,'Carlos','Gilbert','Beaudet',194),(939,5,'Emil','Limes','Matsen',194),(940,6,'Michel','Woolard','Schubert',194),(941,2,'Aubrey','Onkst','Amigo',194),(942,4,'Breanna','Kindl','Shimizu',195),(943,5,'Scot','Turinetti','Wolzen',195),(944,6,'Elden','Herre','Kerksiek',195),(945,2,'Randall','Jarchow','Cothren',195),(946,4,'Kathrin','Dimpson','Hetland',196),(947,5,'Ferdinand','Brendlinger','Left',196),(948,6,'Dalton','Caterino','Andalora',196),(949,2,'Mathew','Lett','Sternberger',196),(950,2,'Julius','Waldock','Koonz',196),(951,4,'Joannie','Maleszka','Andelman',197),(952,5,'Bryce','Geiselman','Riggott',197),(953,6,'Clayton','Calandra','Zaccaria',197),(954,2,'Mel','Sparhawk','Parisian',197),(955,4,'Clarice','Watt','Scherrer',198),(956,5,'Weldon','Matrey','Hebsch',198),(957,6,'Hector','Waxman','Komp',198),(958,2,'Norris','Brittman','Sowle',198),(959,2,'Rene','Bosley','Izzi',198),(960,4,'Marcella','Honer','Aery',199),(961,5,'Genaro','Carothers','Agtarap',199),(962,6,'Zack','Watanabe','Parrigan',199),(963,2,'Gilbert','Perking','Rinkus',199),(964,2,'Ezra','Hummel','Harre',199),(965,4,'Hilaria','Brocious','Bires',200),(966,5,'Garry','Mcleese','Bialik',200),(967,6,'Winston','Blackshire','Coggins',200),(968,2,'Joaquin','Szeto','Fuell',200),(969,2,'Jim','Flahive','Greek',200),(970,2,'Hubert','Roadcap','Trainor',200);
/*!40000 ALTER TABLE `dependents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dutydetails`
--

DROP TABLE IF EXISTS `dutydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dutydetails` (
  `DID` int(11) NOT NULL AUTO_INCREMENT,
  `AID` int(11) DEFAULT NULL,
  `TI_hh` int(2) unsigned zerofill DEFAULT NULL,
  `TI_mm` int(2) unsigned zerofill DEFAULT NULL,
  `TI_period` varchar(3) DEFAULT NULL,
  `TO_hh` int(2) unsigned zerofill DEFAULT NULL,
  `TO_mm` int(2) unsigned zerofill DEFAULT NULL,
  `TO_period` varchar(3) DEFAULT NULL,
  `Mon` int(1) unsigned DEFAULT NULL,
  `Tue` int(1) unsigned DEFAULT NULL,
  `Wed` int(1) unsigned DEFAULT NULL,
  `Thu` int(1) unsigned DEFAULT NULL,
  `Fri` int(1) unsigned DEFAULT NULL,
  `Sat` int(1) unsigned DEFAULT NULL,
  `Sun` int(1) unsigned DEFAULT NULL,
  `DStatus` int(1) unsigned DEFAULT NULL,
  `minutediff` int(11) DEFAULT NULL,
  `TO_actual_hh` int(2) unsigned zerofill DEFAULT NULL,
  `TO_actual_mm` int(2) unsigned zerofill DEFAULT NULL,
  `TO_actual_period` varchar(3) DEFAULT NULL,
  `date_effective` datetime DEFAULT NULL,
  `date_dismissal` datetime DEFAULT NULL,
  `dismissedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`DID`),
  KEY `Assignment-Duty_idx` (`AID`),
  CONSTRAINT `Assignment-Duty` FOREIGN KEY (`AID`) REFERENCES `sduty_assignment` (`AID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dutydetails`
--

LOCK TABLES `dutydetails` WRITE;
/*!40000 ALTER TABLE `dutydetails` DISABLE KEYS */;
INSERT INTO `dutydetails` VALUES (1,23,01,00,'AM',09,00,'AM',1,1,1,1,1,1,1,1,660,12,00,'PM','2017-09-01 00:00:00','2017-10-18 00:00:00',NULL),(2,22,01,00,'AM',09,00,'AM',1,1,1,1,1,1,1,1,660,12,00,'PM','2017-09-01 00:00:00','2017-11-15 00:00:00',NULL),(3,33,01,00,'AM',09,00,'AM',1,1,1,1,1,1,1,2,480,09,00,'AM','2017-09-01 00:00:00','2017-09-01 00:00:00','2017-09-08 18:01:57'),(4,32,01,00,'AM',09,00,'AM',1,1,1,1,1,1,1,1,480,09,00,'AM','2017-09-01 00:00:00','2017-11-15 00:00:00',NULL),(5,13,01,00,'AM',09,00,'AM',1,1,1,1,1,0,0,1,480,09,00,'AM','2017-09-01 00:00:00','2017-11-15 00:00:00',NULL),(6,31,01,00,'AM',09,00,'AM',1,1,1,1,1,0,0,1,480,09,00,'AM','2017-09-01 00:00:00','2017-11-15 00:00:00',NULL),(7,6,01,00,'AM',09,00,'AM',1,1,1,1,1,1,1,1,480,09,00,'AM','2017-09-01 00:00:00','2017-11-15 00:00:00',NULL),(8,21,01,00,'AM',09,00,'AM',1,1,1,1,1,1,1,1,480,09,00,'AM','2017-09-01 00:00:00','2017-11-15 00:00:00',NULL),(9,33,01,00,'AM',09,00,'AM',1,1,1,0,1,1,1,1,480,09,00,'AM','2017-09-08 00:00:00','2017-10-25 00:00:00',NULL);
/*!40000 ALTER TABLE `dutydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guards`
--

DROP TABLE IF EXISTS `guards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guards` (
  `GID` int(11) NOT NULL AUTO_INCREMENT,
  `FN` varchar(45) DEFAULT NULL,
  `MN` varchar(45) DEFAULT NULL,
  `LN` varchar(45) DEFAULT NULL,
  `GStatus` int(11) DEFAULT NULL,
  `BDate` varchar(45) DEFAULT NULL,
  `Gender` int(11) DEFAULT NULL,
  `Height` varchar(45) DEFAULT NULL,
  `Weight` varchar(45) DEFAULT NULL,
  `Religion` varchar(45) DEFAULT NULL,
  `CivilStatus` int(11) DEFAULT NULL,
  `CellNo` varchar(45) DEFAULT NULL,
  `TelNo` varchar(45) DEFAULT NULL,
  `LicenseNo` varchar(45) DEFAULT NULL,
  `SSS` varchar(45) DEFAULT NULL,
  `TIN` varchar(45) DEFAULT NULL,
  `PhilHealth` varchar(45) DEFAULT NULL,
  `PrevAgency` varchar(45) DEFAULT NULL,
  `PrevAss` varchar(200) DEFAULT NULL,
  `EdAtt` int(11) DEFAULT NULL,
  `Course` varchar(45) DEFAULT NULL,
  `MilitaryTrainings` varchar(200) DEFAULT NULL,
  `EmergencyContact` varchar(45) DEFAULT NULL,
  `EmergencyNo` varchar(45) DEFAULT NULL,
  `gtype` int(1) DEFAULT NULL,
  PRIMARY KEY (`GID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guards`
--

LOCK TABLES `guards` WRITE;
/*!40000 ALTER TABLE `guards` DISABLE KEYS */;
INSERT INTO `guards` VALUES (1,'Kendra','Villa','Garcia',0,'7/2/1991',2,'5 11','105 kg.','Protestant',1,'+63 586 878 3991','212-7719.','09-5378006-4','09-5378006-4','203-122-508','24-540287196-7','Rockwell Automation Inc',NULL,2,NULL,NULL,'Lemuel Mazar','09405624067',0),(2,'Hattie','Casado','Gonzalo',0,'6/4/1980',2,'5 11','78 kg.','Roman Catholic',1,'+63 788 161 8748','212-8973.','09-1775070-8','09-1775070-8','958-607-584','40-672857162-5','RGS Energy Group Inc',NULL,3,NULL,NULL,'Garry Kiester','09686067754',0),(3,'Theresia','Perez','Rodriguez',0,'3/6/1992',2,'5 11','117 kg.','Protestant',1,'+63 580 453 9509','212-6936.','09-5748648-8','09-5748648-8','239-442-534','53-581327423-1','National Commerce Financial Corporation',NULL,2,NULL,NULL,'Max Wicketts','09626704938',0),(4,'Marcella','Mateo','Fernandez',0,'8/4/1977',2,'5 11','75 kg.','Islam',1,'+63 412 302 3661','212-5678.','09-2454578-3','09-2454578-3','235-940-804','80-943195172-7','Lands\' End Inc.',NULL,3,NULL,NULL,'Delbert Guidice','09165311571',0),(5,'Ericka','Salvador','Lopez',0,'4/2/1991',2,'5 11','116 kg.','Islam',1,'+63 647 260 2888','212-4672.','09-2006950-3','09-2006950-3','132-828-295','68-433279276-4','Equity Office Properties Trust',NULL,3,NULL,NULL,'Abram Hemsley','09461684688',0),(6,'Shawnna','Sosa','Martinez',0,'7/25/1983',2,'5 11','115 kg.','Islam',1,'+63 766 563 6908','212-9973.','09-4544495-4','09-4544495-4','266-598-707','48-509458184-7','Cadence Design Systems, Inc.',NULL,3,NULL,NULL,'Wilfredo Gromer','09222739828',0),(7,'Margherita','Herrero','Sanchez',0,'3/24/1973',2,'5 11','109 kg.','Islam',1,'+63 151 392 5188','212-1432.','09-3056529-7','09-3056529-7','726-983-304','24-136793825-0','Safeguard Scientifics Inc.',NULL,3,NULL,NULL,'Dave Gaertner','09284157901',0),(8,'Zenaida','Moreno','Perez',1,'9/2/1987',2,'5 11','81 kg.','Islam',1,'+63 708 996 8626','212-4752.','09-6964795-3','09-6964795-3','982-153-113','28-490058937-7','Maxtor Corporation',NULL,3,NULL,NULL,'Lorenzo Turell','09504477967',0),(9,'Cassandra','Carmona','Gomez',0,'10/12/1979',2,'5 11','95 kg.','Roman Catholic',1,'+63 847 692 4655','212-6578.','09-8289724-6','09-8289724-6','902-859-823','25-977481916-5','Oxford Health Plans Inc',NULL,3,NULL,NULL,'Darrel Brookskennedy','09227688352',0),(10,'Vallie','Rivero','Elezondo',0,'8/11/1997',2,'5 11','110 kg.','Protestant',1,'+63 238 763 2970','212-2524.','09-1918522-2','09-1918522-2','892-701-873','48-403237383-4','DST Systems, Inc.',NULL,3,NULL,NULL,'Tyson Stagner','09727327143',0),(11,'Allyn','Roman','Jimenez',1,'9/22/1991',2,'5 11','94 kg.','Protestant',1,'+63 617 358 6034','212-4821.','09-3503636-0','09-3503636-0','795-443-538','27-159590832-5','Walt Disney Co',NULL,3,NULL,NULL,'Isidro Batterson','09698655975',0),(12,'Margert','Amador','Ruiz',0,'7/23/1990',2,'5 11','88 kg.','Protestant',1,'+63 158 682 2415','212-7486.','09-7714008-0','09-7714008-0','123-250-125','23-631430801-1','Louisiana-Pacific Corporation',NULL,3,NULL,NULL,'Garry Imbriale','09785629135',0),(13,'Erlinda','Varela','Hernandez',0,'4/12/1979',2,'5 11','94 kg.','Protestant',1,'+63 133 298 9239','212-6740.','09-2260641-4','09-2260641-4','858-514-160','94-372421726-4','Host Marriott Corp.',NULL,3,NULL,NULL,'Jaime Faggett','09162910599',0),(15,'Malisa','Bernal','Moreno',1,'11/16/1979',2,'5 11','86 kg.','Islam',1,'+63 346 277 2221','212-7887.','09-2438548-6','09-2438548-6','988-577-177','92-325478457-0','Ames Department Stores, Inc.',NULL,3,NULL,NULL,'Jack Barela','09947996967',0),(16,'Aileen','Estevez','Granis',1,'2/27/1997',2,'5 11','114 kg.','Islam',1,'+63 242 544 3721','212-3463.','09-3299259-4','09-3299259-4','885-271-868','20-145092461-0','Advance Auto Parts, Inc.',NULL,2,NULL,NULL,'Antonia Hernanders','09310312528',0),(17,'Jhepoy','Velazquez','Emperador',0,'1/13/1988',1,'5 11','116 kg.','Islam',1,'+63 801 861 5170','212-5197.','09-3370159-1','09-3370159-1','276-602-324','74-673666410-4','Linens \'n Things Inc.',NULL,2,NULL,NULL,'Richard Holcomb','09118698173',0),(18,'Quyen','Avila','Romero',0,'11/10/1994',1,'5 11','108 kg.','Protestant',1,'+63 465 435 8136','212-6587.','09-5027254-4','09-5027254-4','912-764-256','12-149785201-4','Unified Western Grocers Inc',NULL,2,NULL,NULL,'Napoleon Inglin','09715072301',0),(19,'Carman','Esteve','Gamazo',0,'10/18/1974',1,'5 11','78 kg.','Islam',1,'+63 223 872 9624','212-4533.','09-3077852-7','09-3077852-7','688-500-646','41-639927274-2','H.B. Fuller Company',NULL,2,NULL,NULL,'Elden Venuto','09173246690',0),(20,'Leatha','Quesada','Gutierrez',0,'11/19/1983',2,'5 11','83 kg.','Islam',1,'+63 542 447 2954','212-1846.','09-9632238-3','09-9632238-3','810-487-192','65-733193270-0','Centex Corp.',NULL,2,NULL,NULL,'Omer Earehart','09884024124',0),(21,'Sana','Barroso','Navarro',1,'5/19/1994',1,'5 11','77 kg.','Protestant',1,'+63 173 932 5627','212-3114.','09-9770285-0','09-9770285-0','281-807-591','53-665819171-2','Crompton Corp.',NULL,3,NULL,NULL,'Rudy Hausauer','09843931759',0),(22,'Mellissa','Alarcon','Torres',0,'5/12/1985',2,'5 11','91 kg.','Roman Catholic',1,'+63 344 513 8890','212-8719.','09-4206881-4','09-4206881-4','544-252-978','54-671227514-1','State Street Corp.',NULL,2,NULL,NULL,'Roland Frederick','09564009026',0),(23,'Jaquelyn','Camara','Dominguez',0,'11/12/1994',2,'5 11','101 kg.','Islam',1,'+63 491 580 3923','212-8128.','09-7156113-3','09-7156113-3','502-306-156','60-722540566-0','Markel Corporation',NULL,2,NULL,NULL,'Manual Larabel','09874605845',0),(24,'Elaine','Carrasco','Vazquez',0,'8/15/1972',2,'5 11','108 kg.','Roman Catholic',1,'+63 664 354 7140','212-5390.','09-1577692-1','09-1577692-1','890-702-156','80-368162362-4','Snap-On Inc',NULL,3,NULL,NULL,'Valentin Lanini','09338637867',0),(25,'Maris','Contreras','Ramos',1,'11/18/1994',2,'5 11','104 kg.','Roman Catholic',1,'+63 406 423 6437','212-6116.','09-5596949-5','09-5596949-5','550-369-272','49-348525268-4','Boston Scientific Corporation',NULL,2,NULL,NULL,'Fritz Delatorre','09189458641',0),(26,'Signe','Paredes','Gil',1,'10/5/1996',1,'5 11','96 kg.','Protestant',1,'+63 387 772 8777','212-5644.','09-1580210-0','09-1580210-0','516-200-668','89-651034603-1','Dell Computer Corporation',NULL,2,NULL,NULL,'Francisco Nakamoto','09641666146',0),(27,'Joana','Fuentes','Ramirez',0,'6/22/1979',2,'5 11','103 kg.','Islam',1,'+63 293 604 9473','212-3170.','09-3018801-7','09-3018801-7','309-365-588','93-398139547-4','Alleghany Corporation',NULL,2,NULL,NULL,'Berry Zabielski','09744881029',0),(28,'Sena','Moran','Serrano',1,'6/3/1973',2,'5 11','90 kg.','Roman Catholic',1,'+63 130 980 4047','212-1652.','09-2391945-8','09-2391945-8','927-839-151','95-922134370-3','Pharmacia Corp',NULL,2,NULL,NULL,'Otha Coulthard','09971253998',0),(29,'Reynalda','Garcia','Blanco',0,'7/9/1973',2,'5 11','108 kg.','Protestant',1,'+63 460 201 2843','212-9134.','09-5796047-2','09-5796047-2','575-202-697','17-711369506-2','Ceridian Corp.',NULL,2,NULL,NULL,'Keenan Siskind','09521724882',0),(30,'Waneta','Tomas','Suarez',0,'10/15/1978',2,'5 11','106 kg.','Roman Catholic',1,'+63 294 420 5939','212-2729.','09-8631964-5','09-8631964-5','327-716-789','91-320887270-8','Sierra Pacific Resources',NULL,2,NULL,NULL,'Clayton Laven','09219335471',0),(31,'Ricki','Riera','Molina',0,'3/6/1979',1,'5 11','78 kg.','Islam',1,'+63 981 689 4566','212-4127.','09-3472923-4','09-3472923-4','365-868-734','18-880281782-5','StanCorp Financial Group Inc',NULL,2,NULL,NULL,'Omer Dreier','09780383623',0),(32,'Perry','Montoya','Morales',0,'9/22/1973',1,'5 11','100 kg.','Protestant',1,'+63 276 745 2980','212-2638.','09-3380731-8','09-3380731-8','303-230-452','43-694520801-7','John Hancock Financial Services Inc.',NULL,3,NULL,NULL,'Jerrell Vollucci','09367104239',0),(33,'Emilia','Domenech','Ortega',0,'8/15/1987',2,'5 11','113 kg.','Roman Catholic',1,'+63 332 949 1676','212-3839.','09-9893865-4','09-9893865-4','236-496-467','56-205464893-3','NSTAR',NULL,2,NULL,NULL,'Coleman Blackmoore','09971228065',0),(34,'Beatriz','Ponce','Delgado',0,'4/2/1990',2,'5 11','102 kg.','Roman Catholic',1,'+63 839 283 4259','212-6454.','09-3863301-3','09-3863301-3','363-348-360','69-137207426-6','US Oncology Inc',NULL,3,NULL,NULL,'Zachary Jungers','09850236271',0),(35,'Candy','Andreu','Castro',0,'5/1/1994',2,'5 11','78 kg.','Protestant',1,'+63 292 483 8037','212-1343.','09-4515148-5','09-4515148-5','921-738-554','28-868706234-4','Dean Foods Company',NULL,2,NULL,NULL,'Lemuel Heimerl','09948642560',0),(36,'Ernestine','Quintana','Ortiz',1,'8/16/1997',2,'5 11','103 kg.','Islam',1,'+63 929 439 8089','212-6206.','09-6949635-7','09-6949635-7','712-550-568','53-281795907-4','DQE Inc.',NULL,3,NULL,NULL,'Garfield Desanto','09597641129',0),(37,'Irma','Alvarez','Rubio',0,'10/12/1995',2,'5 11','76 kg.','Roman Catholic',1,'+63 667 441 8467','212-7919.','09-7655628-0','09-7655628-0','135-832-947','69-227940479-0','Berkshire Hathaway Inc.',NULL,2,NULL,NULL,'Kasey Alvernaz','09790688480',0),(38,'Evia','Moral','Marin',0,'2/9/1978',2,'5 11','102 kg.','Roman Catholic',1,'+63 826 565 3171','212-6733.','09-8575622-4','09-8575622-4','267-283-694','36-777493909-7','Vectren Corporation',NULL,3,NULL,NULL,'Eloy Gropper','09556316665',0),(39,'Salley','Santiago','Sanz',0,'11/24/1996',2,'5 11','105 kg.','Protestant',1,'+63 236 133 1151','212-4627.','09-2762661-6','09-2762661-6','808-313-219','84-593972821-1','Black Hills Corporation',NULL,3,NULL,NULL,'Normand Angelo','09678510871',0),(40,'Jay-ar','Santos','Arcinas',0,'3/27/1984',1,'5 11','90 kg.','Islam',1,'+63 434 798 4664','212-3076.','09-7838544-8','09-7838544-8','997-498-316','70-259755521-4','Georgia Gulf Corporation',NULL,2,NULL,NULL,'Terrence Fickle','09490793267',0),(41,'Laurice','Pozo','Iglesias',0,'1/25/1986',2,'5 11','116 kg.','Protestant',1,'+63 196 616 5685','212-3432.','09-4431185-5','09-4431185-5','863-766-982','67-465225882-1','Stanley Works',NULL,3,NULL,NULL,'Mckinley Cardoza','09612974015',0),(42,'Ashton','Polo','Medina',0,'7/3/1986',1,'5 11','114 kg.','Islam',1,'+63 169 222 6731','212-4467.','09-8356721-3','09-8356721-3','904-544-691','44-218783046-4','Target Corp.',NULL,3,NULL,NULL,'Hosea Vanscoter','09229868705',0),(43,'Keren','Llorente','Garrido',1,'3/7/1974',2,'5 11','92 kg.','Islam',1,'+63 343 663 9511','212-5847.','09-6646558-7','09-6646558-7','856-495-400','72-165899727-5','Reliance Steel & Aluminum Co.',NULL,2,NULL,NULL,'Brice Horsch','09149553130',0),(44,'Alba','Escobar','Santos',0,'6/24/1979',2,'5 11','97 kg.','Protestant',1,'+63 680 137 3950','212-2939.','09-5686937-6','09-5686937-6','850-249-774','35-670486826-1','M & T Bank Corporation',NULL,2,NULL,NULL,'Royce Steinhoff','09976305972',0),(45,'Mike','Ballesteros','Castillo',0,'8/21/1975',1,'5 11','115 kg.','Roman Catholic',1,'+63 709 633 8105','212-1048.','09-1416901-6','09-1416901-6','888-857-528','93-553207745-6','Toys \'R\' Us Inc',NULL,3,NULL,NULL,'Jackson Seacord','09344307089',0),(46,'Berna','Dominguez','Cortes',0,'11/13/1972',2,'5 11','103 kg.','Protestant',1,'+63 636 904 9214','212-1006.','09-3703372-5','09-3703372-5','633-520-302','37-625192334-6','Charter One Financial Inc.',NULL,2,NULL,NULL,'Ferdinand Keneally','09861599331',0),(47,'Antoinette','Vazquez','Lozano',0,'7/5/1992',2,'5 11','103 kg.','Roman Catholic',1,'+63 942 341 4174','212-6089.','09-4832964-6','09-4832964-6','844-239-621','83-301322796-6','CNF Inc.',NULL,2,NULL,NULL,'Jayson Macnaught','09311885089',0),(48,'Araceli','Dela Cruz','Guerrero',0,'8/24/1992',2,'5 11','115 kg.','Protestant',1,'+63 764 131 7633','212-3163.','09-3561055-5','09-3561055-5','133-500-178','51-942159794-8','The Lubrizol Corporation',NULL,3,NULL,NULL,'Sebastian Donavan','09357244085',0),(49,'Joni','Hernando','Cano',0,'7/14/1988',1,'5 11','119 kg.','Roman Catholic',1,'+63 883 503 2648','212-8003.','09-2573601-3','09-2573601-3','658-476-400','53-715538007-8','Circuit City Stores Inc.',NULL,3,NULL,NULL,'Weston Lessor','09986327013',0),(50,'Carman','Mora','Prieto',0,'8/8/1980',1,'5 11','98 kg.','Islam',1,'+63 840 255 7841','212-5514.','09-3983528-8','09-3983528-8','244-209-762','14-586055419-5','Sports Authority Inc',NULL,3,NULL,NULL,'Charley Golida','09372365535',0),(51,'Sybil','Heredia','Mendez',0,'6/11/1973',1,'5 11','118 kg.','Protestant',1,'+63 914 564 5710','212-3974.','09-4529323-2','09-4529323-2','568-638-552','34-204980747-4','Newmont Mining Corporation',NULL,3,NULL,NULL,'Winfred Gerdeman','09277217301',0),(52,'Janina','Dela Fuente','Calvo',0,'8/5/1979',2,'5 11','77 kg.','Roman Catholic',1,'+63 375 350 6792','212-9179.','09-5530805-8','09-5530805-8','227-201-411','55-806814913-4','NTL Incorporated',NULL,2,NULL,NULL,'Anton Caufield','09316007735',0),(53,'Mee','Silva','Cruz',0,'7/13/1987',1,'5 11','109 kg.','Islam',1,'+63 349 650 4547','212-6442.','09-3868311-0','09-3868311-0','811-244-484','38-398976682-1','Gemstar-TV Guide International Inc.',NULL,2,NULL,NULL,'Weston Salatino','09373191990',0),(54,'Chloe','Aragon','Gallego',0,'5/4/1994',2,'5 11','97 kg.','Protestant',1,'+63 558 667 9712','212-2233.','09-1364188-3','09-1364188-3','698-410-272','53-861886284-7','Public Service Enterprise Group Inc.',NULL,2,NULL,NULL,'Trenton Zullo','09549087573',0),(55,'Betsey','Cortes','Vidal',0,'5/16/1987',2,'5 11','78 kg.','Protestant',1,'+63 746 125 4844','212-1753.','09-8415775-2','09-8415775-2','879-542-902','86-624543997-2','Staples Inc',NULL,3,NULL,NULL,'Robin Meneus','09440886980',0),(56,'Ricki','Dela Cruz','Leon',1,'11/21/1987',1,'5 11','78 kg.','Islam',1,'+63 459 781 1940','212-2898.','09-4128258-8','09-4128258-8','401-916-371','71-948785832-6','Temple-Inland Inc',NULL,3,NULL,NULL,'Jayson Friedman','09731807757',0),(57,'Clelia','Herrera','Herrera',0,'9/11/1996',1,'5 11','94 kg.','Protestant',1,'+63 646 970 9186','212-4391.','09-6365381-0','09-6365381-0','672-879-411','54-706572854-3','International Paper Co.',NULL,3,NULL,NULL,'Arnulfo Cool','09587805415',0),(58,'Dinah','Velasco','Marquez',0,'4/8/1980',2,'5 11','95 kg.','Roman Catholic',1,'+63 414 308 8749','212-4274.','09-9946378-3','09-9946378-3','949-677-253','50-329218642-4','New Jersey Resources Corporation',NULL,2,NULL,NULL,'Glenn Hartsook','09680823065',0),(59,'Charleen','Vallejo','Echevarria',1,'7/8/1981',2,'5 11','100 kg.','Islam',1,'+63 165 960 9322','212-7999.','09-2380467-6','09-2380467-6','366-940-221','38-983821380-7','Fidelity National Financial Inc.',NULL,2,NULL,NULL,'Ignacio Rylant','09211164847',0),(60,'Lucille','Cano','Cabrera',0,'8/26/1988',2,'5 11','108 kg.','Islam',1,'+63 487 689 7010','212-4144.','09-6807313-6','09-6807313-6','883-587-222','35-165733283-1','Albertson\'s, Inc.',NULL,3,NULL,NULL,'Hollis Kedia','09814044152',0),(61,'Catheryn','Marti','Flores',1,'7/8/1997',2,'5 11','81 kg.','Islam',1,'+63 855 783 9283','212-9531.','09-2372518-7','09-2372518-7','125-749-380','41-987854859-0','Champion Enterprises Inc.',NULL,3,NULL,NULL,'Rickey Wanda','09849362382',0),(62,'Emelda','Roca','Campos',0,'7/25/1987',2,'5 11','89 kg.','Islam',1,'+63 904 875 5116','212-5878.','09-6287564-2','09-6287564-2','437-625-362','73-236869106-3','Comcast Corp.',NULL,3,NULL,NULL,'Terrell Baumgarten','09492801046',0),(63,'Dixie','Caceres','Vega',0,'11/11/1980',1,'5 11','115 kg.','Protestant',1,'+63 698 483 7902','212-4554.','09-4903348-4','09-4903348-4','621-483-337','72-430596963-0','Atmos Energy Corporation',NULL,3,NULL,NULL,'Adrian Kopiasz','09374166460',0),(64,'Lyla','Gallego','Diez',0,'10/25/1988',2,'5 11','83 kg.','Islam',1,'+63 721 473 3678','212-9160.','09-9457851-8','09-9457851-8','905-820-763','40-193195996-8','AdvancePCS, Inc.',NULL,3,NULL,NULL,'Brice Kluender','09308269830',0),(65,'Maryln','Sola','Fuentes',0,'5/21/1994',2,'5 11','117 kg.','Islam',1,'+63 770 443 5334','212-1050.','09-1625257-1','09-1625257-1','432-274-228','48-618439830-6','Pitney Bowes Inc.',NULL,2,NULL,NULL,'Drew Ricke','09202169095',0),(66,'Mabelle','Galvez','Carrasco',0,'3/6/1980',2,'5 11','92 kg.','Protestant',1,'+63 894 982 5865','212-7962.','09-9628949-4','09-9628949-4','616-967-924','59-989536503-3','Paccar Inc',NULL,2,NULL,NULL,'Jimmy Spurling','09948641287',0),(67,'Trisha','Oliver','Caballero',0,'5/27/1990',2,'5 11','92 kg.','Protestant',1,'+63 271 140 2303','212-6380.','09-6648918-8','09-6648918-8','780-521-582','53-845855823-5','Harley-Davidson Inc.',NULL,2,NULL,NULL,'Randal Hohney','09121675898',0),(68,'Jennette','Castillo','Nieto',0,'1/20/1979',2,'5 11','111 kg.','Protestant',1,'+63 393 300 4020','212-6514.','09-5326808-0','09-5326808-0','957-561-978','55-897387213-6','Tesoro Petroleum Corp.',NULL,2,NULL,NULL,'Daren Stach','09713173619',0),(69,'Pansy','Blasco','Reyes',0,'5/12/1986',2,'5 11','93 kg.','Roman Catholic',1,'+63 166 979 8319','212-5423.','09-8738310-3','09-8738310-3','282-766-970','65-489711590-8','Banta Corporation',NULL,2,NULL,NULL,'Marcel Seger','09193726147',0),(70,'Ena','Carbonell','Escalona',0,'8/15/1994',2,'5 11','91 kg.','Roman Catholic',1,'+63 600 421 5471','212-2182.','09-4018567-2','09-4018567-2','234-620-294','42-561234841-1','Pepsi Bottling Group Inc.',NULL,2,NULL,NULL,'Jesse Maden','09828602411',0),(71,'Marietta','Cuevas','Pascual',1,'2/2/1976',2,'5 11','112 kg.','Protestant',1,'+63 413 837 7331','212-4624.','09-9903475-1','09-9903475-1','150-407-154','11-484038784-1','Hillenbrand Industries Inc.',NULL,3,NULL,NULL,'Andrew Caldarone','09619770955',0),(72,'Rossana','Vidal','Herrero',0,'8/9/1978',2,'5 11','106 kg.','Roman Catholic',1,'+63 282 490 4077','212-8683.','09-5944993-6','09-5944993-6','182-814-876','68-742429048-5','Avnet, Inc.',NULL,3,NULL,NULL,'Lenard Roessler','09930605919',0),(73,'Palma','Moya','Santana',1,'8/4/1972',1,'5 11','100 kg.','Protestant',1,'+63 334 788 3443','212-1448.','09-6268915-6','09-6268915-6','563-383-472','88-403113096-1','USG Corporation',NULL,2,NULL,NULL,'Dean Kerson','09323318746',0),(74,'Loan','Prieto','Lorenzo',0,'1/7/1986',1,'5 11','96 kg.','Roman Catholic',1,'+63 962 821 6770','212-9888.','09-3134520-8','09-3134520-8','994-469-876','27-907811643-7','Milacron Inc.',NULL,3,NULL,NULL,'Efren Moors','09841596386',0),(75,'Clarita','Bosch','Hidalgo',1,'2/9/1992',2,'5 11','103 kg.','Roman Catholic',1,'+63 788 112 1193','212-7698.','09-3450012-1','09-3450012-1','261-477-405','76-766588223-4','Commercial Metals Co.',NULL,3,NULL,NULL,'Xavier Pendry','09728247795',0),(76,'Latina','Carretero','Montero',0,'11/4/1972',2,'5 11','94 kg.','Islam',1,'+63 234 632 3109','212-2037.','09-5565652-6','09-5565652-6','271-356-371','14-121429075-3','Georgia Gulf Corporation',NULL,2,NULL,NULL,'Gus Muckelvaney','09252471870',0),(77,'Tori','Camacho','Buencamino',0,'8/4/1979',2,'5 11','75 kg.','Protestant',1,'+63 755 303 7483','212-1511.','09-8734729-0','09-8734729-0','607-739-528','92-610212254-5','Kellogg Company',NULL,3,NULL,NULL,'Carol Aslinger','09556324376',0),(78,'Frances','Calero','Gimenez',0,'4/2/1983',2,'5 11','117 kg.','Protestant',1,'+63 461 459 2510','212-2476.','09-6580272-0','09-6580272-0','897-964-142','30-716291339-5','Dreyer\'s Grand Ice Cream, Inc.',NULL,3,NULL,NULL,'Rocco Simoniello','09494861667',0),(79,'Laci','Bravo','Ferrer',0,'8/21/1972',1,'5 11','75 kg.','Protestant',1,'+63 186 874 2607','212-2685.','09-3418289-3','09-3418289-3','991-475-949','68-503533967-2','Walgreen Co',NULL,3,NULL,NULL,'Douglass Urguhart','09990964767',0),(80,'Lachelle','Castilla','Duran',0,'5/2/1996',2,'5 11','98 kg.','Roman Catholic',1,'+63 277 586 2668','212-8970.','09-6637818-4','09-6637818-4','804-332-731','33-382473930-2','Sears Roebuck & Co',NULL,3,NULL,NULL,'Hoyt Ratel','09188096712',0),(81,'Tegan','Diaz','Vicente',1,'10/15/1995',1,'5 11','108 kg.','Roman Catholic',1,'+63 469 288 3872','212-6545.','09-1904065-3','09-1904065-3','894-439-381','97-946075726-3','Benchmark Electronics, Inc.',NULL,2,NULL,NULL,'Ron Fuchs','09768561131',0),(82,'Georgia','Juarez','Benitez',0,'10/23/1986',2,'5 11','85  kg','Islam',1,'+63 236 906 6114','212-9750','094 876 036.','094 876 036.','521 146 136.','74-357964379-5.','MPS Group Inc.','',3,'','','Toby Ticer','09317763296',1),(83,'Alix','Calderon','Mora',0,'2/27/1986',1,'5 11','78 kg.','Protestant',1,'+63 294 732 6185','212-6080.','09-5556950-7','09-5556950-7','489-599-925','31-955946117-3','Amgen Inc.',NULL,3,NULL,NULL,'Rocco Brantner','09965771527',0),(84,'Beverlee','Villalba','Santiago',0,'10/25/1982',2,'5 11','80 kg.','Roman Catholic',1,'+63 699 355 1919','212-5075.','09-3529252-7','09-3529252-7','196-873-116','53-258888289-2','Countrywide Credit Industries Inc.',NULL,2,NULL,NULL,'Scottie Celius','09242716058',0),(85,'Rosalia','Mendoza','Arias',0,'4/10/1989',2,'5 11','108 kg','Roman Catholic',1,'+63 787 299 9523','212-1352','094 986 295.','094 986 295.','855 850 582.','34-178076138-5.','Progressive Corporation','',2,'','','Manual Jhonston','09861774314',0),(86,'Monica','Trujillo','Vargas',0,'11/21/1976',1,'5 11','85 kg.','Islam',1,'+63 686 917 9419','212-3021.','09-6362623-8','09-6362623-8','675-292-581','57-420853265-2','Berkshire Hathaway Inc.',NULL,3,NULL,NULL,'Kendrick Tonrey','09301614698',0),(87,'Clotilde','Carrera','Carmona',0,'4/11/1991',2,'5 11','77 kg.','Roman Catholic',1,'+63 689 141 6543','212-9850.','09-5573533-1','09-5573533-1','347-839-247','28-256459452-1','Peoples Energy Corp.',NULL,3,NULL,NULL,'Roy Zenisek','09556655409',0),(88,'Kera','Vila','Crespo',0,'4/5/1989',2,'5 11','102 kg.','Protestant',1,'+63 799 253 6113','212-2916.','09-5622645-1','09-5622645-1','986-775-446','18-739278500-7','Dollar Tree Stores, Inc.',NULL,3,NULL,NULL,'Logan Schaal','09315488113',0),(89,'Katharina','Torres','Roman',1,'9/22/1991',2,'5 11','114 kg.','Roman Catholic',1,'+63 815 142 3490','212-5332.','09-2750104-0','09-2750104-0','272-690-565','31-337305923-3','Equifax Inc.',NULL,3,NULL,NULL,'Arnoldo Dubis','09210455304',0),(90,'Kimiko','Roldan','Pastor',0,'2/27/1993',1,'5 11','80 kg.','Protestant',1,'+63 587 226 7883','212-8558.','09-4638277-6','09-4638277-6','240-340-337','81-236444775-1','Scientific-Atlanta Inc',NULL,3,NULL,NULL,'Alvin Iennaco','09677653242',0),(91,'Bobbye','De la Cerna','Soto',0,'1/2/1986',1,'5 11','118 kg.','Islam',1,'+63 613 695 6113','212-3667.','09-2738637-2','09-2738637-2','197-830-670','66-398017327-8','Carpenter Technology Corp.',NULL,2,NULL,NULL,'Connie Livengood','09578896953',0),(92,'Freeda','Leal','Saez',0,'3/26/1986',2,'5 11','96 kg.','Roman Catholic',1,'+63 173 516 8781','212-4586.','09-9275300-3','09-9275300-3','836-543-342','44-732981604-6','Barnes & Noble, Inc.',NULL,3,NULL,NULL,'Chadwick Cippina','09746368019',0),(93,'Belinda','Salgado','Velasco',1,'7/26/1981',2,'5 11','100 kg.','Roman Catholic',1,'+63 877 791 6751','212-8981.','09-8290420-4','09-8290420-4','495-457-494','89-710836299-3','Shaw Group Inc',NULL,3,NULL,NULL,'Royal Inferrera','09830313384',0),(94,'Micheline','Font','Soler',0,'2/5/1996',2,'5 11','115 kg.','Roman Catholic',1,'+63 989 392 7844','212-7686.','09-6749639-6','09-6749639-6','357-788-258','11-755787298-2','Carpenter Technology Corp.',NULL,3,NULL,NULL,'Garfield Belding','09860792554',0),(95,'Isabelle','Rojas','Moya',0,'11/25/1975',2,'5 11','93 kg.','Roman Catholic',1,'+63 256 417 6330','212-7954.','09-2796884-7','09-2796884-7','872-430-417','11-728410664-6','Milacron Inc.',NULL,3,NULL,NULL,'Antony Pavey','09808403613',0),(96,'Yolando','Marin','Esteban',0,'9/12/1997',1,'5 11','90 kg.','Roman Catholic',1,'+63 768 825 4323','212-3059.','09-4008833-0','09-4008833-0','162-329-936','86-566718581-4','NTL Incorporated',NULL,3,NULL,NULL,'Raymon Fillerup','09251942425',0),(97,'Lavada','Menendez','Parra',0,'8/10/1974',2,'5 11','116 kg.','Roman Catholic',1,'+63 936 232 3083','212-1383.','09-6040451-7','09-6040451-7','824-660-549','53-834172553-2','Apple Computer, Inc.',NULL,2,NULL,NULL,'Herman Haglund','09883273298',0),(98,'Florene','Lazaro','Bravo',0,'1/8/1979',2,'5 11','118 kg.','Protestant',1,'+63 604 976 4051','212-1971.','09-6069248-6','09-6069248-6','379-566-665','55-716743354-1','Johnson Controls Inc.',NULL,3,NULL,NULL,'Fred Donis','09303836714',0),(99,'Teressa','Casas','Gallardo',1,'6/27/1995',2,'5 11','119 kg.','Roman Catholic',1,'+63 245 203 4390','212-1223.','09-2137890-2','09-2137890-2','486-673-715','87-531175604-3','Anheuser-Busch Companies, Inc.',NULL,3,NULL,NULL,'Anton Manglona','09400993612',0),(100,'Nicolasa','Santamaria','Rojas',0,'5/26/1972',2,'5 11','78 kg.','Islam',1,'+63 411 785 5168','212-2151.','09-6552966-8','09-6552966-8','928-526-699','95-638984163-6','Rockwell Automation Inc',NULL,3,NULL,NULL,'Tommy Schlussel','09211397114',0),(101,'Lynda','Medina','Pardo',0,'10/22/1972',2,'5 11','76 kg.','Islam',1,'+63 624 180 1596','212-6975.','09-5221134-7','09-5221134-7','384-119-955','21-594742130-5','HCA Inc.',NULL,2,NULL,NULL,'Bo Petrilli','09449687632',0),(102,'Maude','Merino','Merino',0,'11/20/1973',2,'5 11','119 kg.','Protestant',1,'+63 951 475 2158','212-3645.','09-1461904-5','09-1461904-5','206-771-365','26-283726670-0','Eastman Chemical Company',NULL,2,NULL,NULL,'Larry Ballesteros','09558110539',0),(103,'Libby','Naranjo','Franco',0,'5/5/1996',2,'5 11','87 kg.','Protestant',1,'+63 864 245 4472','212-3134.','09-2403565-5','09-2403565-5','638-471-374','73-351630842-5','Frontier Oil Corp',NULL,2,NULL,NULL,'Gino Sakamaki','09441944245',0),(104,'Maile','Campos','Espinosa',1,'5/22/1981',2,'5 11','98 kg.','Islam',1,'+63 844 454 6290','212-8078.','09-2799327-6','09-2799327-6','384-851-244','79-609073401-6','Tektronix Inc',NULL,3,NULL,NULL,'Delbert Cichosz','09626328630',0),(105,'Wendy','Aranda','Izquierdo',0,'5/2/1993',2,'5 11','81 kg.','Protestant',1,'+63 471 240 2027','212-8526.','09-6085243-7','09-6085243-7','832-933-357','47-290709898-6','Nordstrom Inc',NULL,3,NULL,NULL,'Ryan Mayette','09883056667',0),(106,'Ronna','Pelaez','Lara',0,'9/12/1980',2,'5 11','89 kg.','Protestant',1,'+63 842 634 6645','212-5875.','09-3368092-8','09-3368092-8','398-122-969','14-683932028-3','Constellation Emergy Group Inc.',NULL,3,NULL,NULL,'Bernie Colonnese','09405555547',0),(107,'Floretta','Ramos','Rivas',0,'6/21/1995',2,'5 11','91 kg.','Islam',1,'+63 159 282 2695','212-6532.','09-7636513-7','09-7636513-7','676-388-883','22-514378673-5','Watsco Inc',NULL,2,NULL,NULL,'Hung Dember','09464507454',0),(108,'Candace','Gimeno','Silva',0,'10/25/1988',2,'5 11','89 kg.','Roman Catholic',1,'+63 217 806 1918','212-9676.','09-3865201-5','09-3865201-5','409-391-969','30-382957333-1','The Clorox Co.',NULL,3,NULL,NULL,'Mike Costin','09912651720',0),(109,'Rufina','De','Rivera',1,'7/25/1981',2,'5 11','92 kg.','Roman Catholic',1,'+63 905 964 9094','212-9822.','09-6836567-2','09-6836567-2','118-234-208','71-513664846-7','Spherion Corp',NULL,3,NULL,NULL,'Marshall Hollar','09918110865',0),(110,'Demetrius','Exposito','Casado',1,'11/21/1976',1,'5 11','75 kg.','Roman Catholic',1,'+63 794 746 6808','212-6137.','09-4947824-1','09-4947824-1','319-670-863','13-277698535-8','Visteon Corporation',NULL,2,NULL,NULL,'Curt Sang','09246356941',0),(111,'Tianna','Lopez','Agras',1,'6/17/1987',2,'5 11','97 kg.','Protestant',1,'+63 132 265 9002','212-1625.','09-9649361-7','09-9649361-7','510-448-406','30-485134023-0','Bowater Incorporated',NULL,3,NULL,NULL,'Charley Freil','09391372418',0),(112,'Annabelle','Mata','Redondo',1,'11/9/1994',2,'5 11','92 kg.','Islam',1,'+63 452 462 8212','212-6859.','09-3522135-7','09-3522135-7','267-360-575','83-831940453-7','Black Hills Corporation',NULL,3,NULL,NULL,'Pat Hulette','09901339298',0),(113,'Maragaret','Pañares','Camacho',0,'4/26/1986',2,'5 11','114 kg.','Roman Catholic',1,'+63 309 988 2742','212-5991.','09-8506333-0','09-8506333-0','275-918-207','51-511938042-8','U.S. Industries Inc.',NULL,2,NULL,NULL,'Tad Hovis','09666354493',0),(114,'Arnette','Rio','Rey',0,'3/9/1978',2,'5 11','75 kg.','Roman Catholic',1,'+63 171 151 9598','212-5066.','09-9313989-8','09-9313989-8','750-778-761','65-380741226-0','Amerada Hess Corporation',NULL,2,NULL,NULL,'Odis Hornig','09413744452',0),(115,'Brittany','Padilla','Vera',0,'6/13/1980',2,'5 11','111 kg.','Roman Catholic',1,'+63 281 719 4856','212-4111.','09-1900406-4','09-1900406-4','682-944-381','71-591959470-2','Hughes Supply Inc.',NULL,3,NULL,NULL,'Rickie Hindin','09196408853',0),(116,'Monique','Montes','Otero',0,'6/2/1995',2,'5 11','81 kg.','Islam',1,'+63 987 684 5763','212-6017.','09-7865761-2','09-7865761-2','563-871-338','64-123008052-7','Standard Pacific Corp.',NULL,3,NULL,NULL,'Luther Yeung','09696677129',0),(117,'Caryl','Sanchez','Luque',0,'5/12/1986',2,'5 11','87 kg.','Islam',1,'+63 783 843 2414','212-2927.','09-2659989-5','09-2659989-5','751-197-874','37-291197815-8','Jabil Circuit Inc.',NULL,2,NULL,NULL,'Peter Waldall','09122133891',0),(118,'Louetta','Hurtado','Galan',0,'2/19/1996',2,'5 11','101 kg.','Protestant',1,'+63 270 607 4836','212-2553.','09-8026413-3','09-8026413-3','878-462-378','97-570938217-8','FPL Group Inc.',NULL,3,NULL,NULL,'Ward Pistorius','09286623777',0),(119,'Alice','Olivares','Montes',0,'1/10/1972',2,'5 11','93 kg.','Roman Catholic',1,'+63 934 895 1193','212-8320.','09-6290338-7','09-6290338-7','507-383-625','87-486850466-1','JDS Uniphase Corp.',NULL,3,NULL,NULL,'Hayden Adrovel','09458272438',0),(120,'Delicia','Jimenez','Rios',0,'6/4/1988',2,'5 11','103 kg.','Roman Catholic',1,'+63 573 702 3442','212-3285.','09-2885009-8','09-2885009-8','661-962-191','44-493000626-2','Caremark Rx Inc.',NULL,2,NULL,NULL,'Jack Reginal','09206926411',0),(121,'Clara','Reyes','Sierra',0,'2/5/1996',2,'5 11','83 kg.','Islam',1,'+63 875 759 7247','212-1359.','09-1742539-4','09-1742539-4','768-275-908','71-592556967-8','BB&T Corporation',NULL,3,NULL,NULL,'Mack Brumm','09126183192',0),(122,'Kirstie','Villanueva','Segura',0,'8/19/1979',2,'5 11','109 kg.','Islam',1,'+63 775 129 2951','212-5060.','09-6172057-6','09-6172057-6','743-360-481','97-249097160-7','Jefferson-Pilot Co.',NULL,2,NULL,NULL,'Adrian Maendel','09330899412',0),(123,'Joanne','Neri','Carrillo',0,'6/27/1983',2,'5 11','92 kg.','Islam',1,'+63 313 859 5601','212-9600.','09-8781376-8','09-8781376-8','904-726-903','87-511238457-7','BMC Software, Inc.',NULL,3,NULL,NULL,'Abraham Webre','09574441820',0),(124,'Taren','Salinas','Marcos',0,'3/20/1981',2,'5 11','94 kg.','Protestant',1,'+63 611 946 2238','212-3476.','09-5666775-3','09-5666775-3','374-694-656','28-818692783-8','Brown Shoe Company, Inc.',NULL,2,NULL,NULL,'Donald Starley','09224089562',0),(125,'Cody','Nieto','Marti',0,'3/10/1973',1,'5 11','119 kg.','Protestant',1,'+63 482 311 7014','212-4500.','09-5558202-4','09-5558202-4','436-184-326','63-986791423-0','Toys \'R\' Us Inc',NULL,2,NULL,NULL,'Bradford Delmoro','09574865116',0),(126,'Lashon','Garrido','Soriano',0,'10/1/1988',1,'5 11','106 kg.','Protestant',1,'+63 913 159 7641','212-8780.','09-1828048-5','09-1828048-5','359-501-743','27-911572354-5','Maxxam Inc.',NULL,3,NULL,NULL,'Titus Spoden','09540820634',0),(127,'Eugenia','Cuesta','Mendoza',0,'3/25/1975',2,'5 11','89 kg.','Roman Catholic',1,'+63 278 359 2283','212-7024.','09-3929495-7','09-3929495-7','307-418-663','29-712331242-2','Nike Inc',NULL,2,NULL,NULL,'Douglass Louria','09845805145',0),(128,'Kiersten','Cabrera','Robles',0,'1/9/1974',2,'5 11','88 kg.','Roman Catholic',1,'+63 168 848 5643','212-1060.','09-7987877-7','09-7987877-7','656-529-515','46-498756724-2','Marriott International Inc.',NULL,2,NULL,NULL,'Santo Verdino','09246015976',0),(129,'Vernice','Gutierrez','Bernal',0,'2/27/1992',2,'5 11','92 kg.','Roman Catholic',1,'+63 516 398 6476','212-6644.','09-4553542-7','09-4553542-7','171-272-860','54-790036068-3','Primedia Inc',NULL,2,NULL,NULL,'Dalton Hauff','09915039760',0),(130,'Jolanda','Pascual','Vila',0,'6/13/1991',2,'5 11','110 kg.','Protestant',1,'+63 504 378 6462','212-7260.','09-5869192-1','09-5869192-1','123-419-399','76-974350504-0','Gannett Co., Inc.',NULL,2,NULL,NULL,'Jamar Mcneary','09277451349',0),(131,'Venita','Blanco','Valero',0,'8/7/1988',2,'5 11','114 kg.','Roman Catholic',1,'+63 887 944 2951','212-9409.','09-3072575-5','09-3072575-5','368-161-878','81-705541197-2','First American Financial Corp.',NULL,3,NULL,NULL,'Oren Dambrosia','09864084385',0),(132,'Valentina','Collado','Palacios',0,'3/2/1982',2,'5 11','112 kg.','Protestant',1,'+63 712 295 1588','212-1516.','09-4626408-0','09-4626408-0','686-814-834','52-764882822-1','Levi Strauss & Co.',NULL,2,NULL,NULL,'Marlin Dagraca','09424582772',0),(133,'Penny','Alfonso','Exposito',0,'3/19/1985',2,'5 11','118 kg.','Islam',1,'+63 750 670 2499','212-5649.','09-2849631-4','09-2849631-4','565-937-307','57-536468717-7','PNM Resources Inc',NULL,2,NULL,NULL,'Jeramy Bratten','09444306052',0),(134,'Betsey','Correa','Benito',1,'2/16/1996',2,'5 11','94 kg.','Islam',1,'+63 497 850 2251','212-5070.','09-1619979-1','09-1619979-1','147-183-251','27-402715481-0','Sports Authority Inc',NULL,2,NULL,NULL,'Waylon Massoni','09609075135',0),(135,'Maryam','Gomez','Guina',0,'10/10/1987',2,'5 11','92 kg.','Protestant',1,'+63 162 299 2183','212-1950.','09-5091356-2','09-5091356-2','575-940-124','52-720213506-3','Allegheny Energy, Inc.',NULL,2,NULL,NULL,'Lanny Orsak','09968586673',0),(136,'Glynis','Izquierdo','Varela',0,'1/11/1997',2,'5 11','89 kg.','Roman Catholic',1,'+63 655 389 9297','212-9073.','09-7173986-7','09-7173986-7','732-316-739','40-819521026-6','Great Plains Energy Inc.',NULL,3,NULL,NULL,'Bo Carrus','09335185470',0),(137,'Louetta','Franco','Pereira',0,'4/8/1987',2,'5 11','108 kg.','Islam',1,'+63 683 581 3701','212-4971.','09-6359202-3','09-6359202-3','356-667-889','74-616675629-2','Sempra Energy',NULL,2,NULL,NULL,'Robert Accardi','09504754279',0),(138,'Alta','Rey','Macias',0,'4/26/1983',2,'5 11','97 kg.','Protestant',1,'+63 280 406 8297','212-5567.','09-3858397-2','09-3858397-2','200-687-713','25-270424216-6','Hub Group Inc.',NULL,2,NULL,NULL,'Dale Villarin','09929309490',0),(139,'Phylis','Rosa','Guerra',0,'8/3/1977',2,'5 11','91 kg.','Islam',1,'+63 197 380 4021','212-2817.','09-2675682-7','09-2675682-7','622-530-942','76-366392241-4','Avon Products, Inc.',NULL,2,NULL,NULL,'Timothy Froese','09591757909',0),(140,'Dominga','Aguilera','Heredia',0,'5/14/1994',2,'5 11','88 kg.','Roman Catholic',1,'+63 336 521 9737','212-2933.','09-5536019-0','09-5536019-0','753-332-158','25-195099385-2','Illinois Tool Works Inc.',NULL,3,NULL,NULL,'Virgil Riedmayer','09930213374',0),(141,'Charleen','Pulido','Bueno',0,'9/18/1974',2,'5 11','110 kg.','Protestant',1,'+63 673 595 8255','212-6235.','09-6700384-8','09-6700384-8','829-891-406','24-681064373-1','Progress Energy Inc',NULL,2,NULL,NULL,'Humberto Guffy','09327783550',0),(142,'Inell','Saez','Roldan',0,'2/8/1987',2,'5 11','83 kg.','Roman Catholic',1,'+63 553 889 4642','212-5924.','09-9234427-3','09-9234427-3','655-456-216','22-482892547-6','Silicon Graphics Inc',NULL,3,NULL,NULL,'Branden Forrester','09243254577',0),(143,'Caitlyn','Santana','Mateo',1,'4/7/1997',2,'5 11','88 kg.','Islam',1,'+63 840 896 9884','212-8769.','09-5442935-7','09-5442935-7','129-799-986','41-929148703-2','Hughes Supply Inc.',NULL,2,NULL,NULL,'Theron Wipfli','09667159176',0),(144,'Georgina','Manzano','Villar',0,'2/26/1974',2,'5 11','100 kg.','Protestant',1,'+63 823 860 9962','212-3463.','09-7752504-6','09-7752504-6','479-530-259','63-425323211-6','Protective Life Corp',NULL,2,NULL,NULL,'Edward Inglin','09274010785',0),(145,'Shirlene','Leon','Contreras',0,'6/22/1988',2,'5 11','118 kg.','Roman Catholic',1,'+63 586 578 8212','212-1529.','09-5755104-5','09-5755104-5','266-408-331','47-902255777-7','AT&T Corp.',NULL,3,NULL,NULL,'Bennett Mcclure','09479664505',0),(146,'Leeanna','Hidalgo','Miranda',0,'9/1/1996',2,'5 11','119 kg.','Protestant',1,'+63 704 738 4292','212-8199.','09-3865246-3','09-3865246-3','412-339-488','71-723584313-7','Dole Food Company, Inc.',NULL,2,NULL,NULL,'Carol Fie','09474384768',0),(147,'Keith','Anton','Guillen',0,'10/1/1978',1,'5 11','99 kg.','Roman Catholic',1,'+63 609 375 4414','212-8112.','09-9947639-8','09-9947639-8','343-338-823','97-586940170-4','Systemax Inc.',NULL,3,NULL,NULL,'Norman Brunecz','09351565301',0),(148,'Avery','Cordoba','Mateos',1,'5/6/1984',1,'5 11','117 kg.','Protestant',1,'+63 827 615 4602','212-7214.','09-3138890-5','09-3138890-5','398-937-737','68-327508115-7','Carpenter Technology Corp.',NULL,3,NULL,NULL,'Alvin Craighead','09604460900',0),(149,'Alisa','Sanz','Escudero',0,'7/9/1986',2,'5 11','114 kg.','Protestant',1,'+63 242 393 5413','212-3396.','09-8955445-1','09-8955445-1','635-475-716','28-542644549-2','Bell Microproducts Inc.',NULL,3,NULL,NULL,'Sammy Halo','09942858230',0),(150,'Jessenia','Cobo','Galiz',0,'5/18/1987',2,'5 11','111 kg.','Islam',1,'+63 972 788 4226','212-7052.','09-5713769-7','09-5713769-7','282-138-176','65-127434811-6','Cintas Corp.',NULL,2,NULL,NULL,'Pedro Gimse','09573265479',0),(151,'Sebrina','Duran','Menendez',0,'5/27/1986',2,'5 11','92 kg.','Protestant',1,'+63 308 860 9247','212-7018.','09-2167353-0','09-2167353-0','381-995-912','24-587639929-8','Citizens Communications Co.',NULL,3,NULL,NULL,'Elijah Kew','09486927890',0),(152,'Julissa','Pacheco','Casas',0,'9/15/1978',2,'5 11','76 kg.','Islam',1,'+63 157 322 5470','212-6487.','09-5842722-8','09-5842722-8','478-977-596','35-896232746-8','Comverse Technology Inc.',NULL,3,NULL,NULL,'Johnie Hunten','09853833450',0),(153,'Shirlene','Mohamed','Icaza',0,'4/9/1996',2,'5 11','88 kg.','Protestant',1,'+63 623 854 6053','212-5495.','09-6368445-4','09-6368445-4','601-938-284','76-174462301-3','New York Times Company',NULL,3,NULL,NULL,'Thanh Gebhardt','09814281580',0),(154,'Blythe','Zapata','Rivero',1,'2/19/1998',2,'5 11','109 kg.','Roman Catholic',1,'+63 854 845 6993','212-7791.','09-3797089-5','09-3797089-5','798-931-913','95-217766921-8','Tribune Company',NULL,2,NULL,NULL,'Jeramy Quintal','09561856001',0),(155,'Kellie','Ruiz','Estevez',0,'8/8/1972',2,'5 11','95 kg.','Roman Catholic',1,'+63 352 279 2810','212-4452.','09-7498736-5','09-7498736-5','410-869-302','21-803512389-7','United Technologies Corporation',NULL,2,NULL,NULL,'Clinton Amlin','09703697688',0),(156,'Suzann','Gil','Beltran',1,'10/3/1982',2,'5 11','118 kg.','Roman Catholic',1,'+63 289 557 8559','212-1631.','09-9509382-6','09-9509382-6','343-967-300','88-602419083-5','Applera Corporation',NULL,2,NULL,NULL,'Louis Pizzaro','09574685086',0),(157,'Kellye','Hernandez','Padilla',0,'1/7/1979',2,'5 11','113 kg.','Islam',1,'+63 633 737 1985','212-2342.','09-4901319-2','09-4901319-2','300-121-503','44-428768308-2','MasTec Inc.',NULL,3,NULL,NULL,'Bruno Nordick','09487161657',0),(158,'Joannie','Murillo','Gracia',1,'3/24/1982',2,'5 11','118 kg.','Islam',1,'+63 209 521 6610','212-9623.','09-7233887-0','09-7233887-0','915-714-607','33-232757327-4','Eaton Corporation',NULL,2,NULL,NULL,'Bennett Wiehe','09981731775',0),(159,'Krishna','Aparicio','Rico',0,'11/23/1972',2,'5 11','116 kg.','Roman Catholic',1,'+63 353 251 6035','212-7377.','09-3371584-8','09-3371584-8','857-812-777','54-164629429-3','Valero Energy Corporation',NULL,3,NULL,NULL,'Hans Primer','09546683386',0),(160,'Abdul','Panlilio','Calderon',0,'6/26/1997',1,'5 11','90 kg.','Roman Catholic',1,'+63 939 304 1751','212-6696.','09-8014518-7','09-8014518-7','737-311-941','76-801203961-0','H.B. Fuller Company',NULL,2,NULL,NULL,'Sammy Elbert','09286969774',0),(161,'Margie','Rodrigo','Cisneros',0,'2/5/1985',2,'5 11','87 kg.','Protestant',1,'+63 603 364 1300','212-4964.','09-2306385-6','09-2306385-6','726-849-298','63-609612327-5','Kohl\'s Corp.',NULL,2,NULL,NULL,'Daryl Hossfeld','09510047990',0),(162,'Iliana','Calvo','Galvez',0,'4/25/1986',2,'5 11','117 kg.','Protestant',1,'+63 587 659 1755','212-7283.','09-3820503-8','09-3820503-8','487-913-266','46-870999533-2','AK Steel Holding Corporation',NULL,3,NULL,NULL,'Tracey Wilkie','09343664379',0),(163,'Ricki','Jurado','Conde',0,'11/8/1984',1,'5 11','93 kg.','Islam',1,'+63 317 983 2998','212-4347.','09-9581683-4','09-9581683-4','310-364-309','43-255553922-4','Waste Management Inc',NULL,3,NULL,NULL,'Jackson Zupfer','09445826639',0),(164,'Aliza','Asensio','Salas',0,'8/1/1983',2,'5 11','97 kg.','Roman Catholic',1,'+63 324 493 1637','212-3029.','09-2889489-3','09-2889489-3','306-587-132','91-195094265-2','WGL Holdings Inc',NULL,3,NULL,NULL,'Lowell Holtgrefe','09120516912',0),(165,'Kanesha','Cabello','Jurado',0,'8/24/1980',2,'5 11','108 kg.','Roman Catholic',1,'+63 210 127 8093','212-5762.','09-9153481-4','09-9153481-4','845-208-944','31-950189941-5','Dana Corporation',NULL,2,NULL,NULL,'Britt Mikos','09652237767',0),(166,'Magda','Soriano','Quintana',0,'6/9/1993',2,'5 11','113 kg.','Roman Catholic',1,'+63 319 188 4101','212-9201.','09-2560790-7','09-2560790-7','730-710-363','22-972330708-3','Value City Department Stores Inc',NULL,2,NULL,NULL,'Israel Minery','09980936406',0),(167,'Jeanette','Pineda','Plaza',0,'6/18/1977',1,'5 11','112 kg.','Islam',1,'+63 850 296 7006','212-1111.','09-4712496-8','09-4712496-8','858-703-718','69-817544957-0','Motorola Inc.',NULL,3,NULL,NULL,'Homer Trueman','09705213513',0),(168,'Eliana','Valle','Elgarresta',1,'1/24/1983',1,'5 11.','78  kg.','Roman Catholic',1,'+63 414 214 2931.','212-4804.','093 109 694.','093 109 694.','856 340 112.','40-918873116-6.','ITT Industries Inc.','',2,'','','Cornell Tellier','09502592810',0),(169,'Kaila','Iglesias','Aranda',0,'7/14/1993',1,'5 11','99 kg.','Roman Catholic',1,'+63 575 546 2583','212-3990.','09-3512439-4','09-3512439-4','982-612-357','20-628162266-1','Kerr-McGee Corporation',NULL,2,NULL,NULL,'Sebastian Pasquarella','09482073478',0),(170,'Loree','Marquez','Blazquez',0,'3/9/1991',1,'5 11','90 kg.','Islam',1,'+63 713 185 8934','212-7653.','09-3851112-8','09-3851112-8','800-638-272','69-427121668-0','Advance Auto Parts, Inc.',NULL,3,NULL,NULL,'Willy Rodeman','09914636478',0),(171,'Aimee','Ramirez','Roca',0,'1/22/1995',1,'5 11','104 kg.','Islam',1,'+63 797 349 3329','212-8089.','09-3597079-5','09-3597079-5','155-487-582','55-791613632-0','Riverwood Holding Inc.',NULL,2,NULL,NULL,'Chang Haub','09788140302',0),(172,'Janell','Parra','Bermudez',0,'6/11/1973',1,'5 11','103 kg.','Protestant',1,'+63 334 267 7972','212-2760.','09-9575044-0','09-9575044-0','998-630-281','30-743499679-2','Brown-Forman Corporation',NULL,3,NULL,NULL,'Jim Kamstra','09377086337',0),(173,'Juli','Valverde','Costa',0,'8/27/1977',1,'5 11','96 kg.','Islam',1,'+63 413 549 7305','212-9463.','09-1112247-7','09-1112247-7','538-674-181','47-430383013-1','Dynegy Inc.',NULL,3,NULL,NULL,'Roderick Brundige','09323956702',0),(174,'Rona','Otero','Miguel',0,'9/2/1982',1,'5 11','78 kg.','Protestant',1,'+63 532 136 2395','212-1674.','09-1141877-0','09-1141877-0','135-179-432','78-965857993-7','Werner Enterprises Inc',NULL,3,NULL,NULL,'Carol Kasowski','09221728660',0),(175,'Alia','Romero','Santamaria',0,'4/13/1990',1,'5 11','83 kg.','Roman Catholic',1,'+63 522 596 7257','212-2906.','09-7282239-3','09-7282239-3','249-197-241','39-668214180-5','Scana Corp.',NULL,2,NULL,NULL,'Joey Sever','09442174671',0),(176,'Rolande','Segura','Salazar',0,'8/10/1984',1,'5 11','81 kg.','Roman Catholic',1,'+63 473 168 9424','212-5850.','09-9319692-4','09-9319692-4','732-500-859','70-556279104-6','Duke Energy Corp',NULL,3,NULL,NULL,'Ezekiel Schriver','09377573249',0),(177,'Melodie','Gracia','Guzman',0,'10/24/1988',1,'5 11','109 kg.','Islam',1,'+63 613 521 7367','212-3555.','09-3666534-5','09-3666534-5','725-957-476','61-147038477-6','American International Group, Inc.',NULL,3,NULL,NULL,'Cyril Stewart','09404656776',0),(178,'Ollie','Macias','Serra',0,'3/25/1972',1,'5 11','109 kg.','Islam',1,'+63 877 600 6512','212-3810.','09-2037066-1','09-2037066-1','317-370-705','20-669148494-6','Pall Corp',NULL,2,NULL,NULL,'Merlin Vidaca','09535171571',0),(179,'Marianna','Pereira','Villanueva',0,'2/25/1982',1,'5 11','118 kg.','Protestant',1,'+63 357 495 8789','212-5030.','09-9780643-4','09-9780643-4','994-547-772','85-371419387-3','Computer Sciences Corp.',NULL,3,NULL,NULL,'Kristofer Wainer','09491745425',0),(180,'Luna','Maldonado','Cuesta',0,'5/10/1995',1,'5 11','80 kg.','Islam',1,'+63 240 298 5240','212-3409.','09-8758621-6','09-8758621-6','909-702-189','49-530083371-8','Advance Auto Parts, Inc.',NULL,3,NULL,NULL,'Jarrod Paywa','09361909243',0),(181,'Jackie','Andres','Manzano',0,'11/8/1987',1,'5 11','82 kg.','Roman Catholic',1,'+63 531 230 8118','212-5700.','09-1190855-7','09-1190855-7','607-644-391','94-176760177-0','U.S. Industries Inc.',NULL,3,NULL,NULL,'Ferdinand Karsnak','09673309968',0),(182,'Dana','Prado','Tomas',0,'3/7/1982',1,'5 11','84 kg.','Islam',1,'+63 279 145 3186','212-1059.','09-5527393-0','09-5527393-0','823-313-335','19-516346724-1','Frontier Oil Corp',NULL,2,NULL,NULL,'Javier Brookskennedy','09518214499',0),(183,'Candance','Villar','Hurtado',0,'4/6/1991',1,'5 11','89 kg.','Islam',1,'+63 625 815 5106','212-1752.','09-8512315-0','09-8512315-0','386-600-800','89-319879408-6','Peter Kiewit Sons\', Inc.',NULL,3,NULL,NULL,'Raleigh Theuret','09454720743',0),(184,'Un','Vicente','Trujillo',1,'8/16/1978',1,'5 11','99 kg.','Islam',1,'+63 650 786 9891','212-6507.','09-9655132-2','09-9655132-2','652-897-878','65-894401514-6','Robert Half International Inc.',NULL,2,NULL,NULL,'Alexis Haar','09113265145',0),(185,'Bebe','Soto','Rueda',0,'5/7/1990',1,'5 11','111 kg.','Roman Catholic',1,'+63 877 413 5234','212-2112.','09-2423233-1','09-2423233-1','644-374-394','79-351569117-1','Outback Steakhouse Inc.',NULL,2,NULL,NULL,'Wilton Lheureux','09638078459',0),(186,'Isaura','Alba','Pacheco',0,'9/2/1995',1,'5 11','81 kg.','Protestant',1,'+63 397 723 8085','212-1096.','09-5737808-7','09-5737808-7','324-723-761','54-481484516-0','Nordstrom Inc',NULL,2,NULL,NULL,'Rafael Petre','09846735987',0),(187,'Tisa','Acosta','Avila',0,'10/26/1993',1,'5 11','100 kg.','Protestant',1,'+63 797 958 8870','212-1174.','09-2389938-0','09-2389938-0','798-304-299','12-454137342-2','Equifax Inc.',NULL,2,NULL,NULL,'Rafael Wieder','09586698244',0),(188,'Maudie','Lozano','Simon',0,'10/10/1985',1,'5 11','114 kg.','Protestant',1,'+63 480 691 1551','212-8695.','09-1457238-1','09-1457238-1','121-317-236','82-707274224-0','Genesis Health Ventures Inc.',NULL,2,NULL,NULL,'Johnie Pirone','09633591643',0),(189,'Yolando','Requena','Dela Fuente',0,'7/22/1990',1,'5 11','88 kg.','Roman Catholic',1,'+63 775 610 7779','212-9085.','09-3880672-7','09-3880672-7','650-952-296','69-173839738-3','Greif Bros. Corporation',NULL,3,NULL,NULL,'Sherman Swartzell','09871192970',0),(190,'Kandy','Rivas','Dela Fuente',0,'2/27/1977',1,'5 11','105 kg.','Islam',1,'+63 543 168 6719','212-4667.','09-1513390-1','09-1513390-1','676-933-600','75-583719298-7','Lockheed Martin Corporation',NULL,3,NULL,NULL,'Lanny Coronel','09206422162',0),(191,'Eric','Martos','Dela Fuente',0,'10/7/1986',1,'5 11','94 kg.','Roman Catholic',1,'+63 850 511 9671','212-4716.','09-6790892-1','09-6790892-1','747-792-539','54-614808935-3','Banta Corporation',NULL,3,NULL,NULL,'Palmer Bohmer','09755723461',0),(192,'Shaneka','Lorente','Pons',0,'11/7/1974',1,'5 11','83 kg.','Roman Catholic',1,'+63 773 344 7756','212-5462.','09-7406506-6','09-7406506-6','358-921-516','65-485020404-4','Burlington Coat Factory Warehouse Corporation',NULL,3,NULL,NULL,'Alexander Seremet','09361306940',0),(193,'Toya','Cruz','Lazaro',0,'6/24/1974',1,'5 11','101 kg.','Roman Catholic',1,'+63 826 541 3202','212-2150.','09-8828898-2','09-8828898-2','387-870-753','40-816794549-6','Clear Channel Communications Inc.',NULL,3,NULL,NULL,'Vernon Faulcon','09498000125',0),(194,'Katrina','Simon','Sancho',0,'10/19/1982',1,'5 11','99 kg.','Roman Catholic',1,'+63 473 292 9990','212-7322.','09-9068253-4','09-9068253-4','416-720-577','61-931127975-0','National Commerce Financial Corporation',NULL,3,NULL,NULL,'Elvin Mcgirr','09377684392',0),(195,'Portia','Acosta','Mesa',0,'6/27/1982',1,'5 11','91 kg.','Islam',1,'+63 603 161 2803','212-2874.','09-8441335-7','09-8441335-7','258-545-352','68-951075679-3','Trans World Entertainment Corp.',NULL,2,NULL,NULL,'Benton Mellard','09603155461',0),(196,'Darcel','Crespo','Del',0,'7/27/1975',1,'5 11','96 kg.','Roman Catholic',1,'+63 665 119 9034','212-5324.','09-8392207-8','09-8392207-8','425-828-189','90-241875111-6','Lyondell Chemical Company',NULL,3,NULL,NULL,'Ezra Grisanti','09456503275',0),(197,'Earlene','Cordero','Rio',0,'11/26/1976',1,'5 11','91 kg.','Islam',1,'+63 887 277 5669','212-5378.','09-7324234-6','09-7324234-6','513-993-939','97-215318341-4','Avery Services Company',NULL,3,NULL,NULL,'Renato Turbiner','09855841747',0),(198,'Mui','Bautista','Escobar',0,'4/14/1976',1,'5 11','110 kg.','Islam',1,'+63 931 431 6513','212-9711.','09-2548218-1','09-2548218-1','950-915-764','87-355443313-4','Avery Dennison Corporation',NULL,3,NULL,NULL,'Modesto Boarman','09914926522',0),(199,'Shawanda','Suarez','Millan',0,'2/21/1997',1,'5 11','99 kg.','Roman Catholic',1,'+63 998 406 5506','212-1541.','09-2930212-5','09-2930212-5','564-848-876','62-966654623-5','Mohawk Industries Inc.',NULL,3,NULL,NULL,'Gregorio Lalka','09724799486',0),(200,'Hyun','Silva','Blasco',0,'4/2/1989',1,'5 11','101 kg.','Roman Catholic',1,'+63 903 899 2925','212-4028.','09-7513419-0','09-7513419-0','341-391-466','56-452910186-2','Lennox International Inc.',NULL,3,NULL,NULL,'Zachery Alameda','09183478256',0);
/*!40000 ALTER TABLE `guards` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `msadb`.`guards_AFTER_INSERT` AFTER INSERT ON `guards` FOR EACH ROW
BEGIN
	INSERT INTO `msadb`.`log_action` 
    (`session_id`, `ltimestamp`, `crudcode`, `isaction`, `eventcode`) 
    VALUES (@cuser, NOW(), 'C', '1', '1CGuard');
    INSERT INTO `msadb`.`log_values` (`log_id`, `new`) VALUES ((Select LAST_INSERT_ID()), CONCAT(NEW.LN,', ',NEW.FN,' ',NEW.MN));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `msadb`.`guards_AFTER_UPDATE` AFTER UPDATE ON `guards` FOR EACH ROW
BEGIN
INSERT INTO `msadb`.`log_action`
              (
                          `session_id`,
                          `ltimestamp`,
                          `crudcode`,
                          `isaction`,
                          `eventcode`,
                          `instance_name`
              )
              VALUES
              (
                          @cuser,
                          now(),
                          'U',
                          '0',
                          '1UGuardDetail',
                          CONCAT('Guard: ', CONCAT(OLD.LN,', ',OLD.FN,' ',OLD.MN)) 
              );
              
IF NEW.FN
 <> OLD.FN
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'FN
', OLD.FN
, NEW.FN
);

end if;

IF NEW.MN
 <> OLD.MN
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'MN
', OLD.MN
, NEW.MN
);

end if;

IF NEW.LN
 <> OLD.LN
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'LN
', OLD.LN
, NEW.LN
);

end if;


IF NEW.BDate
 <> OLD.BDate
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'BDate
', OLD.BDate
, NEW.BDate
);

end if;

IF NEW.Gender
 <> OLD.Gender
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'Gender
', OLD.Gender
, NEW.Gender
);

end if;

IF NEW.Height
 <> OLD.Height
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'Height
', OLD.Height
, NEW.Height
);

end if;

IF NEW.Weight
 <> OLD.Weight
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'Weight
', OLD.Weight
, NEW.Weight
);

end if;

IF NEW.Religion
 <> OLD.Religion
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'Religion
', OLD.Religion
, NEW.Religion
);

end if;

IF NEW.CivilStatus
 <> OLD.CivilStatus
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'CivilStatus
', OLD.CivilStatus
, NEW.CivilStatus
);

end if;

IF NEW.CellNo
 <> OLD.CellNo
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'CellNo
', OLD.CellNo
, NEW.CellNo
);

end if;

IF NEW.TelNo
 <> OLD.TelNo
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'TelNo
', OLD.TelNo
, NEW.TelNo
);

end if;

IF NEW.LicenseNo
 <> OLD.LicenseNo
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'LicenseNo
', OLD.LicenseNo
, NEW.LicenseNo
);

end if;

IF NEW.SSS
 <> OLD.SSS
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'SSS
', OLD.SSS
, NEW.SSS
);

end if;

IF NEW.TIN
 <> OLD.TIN
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'TIN
', OLD.TIN
, NEW.TIN
);

end if;

IF NEW.PhilHealth
 <> OLD.PhilHealth
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'PhilHealth
', OLD.PhilHealth
, NEW.PhilHealth
);

end if;

IF NEW.PrevAgency
 <> OLD.PrevAgency
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'PrevAgency
', OLD.PrevAgency
, NEW.PrevAgency
);

end if;

IF NEW.PrevAss
 <> OLD.PrevAss
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'PrevAss
', OLD.PrevAss
, NEW.PrevAss
);

end if;

IF NEW.EdAtt
 <> OLD.EdAtt
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'EdAtt
', OLD.EdAtt
, NEW.EdAtt
);

end if;

IF NEW.Course
 <> OLD.Course
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'Course
', OLD.Course
, NEW.Course
);

end if;

IF NEW.MilitaryTrainings
 <> OLD.MilitaryTrainings
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'MilitaryTrainings
', OLD.MilitaryTrainings
, NEW.MilitaryTrainings
);

end if;

IF NEW.EmergencyContact
 <> OLD.EmergencyContact
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'EmergencyContact
', OLD.EmergencyContact
, NEW.EmergencyContact
);

end if;

IF NEW.EmergencyNo <> OLD.EmergencyNo THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'EmergencyNo', OLD.EmergencyNo, NEW.EmergencyNo);

end if;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `msadb`.`guards_BEFORE_DELETE` BEFORE DELETE ON `guards` FOR EACH ROW
BEGIN
	delete from msadb.address where gid = old.gid;
    delete from dependents where gid = old.gid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `guardslist`
--

DROP TABLE IF EXISTS `guardslist`;
/*!50001 DROP VIEW IF EXISTS `guardslist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `guardslist` AS SELECT 
 1 AS `gid`,
 1 AS `name`,
 1 AS `contactno`,
 1 AS `gstatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `holiday`
--

DROP TABLE IF EXISTS `holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holiday` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `transferability` int(1) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holiday`
--

LOCK TABLES `holiday` WRITE;
/*!40000 ALTER TABLE `holiday` DISABLE KEYS */;
INSERT INTO `holiday` VALUES (1,'Chrsitmas',0,0,1);
/*!40000 ALTER TABLE `holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holiday_instance`
--

DROP TABLE IF EXISTS `holiday_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holiday_instance` (
  `hhid` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT NULL,
  `DateStart` datetime DEFAULT NULL,
  `DateEnd` datetime DEFAULT NULL,
  PRIMARY KEY (`hhid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holiday_instance`
--

LOCK TABLES `holiday_instance` WRITE;
/*!40000 ALTER TABLE `holiday_instance` DISABLE KEYS */;
INSERT INTO `holiday_instance` VALUES (1,1,'2017-12-25 00:00:00','2017-12-25 00:00:00');
/*!40000 ALTER TABLE `holiday_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidentreport`
--

DROP TABLE IF EXISTS `incidentreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incidentreport` (
  `IID` int(11) NOT NULL AUTO_INCREMENT,
  `ReportType` int(11) DEFAULT NULL,
  `PCompleting` varchar(45) DEFAULT NULL,
  `EventDate` varchar(45) DEFAULT NULL,
  `EventLocation` varchar(45) DEFAULT NULL,
  `Description` longtext,
  `DateEntry` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidentreport`
--

LOCK TABLES `incidentreport` WRITE;
/*!40000 ALTER TABLE `incidentreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `incidentreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_action`
--

DROP TABLE IF EXISTS `log_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_action` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(45) DEFAULT NULL,
  `ltimestamp` timestamp NULL DEFAULT NULL,
  `crudcode` varchar(1) DEFAULT NULL,
  `isaction` tinyint(4) DEFAULT NULL,
  `eventcode` varchar(45) DEFAULT NULL,
  `instance_key` int(11) DEFAULT NULL,
  `instance_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10821 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_action`
--

LOCK TABLES `log_action` WRITE;
/*!40000 ALTER TABLE `log_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_values`
--

DROP TABLE IF EXISTS `log_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_values` (
  `logvalue_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) DEFAULT NULL,
  `column` varchar(30) DEFAULT NULL,
  `old` varchar(300) DEFAULT NULL,
  `new` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`logvalue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_values`
--

LOCK TABLES `log_values` WRITE;
/*!40000 ALTER TABLE `log_values` DISABLE KEYS */;
INSERT INTO `log_values` VALUES (14,20,'MN\n','Martinez','Perez'),(15,2288,'pstatus','0','2'),(16,2672,'PrevAgency\n','BJ Services Company','Avery Services Company'),(17,2673,'LN\n','Abad','Cisneros'),(18,2674,'LN\n','Acosta','Elezondo'),(19,2675,'LN\n','Acosta','Elgarresta'),(20,2676,'LN\n','Agoncillo','Emperador'),(21,2677,'LN\n','Aguilar','Escalona'),(22,2678,'LN\n','Aguilera','Galiz'),(23,2679,'LN\n','Alonso','Gamazo'),(24,2680,'LN\n','Alvarez','Granis'),(25,2681,'LN\n','Andres','Guina'),(26,2682,'LN\n','Ang','Echevarria'),(27,2683,'LN\n','Aparicio','Icaza'),(28,2684,'LN\n','Arroyo','Agras'),(29,2885,'Name','Genuity Inc.','Genuity Media Solutions Inc.'),(30,2886,'Name','AA Fishery - Sta. Cruz','Astoria Financial Corporation - South'),(31,2887,'Name','Globe Telecom - Abreeza','Marshall & Ilsley Corporation'),(32,3015,'pstatus','0','2'),(33,3183,'pstatus','2','0'),(34,3197,'pstatus','0','2'),(35,3227,'pstatus','2','0'),(36,3239,'emergencyallowance\n','100.00','10000.00'),(37,3242,'sss\n','72.70','417.80'),(38,37,'withtax\n','0.00','481.73'),(39,38,'pstatus','0','2'),(40,3468,'pstatus','0','2'),(41,3691,'pstatus','0','2'),(42,3906,'pstatus','0','2'),(43,4135,'pstatus','0','2'),(44,4371,'emergencyallowance\n','100.00','10000.00'),(45,4374,'pstatus','0','2'),(46,4609,'emergencyallowance\n','100.00','1000.00'),(47,4612,'pstatus','0','2'),(48,5786,'pstatus','0','2'),(49,6104,'Manager','Joyce','Veracruz, Joyce Ann'),(50,6105,'Manager','Joseph Joffre','Joffre, Joseph'),(51,6163,'Weight\n','108 kg.','108 kg'),(52,51,'TelNo\n','212-1352.','212-1352'),(53,52,'LicenseNo\n','09-4986295-6','094 986 295.'),(54,53,'SSS\n','09-4986295-6','094 986 295.'),(55,54,'TIN\n','855-850-582','855 850 582.'),(56,55,'PhilHealth\n','34-178076138-5','34-178076138-5.'),(57,6240,'pstatus','0','2'),(58,6256,'pstatus','2','0'),(59,6276,'Weight\n','85 kg.','85  kg'),(60,59,'TelNo\n','212-9750.','212-9750'),(61,60,'LicenseNo\n','09-4876036-0','094 876 036.'),(62,61,'SSS\n','09-4876036-0','094 876 036.'),(63,62,'TIN\n','521-146-136','521 146 136.'),(64,63,'PhilHealth\n','74-357964379-5','74-357964379-5.'),(65,7041,'pstatus','0','2'),(66,7044,'pstatus','2','0'),(67,7049,'pstatus','0','2'),(68,7118,'pstatus','0','2'),(69,7122,'pstatus','2','0'),(70,7127,'emergencyallowance\n','100.00','8888.00'),(71,7130,'sss\n','36.30','345.20'),(72,71,'withtax\n','0.00','188.95'),(73,72,'pstatus','0','2'),(74,7919,'emergencyallowance\n','100.00','10000.00'),(75,7922,'pstatus','0','2'),(76,8211,'pstatus','0','2'),(77,8214,'pstatus','2','0'),(78,8244,'pstatus','0','2'),(79,8247,'pstatus','2','0'),(80,8277,'pstatus','0','2'),(81,8295,'pstatus','2','0'),(82,8300,'pagibig\n','100.00','50.00'),(83,82,'philhealth\n','120.00','50.00'),(84,83,'pstatus','0','2'),(85,8577,'pstatus','0','2'),(86,8642,'pstatus','0','2'),(87,9049,'ContactPerson\n','Joyce','Veracruz, Joyce Ann'),(88,9050,'ContactPerson\n','John French','Sales, Kyle'),(89,88,'Manager','Joffre, Joseph','Sales, Ryle');
/*!40000 ALTER TABLE `log_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginhistory`
--

DROP TABLE IF EXISTS `loginhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginhistory` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `session_start` datetime DEFAULT NULL,
  `session_end` datetime DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  KEY `fk_login_user_idx` (`uid`),
  CONSTRAINT `fk_login_user` FOREIGN KEY (`uid`) REFERENCES `account` (`accid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=621 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginhistory`
--

LOCK TABLES `loginhistory` WRITE;
/*!40000 ALTER TABLE `loginhistory` DISABLE KEYS */;
INSERT INTO `loginhistory` VALUES (423,0,'2017-09-19 23:08:19',NULL),(424,0,'2017-09-20 15:36:28',NULL),(425,0,'2017-09-20 20:42:06',NULL),(426,0,'2017-09-20 21:13:51',NULL),(427,0,'2017-09-20 21:16:14',NULL),(428,0,'2017-09-20 21:23:02',NULL),(429,0,'2017-09-20 21:34:52',NULL),(430,0,'2017-09-20 21:35:56',NULL),(431,0,'2017-09-20 21:39:09',NULL),(432,0,'2017-09-20 21:40:34',NULL),(433,0,'2017-09-20 21:41:21',NULL),(434,0,'2017-09-20 21:49:33',NULL),(435,0,'2017-09-20 22:49:59',NULL),(436,0,'2017-09-20 22:50:40',NULL),(437,0,'2017-09-20 22:54:41',NULL),(438,0,'2017-09-20 23:03:30',NULL),(439,0,'2017-09-21 00:55:36',NULL),(440,0,'2017-09-21 01:08:39',NULL),(441,0,'2017-09-21 01:14:47',NULL),(442,0,'2017-09-21 01:17:53',NULL),(443,0,'2017-09-21 01:20:05',NULL),(444,0,'2017-09-21 01:23:57',NULL),(445,0,'2017-09-21 01:25:41',NULL),(446,0,'2017-09-21 01:27:46',NULL),(447,0,'2017-09-21 01:32:47',NULL),(448,0,'2017-09-21 01:40:32',NULL),(449,0,'2017-09-21 01:41:53',NULL),(450,0,'2017-09-21 01:59:40',NULL),(451,0,'2017-09-21 02:01:05',NULL),(452,0,'2017-09-21 02:08:24',NULL),(453,0,'2017-09-21 03:20:32',NULL),(454,0,'2017-09-21 03:23:08',NULL),(455,0,'2017-09-21 03:30:47',NULL),(456,0,'2017-09-22 00:21:20',NULL),(457,0,'2017-09-22 00:31:07',NULL),(458,0,'2017-09-22 00:37:25',NULL),(459,0,'2017-09-22 00:46:30',NULL),(460,0,'2017-09-22 16:15:44',NULL),(461,0,'2017-09-22 16:44:59',NULL),(462,0,'2017-09-22 16:48:37',NULL),(463,0,'2017-09-23 12:22:08',NULL),(464,0,'2017-09-23 12:23:55',NULL),(465,0,'2017-09-23 13:37:39',NULL),(466,0,'2017-09-23 13:52:39',NULL),(467,0,'2017-09-23 13:59:35',NULL),(468,0,'2017-09-23 14:00:50',NULL),(469,0,'2017-09-23 14:01:38',NULL),(470,0,'2017-09-23 16:31:08',NULL),(471,0,'2017-09-23 19:18:59',NULL),(472,0,'2017-09-23 23:09:51',NULL),(473,0,'2017-09-23 23:32:38',NULL),(474,0,'2017-09-23 23:37:39',NULL),(475,0,'2017-09-23 23:43:10',NULL),(476,0,'2017-09-24 00:16:16',NULL),(477,0,'2017-09-24 00:23:19',NULL),(478,0,'2017-09-24 00:39:52',NULL),(479,0,'2017-09-24 00:42:04',NULL),(480,0,'2017-09-24 00:45:24',NULL),(481,0,'2017-09-24 00:50:15',NULL),(482,0,'2017-09-24 00:53:02',NULL),(483,0,'2017-09-24 00:55:35',NULL),(484,0,'2017-09-24 00:57:14',NULL),(485,0,'2017-09-24 01:21:24',NULL),(486,0,'2017-09-24 02:06:40',NULL),(487,0,'2017-09-25 16:16:57',NULL),(488,0,'2017-09-25 16:46:54',NULL),(489,0,'2017-09-25 16:48:48',NULL),(490,0,'2017-09-25 21:55:09',NULL),(491,0,'2017-09-25 22:18:23',NULL),(492,0,'2017-09-25 22:23:45',NULL),(493,0,'2017-09-25 22:25:23',NULL),(494,0,'2017-09-25 22:31:37',NULL),(495,0,'2017-09-25 22:35:45',NULL),(496,0,'2017-09-26 10:10:06',NULL),(497,0,'2017-09-26 10:14:58',NULL),(498,0,'2017-09-26 10:16:17',NULL),(499,0,'2017-09-26 10:23:05',NULL),(500,0,'2017-09-26 10:29:01',NULL),(501,0,'2017-09-26 10:36:07',NULL),(502,0,'2017-09-26 10:48:27',NULL),(503,0,'2017-09-26 10:51:27',NULL),(504,0,'2017-09-26 10:52:18',NULL),(505,0,'2017-09-26 11:02:44',NULL),(506,0,'2017-09-26 11:04:09',NULL),(507,0,'2017-09-26 11:07:38',NULL),(508,2,'2017-09-26 11:16:00',NULL),(509,1,'2017-09-26 11:19:59',NULL),(510,0,'2017-09-26 11:26:10',NULL),(511,0,'2017-09-27 15:03:30',NULL),(512,0,'2017-09-27 15:08:02',NULL),(513,0,'2017-09-27 15:12:21',NULL),(514,0,'2017-09-27 16:30:29',NULL),(515,0,'2017-09-27 16:31:28',NULL),(516,0,'2017-09-27 17:22:22',NULL),(517,0,'2017-09-28 00:36:50',NULL),(518,0,'2017-09-28 00:37:08',NULL),(519,0,'2017-09-28 00:40:36',NULL),(520,0,'2017-09-28 00:43:35',NULL),(521,0,'2017-09-28 00:46:08',NULL),(522,0,'2017-09-28 00:50:43',NULL),(523,0,'2017-09-28 00:53:18',NULL),(524,0,'2017-09-28 01:08:17',NULL),(525,0,'2017-09-28 01:12:50',NULL),(526,0,'2017-09-28 01:22:45',NULL),(527,0,'2017-09-28 01:23:26',NULL),(528,0,'2017-09-28 01:29:20',NULL),(529,0,'2017-09-28 01:30:01',NULL),(530,0,'2017-09-28 01:32:09',NULL),(531,0,'2017-10-10 01:35:25',NULL),(532,0,'2017-10-10 01:39:06',NULL),(533,0,'2017-10-12 01:44:02',NULL),(534,0,'2017-10-12 01:47:08',NULL),(535,0,'2017-10-12 01:49:02',NULL),(536,0,'2017-09-28 11:28:13',NULL),(537,0,'2017-09-28 11:37:21',NULL),(538,0,'2017-09-28 11:46:47',NULL),(539,0,'2017-09-28 11:47:43',NULL),(540,0,'2017-09-28 11:48:58',NULL),(541,0,'2017-09-28 11:51:48',NULL),(542,0,'2017-09-28 13:10:17',NULL),(543,0,'2017-09-28 13:11:40',NULL),(544,0,'2017-09-28 13:12:38',NULL),(545,0,'2017-09-28 13:13:28',NULL),(546,0,'2017-09-28 13:14:44',NULL),(547,0,'2017-09-28 13:18:30',NULL),(548,0,'2017-09-28 14:00:43',NULL),(549,0,'2017-09-28 14:01:08',NULL),(550,0,'2017-09-28 14:03:17',NULL),(551,0,'2017-09-28 20:34:05',NULL),(552,0,'2017-09-28 20:34:46',NULL),(553,0,'2017-09-28 20:35:28',NULL),(554,0,'2017-09-28 20:49:52',NULL),(555,0,'2017-09-28 21:26:47',NULL),(556,0,'2017-09-28 21:31:15',NULL),(557,0,'2017-09-28 21:31:55',NULL),(558,0,'2017-09-28 21:32:21',NULL),(559,0,'2017-09-28 21:33:22',NULL),(560,0,'2017-09-28 21:33:58',NULL),(561,0,'2017-09-28 21:38:59',NULL),(562,0,'2017-09-28 21:40:48',NULL),(563,0,'2017-09-28 21:42:22',NULL),(564,0,'2017-09-28 21:43:14',NULL),(565,0,'2017-09-28 21:58:27',NULL),(566,0,'2017-09-28 22:23:38',NULL),(567,0,'2017-09-28 22:28:16',NULL),(568,0,'2017-09-28 23:01:04',NULL),(569,0,'2017-10-05 23:05:22',NULL),(570,0,'2017-10-28 23:34:51',NULL),(571,0,'2017-10-28 23:40:11',NULL),(572,0,'2017-10-28 23:40:59',NULL),(573,0,'2017-10-28 23:41:38',NULL),(574,0,'2017-10-28 23:41:57',NULL),(575,0,'2017-09-28 23:43:32',NULL),(576,0,'2017-09-28 23:44:15',NULL),(577,0,'2017-09-28 23:51:55',NULL),(578,0,'2017-09-28 23:56:27',NULL),(579,0,'2017-09-28 23:59:06',NULL),(580,0,'2017-09-29 00:08:24',NULL),(581,0,'2017-10-07 00:11:30',NULL),(582,0,'2017-10-07 00:14:49',NULL),(583,0,'2017-10-16 00:28:15',NULL),(584,0,'2017-09-29 00:36:52',NULL),(585,0,'2017-09-29 00:39:43',NULL),(586,0,'2017-09-29 00:41:21',NULL),(587,0,'2017-09-29 00:43:01',NULL),(588,0,'2017-09-29 00:49:34',NULL),(589,0,'2017-09-29 01:00:22',NULL),(590,0,'2017-09-29 01:03:11',NULL),(591,0,'2017-09-29 01:04:32',NULL),(592,0,'2017-09-29 01:09:19',NULL),(593,0,'2017-09-29 02:05:22',NULL),(594,0,'2017-09-29 02:16:47',NULL),(595,0,'2017-10-01 02:24:49',NULL),(596,0,'2017-10-01 02:33:33',NULL),(597,0,'2017-10-01 02:39:15',NULL),(598,0,'2017-10-01 02:42:03',NULL),(599,0,'2017-10-01 02:44:26',NULL),(600,0,'2017-09-29 11:41:05',NULL),(601,0,'2017-09-29 11:56:14',NULL),(602,0,'2017-09-29 15:14:55',NULL),(603,0,'2017-09-29 15:20:40',NULL),(604,0,'2017-09-29 15:40:10',NULL),(605,0,'2017-09-29 15:58:46',NULL),(606,0,'2017-09-01 16:04:46',NULL),(607,0,'2017-09-01 16:21:16',NULL),(608,0,'2017-09-01 16:38:53',NULL),(609,0,'2017-09-01 16:47:10',NULL),(610,0,'2017-09-01 16:50:24',NULL),(611,0,'2017-09-01 17:21:56',NULL),(612,0,'2017-09-16 17:30:53',NULL),(613,0,'2017-09-16 17:31:37',NULL),(614,0,'2017-09-01 17:33:12',NULL),(615,0,'2017-09-01 17:37:55',NULL),(616,0,'2017-09-01 17:42:28',NULL),(617,0,'2017-09-01 18:01:25',NULL),(618,0,'2017-09-08 18:02:12',NULL),(619,0,'2017-09-08 18:03:22',NULL),(620,0,'2017-09-08 18:04:12',NULL);
/*!40000 ALTER TABLE `loginhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `new_view`
--

DROP TABLE IF EXISTS `new_view`;
/*!50001 DROP VIEW IF EXISTS `new_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view` AS SELECT 
 1 AS `gid`,
 1 AS `name`,
 1 AS `contactno`,
 1 AS `gstatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payroll`
--

DROP TABLE IF EXISTS `payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payroll` (
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `GID` int(11) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `period` int(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `rates_id` int(11) DEFAULT NULL,
  `cashbond` decimal(7,2) DEFAULT NULL,
  `thirteenth` decimal(7,2) DEFAULT NULL,
  `cola` decimal(7,2) DEFAULT NULL,
  `sss` decimal(7,2) DEFAULT NULL,
  `pagibig` decimal(7,2) DEFAULT NULL,
  `philhealth` decimal(7,2) DEFAULT NULL,
  `withtax` decimal(7,2) DEFAULT NULL,
  `cashadv` decimal(7,2) DEFAULT '0.00',
  `emergencyallowance` decimal(7,2) DEFAULT NULL,
  `totalsummary_serializable` blob,
  `hc_serializable` blob,
  `lastmodified` timestamp NULL DEFAULT NULL,
  `pstatus` int(1) DEFAULT NULL,
  `basicpayhourly` decimal(7,2) DEFAULT NULL,
  `approvedby` int(11) DEFAULT NULL,
  `sssinfo_ser` blob,
  PRIMARY KEY (`PID`),
  UNIQUE KEY `py_unq_idx` (`GID`,`year`,`month`,`period`),
  KEY `Payroll-Guards_idx` (`GID`),
  CONSTRAINT `Payroll-Guards` FOREIGN KEY (`GID`) REFERENCES `guards` (`GID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll`
--

LOCK TABLES `payroll` WRITE;
/*!40000 ALTER TABLE `payroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `msadb`.`payroll_AFTER_INSERT` AFTER INSERT ON `payroll` FOR EACH ROW
BEGIN

		INSERT INTO `msadb`.`adjustment_log` (`PID`, `AdjType`, `AdjDate`, `Value`) 
        VALUES (NEW.pid, 1, NOW(), NEW.cashbond);


		INSERT INTO `msadb`.`adjustment_log` (`PID`, `AdjType`, `AdjDate`, `Value`) 
        VALUES (NEW.pid, 2, NOW(), NEW.cola);


		INSERT INTO `msadb`.`adjustment_log` (`PID`, `AdjType`, `AdjDate`, `Value`) 
        VALUES (NEW.pid, 3, NOW(), NEW.cola); 

		INSERT INTO `msadb`.`adjustment_log` (`PID`, `AdjType`, `AdjDate`, `Value`) 
        VALUES (NEW.pid, 4, NOW(), NEW.cashadv);	


		INSERT INTO `msadb`.`adjustment_log` (`PID`, `AdjType`, `AdjDate`, `Value`) 
        VALUES (NEW.pid, 5, NOW(), NEW.emergencyallowance);    
        
        
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `msadb`.`payroll_BEFORE_UPDATE` 
BEFORE UPDATE ON `payroll` 
FOR EACH ROW
BEGIN
	IF NEW.cashbond <> OLD.cashbond THEN
		INSERT INTO `msadb`.`adjustment_log` (`PID`, `AdjType`, `AdjDate`, `Value`) 
        VALUES (NEW.pid, 1, NOW(), NEW.cashbond);
        END IF;
	IF NEW.cola <> OLD.cola THEN
		INSERT INTO `msadb`.`adjustment_log` (`PID`, `AdjType`, `AdjDate`, `Value`) 
        VALUES (NEW.pid, 2, NOW(), NEW.cola);
        END IF;
	IF NEW.thirteenth <> OLD.thirteenth THEN
		INSERT INTO `msadb`.`adjustment_log` (`PID`, `AdjType`, `AdjDate`, `Value`) 
        VALUES (NEW.pid, 3, NOW(), NEW.thirteenth); 
        END IF;
	IF NEW.cashadv <> OLD.cashadv THEN
		INSERT INTO `msadb`.`adjustment_log` (`PID`, `AdjType`, `AdjDate`, `Value`) 
        VALUES (NEW.pid, 4, NOW(), NEW.cashadv);	
        END IF;
	IF NEW.emergencyallowance <> OLD.emergencyallowance THEN
		INSERT INTO `msadb`.`adjustment_log` (`PID`, `AdjType`, `AdjDate`, `Value`) 
        VALUES (NEW.pid, 5, NOW(), NEW.emergencyallowance);    
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `msadb`.`payroll_AFTER_UPDATE` AFTER UPDATE ON `payroll` FOR EACH ROW
BEGIN
	INSERT INTO `msadb`.`log_action`
              (
                          `session_id`,
                          `ltimestamp`,
                          `crudcode`,
                          `isaction`,
                          `eventcode`,
                          `instance_name`
              )
              VALUES
              (
                          @cuser,
                          now(),
                          'U',
                          '0',
                          '4UAdjustment',
                          CONCAT('Payroll: ', 
								(select concat(ln,', ',fn,' ',mn) as name from guards where gid = OLD.gid), ' ',
                                OLD.year, ' ',
                                (SELECT MONTHNAME(STR_TO_DATE(OLD.`month`, '%m'))), ' ',
                                (case OLD.period
									when 1 then '1st Half'
                                    when 2 then '2nd Half'
									end)
                            )
              );
              
IF NEW.cashbond
 <> OLD.cashbond
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'cashbond
', OLD.cashbond
, NEW.cashbond
);

end if;

IF NEW.thirteenth
 <> OLD.thirteenth
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'thirteenth
', OLD.thirteenth
, NEW.thirteenth
);

end if;

IF NEW.cola
 <> OLD.cola
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'cola
', OLD.cola
, NEW.cola
);

end if;

IF NEW.sss
 <> OLD.sss
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'sss
', OLD.sss
, NEW.sss
);

end if;

IF NEW.pagibig
 <> OLD.pagibig
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'pagibig
', OLD.pagibig
, NEW.pagibig
);

end if;

IF NEW.philhealth
 <> OLD.philhealth
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'philhealth
', OLD.philhealth
, NEW.philhealth
);

end if;

IF NEW.withtax
 <> OLD.withtax
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'withtax
', OLD.withtax
, NEW.withtax
);

end if;

IF NEW.cashadv
 <> OLD.cashadv
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'cashadv
', OLD.cashadv
, NEW.cashadv
);

end if;

IF NEW.emergencyallowance
 <> OLD.emergencyallowance
 THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'emergencyallowance
', OLD.emergencyallowance
, NEW.emergencyallowance
);

end if;

IF NEW.pstatus <> OLD.pstatus THEN
	INSERT INTO `msadb`.`log_values` (`log_id`, `column`, `old`, `new`) 
		VALUES
	((select LAST_INSERT_ID()), 'pstatus', OLD.pstatus, NEW.pstatus);

end if;



END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `msadb`.`payroll_BEFORE_DELETE` BEFORE DELETE ON `payroll` FOR EACH ROW
BEGIN
	delete from adjustment_log where pid = OLD.pid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `period`
--

DROP TABLE IF EXISTS `period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `period` (
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `GID` int(11) DEFAULT NULL,
  `month` int(2) unsigned zerofill DEFAULT NULL,
  `period` int(1) unsigned zerofill DEFAULT NULL,
  `year` int(4) unsigned zerofill DEFAULT NULL,
  `certby` int(11) DEFAULT NULL,
  `CID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PID`),
  UNIQUE KEY `unq` (`month`,`GID`,`period`,`year`,`CID`),
  KEY `fk_period_guard_idx` (`GID`),
  CONSTRAINT `fk_period_guard` FOREIGN KEY (`GID`) REFERENCES `guards` (`GID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period`
--

LOCK TABLES `period` WRITE;
/*!40000 ALTER TABLE `period` DISABLE KEYS */;
INSERT INTO `period` VALUES (130,156,09,1,2017,47,14),(134,134,09,1,2017,19,8),(140,110,09,1,2017,8,8),(144,59,09,1,2017,11,11),(148,168,09,1,2017,8,8),(152,104,09,1,2017,45,12),(156,61,09,1,2017,47,14),(160,111,09,1,2017,NULL,14);
/*!40000 ALTER TABLE `period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personsinvolved`
--

DROP TABLE IF EXISTS `personsinvolved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personsinvolved` (
  `PIID` int(11) NOT NULL AUTO_INCREMENT,
  `IID` int(11) DEFAULT NULL,
  `InvolvementType` int(11) DEFAULT NULL,
  `FN` varchar(45) DEFAULT NULL,
  `MN` varchar(45) DEFAULT NULL,
  `LN` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PIID`),
  KEY `Involved-Report_idx` (`IID`),
  CONSTRAINT `Involved-Report` FOREIGN KEY (`IID`) REFERENCES `incidentreport` (`IID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personsinvolved`
--

LOCK TABLES `personsinvolved` WRITE;
/*!40000 ALTER TABLE `personsinvolved` DISABLE KEYS */;
/*!40000 ALTER TABLE `personsinvolved` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rates` (
  `rates_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_effective` datetime DEFAULT NULL,
  `date_dissolved` datetime DEFAULT NULL,
  `contrib_id` int(11) DEFAULT NULL,
  `ordinary_day` decimal(4,2) DEFAULT NULL,
  `special_holiday` decimal(4,2) DEFAULT NULL,
  `regular_holiday` decimal(4,2) DEFAULT NULL,
  `sunday_ordinary_day` decimal(4,2) DEFAULT NULL,
  `sunday_special_holiday` decimal(4,2) DEFAULT NULL,
  `sunday_regular_holiday` decimal(4,2) DEFAULT NULL,
  `nightdifferential` decimal(4,2) DEFAULT NULL,
  `overtime` decimal(4,2) DEFAULT NULL,
  `overtime_holiday` decimal(4,2) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`rates_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,'1970-01-01 00:00:00','2012-01-01 00:00:00',12,1.00,1.10,1.50,1.30,1.65,2.50,1.05,1.10,1.30,0),(2,'2012-01-01 00:00:00','2017-08-13 00:00:00',12,1.00,1.30,2.00,1.30,1.50,2.60,1.10,1.25,1.25,0),(3,'2017-08-13 00:00:00','9999-12-31 00:00:00',12,1.00,1.30,2.15,1.30,1.50,2.60,1.10,1.25,1.25,1);
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `RID` int(11) NOT NULL AUTO_INCREMENT,
  `RequestType` int(11) DEFAULT NULL,
  `CID` int(11) DEFAULT NULL,
  `DateEntry` varchar(45) DEFAULT NULL,
  `RStatus` int(11) DEFAULT NULL,
  `ProcessedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`RID`),
  KEY `fk_req_client_idx` (`CID`),
  CONSTRAINT `fk_req_client` FOREIGN KEY (`CID`) REFERENCES `client` (`CID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (1,1,12,'2017-09-01',3,0),(2,1,11,'2017-09-01',3,0),(3,1,14,'2017-09-01',3,0),(4,1,8,'2017-09-01',3,0);
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_assign`
--

DROP TABLE IF EXISTS `request_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_assign` (
  `RAID` int(11) NOT NULL AUTO_INCREMENT,
  `RID` int(11) DEFAULT NULL,
  `ContractStart` datetime DEFAULT NULL,
  `ContractEnd` datetime DEFAULT NULL,
  `streetno` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `streetname` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `brgy` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `NoGuards` int(11) DEFAULT NULL,
  PRIMARY KEY (`RAID`),
  KEY `rid_raid_idx` (`RID`),
  CONSTRAINT `rid_raid` FOREIGN KEY (`RID`) REFERENCES `request` (`RID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_assign`
--

LOCK TABLES `request_assign` WRITE;
/*!40000 ALTER TABLE `request_assign` DISABLE KEYS */;
INSERT INTO `request_assign` VALUES (1,1,'2017-09-01 00:00:00','2017-11-30 00:00:00','625','Juan Luna St.','Buhangin','Davao',6),(2,2,'2017-09-01 00:00:00','2017-11-30 00:00:00','76','Mercury St.','Sasa','Davao',7),(3,3,'2017-09-01 00:00:00','2017-11-30 00:00:00','15','Gemini St.','Kalipayan','Mati',10),(4,4,'2017-09-01 00:00:00','2017-11-30 00:00:00','1','Narra St.','Obrero','Davao',10);
/*!40000 ALTER TABLE `request_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_unassign`
--

DROP TABLE IF EXISTS `request_unassign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_unassign` (
  `RDID` int(11) NOT NULL AUTO_INCREMENT,
  `RID` int(11) DEFAULT NULL,
  `GID` int(11) DEFAULT NULL,
  `IID` int(11) DEFAULT NULL,
  `DateEffective` datetime DEFAULT NULL,
  PRIMARY KEY (`RDID`),
  KEY `fk_ru_idx` (`RID`),
  KEY `fk_ru2_idx` (`GID`),
  KEY `fk_ru3_idx` (`IID`),
  CONSTRAINT `fk_ru` FOREIGN KEY (`RID`) REFERENCES `request` (`RID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ru2` FOREIGN KEY (`GID`) REFERENCES `guards` (`GID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ru3` FOREIGN KEY (`IID`) REFERENCES `incidentreport` (`IID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_unassign`
--

LOCK TABLES `request_unassign` WRITE;
/*!40000 ALTER TABLE `request_unassign` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_unassign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sduty_assignment`
--

DROP TABLE IF EXISTS `sduty_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sduty_assignment` (
  `AID` int(11) NOT NULL AUTO_INCREMENT,
  `GID` int(11) DEFAULT NULL,
  `RAID` int(11) DEFAULT NULL,
  `AStatus` int(11) DEFAULT NULL,
  `AssignedOn` datetime DEFAULT NULL,
  `UnassignedOn` datetime DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`AID`),
  KEY `Assignment-Guard_idx` (`GID`),
  KEY `Assignment-Request_idx` (`RAID`),
  CONSTRAINT `Assignment-Guard` FOREIGN KEY (`GID`) REFERENCES `guards` (`GID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sa` FOREIGN KEY (`RAID`) REFERENCES `request_assign` (`RAID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sduty_assignment`
--

LOCK TABLES `sduty_assignment` WRITE;
/*!40000 ALTER TABLE `sduty_assignment` DISABLE KEYS */;
INSERT INTO `sduty_assignment` VALUES (1,99,1,1,'2017-09-01 00:00:00',NULL,12),(2,56,1,1,'2017-09-01 00:00:00',NULL,12),(3,109,1,1,'2017-09-01 00:00:00',NULL,12),(4,16,1,1,'2017-09-01 00:00:00',NULL,12),(5,26,1,1,'2017-09-01 00:00:00',NULL,12),(6,104,1,1,'2017-09-01 00:00:00',NULL,12),(7,73,2,1,'2017-09-01 00:00:00',NULL,11),(8,81,2,1,'2017-09-01 00:00:00',NULL,11),(9,28,2,1,'2017-09-01 00:00:00',NULL,11),(10,154,2,1,'2017-09-01 00:00:00',NULL,11),(11,36,2,1,'2017-09-01 00:00:00',NULL,11),(12,158,2,1,'2017-09-01 00:00:00',NULL,11),(13,59,2,1,'2017-09-01 00:00:00',NULL,11),(14,184,3,1,'2017-09-01 00:00:00',NULL,14),(15,93,3,1,'2017-09-01 00:00:00',NULL,14),(16,25,3,1,'2017-09-01 00:00:00',NULL,14),(17,71,3,1,'2017-09-01 00:00:00',NULL,14),(18,21,3,1,'2017-09-01 00:00:00',NULL,14),(19,143,3,1,'2017-09-01 00:00:00',NULL,14),(20,75,3,1,'2017-09-01 00:00:00',NULL,14),(21,61,3,1,'2017-09-01 00:00:00',NULL,14),(22,156,3,1,'2017-09-01 00:00:00',NULL,14),(23,111,3,1,'2017-09-01 00:00:00',NULL,14),(24,89,4,1,'2017-09-01 00:00:00',NULL,8),(25,112,4,1,'2017-09-01 00:00:00',NULL,8),(26,8,4,1,'2017-09-01 00:00:00',NULL,8),(27,15,4,1,'2017-09-01 00:00:00',NULL,8),(28,148,4,1,'2017-09-01 00:00:00',NULL,8),(29,11,4,1,'2017-09-01 00:00:00',NULL,8),(30,43,4,1,'2017-09-01 00:00:00',NULL,8),(31,168,4,1,'2017-09-01 00:00:00',NULL,8),(32,110,4,1,'2017-09-01 00:00:00',NULL,8),(33,134,4,1,'2017-09-01 00:00:00',NULL,8);
/*!40000 ALTER TABLE `sduty_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssscontrib`
--

DROP TABLE IF EXISTS `ssscontrib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssscontrib` (
  `sssid` int(11) NOT NULL AUTO_INCREMENT,
  `range_start` decimal(7,2) DEFAULT NULL,
  `range_end` decimal(7,2) DEFAULT NULL,
  `ec` decimal(7,2) DEFAULT NULL,
  `contrib_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sssid`),
  KEY `fk_sss_idx` (`contrib_id`),
  CONSTRAINT `fk_sss` FOREIGN KEY (`contrib_id`) REFERENCES `contribdetails` (`contrib_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssscontrib`
--

LOCK TABLES `ssscontrib` WRITE;
/*!40000 ALTER TABLE `ssscontrib` DISABLE KEYS */;
INSERT INTO `ssscontrib` VALUES (1,0.00,1249.99,36.30,5),(2,1250.00,1749.99,54.50,5),(3,1750.00,2249.99,72.70,5),(4,2250.00,2749.99,90.80,5),(5,2750.00,3249.99,109.00,5),(6,3250.00,3749.99,127.20,5),(7,3750.00,4249.99,145.30,5),(8,4250.00,4749.99,163.50,5),(9,4750.00,5249.99,181.70,5),(10,5250.00,5749.99,199.80,5),(11,5750.00,6249.99,218.00,5),(12,6250.00,6749.99,236.20,5),(13,6750.00,7249.99,254.30,5),(14,7250.00,7749.99,272.50,5),(15,7750.00,8249.99,290.70,5),(16,8250.00,8749.99,308.80,5),(17,8750.00,9249.99,327.00,5),(18,9250.00,9749.99,345.20,5),(19,9750.00,10249.99,363.30,5),(20,10250.00,10749.99,381.50,5),(21,10750.00,11249.99,399.70,5),(22,11250.00,11749.99,417.80,5),(23,11750.00,12249.99,436.00,5),(24,12250.00,12749.99,454.20,5),(25,12750.00,13249.99,472.30,5),(26,13250.00,13749.99,490.50,5),(27,13750.00,14249.99,508.70,5),(28,14250.00,14749.99,526.80,5),(29,14750.00,15249.99,545.00,5),(30,15250.00,15749.99,563.20,5),(31,15750.00,99999.99,581.30,5),(125,0.00,1999.99,23.00,1),(126,2000.00,5999.99,35.00,1),(127,6000.00,99999.99,400.00,1),(128,0.00,1999.99,4000.00,3),(129,2000.00,5999.99,5000.00,3),(130,6000.00,8999.99,6000.00,3),(131,9000.00,99999.99,7000.00,3),(132,0.00,1249.99,36.30,7),(133,1250.00,1749.99,54.50,7),(134,1750.00,2249.99,72.70,7),(135,2250.00,2749.99,90.80,7),(136,2750.00,3249.99,109.00,7),(137,3250.00,3749.99,127.20,7),(138,3750.00,4249.99,145.30,7),(139,4250.00,4749.99,163.50,7),(140,4750.00,6249.99,230.00,7),(141,6250.00,6749.99,236.20,7),(142,6750.00,7249.99,254.30,7),(143,7250.00,7749.99,272.50,7),(144,7750.00,8249.99,290.70,7),(145,8250.00,8749.99,308.80,7),(146,8750.00,9249.99,327.00,7),(147,9250.00,9749.99,345.20,7),(148,9750.00,10249.99,363.30,7),(149,10250.00,10749.99,381.50,7),(150,10750.00,11249.99,399.70,7),(151,11250.00,11749.99,417.80,7),(152,11750.00,12249.99,436.00,7),(153,12250.00,12749.99,454.20,7),(154,12750.00,13249.99,472.30,7),(155,13250.00,13749.99,490.50,7),(156,13750.00,14249.99,508.70,7),(157,14250.00,14749.99,526.80,7),(158,14750.00,15249.99,545.00,7),(159,15250.00,15749.99,563.20,7),(160,15750.00,99999.99,581.30,7);
/*!40000 ALTER TABLE `ssscontrib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withtax_bracket`
--

DROP TABLE IF EXISTS `withtax_bracket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withtax_bracket` (
  `wbid` int(11) NOT NULL AUTO_INCREMENT,
  `estatus` varchar(5) DEFAULT NULL,
  `bracket` decimal(7,2) DEFAULT '0.00',
  `bracket_end` decimal(7,2) DEFAULT '0.00',
  `taxid` int(11) DEFAULT NULL,
  `contrib_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`wbid`),
  KEY `fk_wb_idx` (`contrib_id`),
  KEY `fk_wb2_idx` (`taxid`),
  CONSTRAINT `fk_wb` FOREIGN KEY (`contrib_id`) REFERENCES `contribdetails` (`contrib_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_wb1` FOREIGN KEY (`taxid`) REFERENCES `withtax_value` (`wid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withtax_bracket`
--

LOCK TABLES `withtax_bracket` WRITE;
/*!40000 ALTER TABLE `withtax_bracket` DISABLE KEYS */;
INSERT INTO `withtax_bracket` VALUES (1,'z',1.00,0.00,1,6),(2,'z',0.00,0.00,2,6),(3,'z',417.00,0.00,3,6),(4,'z',1250.00,0.00,4,6),(5,'z',2917.00,0.00,5,6),(6,'z',5833.00,0.00,6,6),(7,'z',10417.00,0.00,7,6),(8,'z',20833.00,0.00,8,6),(9,'s0me0',1.00,0.00,1,6),(10,'s0me0',2083.00,0.00,2,6),(11,'s0me0',2500.00,0.00,3,6),(12,'s0me0',3333.00,0.00,4,6),(13,'s0me0',5000.00,0.00,5,6),(14,'s0me0',7917.00,0.00,6,6),(15,'s0me0',12500.00,0.00,7,6),(16,'s0me0',22917.00,0.00,8,6),(17,'s1me1',1.00,0.00,1,6),(18,'s1me1',3125.00,0.00,2,6),(19,'s1me1',3542.00,0.00,3,6),(20,'s1me1',4375.00,0.00,4,6),(21,'s1me1',6042.00,0.00,5,6),(22,'s1me1',88958.00,0.00,6,6),(23,'s1me1',16542.00,0.00,7,6),(24,'s1me1',23958.00,0.00,8,6),(25,'s2me2',1.00,0.00,1,6),(26,'s2me2',4167.00,0.00,2,6),(27,'s2me2',4583.00,0.00,3,6),(28,'s2me2',5417.00,0.00,4,6),(29,'s2me2',7083.00,0.00,5,6),(30,'s2me2',10000.00,0.00,6,6),(31,'s2me2',14583.00,0.00,7,6),(32,'s2me2',25000.00,0.00,8,6),(33,'s3me3',1.00,0.00,1,6),(34,'s3me3',5208.00,0.00,2,6),(35,'s3me3',5625.00,0.00,3,6),(36,'s3me3',6458.00,0.00,4,6),(37,'s3me3',8125.00,0.00,5,6),(38,'s3me3',11042.00,0.00,6,6),(39,'s3me3',15625.00,0.00,7,6),(40,'s3me3',26042.00,0.00,8,6),(41,'s4me4',1.00,0.00,1,6),(42,'s4me4',6250.00,0.00,2,6),(43,'s4me4',6667.00,0.00,3,6),(44,'s4me4',7500.00,0.00,4,6),(45,'s4me4',9167.00,0.00,5,6),(46,'s4me4',12083.00,0.00,6,6),(47,'s4me4',16667.00,0.00,7,6),(48,'s4me4',27083.00,0.00,8,6);
/*!40000 ALTER TABLE `withtax_bracket` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `msadb`.`withtax_bracket_BEFORE_DELETE` BEFORE DELETE ON `withtax_bracket` FOR EACH ROW
BEGIN
	delete from withtax_value where withtax_value.taxid = OLD.wbid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `withtax_value`
--

DROP TABLE IF EXISTS `withtax_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withtax_value` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(7,2) DEFAULT NULL,
  `excessmult` int(2) DEFAULT NULL,
  `INT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withtax_value`
--

LOCK TABLES `withtax_value` WRITE;
/*!40000 ALTER TABLE `withtax_value` DISABLE KEYS */;
INSERT INTO `withtax_value` VALUES (1,0.00,0,NULL),(2,0.00,5,NULL),(3,20.83,10,NULL),(4,104.17,15,NULL),(5,354.17,20,NULL),(6,937.50,25,NULL),(7,2083.33,30,NULL),(8,5208.33,32,NULL),(9,0.00,0,NULL),(10,0.00,5,NULL),(11,20.83,10,NULL),(12,104.17,15,NULL),(13,354.17,20,NULL),(14,937.50,25,NULL),(15,2083.33,30,NULL),(16,5208.33,32,NULL);
/*!40000 ALTER TABLE `withtax_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'msadb'
--
/*!50003 DROP FUNCTION IF EXISTS `count_assign` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `count_assign`(agid INT(11)) RETURNS int(11)
BEGIN
	DECLARE cnt INT;
    SET cnt = 0;
    
	select count(sduty_assignment.aid) INTO cnt from guards left join sduty_assignment ON sduty_assignment.GID = guards.gid where guards.gid = agid;
RETURN cnt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `archive_guard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `archive_guard`(IN agid INT(11))
BEGIN
	
INSERT INTO msadbarchive.guards
		SELECT msadb.guards.*, NOW()
		FROM msadb.guards
		WHERE gid = agid;
	-- DEL STATEMENT.
	
    INSERT INTO msadbarchive.address
		select msadb.address.*
        from msadb.address
        where gid=agid;
	-- DEL STATMENT
    
    INSERT INTO msadbarchive.dependents
		select msadb.dependents.*
        from msadb.dependents
        where gid=agid;
	-- DEL STATMENT
    

    INSERT INTO msadbarchive.sduty_assignment
		SELECT aid, gid, assignedon, unassignedon, msadb.client.cid, concat(streetno, ', ', streetname, ', ', brgy, ', ', city) as Location FROM msadb.sduty_assignment
		left join msadb.request_assign on msadb.request_assign.RAID = msadb.sduty_assignment.RAID
		left join msadb.request on msadb.request.RID = msadb.request_assign.RID
		left join msadb.client on msadb.client.cid = msadb.request.CID
        where gid=agid;
	-- DEL STATMENT
    
			INSERT INTO msadbarchive.dutydetails
					select msadb.dutydetails.*
                    from msadb.dutydetails 
                    where msadb.dutydetails.aid
                    in (SELECT  msadbarchive.sduty_assignment.aid
						FROM msadbarchive.sduty_assignment
						where msadbarchive.sduty_assignment.gid=agid);
    
    INSERT INTO msadbarchive.payroll
		SELECT msadb.payroll.*
        from msadb.payroll
        where gid=agid;
	-- DEL STATEMENT
    
    INSERT INTO msadbarchive.period
		(`PID`, `GID`, `month`, `period`, `year`, `certby`, `cid`)
		SELECT msadb.period.*
        from msadb.period
        where gid=agid;
	-- DEL STATEMENT
    
	INSERT INTO msadbarchive.attendance 
    (`AtID`, `DID`, `PID`, `Date`, `TimeIn`, `TimeOut`) 
		select msadb.attendance.*
		from msadb.attendance 
		where msadb.attendance.pid
		in (select msadbarchive.period.pid
			from msadbarchive.period
			where msadbarchive.period.gid = agid);
	-- DEL STATEMENT
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `debug_deleteallrecords` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `debug_deleteallrecords`()
BEGIN
		delete from attendance;
        alter table attendance auto_increment = 1;
        
        delete from msadb.dutydetails;
        alter table msadb.dutydetails auto_increment = 1;

        delete from msadb.sduty_assignment;
        alter table msadb.sduty_assignment auto_increment = 1;

        delete from msadb.request_assign;
        alter table msadb.request_assign auto_increment = 1;
        
        
        delete from msadb.request_unassign;
        alter table msadb.request_unassign auto_increment = 1;
                
        delete from msadb.request;
        alter table msadb.request auto_increment = 1;

        

        delete from msadb.adjustment_log;
        alter table msadb.adjustment_log auto_increment = 1;

        delete from msadb.payroll;
        alter table msadb.payroll auto_increment = 1;

        DELETE FROM msadb.period; 
        alter table msadb.period auto_increment = 1;

        delete from mysql.event;

		-- RESET ALL GUARDS TO INACTIEF
		update msadb.guards set gstatus=0;
            
		delete from personsinvolved;
		alter table personsinvolved auto_increment = 1;
		delete from msadb.incidentreport;
        alter table msadb.incidentreport auto_increment = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_all`()
BEGIN

	-- MODULE 4
	call init_checkdate_basicpay();
    call init_checkdate_contribs();
    call init_checkdate_rates();
    
    -- MODULE 3
    call init_checkdate_assignments();
    call init_checkdate_unactivateassignments();
    call init_status_clientstatus();
    call init_checkdate_requeststatus();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_assignments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_assignments`()
BEGIN
	-- MODULE 3
    call init_checkdate_assignmentstatus();
    call init_checkdate_unactivateassignments();
    call init_status_clientstatus();
    call init_checkdate_dutydetail();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_assignmentstatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_assignmentstatus`()
BEGIN

	-- Sets to active assignment if contract start is grater than now.
	UPDATE sduty_assignment
		left join request_assign on request_assign.RAID = sduty_assignment.RAID
    SET 
    astatus='1'
	WHERE 
		ContractStart < Now() 
        AND Now() < ContractEnd
        AND UnassignedOn IS NULL;
        
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_basicpay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_basicpay`()
BEGIN
	SET @cw = (select count(*) from basicpay where start<NOW() and `end`>NOW());
-- get ONLY the next pending basic pay
SET @de = (select start from basicpay where start<NOW() and `end`>NOW() and status=2 order by start desc limit 1);
	UPDATE msadb.basicpay
	set `end` = (case when (status=1 and @cw>1) then (@de)
    when (status=2 and @cw>1) then `end` 
    when (status=1 and @cw=1) then `end`
    when (status=2 and @cw=1) then `end` end),
    status = (case 	when (status=1 and (@cw)>1) then 0 
						when (status=2 and (@cw)>1) then 1 
                        when (status=1 and (@cw)=1) then status
						when (status=2 and (@cw)=1) then status end)
	where start<NOW() and `end`>NOW();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_contribs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_contribs`()
BEGIN
	SET @t1 = (select count(*) from contribdetails where date_effective<NOW() and `date_dissolved`>NOW() and type=1);
	SET @t2 = (select count(*) from contribdetails where date_effective<NOW() and `date_dissolved`>NOW() and type=2);
	SET @t3 = (select count(*) from contribdetails where date_effective<NOW() and `date_dissolved`>NOW() and type=3);

	-- get ONLY the next pending basic pay
			SET @de1 = (select date_effective from contribdetails where date_effective < NOW() and `date_dissolved`> NOW() and status = 2 and type = 1 order by date_effective desc limit 1);
			SET @de2 = (select date_effective from contribdetails where date_effective < NOW() and `date_dissolved`> NOW() and status = 2 and type = 2 order by date_effective desc limit 1);
			SET @de3 = (select date_effective from contribdetails where date_effective < NOW() and `date_dissolved`> NOW() and status = 2 and type = 3 order by date_effective desc limit 1);

	UPDATE msadb.contribdetails
			set `date_dissolved` = (case 
				-- Type 1
					when (status=1 and @t1>1 and type=1) then (@de1)
					when (status=2 and @t1>1 and type=1) then date_dissolved
					when (status=1 and @t1=1 and type=1) then date_dissolved
					when (status=2 and @t1=1 and type=1) then date_dissolved
					
				-- Type 2
					when(status = 1 and @t2 > 1 and type = 2) then(@de2)      
					when(status = 2 and @t2 > 1 and type = 2) then `date_dissolved` 
					when(status = 1 and @t2 = 1 and type = 2) then `date_dissolved`
					when(status = 2 and @t2 = 1 and type = 2) then `date_dissolved` 
					when(status = 0 and @t1 = 1 and type=2) then `date_dissolved`
			-- Type 3
					when(status = 1 and @t3 > 1 and type = 3) then(@de3)                 
					when(status = 2 and @t3 > 1 and type = 3) then `date_dissolved` 
					when(status = 1 and @t3 = 1 and type = 3) then `date_dissolved`
					when(status = 2 and @t3 = 1 and type = 3) then `date_dissolved`    
					when(status = 0 and @t3 = 1 and type = 3) then `date_dissolved`     
			end),
			
			status = (case 	
					when (status=1 and (@t1)>1 and type=1) then 0 
					when (status=2 and (@t1)>1 and type=1) then 1 
					when (status=1 and (@t1)=1 and type=1) then status
					when (status=2 and (@t1)=1 and type=1) then status 
					
					when (status=1 and (@t2)>1 and type = 2) then 0 
					when (status=2 and (@t2)>1 and type = 2) then 1 
					when (status=1 and (@t2)=1 and type = 2) then status
					when (status=2 and (@t2)=1 and type = 2) then status 
					
					when (status=1 and (@t3)>1 and type = 3) then 0 
					when (status=2 and (@t3)>1 and type = 3) then 1 
					when (status=1 and (@t3)=1 and type = 3) then status
					when (status=2 and (@t3)=1 and type = 3) then status 
					end)
	where date_effective<NOW() and `date_dissolved`>NOW();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_dutydetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_dutydetail`()
BEGIN

	-- DUTY DETAILS are inserted Pending by default.
    
    
	-- Update if Duty detail is already active (natural).
	UPDATE dutydetails
    SET 
    dstatus='1'
	WHERE 
		Date_Effective <= DATE_FORMAT(Now(),'%Y-%m-%d') 
        AND Now() < Date_Dismissal
        AND DismissedOn IS NULL;
        
	-- Update if Duty detail is already EXPIRED (natural).
	UPDATE dutydetails
    SET 
    dstatus='2', dismissedon=NOW()
	WHERE 
         DATE_FORMAT(Now(),'%Y-%m-%d') > Date_Dismissal
        AND DismissedOn IS NULL;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_gstatus_onapprove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_gstatus_onapprove`(IN agid INT(11))
BEGIN
	
    -- Get Number of payrolls.
	-- of the guard to be unassigned.
    SET @py = (SELECT count(*) from payroll where gid  = agid and pstatus = 0);
	
    -- UPDATE if has pending payroll.
    -- (if pending payroll count <> 0)
    IF @py<>0 THEN
		UPDATE `msadb`.`guards` SET `GStatus`='2' WHERE `GID`=agid;
	ELSE -- IF NO pending payrolls.
		UPDATE `msadb`.`guards` SET `GStatus`='0' WHERE `GID`=agid;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_gstatus_onunassign` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_gstatus_onunassign`(IN agid INT(11))
BEGIN
	
    -- Get Number of payrolls.
	-- of the guard to be unassigned.
    SET @py = (SELECT count(*) from payroll where gid  = agid and pstatus = 0);
	
    -- UPDATE if has pending payroll.
    -- (if pending payroll count <> 0)
    IF @py<>0 THEN
		UPDATE `msadb`.`guards` SET `GStatus`='2' WHERE `GID`=agid;
	ELSE -- IF NO pending payrolls.
		UPDATE `msadb`.`guards` SET `GStatus`='0' WHERE `GID`=agid;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_guardstatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_guardstatus`()
BEGIN
	-- Set to active
update
	                request_assign 
                    left join sduty_assignment on sduty_assignment.RAID=request_assign.RAID 
                    left join guards on guards.gid = sduty_assignment.GID
                set
	                gstatus=1,
                    astatus=1
                where
	                contractstart<now() AND ContractEnd>now() and gstatus=0 and astatus<>0;
                    
				
                -- Set to inactive if all payrolls are approved.
update
	            request_assign 
                left join sduty_assignment on sduty_assignment.RAID=request_assign.RAID 
                left join guards on guards.gid = sduty_assignment.GID
                left join payroll on payroll.gid = guards.gid
            set
	            gstatus=0,
                astatus=2
            where
	            ContractEnd<now() and (gstatus = 1 or gstatus=2) and pstatus=2;
                


  				
                -- Set to inactive if SOME PAYROLLS ARE UNAPPROVED.
update
	            request_assign 
                left join sduty_assignment on sduty_assignment.RAID=request_assign.RAID 
                left join guards on guards.gid = sduty_assignment.GID
                left join payroll on payroll.gid = guards.gid
            set
	            gstatus=0,
                astatus=2
            where
	             gstatus = 2 and pstatus=1;       
                 
                 -- set to inactive if naa syay pending payroll (gi-unapprove na sya)
update
	            request_assign 
                left join sduty_assignment on sduty_assignment.RAID=request_assign.RAID 
                left join guards on guards.gid = sduty_assignment.GID
                left join payroll on payroll.gid = guards.gid
            set
	            gstatus=0,
                astatus=2
            where
	             gstatus = 2 and pstatus=2;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_HolidayRepopulateOnNewYear` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_HolidayRepopulateOnNewYear`()
BEGIN

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_rates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_rates`()
BEGIN
		SET @cw = (select count(*) from rates where date_effective<NOW() and `date_dissolved`>NOW());
-- get ONLY the next pending basic pay
SET @de = (select date_effective from rates where date_effective<NOW() and `date_dissolved`>NOW() and status=2 order by date_effective desc limit 1);
	UPDATE msadb.rates
	set `date_dissolved` = (case when (status=1 and @cw>1) then (@de)
    when (status=2 and @cw>1) then `date_dissolved` 
    when (status=1 and @cw=1) then `date_dissolved`
    when (status=2 and @cw=1) then `date_dissolved` end),
    status = (case 	when (status=1 and (@cw)>1) then 0 
						when (status=2 and (@cw)>1) then 1 
                        when (status=1 and (@cw)=1) then status
						when (status=2 and (@cw)=1) then status end)
	where date_effective<NOW() and `date_dissolved`>NOW();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_requeststatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_requeststatus`()
BEGIN
	update msadb.request
		left join request_assign on request_assign.Rid = request.rid
		left join sduty_assignment on sduty_assignment.RAID = request_assign.rid
	SET 
		rstatus = 4
	WHERE
		contractend < now() and contractstart < now();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_unactivateassignments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_unactivateassignments`()
BEGIN
	UPDATE sduty_assignment
		left join request_assign on request_assign.RAID = sduty_assignment.RAID
    SET `UnassignedOn`= (`contractend`),
    astatus='2'
	WHERE request_assign.`RAID` IN
    (SELECT request_assign.raid FROM msadb.request_assign where contractend<DATE_FORMAT(NOW(), '%Y-%m=%d')) 
    AND UnassignedOn IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_status_clientstatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_status_clientstatus`()
BEGIN
	UPDATE `msadb`.`client` SET `CStatus`='1' WHERE `CID` IN
    (select cid from sduty_assignment where astatus=1 group by cid);
    UPDATE `msadb`.`client` SET `CStatus`='0' WHERE `CID` NOT IN
    (select cid from sduty_assignment where astatus=1 group by cid) and cstatus=1;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(IN uid INT(11))
BEGIN
	INSERT INTO `msadb`.`loginhistory` 
		(`uid`, `session_start`) 
    VALUES (uid, NOW());
    SET @cuser = uid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_holiday_addholiday` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_holiday_addholiday`(IN ds varchar(20), IN de varchar(20), IN nm VARCHAR(60), IN typee INT(1), IN trans INT(1))
BEGIN
	INSERT INTO `msadb`.`holiday` (`name`, `transferability`, `type`, `status`) VALUES (nm, trans, typee, 1);
    SET @k = (select last_insert_id());
    INSERT INTO `msadb`.`holiday_instance` (`hid`, `DateStart`, `DateEnd`) VALUES (@k, ds, de);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_holiday_remove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_holiday_remove`(IN hid INT(1))
BEGIN
	/*
		Step 1: This procedure removes a holiday (duh?)
        Set status of Holiday CLASS to 0,
        so next years cannot produce any more x holiday.alter
        
        Step 2: Also, deletes the existing INSTANCES 
        ONLY ON THE CURRENT YEAR. As if it never existed.
        
        To re-add holiday, new Holiday Class must be made
        but old instances of X holiday still references the 
        undeleted holiday.
    */
    
    -- STEP 1
    UPDATE `msadb`.`holiday` SET `status`='0' WHERE `hid`=hid;
    
	-- STEP 2
    DELETE FROM `msadb`.`holiday_instance` 
    WHERE 
		`hhid`='1' 
		 AND `DateStart` >= CONCAT(YEAR(CURDATE()), '-', '01-01 00:00:00');

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_holiday_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_holiday_update`(IN hid INT(11), IN ds varchar(20), IN de varchar(20), IN nm VARCHAR(60), IN typee INT(1), IN trans INT(1))
BEGIN

	-- Edit Class Definition
	UPDATE `msadb`.`holiday` 
    SET 
		`name`= name, 
        `transferability`=trans, 
        `type`=typee
	WHERE `hid`=hid;
	
    /*
    UPDATES date definition in CURRENT YEAR ONLY.
    Any holiday_instance less than current year will stay AS IS.
    */
    UPDATE `msadb`.`holiday_instance` 
    SET 
		`DateStart`=ds, 
        `DateEnd`=de 
	WHERE `DateStart` > CONCAT(YEAR(CURDATE()), '-', '01-01 00:00:00');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `guardslist`
--

/*!50001 DROP VIEW IF EXISTS `guardslist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `guardslist` AS select 1 AS `gid`,1 AS `name`,1 AS `contactno`,1 AS `gstatus` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view`
--

/*!50001 DROP VIEW IF EXISTS `new_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view` AS select 1 AS `gid`,1 AS `name`,1 AS `contactno`,1 AS `gstatus` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-08 18:13:48
CREATE DATABASE  IF NOT EXISTS `msadbarchive` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `msadbarchive`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: msadbarchive
-- ------------------------------------------------------
-- Server version	5.7.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `AID` int(11) NOT NULL AUTO_INCREMENT,
  `GID` int(11) DEFAULT NULL,
  `AType` int(11) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `StreetNo` varchar(45) DEFAULT NULL,
  `Brgy` varchar(45) DEFAULT NULL,
  `Street` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=862 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adjustment_log`
--

DROP TABLE IF EXISTS `adjustment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adjustment_log` (
  `AdjID` int(11) NOT NULL AUTO_INCREMENT,
  `AdjType` int(11) DEFAULT NULL,
  `AdjDate` timestamp NULL DEFAULT NULL,
  `Value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AdjID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adjustment_log`
--

LOCK TABLES `adjustment_log` WRITE;
/*!40000 ALTER TABLE `adjustment_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `adjustment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `AtID` int(11) NOT NULL AUTO_INCREMENT,
  `DID` int(11) DEFAULT NULL,
  `PID` int(11) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `TimeIn` varchar(45) DEFAULT '12:00 AM',
  `TimeOut` varchar(45) DEFAULT '12:00 AM',
  `normal_day` varchar(7) DEFAULT '00:00',
  `normal_night` varchar(7) DEFAULT '00:00',
  `holiday_day` varchar(7) DEFAULT '00:00',
  `holiday_night` varchar(7) DEFAULT '00:00',
  `total` varchar(7) DEFAULT '00:00',
  `attendancecol` varchar(45) DEFAULT '00:00',
  PRIMARY KEY (`AtID`),
  UNIQUE KEY `unique_index` (`Date`,`DID`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependents`
--

DROP TABLE IF EXISTS `dependents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependents` (
  `DeID` int(11) NOT NULL AUTO_INCREMENT,
  `DRelationship` int(11) DEFAULT NULL,
  `FN` varchar(45) DEFAULT NULL,
  `MN` varchar(45) DEFAULT NULL,
  `LN` varchar(45) DEFAULT NULL,
  `GID` int(11) DEFAULT NULL,
  PRIMARY KEY (`DeID`)
) ENGINE=InnoDB AUTO_INCREMENT=825 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependents`
--

LOCK TABLES `dependents` WRITE;
/*!40000 ALTER TABLE `dependents` DISABLE KEYS */;
/*!40000 ALTER TABLE `dependents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dutydetails`
--

DROP TABLE IF EXISTS `dutydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dutydetails` (
  `DID` int(11) NOT NULL AUTO_INCREMENT,
  `AID` int(11) DEFAULT NULL,
  `TI_hh` int(2) unsigned zerofill DEFAULT NULL,
  `TI_mm` int(2) unsigned zerofill DEFAULT NULL,
  `TI_period` varchar(3) DEFAULT NULL,
  `TO_hh` int(2) unsigned zerofill DEFAULT NULL,
  `TO_mm` int(2) unsigned zerofill DEFAULT NULL,
  `TO_period` varchar(3) DEFAULT NULL,
  `Mon` int(1) unsigned DEFAULT NULL,
  `Tue` int(1) unsigned DEFAULT NULL,
  `Wed` int(1) unsigned DEFAULT NULL,
  `Thu` int(1) unsigned DEFAULT NULL,
  `Fri` int(1) unsigned DEFAULT NULL,
  `Sat` int(1) unsigned DEFAULT NULL,
  `Sun` int(1) unsigned DEFAULT NULL,
  `DStatus` int(1) unsigned DEFAULT NULL,
  `minutediff` int(11) DEFAULT NULL,
  `TO_actual_hh` int(2) DEFAULT NULL,
  `TO_actual_mm` int(2) DEFAULT NULL,
  `TO_actual_period` varchar(3) DEFAULT NULL,
  `Date_Effective` datetime DEFAULT NULL,
  `date_dismissal` datetime DEFAULT NULL,
  `dismissedon` datetime DEFAULT NULL,
  PRIMARY KEY (`DID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dutydetails`
--

LOCK TABLES `dutydetails` WRITE;
/*!40000 ALTER TABLE `dutydetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `dutydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guards`
--

DROP TABLE IF EXISTS `guards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guards` (
  `GID` int(11) NOT NULL AUTO_INCREMENT,
  `FN` varchar(45) DEFAULT NULL,
  `MN` varchar(45) DEFAULT NULL,
  `LN` varchar(45) DEFAULT NULL,
  `GStatus` int(11) DEFAULT NULL,
  `BDate` varchar(45) DEFAULT NULL,
  `Gender` int(11) DEFAULT NULL,
  `Height` varchar(45) DEFAULT NULL,
  `Weight` varchar(45) DEFAULT NULL,
  `Religion` varchar(45) DEFAULT NULL,
  `CivilStatus` int(11) DEFAULT NULL,
  `CellNo` varchar(45) DEFAULT NULL,
  `TelNo` varchar(45) DEFAULT NULL,
  `LicenseNo` varchar(45) DEFAULT NULL,
  `SSS` varchar(45) DEFAULT NULL,
  `TIN` varchar(45) DEFAULT NULL,
  `PhilHealth` varchar(45) DEFAULT NULL,
  `PrevAgency` varchar(45) DEFAULT NULL,
  `PrevAss` varchar(200) DEFAULT NULL,
  `EdAtt` int(11) DEFAULT NULL,
  `Course` varchar(45) DEFAULT NULL,
  `MilitaryTrainings` varchar(200) DEFAULT NULL,
  `EmergencyContact` varchar(45) DEFAULT NULL,
  `EmergencyNo` varchar(45) DEFAULT NULL,
  `gtype` int(1) DEFAULT NULL,
  `archivedon` datetime DEFAULT NULL,
  PRIMARY KEY (`GID`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guards`
--

LOCK TABLES `guards` WRITE;
/*!40000 ALTER TABLE `guards` DISABLE KEYS */;
/*!40000 ALTER TABLE `guards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `guardslist`
--

DROP TABLE IF EXISTS `guardslist`;
/*!50001 DROP VIEW IF EXISTS `guardslist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `guardslist` AS SELECT 
 1 AS `gid`,
 1 AS `name`,
 1 AS `contactno`,
 1 AS `gstatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `holiday`
--

DROP TABLE IF EXISTS `holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holiday` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `datestart` varchar(45) DEFAULT NULL,
  `dateend` varchar(45) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `ds_MM` int(2) DEFAULT NULL,
  `ds_dd` int(2) DEFAULT NULL,
  `ds_yyyy` int(4) DEFAULT NULL,
  `de_MM` int(2) DEFAULT NULL,
  `de_dd` int(2) DEFAULT NULL,
  `de_yyyy` int(4) DEFAULT NULL,
  `desc` varchar(120) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holiday`
--

LOCK TABLES `holiday` WRITE;
/*!40000 ALTER TABLE `holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidentreport`
--

DROP TABLE IF EXISTS `incidentreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incidentreport` (
  `IID` int(11) NOT NULL AUTO_INCREMENT,
  `ReportType` int(11) DEFAULT NULL,
  `PCompleting` varchar(45) DEFAULT NULL,
  `EventDate` varchar(45) DEFAULT NULL,
  `EventLocation` varchar(45) DEFAULT NULL,
  `Description` longtext,
  `DateEntry` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidentreport`
--

LOCK TABLES `incidentreport` WRITE;
/*!40000 ALTER TABLE `incidentreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `incidentreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `new_view`
--

DROP TABLE IF EXISTS `new_view`;
/*!50001 DROP VIEW IF EXISTS `new_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view` AS SELECT 
 1 AS `gid`,
 1 AS `name`,
 1 AS `contactno`,
 1 AS `gstatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payroll`
--

DROP TABLE IF EXISTS `payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payroll` (
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `GID` int(11) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `period` int(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `rates_id` int(11) DEFAULT NULL,
  `cashbond` decimal(7,2) DEFAULT NULL,
  `thirteenth` decimal(7,2) DEFAULT NULL,
  `cola` decimal(7,2) DEFAULT NULL,
  `sss` decimal(7,2) DEFAULT NULL,
  `pagibig` decimal(7,2) DEFAULT NULL,
  `philhealth` decimal(7,2) DEFAULT NULL,
  `withtax` decimal(7,2) DEFAULT NULL,
  `cashadv` decimal(7,2) DEFAULT '0.00',
  `emergencyallowance` decimal(7,2) DEFAULT NULL,
  `totalsummary_serializable` blob,
  `hc_serializable` blob,
  `lastmodified` timestamp NULL DEFAULT NULL,
  `pstatus` int(1) DEFAULT NULL,
  `basicpayhourly` decimal(7,2) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `sssinfo_ser` blob,
  PRIMARY KEY (`PID`),
  KEY `Payroll-Guards_idx` (`GID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll`
--

LOCK TABLES `payroll` WRITE;
/*!40000 ALTER TABLE `payroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `period`
--

DROP TABLE IF EXISTS `period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `period` (
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `GID` int(11) DEFAULT NULL,
  `month` int(2) unsigned zerofill DEFAULT NULL,
  `period` int(1) unsigned zerofill DEFAULT NULL,
  `year` int(4) unsigned zerofill DEFAULT NULL,
  `certby` varchar(120) DEFAULT '',
  `holiday_day` varchar(7) DEFAULT NULL,
  `holiday_night` varchar(7) DEFAULT NULL,
  `normal_day` varchar(7) DEFAULT NULL,
  `normal_night` varchar(7) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `hp` blob,
  PRIMARY KEY (`PID`),
  UNIQUE KEY `unq` (`month`,`GID`,`period`,`year`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period`
--

LOCK TABLES `period` WRITE;
/*!40000 ALTER TABLE `period` DISABLE KEYS */;
/*!40000 ALTER TABLE `period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personsinvolved`
--

DROP TABLE IF EXISTS `personsinvolved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personsinvolved` (
  `PIID` int(11) NOT NULL AUTO_INCREMENT,
  `IID` int(11) DEFAULT NULL,
  `InvolvementType` int(11) DEFAULT NULL,
  `FN` varchar(45) DEFAULT NULL,
  `MN` varchar(45) DEFAULT NULL,
  `LN` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PIID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personsinvolved`
--

LOCK TABLES `personsinvolved` WRITE;
/*!40000 ALTER TABLE `personsinvolved` DISABLE KEYS */;
/*!40000 ALTER TABLE `personsinvolved` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `RID` int(11) NOT NULL AUTO_INCREMENT,
  `RequestType` int(11) DEFAULT NULL,
  `CID` int(11) DEFAULT NULL,
  `DateEntry` varchar(45) DEFAULT NULL,
  `RStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`RID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_assign`
--

DROP TABLE IF EXISTS `request_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_assign` (
  `RAID` int(11) NOT NULL AUTO_INCREMENT,
  `RID` int(11) DEFAULT NULL,
  `ContractStart` datetime DEFAULT NULL,
  `ContractEnd` datetime DEFAULT NULL,
  `streetno` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `streetname` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `brgy` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `NoGuards` int(11) DEFAULT NULL,
  PRIMARY KEY (`RAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_assign`
--

LOCK TABLES `request_assign` WRITE;
/*!40000 ALTER TABLE `request_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_unassign`
--

DROP TABLE IF EXISTS `request_unassign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_unassign` (
  `RDID` int(11) NOT NULL AUTO_INCREMENT,
  `RID` int(11) DEFAULT NULL,
  `GID` int(11) DEFAULT NULL,
  `IID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_unassign`
--

LOCK TABLES `request_unassign` WRITE;
/*!40000 ALTER TABLE `request_unassign` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_unassign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sduty_assignment`
--

DROP TABLE IF EXISTS `sduty_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sduty_assignment` (
  `AID` int(11) NOT NULL AUTO_INCREMENT,
  `GID` int(11) DEFAULT NULL,
  `AssignedOn` datetime DEFAULT NULL,
  `UnassignedOn` datetime DEFAULT NULL,
  `CID` int(11) DEFAULT NULL,
  `Address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sduty_assignment`
--

LOCK TABLES `sduty_assignment` WRITE;
/*!40000 ALTER TABLE `sduty_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sduty_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'msadbarchive'
--
/*!50003 DROP PROCEDURE IF EXISTS `debug_deleteallrecords` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `debug_deleteallrecords`()
BEGIN
		delete from attendance;
        alter table attendance auto_increment = 1;

        delete from msadb.dutydetails;
        alter table msadb.dutydetails auto_increment = 1;

        delete from msadb.sduty_assignment;
        alter table msadb.sduty_assignment auto_increment = 1;

        delete from msadb.request_assign;
        alter table msadb.request_assign auto_increment = 1;

        delete from msadb.request_unassign;
        alter table msadb.request_unassign auto_increment = 1;
                
        delete from msadb.request;
        alter table msadb.request auto_increment = 1;

        delete from msadb.incidentreport;
        alter table msadb.incidentreport auto_increment = 1;

        delete from msadb.adjustment_log;
        alter table msadb.adjustment_log auto_increment = 1;

        delete from msadb.payroll;
        alter table msadb.payroll auto_increment = 1;

        DELETE FROM msadb.period; 
        alter table msadb.period auto_increment = 1;

        delete from mysql.event;

		-- RESET ALL GUARDS TO INACTIEF
		update msadb.guards set gstatus=2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_all`()
BEGIN
	call init_checkdate_basicpay();
    call init_checkdate_contribs();
    call init_checkdate_rates();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_basicpay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_basicpay`()
BEGIN
	SET @cw = (select count(*) from basicpay where start<NOW() and `end`>NOW());
-- get ONLY the next pending basic pay
SET @de = (select start from basicpay where start<NOW() and `end`>NOW() and status=2 order by start desc limit 1);
	UPDATE msadb.basicpay
	set `end` = (case when (status=1 and @cw>1) then (@de)
    when (status=2 and @cw>1) then `end` 
    when (status=1 and @cw=1) then `end`
    when (status=2 and @cw=1) then `end` end),
    status = (case 	when (status=1 and (@cw)>1) then 0 
						when (status=2 and (@cw)>1) then 1 
                        when (status=1 and (@cw)=1) then status
						when (status=2 and (@cw)=1) then status end)
	where start<NOW() and `end`>NOW();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_contribs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_contribs`()
BEGIN
	SET @t1 = (select count(*) from contribdetails where date_effective<NOW() and `date_dissolved`>NOW() and type=1);
	SET @t2 = (select count(*) from contribdetails where date_effective<NOW() and `date_dissolved`>NOW() and type=2);
	SET @t3 = (select count(*) from contribdetails where date_effective<NOW() and `date_dissolved`>NOW() and type=3);

	-- get ONLY the next pending basic pay
			SET @de1 = (select date_effective from contribdetails where date_effective < NOW() and `date_dissolved`> NOW() and status = 2 and type = 1 order by date_effective desc limit 1);
			SET @de2 = (select date_effective from contribdetails where date_effective < NOW() and `date_dissolved`> NOW() and status = 2 and type = 2 order by date_effective desc limit 1);
			SET @de3 = (select date_effective from contribdetails where date_effective < NOW() and `date_dissolved`> NOW() and status = 2 and type = 3 order by date_effective desc limit 1);

	UPDATE msadb.contribdetails
			set `date_dissolved` = (case 
				-- Type 1
					when (status=1 and @t1>1 and type=1) then (@de1)
					when (status=2 and @t1>1 and type=1) then date_dissolved
					when (status=1 and @t1=1 and type=1) then date_dissolved
					when (status=2 and @t1=1 and type=1) then date_dissolved
					
				-- Type 2
					when(status = 1 and @t2 > 1 and type = 2) then(@de2)      
					when(status = 2 and @t2 > 1 and type = 2) then `date_dissolved` 
					when(status = 1 and @t2 = 1 and type = 2) then `date_dissolved`
					when(status = 2 and @t2 = 1 and type = 2) then `date_dissolved` 
					when(status = 0 and @t1 = 1 and type=2) then `date_dissolved`
			-- Type 3
					when(status = 1 and @t3 > 1 and type = 3) then(@de3)                 
					when(status = 2 and @t3 > 1 and type = 3) then `date_dissolved` 
					when(status = 1 and @t3 = 1 and type = 3) then `date_dissolved`
					when(status = 2 and @t3 = 1 and type = 3) then `date_dissolved`    
					when(status = 0 and @t3 = 1 and type = 3) then `date_dissolved`     
			end),
			
			status = (case 	
					when (status=1 and (@t1)>1 and type=1) then 0 
					when (status=2 and (@t1)>1 and type=1) then 1 
					when (status=1 and (@t1)=1 and type=1) then status
					when (status=2 and (@t1)=1 and type=1) then status 
					
					when (status=1 and (@t2)>1 and type = 2) then 0 
					when (status=2 and (@t2)>1 and type = 2) then 1 
					when (status=1 and (@t2)=1 and type = 2) then status
					when (status=2 and (@t2)=1 and type = 2) then status 
					
					when (status=1 and (@t3)>1 and type = 3) then 0 
					when (status=2 and (@t3)>1 and type = 3) then 1 
					when (status=1 and (@t3)=1 and type = 3) then status
					when (status=2 and (@t3)=1 and type = 3) then status 
					end)
	where date_effective<NOW() and `date_dissolved`>NOW();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `init_checkdate_rates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `init_checkdate_rates`()
BEGIN
		SET @cw = (select count(*) from rates where date_effective<NOW() and `date_dissolved`>NOW());
-- get ONLY the next pending basic pay
SET @de = (select date_effective from rates where date_effective<NOW() and `date_dissolved`>NOW() and status=2 order by date_effective desc limit 1);
	UPDATE msadb.rates
	set `date_dissolved` = (case when (status=1 and @cw>1) then (@de)
    when (status=2 and @cw>1) then `date_dissolved` 
    when (status=1 and @cw=1) then `date_dissolved`
    when (status=2 and @cw=1) then `date_dissolved` end),
    status = (case 	when (status=1 and (@cw)>1) then 0 
						when (status=2 and (@cw)>1) then 1 
                        when (status=1 and (@cw)=1) then status
						when (status=2 and (@cw)=1) then status end)
	where date_effective<NOW() and `date_dissolved`>NOW();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `guardslist`
--

/*!50001 DROP VIEW IF EXISTS `guardslist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `guardslist` AS select 1 AS `gid`,1 AS `name`,1 AS `contactno`,1 AS `gstatus` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view`
--

/*!50001 DROP VIEW IF EXISTS `new_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view` AS select 1 AS `gid`,1 AS `name`,1 AS `contactno`,1 AS `gstatus` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-08 18:13:48