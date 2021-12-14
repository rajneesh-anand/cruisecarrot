-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: cruisecarrot
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Prefix` char(3) NOT NULL,
  `Date` date DEFAULT NULL,
  `Account_Type` varchar(45) DEFAULT NULL,
  `Account_Name` varchar(200) DEFAULT NULL,
  `Remarks` varchar(200) DEFAULT NULL,
  `Opening_Balance` decimal(12,2) DEFAULT NULL,
  `Credit_Amount` decimal(12,2) DEFAULT NULL,
  `Debit_Amount` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id`,`Prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'ACC','2020-11-20','BANK ACCOUNT','PUNJAB NATIONAL BANK','',0.00,0.00,0.00),(2,'ACC','2020-11-20','ASSETS','CASH IN HAND','',0.00,0.00,0.00),(3,'ACC','2020-11-20','BANK ACCOUNT','HDFC BANK',NULL,0.00,0.00,0.00),(4,'ACC','2021-03-09','BANK ACCOUNT','ICICI BANK','',0.00,0.00,0.00),(5,'ACC','2021-12-11','ASSETS','YES BANK','',0.00,0.00,0.00),(15,'ACC','2021-12-11','CAPITAL','TEST ACCOUNT','',0.00,0.00,0.00);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_category`
--

DROP TABLE IF EXISTS `accounts_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Prefix` char(3) NOT NULL,
  `Cat_Name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`,`Prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_category`
--

LOCK TABLES `accounts_category` WRITE;
/*!40000 ALTER TABLE `accounts_category` DISABLE KEYS */;
INSERT INTO `accounts_category` VALUES (1,'CAT','ASSETS'),(2,'CAT','CAPITAL'),(3,'CAT','EXPENSES'),(4,'CAT','LIABILITIES'),(5,'CAT','REVENUE'),(6,'CAT','BANK ACCOUNT');
/*!40000 ALTER TABLE `accounts_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Prefix` char(3) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address_line_one` varchar(500) NOT NULL,
  `address_line_two` varchar(500) DEFAULT NULL,
  `city` varchar(500) NOT NULL,
  `state` varchar(500) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `gstin` varchar(30) NOT NULL,
  `pan` varchar(30) NOT NULL,
  `email` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`,`Prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (5,'CUS','SHEERAZ TOURS PVT LTD.','','B-105, FIRST FLOOR, ROHTAS SUMMIT ','VIBHUTI KHAND, GOMTI NAGAR','LUCKNOW','30',110052,'919336820433','522 2200578','09AALCS5701L1ZY','PAN1234rtt','sales2@sheeraztoursindia.com'),(15,'CUS','FGFGHFGHF','','GGFGF','','DELHI','4',110052,'','','GHJGH111','2323ssdsd','abc@gmail.com'),(25,'CUS','APJ TOURS AND TRAVELS ','PRIVATE LIMITED','3/3 DIWAN HALL, BHAGIRATH PALACE, ','CHANDNI CHOWK','DELHI','7',110006,'9999367015','011-46764676 ','07AAJCA8407D2ZT','AAJCA8407D','info@apjtours.com'),(35,'CUS','SRIBALAJI OVERSEAS ','','13-14 C PUBLIC PARK,GOLE BAZAR','','SRIGANGANAGAR','24',335001,'77330 55754','0154 2445900 ','08AAWFM0610J1Z3','AAWFM0610J','sribalaji.oc@hotmail.com'),(45,'CUS','HEENA AIRWAYS','','29, GROUND FLOOR, SRIRAM TOWER, ','ASHOK MARG',' LUCKNOW ','30',226001,'9307878786','5222286141','0000000','','ajaznaqvi@heenaairways.com'),(55,'CUS','APJ TOURS AND TRAVELS PRIVATE LIMITED','','3/3 DIWAN HALL, BHAGIRATH PALACE','CHANDNI CHOWK',' DELHI','7',110006,'9999367015','011-46764676 ','07AAJCA8407D2ZT','AAJCA8407D','info@apjtours.com'),(65,'CUS','PEPPY HOLIDAYS PRIVATE LIMITED','','B-4/336, NAND NAGRI, SHAHDARA,','NORTH EAST DELHI,','DELHI','7',110093,'+91 9899563848','','07AAJCP3914A1ZR','AAJCP3914A','pankaj.kumar@peppyholidays.com'),(75,'CUS','PARADISE HOLIDAYS ','','MZ 21 BANSI TRADE CENTER','581/5 M.G. ROAD  INDORE ','INDORE','16',452001,'9826266475','0731-2547709','23AAGCT2344D1ZS','AAGCT2344D','paradiseholidays21@gmail.com'),(85,'CUS','THE DREAM PLANNER ','','OFFICE NO 11 , DCF COMPLEX , MINT HOUSE ','NEAR TAJ HOTEL , NADESAR ','VARANASI','30',221002,'9415354344 ','0542 - 2501400','0','0','tdpvns@gmail.com'),(95,'CUS','PREM TRAVELS & TOURS','','STATION ROAD BUDH BAZAR ','MORADABAD ','MORADABAD ','30',244001,'9837040005','','09AACFP1017G1ZM','AACFP1017G','avneesh@premtravels.com'),(105,'CUS','OSHO TOUR AND TRAVEL','','T-1A,MARUTI PLAZA, FLOOR,SANJAY','3RD FLOOR, SANJAY PLACE AGRA','AGRA','30',282001,'9837157682','','09BAQPB9631K1Z7','BAQPB9631K','oshotoursntravels@gmail.com'),(115,'CUS','MYOHO HOLIDAYS','','147.SULTANPUR','M.G.ROAD','NEW DELHI','7',110030,'9667417383','','0','0','myohotour@gmail.com'),(125,'CUS','TRAVEL N SURVEY ADVISORY OF INDIA','','FIRST FLOOR, SHOP NO- F F S7, ASHOKA TOWER','ASHOK MARG','LUCKNOW','30',226001,'7460060333','','09AZLPD8541P2ZM','AZLPD8541P','tanvi.tsaofindia@gmail.com'),(135,'CUS','PLAN A TICKET ','PRIVATE LIMITED ','08/59, TALAB GAGNI SHUKL, ','MODEL HOUSE, ','LUCKNOW','30',226001,'919839131436','000','09AALCP5875AIZ5 ','AALCP5875A','smhholidays@gmail.com'),(145,'CUS','ILTC TRAVELS PVT. LTD','','202-203, KANISHKA COMMERCIAL COMPLEX','SAINI ENCLAVE COMMUNITY CENTER VIKAS MARG','DELHI','7',110092,'9810386649','01142508355','0000','','yovita@iltcindia.com'),(155,'CUS','HUNGRY BAGS PRIVATE LIMITED ','','315/274, 2ND FLOOR WESTEND MARG','NEAR GARDEN OF FIVE SENSES II SAID-UL-AJAIB II ','NEW DELHI','7',110030,'9811798666','011-43955501','07AACCH6311E1Z1','AACCH6311E ','b2bobt3@hungrybags.com'),(165,'CUS','SRIBALAJI OVERSEA SOLTUION','','13-14 C PUBLIC PARK,GOLE BAZAR ','','SRIGANGANAGA','24',335001,'77330 55753','0154 2445900   ','08AAWFM0610J1Z3','AAWFM0610J','sahil@sribalajioverseas.com'),(175,'CUS','ATLANTIS VACATION & HOLIDAYS','','C6/73, SADAT PUR, ','WEST KARAWAL NAGAR,','DELHI','7',110094,'9953717601','','00000000','','atlantisvacationholidays@gmail.com'),(185,'CUS','IMAD TRAVEL PVT. LTD.','','1, (6-3-248/H/1),ROAD NO.1,BANJARA HILLS,','NEAR KARACHI BAKERY','HYDERABAD','27',500034,'9100966743','4066036600','00','','prachi@imadtravel.com'),(195,'CUS','SAGA VACATIONS PVT LTD','','GF 2 CHINTELS HOUSE','16 STATION ROAD','LUCKNOW','30',226001,'7703000583','522- 4043700','09AAYCS0875L1ZC','AAYCS0875L1Z','anurag.s@sagavacations.co.in'),(205,'CUS','TRAVEL JOCKEY ','HOLIDAYS & IMMIGRATION','124, RAJHANS POINT, NEAR RAILWAY STATION ','VARACHHA MAIN ROAD','SURAT ','9',395006,'91 99789 78369 ','261 400 4848','000','','booking@mytraveljockey.com'),(215,'CUS','TRAVELOWIZ','','OFFICE NUMBER- 328, 3RD FLOOR','D&E BLOCK, ,VIP ROAD','ZIRAKPUR','5',140603,'9877043008','01762523669','03AAPFT8291B1Z1','AAPFT8291B1Z','manish@travelowiz.com'),(225,'CUS','TRAVEL BUGS','','FLAT O - 4TH FLOOR, SOUTH PATEL NAGAR','NEAR PATEL NAGAR METRO STATION','NEW DELHI ','7',110008,'9891680915','011 45583192','0000','','singla@travelbugs.in'),(245,'CUS','MY TRAVEL GO','','UNIT NO - 602, 6TH FLOOR, KRISHNA APRA BUILDING,','NEAR FUN CINEMA, NETAJI SUBHASH PLACE, PITAMPURA ','DELHI','7',110034,'91-9711877124','91-9250072037','000','00','info@mytravelgo.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `Invoice_Id` int NOT NULL AUTO_INCREMENT,
  `Invoice_Number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Invoice_Type` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Invoice_Date` date NOT NULL,
  `Departure_Date` date NOT NULL,
  `Agent_Name` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Cruise_Ship` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cruise` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Currency` int NOT NULL,
  `Booking` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Cabin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Cat_Bkg` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Pass_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nationality` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Adults` int DEFAULT NULL,
  `Children` int DEFAULT NULL,
  `Infants` int DEFAULT NULL,
  `Adults_Rate` decimal(18,2) DEFAULT NULL,
  `Children_Rate` decimal(18,2) DEFAULT NULL,
  `Infants_Rate` decimal(18,2) DEFAULT NULL,
  `Comm_Rate` decimal(18,2) DEFAULT NULL,
  `Comm_Amt` decimal(18,2) DEFAULT NULL,
  `NCF` decimal(18,2) DEFAULT NULL,
  `NCF_Amt` decimal(18,2) DEFAULT NULL,
  `TAX` decimal(18,2) DEFAULT NULL,
  `TAX_Amt` decimal(18,2) DEFAULT NULL,
  `Grat` decimal(18,2) DEFAULT NULL,
  `Grat_Amt` decimal(18,2) DEFAULT NULL,
  `HS` decimal(18,2) DEFAULT NULL,
  `HS_Amt` decimal(18,2) DEFAULT NULL,
  `Misc` decimal(18,2) DEFAULT NULL,
  `TDS` decimal(18,2) DEFAULT NULL,
  `TDS_Amt` decimal(18,2) DEFAULT NULL,
  `Token_Amt` decimal(18,2) DEFAULT NULL,
  `CGST` decimal(18,2) DEFAULT NULL,
  `IGST` decimal(18,2) DEFAULT NULL,
  `SGST` decimal(18,2) DEFAULT NULL,
  `GST_Amt` decimal(18,2) DEFAULT NULL,
  `ROE` decimal(18,2) DEFAULT NULL,
  `Base_Amt` decimal(18,2) DEFAULT NULL,
  `Total_Payable_Amt` decimal(18,2) DEFAULT NULL,
  `Total_Payable_Amt_INR` decimal(18,2) DEFAULT NULL,
  `Token` tinyint(1) DEFAULT NULL,
  `Token_Amt_INR` decimal(18,2) DEFAULT NULL,
  `GST` tinyint(1) DEFAULT NULL,
  `PAX` int DEFAULT NULL,
  PRIMARY KEY (`Invoice_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (5,'CC20219-00001','Token Invoice','2021-09-27','2021-09-27','CUS5','ship nme','cruise comaonay',2,'booking ','v2','bkh','sdgf ','indian',1,1,1,1000.00,500.00,200.00,10.20,173.40,10.00,30.00,20.00,60.00,30.00,90.00,40.00,120.00,0.00,0.00,0.00,50.00,9.00,0.00,9.00,9.00,73.50,1700.00,1826.60,134255.10,0,4336.50,1,3),(15,'CC20219-00002','Invoice','2021-09-29','2021-09-29','CUS15','VOYAGER OF THE SEAS','ROYAL CARIBBEAN',5,'12000436','OCEAN VIEW BALCONY — MID QUAD LOWER ','3D','MR NIPUN','INDIAN',2,2,0,298.17,45.33,0.00,0.00,0.00,100.00,400.00,140.00,560.00,53.00,212.00,0.00,0.00,0.00,0.00,0.00,400.00,0.00,0.00,0.00,0.00,75.00,687.00,1459.00,109425.00,0,30000.00,1,4),(45,'CC202111-00003','Token Invoice','2021-11-03','2022-02-04','CUS175','COSTA FIRENZE','Costa',2,'27630407','Balcony','BP','MR RICHARD SUMAN','Indian',2,0,0,439.12,0.00,0.00,0.00,0.00,0.00,0.00,150.00,300.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,341.92,0.00,0.00,0.00,0.00,87.74,878.24,1178.24,103378.78,0,30000.06,1,2),(55,'CC202111-00004','Invoice','2021-11-20','2022-01-08','CUS5','Costa Firenze','Costa',2,'27673477','BALCONY','BP','MR HEMANT TALWAR','INDIAN',4,0,0,615.12,0.00,0.00,0.00,0.00,0.00,0.00,150.00,600.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,918.14,0.00,0.00,0.00,0.00,86.32,2460.48,2142.34,184926.79,0,79253.84,1,4),(65,'CC202111-00005','Invoice','2021-11-22','2022-01-08','CUS245','Costa Firenze','COSTA',2,'27671940','BALCONY','BP','MR ISHANT SONI','INDIAN',1,0,0,615.12,0.00,0.00,0.00,0.00,0.00,0.00,150.00,150.00,0.00,0.00,0.00,0.00,210.00,0.00,0.00,292.54,0.00,0.00,0.00,0.00,85.70,615.12,682.58,58497.11,0,25070.68,0,1);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal`
--

DROP TABLE IF EXISTS `journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `EntryDate` date DEFAULT NULL,
  `Credit_Account` int DEFAULT NULL,
  `Credit_Amount` decimal(18,2) DEFAULT NULL,
  `Debit_Account` int DEFAULT NULL,
  `Debit_Amount` decimal(18,2) DEFAULT NULL,
  `EntryType` varchar(100) DEFAULT NULL,
  `ChequeNumber` varchar(100) DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `Comments` varchar(400) DEFAULT NULL,
  `Invoice_Number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal`
--

LOCK TABLES `journal` WRITE;
/*!40000 ALTER TABLE `journal` DISABLE KEYS */;
/*!40000 ALTER TABLE `journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `EntryDate` date DEFAULT NULL,
  `Credit_Account` varchar(6) DEFAULT NULL,
  `Credit_Amount` decimal(18,2) DEFAULT NULL,
  `Debit_Account` varchar(6) DEFAULT NULL,
  `Debit_Amount` decimal(18,2) DEFAULT NULL,
  `EntryType` varchar(100) DEFAULT NULL,
  `ChequeNumber` varchar(100) DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `Comments` varchar(400) DEFAULT NULL,
  `Invoice_Number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (5,'2021-09-27','ACC1',4336.50,'CUS5',4336.50,'Token Invoice',NULL,NULL,'Token Invoice @ R.O.E  73.5','CC20219-00001'),(15,'2021-09-29','ACC1',109425.00,'CUS15',109425.00,'Invoice',NULL,NULL,'Invoice @ R.O.E  75','CC20219-00002'),(25,'2021-10-06','ACC1',0.00,'CUS125',0.00,'Token Invoice',NULL,NULL,'Token Invoice at R.O.E  0','CC202110-00003'),(35,'2021-10-06','ACC1',1000.00,'CUS125',1000.00,'Token Invoice',NULL,NULL,'Token Invoice at R.O.E  1','CC202110-00004'),(45,'2021-10-06','ACC1',0.00,'CUS125',0.00,'Invoice',NULL,NULL,'Invoice @ R.O.E  0','CC202110-00003'),(55,'2021-11-03','ACC1',30000.06,'CUS175',30000.06,'Token Invoice',NULL,NULL,'Token Invoice @ R.O.E  87.74','CC202111-00003'),(65,'2021-11-20','ACC1',78106.17,'CUS5',78106.17,'Token Invoice',NULL,NULL,'Token Invoice @ R.O.E  85.07','CC202111-00004'),(75,'2021-11-22','ACC1',25199.40,'CUS245',25199.40,'Token Invoice',NULL,NULL,'Token Invoice @ R.O.E  86.14','CC202111-00005'),(85,'2021-11-22','ACC1',58497.11,'CUS245',58497.11,'Invoice',NULL,NULL,'Invoice @ R.O.E  85.7','CC202111-00005'),(95,'2021-11-20','ACC1',184926.79,'CUS5',184926.79,'Invoice',NULL,NULL,'Invoice @ R.O.E  86.32','CC202111-00004');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Invoice_Number` varchar(45) DEFAULT NULL,
  `Invoice_Date` date DEFAULT NULL,
  `Supplier_Name` varchar(45) DEFAULT NULL,
  `Commission` decimal(18,2) DEFAULT NULL,
  `Particulars` varchar(1000) DEFAULT NULL,
  `Sgst_Rate` decimal(6,2) DEFAULT NULL,
  `Cgst_Rate` decimal(6,2) DEFAULT NULL,
  `Igst_Rate` decimal(6,2) DEFAULT NULL,
  `Sgst_Amount` decimal(18,2) DEFAULT NULL,
  `Cgst_Amount` decimal(18,2) DEFAULT NULL,
  `Igst_Amount` decimal(18,2) DEFAULT NULL,
  `Total_Gst` decimal(18,2) DEFAULT NULL,
  `Total_Amount` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (1,'8888','2021-03-13','SUP1',0.00,'<p><strong>this is a testing message&nbsp;</strong></p><ol><li><strong>point 1</strong></li><li><strong>point 2</strong></li><li><strong>testing 3</strong></li></ol>',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(2,'9000','2021-03-13','SUP15',80000.00,'<p>Particulars Details</p><p>This is a test message</p>',9.00,9.00,0.00,7200.00,7200.00,0.00,14400.00,94400.00);
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receive`
--

DROP TABLE IF EXISTS `receive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receive` (
  `id` int NOT NULL AUTO_INCREMENT,
  `EntryDate` date DEFAULT NULL,
  `Credit_Account` varchar(6) DEFAULT NULL,
  `Credit_Amount` decimal(18,2) DEFAULT NULL,
  `Debit_Account` varchar(6) DEFAULT NULL,
  `Debit_Amount` decimal(18,2) DEFAULT NULL,
  `EntryType` varchar(100) DEFAULT NULL,
  `ChequeNumber` varchar(100) DEFAULT NULL,
  `BankName` varchar(100) DEFAULT NULL,
  `Comments` varchar(400) DEFAULT NULL,
  `Invoice_Number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receive`
--

LOCK TABLES `receive` WRITE;
/*!40000 ALTER TABLE `receive` DISABLE KEYS */;
INSERT INTO `receive` VALUES (5,'2021-10-06','CUS5',0.00,'ACC3',0.00,'Bank Transaction','','','',NULL),(15,'2021-11-03','CUS175',30000.00,'ACC3',30000.00,'Bank Transaction','NEFT','HDFC','341.92€ x 87.74  Token Amount',NULL),(25,'2021-11-22','CUS245',25198.00,'ACC3',25198.00,'Bank Transaction','NEFT','HDFC BAK','30% token amount 292.54 euro x 86.14 ',NULL),(35,'2021-11-23','CUS5',78106.00,'ACC3',78106.00,'Bank Transaction','CASH DEPOSIT ','YES BANK','918.14 Euro x 85.07 ',NULL),(45,'2021-12-04','CUS245',58497.00,NULL,58497.00,'Bank Transaction','NEFT','HDFC','balance amount 682.58 Euro x 85.70 = 58497 INR',NULL),(55,'2021-12-09','CUS5',184926.00,'ACC3',184926.00,'Bank Transaction','CHEQUE NO 001802','HDFC BANK','€ 2142.34 x 86.32 = 184926 INR balance amount received ',NULL);
/*!40000 ALTER TABLE `receive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `State_Name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'ANDHRA PRADESH'),(2,'ARUNACHAL PRADESH'),(3,'ASSAM'),(4,'BIHAR'),(5,'CHANDIGARH'),(6,'CHHATTISGARH'),(7,'DELHI'),(8,'GOA'),(9,'GUJARAT'),(10,'HARYANA'),(11,'HIMACHAL PRADESH'),(12,'JAMMU AND KASHMIR'),(13,'JHARKHAND'),(14,'KARNATAKA'),(15,'KERALA'),(16,'MADYA PRADESH'),(17,'MAHARASHTRA'),(18,'MANIPUR'),(19,'MEGHALAYA'),(20,'MIZORAM'),(21,'NAGALAND'),(22,'ORISSA'),(23,'PUNJAB'),(24,'RAJASTHAN'),(25,'SIKKIM'),(26,'TAMIL NADU'),(27,'TELAGANA'),(28,'TRIPURA'),(29,'UTTARANCHAL'),(30,'UTTAR PRADESH'),(31,'WEST BENGAL');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Prefix` char(3) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address_line_one` varchar(500) NOT NULL,
  `address_line_two` varchar(500) DEFAULT NULL,
  `city` varchar(500) NOT NULL,
  `state` varchar(500) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `gstin` varchar(30) NOT NULL,
  `pan` varchar(30) NOT NULL,
  `email` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`,`Prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (5,'SUP','DPAULS TRAVELS & TOURS LTD ','','B-40 SHIVALIK, MALVIYA NAGAR ','NEW DELHI ','NEW DELHI ','7',110017,'','01166777200','07AAACD0910F1ZC','AAACD0910F','sales13@dpauls.com'),(15,'SUP','CRUISE EXPRESS & HOLYIDAYS PVT LTD','','1ST FLOOR, BF46 JANAK PURI ','NEW DELHI ','NEW DELHI ','1',110058,'9212647123','','07AAHCC9950F1ZG','AAHCC9950F','sales30@dpauls.com'),(25,'SUP','FCM TRAVEL SOLUTIONS (INDIA) PRIVATE LIMITED','','M-8A, FLOOR-M BLOCK MARKET, GREATER KAILASH','SOUTH DELHI','DELHI','7',110048,'9748490944','120-6839317','07AAACF2674C1ZZ','AAACF2674C','pamela.bhattacharjee@tareps.com'),(35,'SUP','TIRUN TRAVEL MARKETING ','','505, SALCOM AURUM,  4, JASOLA DISTRICT CENTER','NEW DELHI ','NEW DELHI ','7',110025,'','011-49061000','07AADPC4294P1ZD','AADPC4294P','rchadha@tirun.com');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` int DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ADMIN','','admin@cc.com','$2b$10$GTJ6HHvstg9vKarYD9LxTOyYJKRpTCIpgH67a3pHSoUxeSXbfYLba',0,'','Admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cruisecarrot'
--

--
-- Dumping routines for database 'cruisecarrot'
--
/*!50003 DROP PROCEDURE IF EXISTS `GenerateInvoice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`b040638ba8e065`@`%` PROCEDURE `GenerateInvoice`()
BEGIN

SET @x = (SELECT max(Invoice_Number) as InvoiceNo from invoices where Invoice_Number like CONCAT('CC',YEAR(CURDATE()),MONTH(CURDATE()),'%'));



IF(@x IS NULL) THEN 			

		SET @tempInv = (SELECT max(Invoice_Number) as InvoiceNo from invoices where Invoice_Number like CONCAT('CC',YEAR(CURDATE()),'%'));

        SET @sub = RIGHT(@tempInv,5) + 1 ;		

		SET @counter =RIGHT((concat('00000',convert(@sub, CHAR))),5);

		SET @Invoice_Number = CONCAT('CC',YEAR(CURDATE()),MONTH(CURDATE()),'-',@counter);       

        select @Invoice_Number;

ELSE

	   SET @tempInv = (SELECT max(Invoice_Number) as InvoiceNo from invoices where Invoice_Number like CONCAT('CC',YEAR(CURDATE()),MONTH(CURDATE()),'%'));

	   SET @sub = RIGHT(@tempInv,5) + 1 ;		

		SET @counter =RIGHT((concat('00000',convert(@sub, CHAR))),5);

		SET @Invoice_Number = CONCAT('CC',YEAR(CURDATE()),MONTH(CURDATE()),'-',@counter);       

        select @Invoice_Number;

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-14 14:29:30
