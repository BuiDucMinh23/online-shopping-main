-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: onlineshop
-- ------------------------------------------------------
-- Server version	8.0.35

-- create database onlineshop;

use onlineshop;

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `AccountId` int NOT NULL AUTO_INCREMENT,
  `AccountEmail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `AccountPassword` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `AccountPhoneNumber` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AccountName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `AccountAvatarURL` longtext COLLATE utf8mb4_unicode_ci,
  `AccountSecertKey` longtext COLLATE utf8mb4_unicode_ci,
  `AccountDoB` date DEFAULT NULL,
  `AccountStatus` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RoleId` int DEFAULT NULL,
  PRIMARY KEY (`AccountId`),
  KEY `RoleId` (`RoleId`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`RoleId`) REFERENCES `role` (`RoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin@gmail.com','admin123','0123456789','Phạm Hùng Anh',NULL,'3TKRwl6kYy','2003-12-01','on',1),(2,'thaint@gmail.com','123456','0325698456','Nguyễn Huy Thái',NULL,'on75CO6WOG','2003-12-01','on',2),(3,'tuantt@gmail.com','123456','0325984657','Ngô Trung Tuấn',NULL,'daLLAp7BQR','2003-12-01','on',3),(4,'conght@gmail.com','123456','0325984657','Hoàng Thành Công',NULL,'9QcNdBp8wj','2003-12-01','on',4),(5,'huongtt@gmail.com','123456','0325615489','Trịnh Thiên Hương',NULL,'a2oJBY2Q7R','2003-12-01','on',4),(6,'sontc@gmail.com','123456','0325615489','Trịnh Công Sơn',NULL,'sSuMRaFP0P','2003-12-01','on',4),(7,'test@gmail.com','123','0326598456',NULL,NULL,'7mHZnTwWJY','2003-12-01','on',1);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `AddressId` int NOT NULL AUTO_INCREMENT,
  `AddressName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `AddressDefault` longtext COLLATE utf8mb4_unicode_ci,
  `AddressStatus` longtext COLLATE utf8mb4_unicode_ci,
  `CustomerId` int DEFAULT NULL,
  PRIMARY KEY (`AddressId`),
  KEY `CustomerId` (`CustomerId`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Hà Nội',NULL,'on',1),(2,'Huế',NULL,'on',2),(3,'Sài Gòn',NULL,'on',3);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `CartId` int NOT NULL AUTO_INCREMENT,
  `ProductId` int DEFAULT NULL,
  `CustomerId` int DEFAULT NULL,
  `CategorySizeId` int DEFAULT NULL,
  `CartQuantity` int DEFAULT NULL,
  `cartCreatedDate` date DEFAULT NULL,
  `CartStatus` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`CartId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,1,2,2,'2024-01-18','on'),(3,1,1,3,1,'2024-01-18','on');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorynews`
--

DROP TABLE IF EXISTS `categorynews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorynews` (
  `CategoryNewsId` int NOT NULL AUTO_INCREMENT,
  `CategoryNewsName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`CategoryNewsId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorynews`
--

LOCK TABLES `categorynews` WRITE;
/*!40000 ALTER TABLE `categorynews` DISABLE KEYS */;
INSERT INTO `categorynews` VALUES (1,'Post'),(2,'Slider');
/*!40000 ALTER TABLE `categorynews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoryproduct`
--

DROP TABLE IF EXISTS `categoryproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoryproduct` (
  `CategoryProductId` int NOT NULL AUTO_INCREMENT,
  `CategoryProductName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`CategoryProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoryproduct`
--

LOCK TABLES `categoryproduct` WRITE;
/*!40000 ALTER TABLE `categoryproduct` DISABLE KEYS */;
INSERT INTO `categoryproduct` VALUES (1,'Áo'),(2,'Quần'),(3,'Váy'),(4,'Đồ Lót'),(5,'Set Quần Áo'),(6,'Giày, Dép'),(7,'Túi'),(8,'Mũ'),(9,'Thắt Lưng'),(10,'Kính');
/*!40000 ALTER TABLE `categoryproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoryproductdetails`
--

DROP TABLE IF EXISTS `categoryproductdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoryproductdetails` (
  `CategoryProductDetailsId` int NOT NULL AUTO_INCREMENT,
  `CategoryProductDetailsName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CategoryProductId` int DEFAULT NULL,
  PRIMARY KEY (`CategoryProductDetailsId`),
  KEY `CategoryProductId` (`CategoryProductId`),
  CONSTRAINT `categoryproductdetails_ibfk_1` FOREIGN KEY (`CategoryProductId`) REFERENCES `categoryproduct` (`CategoryProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoryproductdetails`
--

LOCK TABLES `categoryproductdetails` WRITE;
/*!40000 ALTER TABLE `categoryproductdetails` DISABLE KEYS */;
INSERT INTO `categoryproductdetails` VALUES (1,'Áo Sơ Mi',1),(2,'Áo Polo',1),(3,'Áo Chống Nắng',1),(4,'Áo Len',1),(5,'Áo Sweater',1),(6,'Áo Phông',1),(7,'Áo Khoác',1),(8,'Quần Short',2),(9,'Quần Jeans',2),(10,'Quần Legging',2),(11,'Quần Joogers',2),(12,'Chân Váy',3),(13,'Đầm',3),(14,'Áo Lót',4),(15,'Quần Lót',4),(16,'Quần Tất',4),(17,'Bikini',4),(18,'Đồ Ngủ',5),(19,'Đồ Thể Thao',5),(20,'Giày Thể Thao',6),(21,'Bốt',6),(22,'Giày Cao Gót',6),(23,'Sục',6),(24,'Túi',7),(25,'Balo',7),(26,'Mũ',8),(27,'Thắt Lưng',9),(28,'Kính',10);
/*!40000 ALTER TABLE `categoryproductdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorysize`
--

DROP TABLE IF EXISTS `categorysize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorysize` (
  `CategorySizeId` int NOT NULL AUTO_INCREMENT,
  `CategorySizeName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`CategorySizeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorysize`
--

LOCK TABLES `categorysize` WRITE;
/*!40000 ALTER TABLE `categorysize` DISABLE KEYS */;
INSERT INTO `categorysize` VALUES (1,'S'),(2,'M'),(3,'L');
/*!40000 ALTER TABLE `categorysize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerId` int NOT NULL AUTO_INCREMENT,
  `CustomerCreatedDate` date DEFAULT NULL,
  `CustomerTotalPurchase` double DEFAULT NULL,
  `AccountId` int DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  PRIMARY KEY (`CustomerId`),
  KEY `RoleId` (`RoleId`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`RoleId`) REFERENCES `role` (`RoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'2023-12-01',1500000,4,4),(2,'2023-12-01',2500000,5,4),(3,'2023-12-01',500000,6,4);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeId` int NOT NULL AUTO_INCREMENT,
  `EmployeeSalary` double DEFAULT NULL,
  `EmployeeHireDate` date DEFAULT NULL,
  `EmployeeTerminationDate` date DEFAULT NULL,
  `AccountId` int DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeId`),
  UNIQUE KEY `AccountId` (`AccountId`),
  KEY `RoleId` (`RoleId`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`RoleId`) REFERENCES `role` (`RoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,15000000,'2020-03-13',NULL,2,2),(2,10000000,'2021-06-25',NULL,3,3);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `FeedbackId` int NOT NULL AUTO_INCREMENT,
  `FeedbackContent` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FeedbackCreatedDate` date DEFAULT NULL,
  `FeedbackRating` int DEFAULT NULL,
  `ProductId` int DEFAULT NULL,
  PRIMARY KEY (`FeedbackId`),
  KEY `ProductId` (`ProductId`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Sản phẩm Tốt lắm ạ!!!!','2023-12-01',5,1),(2,'Sản phẩm đẹp lắm shop ơi!','2023-12-03',5,2),(3,'Mặc đẹp!','2023-12-12',5,3);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `NewsId` int NOT NULL AUTO_INCREMENT,
  `NewsTitle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `NewsImageURL` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `NewsDescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `NewsCreatedDate` date DEFAULT NULL,
  `NewsStatus` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `NewsView` int DEFAULT NULL,
  `CategoryNewsId` int DEFAULT NULL,
  `EmployeeId` int DEFAULT NULL,
  PRIMARY KEY (`NewsId`),
  KEY `CategoryNewsId` (`CategoryNewsId`),
  KEY `EmployeeId` (`EmployeeId`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`CategoryNewsId`) REFERENCES `categorynews` (`CategoryNewsId`),
  CONSTRAINT `news_ibfk_2` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`EmployeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'TƯNG BỪNG PHÁ KHO ĐÓN TẾT TO CHỈ 99K',NULL,'SALE Cực Mạnh Phá kho cuối năm - Tặng triệu ưu đãi Thời trang - Phụ kiện chỉ từ 99K cho nhà nhà thả ga sắm Tết! Siêu ưu đãi chỉ từ 8/1 – 9/2/2024, tới sắm ngay cho cả gia đình nhé!','2024-08-01','on',1000,1,1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `OrderId` int NOT NULL AUTO_INCREMENT,
  `OrderTitle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `OrderDate` date DEFAULT NULL,
  `OrderTotalPrice` double DEFAULT NULL,
  `OrderStatus` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `EmployeeId` int DEFAULT NULL,
  `ShipperId` int DEFAULT NULL,
  `CustomerId` int DEFAULT NULL,
  PRIMARY KEY (`OrderId`),
  KEY `EmployeeId` (`EmployeeId`),
  KEY `ShipperId` (`ShipperId`),
  KEY `CustomerId` (`CustomerId`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`EmployeeId`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`ShipperId`) REFERENCES `shipper` (`ShipperId`),
  CONSTRAINT `order_ibfk_3` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'Đơn Hàng Của Thái','2024-01-09',350000,'on',1,3,1),(2,'Đơn Hàng Của Hương','2024-01-08',600000,'on',1,2,2),(3,'Đơn Hàng Của Công','2024-01-09',300000,'on',1,1,3);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `ProductId` int NOT NULL,
  `OrderId` int NOT NULL,
  `OrderDetailsQuantity` int DEFAULT NULL,
  PRIMARY KEY (`ProductId`,`OrderId`),
  KEY `OrderId` (`OrderId`),
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`),
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`OrderId`) REFERENCES `order` (`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,1,3),(2,2,3),(3,3,3);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymenthistory`
--

DROP TABLE IF EXISTS `paymenthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymenthistory` (
  `PaymentId` int NOT NULL AUTO_INCREMENT,
  `PaymentDate` date DEFAULT NULL,
  `PaymentMethod` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `OrderId` int DEFAULT NULL,
  `CustomerId` int DEFAULT NULL,
  PRIMARY KEY (`PaymentId`),
  KEY `OrderId` (`OrderId`),
  KEY `CustomerId` (`CustomerId`),
  CONSTRAINT `paymenthistory_ibfk_1` FOREIGN KEY (`OrderId`) REFERENCES `order` (`OrderId`),
  CONSTRAINT `paymenthistory_ibfk_2` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymenthistory`
--

LOCK TABLES `paymenthistory` WRITE;
/*!40000 ALTER TABLE `paymenthistory` DISABLE KEYS */;
INSERT INTO `paymenthistory` VALUES (1,'2024-01-09','VNPAY',1,1),(2,'2024-01-08','VNPAY',2,2),(3,'2024-01-09','VNPAY',3,3);
/*!40000 ALTER TABLE `paymenthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductId` int NOT NULL AUTO_INCREMENT,
  `ProductName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ProductImageDefault` longtext COLLATE utf8mb4_unicode_ci,
  `ProductPrice` double DEFAULT NULL,
  `ProductCost` double DEFAULT NULL,
  `ProductDescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ProductRating` double DEFAULT NULL,
  `ProductSold` int DEFAULT NULL,
  `ProductCreatedDate` date DEFAULT NULL,
  `ProductStatus` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `EmployeeId` int DEFAULT NULL,
  `CategoryProductDetailsId` int DEFAULT NULL,
  PRIMARY KEY (`ProductId`),
  KEY `EmployeeId` (`EmployeeId`),
  KEY `CategoryProductDetailsId` (`CategoryProductDetailsId`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`EmployeeId`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`CategoryProductDetailsId`) REFERENCES `categoryproductdetails` (`CategoryProductDetailsId`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Áo Sơ Mi Bất Đối Xứng','Image/Product/P1_Ao/P1_Ao_01_SoMi/01_ao_so_mi_nu_bat_doi_xung_00.jpg',120000,160000,'Mô hình: Đồng bằng#Phong cách: Thanh lịch#Cộng với kích thước: Không#Chất liệu: Polyester#Thành phần: 95% Polyester + 5% Spandex#Loại phù hợp: Lỏng lẻo#Trong suốt: Không#Căng: Không giãn#Xuất xứ: Việt Nam',4,200,'2023-12-02','on',2,1),(2,'Áo Sơ Mi Dài Tay Phồng','Image/Product/P1_Ao/P1_Ao_01_SoMi/02_ao_so_mi_dai_tay_phong_00.jpg',150000,200000,'Chất liệu:  kẻ xốp#Phong cách: Thanh lịch#Cộng với kích thước: Không#Thành phần: 95% Polyester + 5% Spandex#Loại phù hợp: Lỏng lẻo#Trong suốt: Không#Căng: Không giãn#Xuất xứ: Việt Nam',4,150,'2023-12-02','on',2,1),(3,'Áo Sơ Mi Giấu Cúc','Image/Product/P1_Ao/P1_Ao_01_SoMi/03_ao_so_mi_giau_cuc_00.jpg',150000,200000,'Tên: Áo sơ mi đi học nữ# Màu sắc: TRẮNG# Áo dài tay: CỔ BẺ# Đối tượng: Áo trắng sơ mi đi học cho học sinh cấp 2,3, sinh viên, nhân viên công sở#Chiều dài: Sơ mi tay dài#Chất liệu: Áo sơ mi vải mềm mịn thoáng mát, thấm hút mồ hôi',4,200,'2023-12-02','on',2,1),(4,'Áo Polo Nữ Form Rộng','Image/Product/P1_Ao/P1_Ao_02_Polo/01_Ao_polo_nu_form_rong_00.jpg',180000,250000,'Chất liệu: Cotton CVC# Sản Phẩm Bao Gồm: 1 áo# Thông số size: S, M, L, XL, XXL# Chiều dài tay áo: ngắn# Xuất xứ: Việt Nam',4,200,'2023-12-02','on',2,2),(5,'Áo Polo Nữ Tay Ngắn Phối Cúc Màu','Image/Product/P1_Ao/P1_Ao_02_Polo/02_Ao_polo_nu_tay_ngan_phoi_cuc_mau_00.jpg',150000,200000,'Họa tiết: Màu trơn# Phong cách: Giản dị# Có size lớn: Không# Chất liệu: Polyester# Thành phần chất liệu: 97% Polyester + 3% Spandex# Kiểu dáng: Dáng rộng# Vải xuyên thấu: Không# Độ co giãn: Co giãn nhẹ',4,200,'2023-12-02','on',2,2),(6,'Áo Polo Đơn Sắc Basic','Image/Product/P1_Ao/P1_Ao_02_Polo/03_Ao_polo_don_gian_basic_00.jpg',190000,240000,'Chất liệu: Cotton # Màu sắc: Be/nâu/đen/trắng # Sản Phẩm Bao Gồm: 1 áo# Thông số size: S, M, L, XL, XXL# Chiều dài tay áo: ngắn# Xuất xứ: Việt Nam',4,200,'2023-12-02','on',2,2),(7,'Áo Chống Nắng Nữ Dáng Dài SunStop','Image/Product/P1_Ao/P1_Ao_03_ChongNang/01_Ao_chong_nang_nu_dang_dai_SunStop_00.png',375000,750000,'Công nghệ chống nắng Hightech (công nghệ cao): chỉ số chống nắng UPF 50+ chặn đứng tác nhân gây đen sạm, lão hóa, ung thư da, duy trì khả năng chống UV sau nhiều lần giặt trong suốt quá trình sử dụng.# - Bảo vệ tốt nhất - ngăn tới 99,4% tia UV được Viện Dệt May Việt Nam xét nghiệm xác nhận.# - Thiết kế thời trang, gọn gàng, an toàn khi di chuyển.# - Bảo vệ toàn diện với Áo khoác, Chân váy, găng tay, khẩu trang.# - Đầy đủ cho cả gia đình (Nam, nữ, trẻ em).',4,100,'2023-12-03','on',2,3),(8,'Áo Chống Nắng Nữ Thun Lạnh Loại 1','Image/Product/P1_Ao/P1_Ao_03_ChongNang/02_Ao_chong_nang_nu_thun_lanh_loai1_00.jpg',259000,349000,'- Chất liệu: Cotton lạnh# - Màu sắc: Rêu, Trắng, Ghi, Hồng, Vỏ Đỗ# - Form dáng: Ngắn# - Size áo: Freesize# - Ngăn tới 99,4% tia UV được Viện Dệt May Việt Nam xét nghiệm xác nhận# - Xuất xứ: Việt Nam',4,150,'2023-12-03','on',2,3),(9,'Áo Chống Nắng Nữ 2 Lớp','Image/Product/P1_Ao/P1_Ao_03_ChongNang/03_Ao_chong_nang_nu_2_lop_00.jpg',299000,550000,'- Loại vải sản xuất áo choàng chống nắng nữ 2 lớp Laroma là loại vải đạt chuẩn chống tia tử ngoại UPF50+ cao nhất theo chuẩn quốc tế.# - Viện kiểm định chất lượng Dệt May Việt Nam đã kiểm định và đảm bảo chất lượng cũng như khả năng chống nắng rất tốt# - Sợi vải được làm từ các sợi thể thao Cool - air chống nắng chuyên dụng được sử dụng chuyên nghiệp để sản xuất các sản phẩm thể dục thể thao ngoài trời# - Không chỉ giúp các chị em có thể chống nắng mà áo choàng chống nắng 2 lớp còn khá mát và có thể kháng khuẩn rất hiệu quả.# - Vải may áo có mùi thơm dịu nhẹ làm át đi mùi cơ thể và mùi môi trường, có thể giữ mùi thơm lưu lại vài ngày# - Thiết kế form rộng thoải mái dễ mặc và dễ mix với phụ kiện bên ngoài# - Chất liệu khóa kéo phía trước được cải tiến hơn các loại khóa thông thường nên kéo sẽ trơ hơn và có độ bền cao hơn.# - Bên ngoài được thiết kế 2 túi đựng và phía bên trong cũng có 2 túi giúp cho các chị em có thể để 1 số vật dụng cá nhân như điện thoại.# - Bên ngoài áo được thiết kế cả mũ và vành mũ có thể che nắng phía trên vành mặt của các chị em. Bảo vệ 100% cho các chị em từ đầu đến chân không hở chút nào bởi vì tay áo kéo dài che hết cả bản tay.',4,111,'2023-12-03','on',2,3),(10,'Áo Len Nữ Form Rộng Kẻ Caro','Image/Product/P1_Ao/P1_Ao_04_Len/01_Ao_len_nu_form_rong_ke_caro_00.jpg',189000,300000,'Chất liệu Áo Len Cardigan, Gile: Đa số các áo len được làm bằng len truyền thống dùng để khoác lúc thời tiết chuyển sang thu/đông. Hầu hết các mẫu áo Gile sẽ không có phần khuy cài ở phía trước mặc choàng đầu.Tuy nhiên cũng có một số mẫu sẽ có thêm phần khuy áo để tiện cho người sử dụng# - Chất Liệu: Khoác Cardigan Len thì Sợi len sẽ dày dặn hơn các mẫu Gile và được thiết kế theo kiểu dáng hàn quốc khoác ngoài năng động, đa phần các mẫu sẽ có kèm cúc# - Thiết kế Gile Len: trẻ trung, năng động, màu sắc bắt mắt cùng các họa tiết nổi bật cá tính# - Cách phối đồ với Áo Len, Gile Len, Cardigan Len: Áo Len là item không thể thiếu trong tủ đồ của mỗi chàng trai hay mỗi cô gái. Bạn hãy phối áo khoác nỉ với quần jeans, quần kaki cùng các phụ kiện như túi, mũ sẽ tăng thêm phần trẻ trung, năng động. các bạn nữ cũng có thể mix thêm cùng chân váy, đầm liền thân thanh lịch#',4,100,'2023-12-03','on',2,4),(11,'Áo Len Khoác Cổ Bé','Image/Product/P1_Ao/P1_Ao_04_Len/02_Ao_len_khoac_co_be_00.jpg',159000,265000,'- Áo Khoác Cổ Bẻ Mặc 2 Kiểu Phối Basic Trơn , Áo Len Tay Dài Dáng Lỡ Mẫu Hot 2024 Thời Trang Nữ Phù Hợp Với Mọi Lứa Tuổi# - Chất liệu len cao cấp, dày dặn# Thông tin sản phẩm# - Chất liệu: len cao cấp quảng châu, bao dày dặn# - Màu sắc 3 màu# Size: freesize',4,145,'2023-12-03','on',2,4),(12,'Áo Nỉ Sweater Form Rộng In Chữ P','Image/Product/P1_Ao/P1_Ao_05_Ni/01_Ao_ni_sweater_form_rong_in_chu_P_00.jpg',269000,350000,'Áo sweater form rộng basic nỉ bông họa tiết in chữ P # Chất vải:  Nỉ cotton bông (nên có dính lông chút bên trong ạ)# Màu XÁM TIÊU# Hình In chi tiết sắc nét độ bền tốt ạ .# SỬ DỤNG VÀ BẢO QUẢN# + Lộn trái áo khi giặt và không giặt ngâm# + Không sử dụng thuốc tẩy# + Khi phơi lộn trái và không phơi trực tiếp dưới ánh nắng mặt trời# + Dùng móc phơi không để hình in dính vào nhau# Bảng SIZE: Quần / Áo form châu Âu rộng # -Size M: 40-55KG# -Size L: 55-65KG# -Size XL: 65-85KG',4,200,'2023-12-03','on',2,5),(13,'Áo Nỉ Sweater StreetStyle','Image/Product/P1_Ao/P1_Ao_05_Ni/02_Ao_ni_sweater_streetstyle_00.jpg',299000,399000,'Áo sweater form rộng basic nỉ bông họa tiết in chữ M# Chất vải:  Nỉ cotton bông (nên có dính lông chút bên trong ạ)# Màu XÁM TIÊU# Hình In chi tiết sắc nét độ bền tốt ạ .# SỬ DỤNG VÀ BẢO QUẢN# + Lộn trái áo khi giặt và không giặt ngâm# + Không sử dụng thuốc tẩy# + Khi phơi lộn trái và không phơi trực tiếp dưới ánh nắng mặt trời# + Dùng móc phơi không để hình in dính vào nhau# Bảng SIZE: Quần / Áo form châu Âu rộng # -Size M: 40-55KG# -Size L: 55-65KG# -Size XL: 65-85KG',4,100,'2023-12-04','on',2,5),(14,'Áo Phông Nữ Blackdoki','Image/Product/P1_Ao/P1_Ao_06_Phong/01_Ao_phong_nu_Blackdoki_00.jpg',159000,198000,'Áo thun nữ BLACKDOKI MAISON-NORE , áo phông basic hiện đại cá tính chất cotton dày dặn oversize# - Kiểu mẫu: áo phông trơn + in hình# - Cổ áo: cổ chữ O# - Chất liệu: 100% cotton cao cấp Full Wax lông bề mặt chống xù# - Chiều dài tay áo: tay lỡ# - Chiều dài áo: 69-74# - Phong cách: basic# BẢNG SIZE ÁÁo thun nữ BLACKDOKI MAISON-NORE , áo phông basic hiện đại cá tính chất cotton dày dặn oversize# - Size M : Nặng <50kg - Cao <1m60# - Size L : Nặng <60kg - Cao <1m70# - Size XL : Nặng <70kg - Cao <1m80',4,140,'2023-12-04','on',2,6),(15,'Áo Khoác Nỉ CRT','Image/Product/P1_Ao/P1_Ao_07_Khoac/01_Ao_khoac_ni_crt_00.jpg',179000,249000,'- Kiểu mẫu: áo khoác# - Chất liệu: nỉ cao cấp Full Wax lông bề mặt chống xù# - Chiều dài tay áo: dài# - Phong cách: basic# BẢNG SIZE ÁÁo thun nữ BLACKDOKI MAISON-NORE , áo phông basic hiện đại cá tính chất cotton dày dặn oversize# - Size M : Nặng <50kg - Cao <1m60# - Size L : Nặng <60kg - Cao <1m70# - Size XL : Nặng <70kg - Cao <1m80',4,220,'2023-12-04','on',2,7),(16,'Quần Short Kaki Co Giãn Sắn Gấu','Image/Product/P2_Quan/P2_Quan_01_Shorts/01_quan_sooc_kaki_co_gian_san_gau_00.jpg',60000,100000,'- Chất liệu: 100% Polyester# - Chất vải bền bỉ vượt trội, thoát ẩm tức thì, hạn chế mùi cơ thể hiệu quả# - Chất vải giữ form, siêu nhẹ, thoáng mát# - Quần cạp chun thoái mái kết hợp với túi ốp sâu vừa tiện lợi, vừa là điểm nhấn sành điệu# - Lơ vê gấu đặc biệt tạo sự thanh thoát nữ tính cho người mặc# Size S eo dưới 65cm # Size M eo dưới 68cm # Size L eo dưới 71cm',4,250,'2023-12-04','on',2,8),(17,'Korean Đơn Giản Vintage Minimalist','Image/Product/P2_Quan/P2_Quan_02_Jeans/01_korean_don_gian_vintage_minimalist_00.jpg',140000,190000,'- Chất liệu: 100% Polyester# - Chất vải bền bỉ vượt trội, thoát ẩm tức thì, hạn chế mùi cơ thể hiệu quả# - Chất vải giữ form, siêu nhẹ, thoáng mát# - Quần cạp chun thoái mái kết hợp với túi ốp sâu vừa tiện lợi, vừa là điểm nhấn sành điệu# - Lơ vê gấu đặc biệt tạo sự thanh thoát nữ tính cho người mặc# Size S eo dưới 65cm # Size M eo dưới 68cm # Size L eo dưới 71cm',4,150,'2023-12-04','on',2,9),(18,'Váy Len Nữ Đầm Body','Image/Product/P3_Vay/P3_Vay_02_Dam/01_Dam_body_vay_len_nu_00.jpg',280000,430000,'- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự. # - Không được dùng hóa chất tẩy. # - Hạn chế sử dụng máy sấy và ủi ở nhiệt độ thích hợp. # - Lộn mặt trái khi phơi tránh bị phai màu # - Cam kết chất lượng và mẫu mã sản phẩm giống với hình ảnh. # - Size S 43-48kg# - Size M 49-54kg # - Size L 55-60 kg',4,100,'2023-12-04','on',2,13),(19,'Set Đồ Ngủ Nơ','Image/Product/P5_SetQuanAo/P6_SetQuanAo_01_DoNgu/01_Set_DoNgu_no_00.jpg',169000,249000,'- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự. # - Không được dùng hóa chất tẩy. # - Hạn chế sử dụng máy sấy và ủi ở nhiệt độ thích hợp. # - Lộn mặt trái khi phơi tránh bị phai màu # - Cam kết chất lượng và mẫu mã sản phẩm giống với hình ảnh. # - Size S 43-48kg# - Size M 49-54kg # - Size L 55-60 kg',4,160,'2023-12-04','on',2,18),(20,'Set Thể Thao Khoác Gió','Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/01_Set_the_thao_khoac_gio_00.jpg',249000,340000,'- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự. # - Không được dùng hóa chất tẩy. # - Hạn chế sử dụng máy sấy và ủi ở nhiệt độ thích hợp. # - Lộn mặt trái khi phơi tránh bị phai màu # - Cam kết chất lượng và mẫu mã sản phẩm giống với hình ảnh. # - Size S 43-48kg# - Size M 49-54kg # - Size L 55-60 kg',4,160,'2023-12-04','on',2,19),(21,'Áo Lót Đúc Xu','Image/Product/P4_DoLot/P4_DoLot_01_AoLot/01_AoLot_duc_xu_00.jpg',60000,100000,'- Chất liệu : Cotton , đệm mỏng.# - Size: 32/70, 34/75, 36/80, 38/85# - Màu sắc: Nhiều màu# - Sản xuất tại: Việt Nam# - Đặc điểm nổi bật, tính chất của áo# - Áo ngực được làm bằng sợi Microfiber mềm mại, cùng lớp đệm mút mỏng, mềm mại thoáng khí ôm chọn vòng ngực, giữ được đường cong bốc lửa cho bạn.# - Đệm nâng ngực được tạo hình với chất liệu siêu mềm mại, giúp tôn dáng và định hình vòng ngực mà không gây hằn ngấn vào da đem đến cho người mặc sự thoải mái, dễ chịu.#',4,360,'2023-12-04','on',2,14),(22,'Quần Lót Cao Cấp Chip','Image/Product/P4_DoLot/P4_DoLot_02_QuanLot/01_Quan_lot_cap_cao_chip_00.jpg',23000,57000,'- Size: M L XL# + M (37 - 43kg)# + L (44 - 53kg)# + XL (54 - 62kg)# - Chất liệu: Cotton# - Quần lót nữ cạp vừa, đáy may# - Đặc điểm:# + Quần lót nữ chất liệu cotton viền lượn sóng mềm mại.# + Quần lót cao cấp với đáy may 2 lớp, lớp cotton kháng khuẩn.# + Quần lót cotton cạp vừa lưng thun co giãn tốt.# + Quần chip nữ chất liệu cotton gân tăm viền ren dễ chịu',4,500,'2023-12-04','on',2,15),(23,'Quần Tất Nữ Tàn Hình','Image/Product/P4_DoLot/P4_DoLot_03_QuanTat/01_Quan_tat_nu_tang_hinh_00.jpg',65000,99000,'- Chất liệu: sợi tổng hợp siêu dai.# - Chiều cao: 150-175cm# - Vừa cho các chị từ: 40KG-65KG# - Kiểu dáng: Cạp cao, cả bàn.# - Màu sắc: đen# - Phân loại: Lưới mắt nhỏ, mắt vừa, mắt to',4,378,'2023-12-04','on',2,16),(24,'Bikini Ba Mảnh Domino','Image/Product/P4_DoLot/P4_DoLot_04_Bikini/01_Bikini_3_manh_domino_00.jpg',169000,200000,'Kích cỡ: # - Chiều cao S 150-160cm. cân nặng 40-45kg. vòng ngực 70ABC-80AB# - Chiều cao M155-165cm. cân nặng 45-50kg. vòng ngực 75BC-80AB# - Chiều cao L 160-170cm. cân nặng 50-55kg. vòng ngực 80BC-85A# (Biểu đồ kích thước chỉ mang tính chất tham khảo, vui lòng liên hệ với bộ phận chăm sóc khách hàng để biết chi tiết. đo lường hướng dẫn sử dụng. có một sai số 1-3 cm về kích thước. và sản phẩm thực tế là sản phẩm chính)',4,267,'2023-12-04','on',2,17),(25,'Quần Legging Ống Loe Dài Tập Yoga','Image/Product/P2_Quan/P2_Quan_03_Legging/01_quan_legging_ong_loe_dai_tap_yoga_00.jpg',190000,280000,'- Chất liệu: 100% Polyester# - Chất vải bền bỉ vượt trội, thoát ẩm tức thì, hạn chế mùi cơ thể hiệu quả# - Chất vải giữ form, siêu nhẹ, thoáng mát# - Quần cạp chun thoái mái kết hợp với túi ốp sâu vừa tiện lợi, vừa là điểm nhấn sành điệu# - Lơ vê gấu đặc biệt tạo sự thanh thoát nữ tính cho người mặc# Size S eo dưới 65cm # Size M eo dưới 68cm # Size L eo dưới 71cm',4,167,'2023-12-04','on',2,10),(26,'Quần Jogger Rộng Lưng Bó Chun Kèm Dây','Image/Product/P2_Quan/P2_Quan_04_Jogger/01_quan_Jogger_rong_lung_bo_chun_kem_day_00.jpg',140000,180000,'- Chất liệu: 100% Polyester# - Chất vải bền bỉ vượt trội, thoát ẩm tức thì, hạn chế mùi cơ thể hiệu quả# - Chất vải giữ form, siêu nhẹ, thoáng mát# - Quần cạp chun thoái mái kết hợp với túi ốp sâu vừa tiện lợi, vừa là điểm nhấn sành điệu# - Lơ vê gấu đặc biệt tạo sự thanh thoát nữ tính cho người mặc# Size S eo dưới 65cm # Size M eo dưới 68cm # Size L eo dưới 71cm',4,100,'2023-12-05','on',2,11),(27,'Túi Xách Nữ Hộp Đen','Image/Accessory/A2_Tui/A2_Tui_01_Tui/01_Tui_xach_nu_hop_den_00.jpg',279000,499000,'- Chất liệu : Da Pu tổng hợp# - Kích thước: Dài x Cao x Rộng = 19 x 13 x 7 (cm)# - Số ngăn : 1 ngăn# - Loại dây: Dây đeo vai# - Loại khóa: Khóa nam châm# - Màu sắc: Đen, xanh nhạt và hồng nhạt',4,100,'2023-12-05','on',2,24),(28,'Mũ Nổi Phong Cách Hàn','Image/Accessory/A3_Mu/01_Mu_noi_phong_cach_han_00.jpg',75000,150000,'- MÀU SẮC: Đen, hồng, kem, xanh mint# - Chu vi nón: 56-58cm, có thể điều chỉnh kích cỡ với khóa kéo sau chắc chắn# - Chất liệu: Nỉ gân cotton dày mịn, thoáng mát# - Phương pháp dệt: dệt trơn, có thêu chữ và hoa văn# - Sản xuất: Xưởng SX và Gia Công Nón Mũ Theo Yêu Cầu HP Fashion',4,240,'2023-12-05','on',2,26),(29,'Thắt Lưng Nữ Da Thật','Image/Accessory/A4_ThatLung/01_That_lung_nu_da_that_00.jpg',220000,370000,'- Kích thước: 2.8cm x 100cm# - Chất liệu da bò 100% dày mềm mại cao cấp.# - Màu sắc: Đen - màu sắc sang trọng, dễ phối trang phục# - Kiểu dáng thắt lưng nữ hiện đại, sang trọng # - Bảo hành 1 năm# - Đổi trả trong 10 ngày',4,110,'2023-12-05','on',2,27),(30,'Kính Mắt Dáng Dây Xích','Image/Accessory/A5_Kinh/01_Kinh_mat_dang_day_xich_00.jpg',210000,250000,'- Chất liệu: hợp kim & nhựa# - Màu sắc: như hình ảnh# - Trọn gói: kính râm 1 CÁI# Lời khuyên: chân chuỗi liên kết là loại trong suốt sequins, không phải kim loại vàng!!!# - Kích thước chi tiết:# Tổng chiều rộng khung (mm) 140# Chiều rộng ống kính (mm) 60# Chiều cao ống kính (mm) 53# Chiều rộng cầu (mm) 17# Chiều dài khung (mm) 145',4,140,'2023-12-05','on',2,28),(31,'Giày Thể Thao Có Đệm Khí Thời Trang','Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/01_giay_the_thao_co_dem_khi_thoi_trang_00.jpg',330000,398000,'- Giày sneaker Nam Nữ: Full size# - Ảnh và video thật 100% do shop tự quay/chụp# - Kiểu dáng hot trend, trẻ trung dễ phối đồ. Có thể phối đồ# - Giày đẹp, nhẹ, bền, giá phải chăng',4,80,'2023-12-05','on',2,20),(32,'Giày Boot Murioki Cổ Cao Co Giãn','Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/01_giay_bot_MURIOKI_co_cao_co_gian_00.jpg',330000,400000,'Hoa văn: Màu trơn# Màu sắc: cổ cao màu đen# Chiều cao gót: gót trung bình (3-5CM)# Hình dạng gót chân: gót chân dày# Kích thước: 36,37,38,39# Chất liệu đế: đế hỗn hợp# Chất liệu đế: PU# Chất liệu thân trên: PU nhân Phong cách: Anh',4,100,'2023-12-05','on',2,21),(33,'Giày Cao Gót 9P Dây Mảnh','Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/01_Giay_cao_got_9P_day_manh_00.jpg',242000,398000,'- Chiều cao gót 9cm# - Chất liệu da PU cao cấp và lụa Satin# - Chất liệu đế pháp êm mềm, độ đàn hồi tốt, chống trơn trượt# - Kiểu dáng giày sandal dây quai ngang# - Màu sắc: Đen - Bò - Trắng# - Size: 34 - 35 - 36 - 37 - 38 - 39',4,100,'2023-12-05','on',2,22),(34,'Dép Sục Gucci','Image/Accessory/A1_GiayDep/A1_GiayDep_04_DepSuc/01_Dep_Suc_Gucci_00.jpg',350000,450000,'Chất liệu da : Da sần, da nỉ, da trơn# Chất liệu đế : 85% cao su SR, 15% nhựa pp# Chất liệu lót : Premium# Form EU : 36,37,38,39,40,41,42,43# Chiều cao đế : 2.5cm# Kiểu dáng : Cổ thấp, cổ cao',4,122,'2023-12-05','on',2,23),(35,'Kính Gọng Lớn Chống Ánh Sáng Xanh','Image/Accessory/A5_Kinh/02_Kinh_gong_lon_chong_anh_sang_xanh_00.jpg',179000,230000,'Kiểu: ống kính phẳng# Màu: trong suốt, đen, xanh, xám, hồng, nâu# Dành cho: Nữ# Phong cách: Hàn Quốc# Chất liệu: Kim loại# Đóng gói: túi opp# Gói bao gồm: 1 / kính',4,240,'2023-12-05','on',2,28),(36,'Kính Gọng Tròn Kim Loại','Image/Accessory/A5_Kinh/03_Kinh_gong_tron_kim_loai_00.jpg',249000,300000,'- Form kính tròn, chất liệu hợp kim kết hợp nhựa# - Màu sắc: đen/ ghi/ trắng vàng/ vàng... (Khi không đặt được màu mong muốn, bạn có thể nhắn trực tiếp cho Candy nhé)# - Chốt kính chắc chắn giúp giữ form kính tốt. # - Kích thước kính: số đo mắt kính: 47mm - số đo cầu kính: 19mm - số đo càng kính: 139mm # - Chiều ngang kính: 140mm, Chiều dọc mắt kính 49mm# - Không bảo hành đối với tròng nhựa đi kèm ban đầu',4,150,'2023-12-05','on',2,28),(37,'Kính Râm Oversize','Image/Accessory/A5_Kinh/04_Kinh_ram_oversize_00.jpg',129000,199000,'Đặc trưng# -Hình Dạng mắt của Bull, Phóng đại, Vui nhộn, Khung màu, Nhẹ, Đạo cụ chụp# -Với Thiết kế ống kính lớn, cặp kính râm này có kiểu dáng phóng đại và ngộ nghĩnh.# -Sản Phẩm này thích hợp làm quà tặng, kỳ nghỉ, du lịch, mua sắm, tiệc tùng, v.v.',4,265,'2023-12-05','on',2,28),(38,'Kính Râm Mắt Mèo','Image/Accessory/A5_Kinh/05_Kinh_ram_mat_meo_00.jpg',159000,189000,'- Chất liệu: hợp kim & nhựa# - Màu sắc: như hình ảnh# - Trọn gói: kính râm 1 CÁI# Lời khuyên: chân chuỗi liên kết là loại trong suốt sequins, không phải kim loại vàng!!!# - Kích thước chi tiết:# Tổng chiều rộng khung (mm) 140# Chiều rộng ống kính (mm) 60# Chiều cao ống kính (mm) 53# Chiều rộng cầu (mm) 17# Chiều dài khung (mm) 145#',4,256,'2023-12-05','on',2,28),(39,'Thắt Lưng Phối Xích','Image/Accessory/A4_ThatLung/02_That_lung_phoi_xich_00.jpg',89000,150000,'Chất liệu: kim loại phối# + Màu sắc dây: Đen , trắng# + Kích thước : mọi eo# + Năm sản xuất: 2022',4,210,'2023-12-05','on',2,27),(40,'Thắt Lưng Phụ Kiện','Image/Accessory/A4_ThatLung/03_That_lung_phu_kien_00.jpg',99000,160000,'- Kích thước: 2.8cm x 100cm# - Chất liệu da bò 100% dày mềm mại cao cấp.# - Màu sắc: Đen - màu sắc sang trọng, dễ phối trang phục# - Kiểu dáng thắt lưng nữ hiện đại, sang trọng # - Bảo hành 1 năm# - Đổi trả trong 10 ngày',4,150,'2023-12-05','on',2,27),(41,'Thắt Lưng Demin','Image/Accessory/A4_ThatLung/04_That_lung_demin_00.jpg',129000,199000,'- Kích thước: 2.8cm x 100cm# - Chất liệu da bò 100% dày mềm mại cao cấp.# - Màu sắc: Đen - màu sắc sang trọng, dễ phối trang phục# - Kiểu dáng thắt lưng nữ hiện đại, sang trọng # - Bảo hành 1 năm# - Đổi trả trong 10 ngày',4,262,'2023-12-05','on',2,27),(42,'Thắt Lưng Vân Cá Xấu','Image/Accessory/A4_ThatLung/05_That_lung_van_ca_sau_00.jpg',169000,249000,'- Kích thước: 2.8cm x 100cm# - Chất liệu da bò 100% dày mềm mại cao cấp.# - Màu sắc: Đen - màu sắc sang trọng, dễ phối trang phục# - Kiểu dáng thắt lưng nữ hiện đại, sang trọng # - Bảo hành 1 năm# - Đổi trả trong 10 ngày',4,156,'2023-12-05','on',2,27),(43,'Mũ Cói Đi Biển','Image/Accessory/A3_Mu/02_Mu_coi_di_bien_00.jpg',119000,199000,'Chất liệu mũ nón: Cói tổng hợp # - Size mũ nón cói: free size ( có dây rút để chỉnh vò đầu phù hợp )# - Vành nón được thiết kế viền kẽm khách có thể tuỳ chỉnh form mũ tuỳ thích , tuỳ kiểu dáng# - Màu sắc mũ: kem và nâu# - Style mũ nón cói : Hàn Quốc # - Nón cói do chính nhà NOVSET tự tay đan chất liệu an toàn mềm mại và thoáng',4,152,'2023-12-05','on',2,26),(44,'Mũ Lưỡi Trai Unisex','Image/Accessory/A3_Mu/03_Mu_luoi_trai_unisex_00.jpg',150000,200000,'KÍCH THƯỚC: Vòng đầu 56cm-58cm#',4,122,'2023-12-05','on',2,26),(45,'Mũ Bucket Lông Thỏ','Image/Accessory/A3_Mu/04_Mu_bucket_long_tho_00.jpg',159000,210000,'KÍCH THƯỚC: Vòng đầu 56cm-58cm# MÀU SẮC: Đen, be, trằn# CHẤT LIỆU: Lông nhân tạo# LOẠI SẢN PHẨM: Mũ/nón lưỡi trai/ nón kết# TÍNH NĂNG: Che nắng, che mưa, phụ kiện thời trang phong cách# PHONG CÁCH : Cá tính, năng động, hot trend, unisex',4,122,'2023-12-05','on',2,26),(46,'Mũ Dạ Ép Cụp Nơ','Image/Accessory/A3_Mu/05_Mu_da_ep-cup_no_00.jpg',165000,220000,'KÍCH THƯỚC: Vòng đầu 56cm-58cm# MÀU SẮC: Đen, be, trằn# CHẤT LIỆU: Lông nhân tạo# LOẠI SẢN PHẨM: Mũ/nón lưỡi trai/ nón kết# TÍNH NĂNG: Che nắng, che mưa, phụ kiện thời trang phong cách# PHONG CÁCH : Cá tính, năng động, hot trend, unisex',4,250,'2023-12-05','on',2,26),(47,'Balo Nữ Màu Hồng','Image/Accessory/A2_Tui/A2_Tui_02_Balo/01_Balo_nu_mau_hong_00.jpg',339000,678000,'- Chất liệu: PVC + PU# - Kích thước: 25 * 30 * 14 cm# - Màu sắc: xám và trắng xen kẽ, xanh lá, xanh lá và trắng xen kẽ# - Cấu trúc bên trong: vị trí lưu trữ lớn * 1, vị trí máy tính bảng * 1, túi khóa kéo * 1, túi trước * 1# - Trọng lượng sản phẩm: 0,5 kg.',4,152,'2023-12-05','on',2,25),(48,'Balo Nữ Màu Đen','Image/Accessory/A2_Tui/A2_Tui_02_Balo/02_Balo_nu_mau_den_00.jpg',269000,399000,'- Kích thước: 42x30x14cm# - Màu sắc: Đen# - Chất liệu: Balo đi học nữ được làm từ vải chuẩn Hàn Quốc chuyên dụng được dùng làm cho balo da cao cấp/xuất khẩu, chất liệu này bền và sạch không bị bám dính bụi# - Trọng lượng: 0.5kg# - Công dụng của Balo da pu cặp sách nữ ZBAG basic đi học chống thấm nước cỡ lớn có ngăn bí mật vừa laptop 15 6 inch# - Balo đi học nữ với thiết kế rất nhiều ngăn. 1 ngăn lớn đựng thoải mái A4 (bên trong tích hợp 1 ngăn đựng laptop), cùng nhiều ngăn phụ nhỏ để bút, ví, thẻ atm.v.v...khá là tiện',4,152,'2023-12-05','on',2,25),(55,'Túi Xách Nữ Dusto','Image/Accessory/A2_Tui/A2_Tui_01_Tui/02_Tui_xach_nu_dusto_00.jpg',315000,599000,'- Chất liệu : Da Pu tổng hợp# - Kích thước: Dài x Cao x Rộng = 19 x 13 x 7 (cm)# - Số ngăn : 1 ngăn# - Loại dây: Dây đeo vai# - Loại khóa: Khóa nam châm# - Màu sắc: Đen, xanh nhạt và hồng nhạt',4,152,'2023-12-05','on',2,24),(56,'Túi Xách Da Rúm Nơ','Image/Accessory/A2_Tui/A2_Tui_01_Tui/03_Tui_xach_da_rum_no_00.jpg',229000,390000,'- Chất liệu : Da Pu tổng hợp# - Kích thước: Dài x Cao x Rộng = 19 x 13 x 7 (cm)# - Số ngăn : 1 ngăn# - Loại dây: Dây đeo vai# - Loại khóa: Khóa nam châm# - Màu sắc: Đen, xanh nhạt và hồng nhạt',4,123,'2023-12-05','on',2,24),(57,'Túi Xách Đeo Chéo Kelley','Image/Accessory/A2_Tui/A2_Tui_01_Tui/04_Tui_xach_deo_cheo_kelley_00.jpg',229000,390000,'- Chất liệu : Da Pu tổng hợp# - Kích thước: Dài x Cao x Rộng = 19 x 13 x 7 (cm)# - Số ngăn : 1 ngăn# - Loại dây: Dây đeo vai# - Loại khóa: Khóa nam châm# - Màu sắc: Đen, xanh nhạt và hồng nhạt',4,125,'2023-12-05','on',2,24),(58,'Túi Xách Đeo Họa Tiết','Image/Accessory/A2_Tui/A2_Tui_01_Tui/05_Tui_xach_deo_hoa_tiet_00.jpg',339000,600000,'- Chất liệu : Da Pu tổng hợp# - Kích thước: Dài x Cao x Rộng = 19 x 13 x 7 (cm)# - Số ngăn : 1 ngăn# - Loại dây: Dây đeo vai# - Loại khóa: Khóa nam châm# - Màu sắc: Đen, xanh nhạt và hồng nhạt',4,89,'2023-12-05','on',2,24),(59,'Dép Sục Độn Đế','Image/Accessory/A1_GiayDep/A1_GiayDep_04_DepSuc/02_Dep_Suc_don_de_00.jpg',190000,190000,'- Màu sắc: trắng, đen, xanh - Form đúc nguyên khối, chất liệu cao su non - Dép cross độn đế 7cm giúp tăng chiều cao vượt trội - Size : 36 - 41 - Thoải mái, đi êm chân trong nhiều giờ - Dép cross độn đế 7cm đi rất đẹp, tính thẩm mỹ cao - Dép sục độn đế 7cm đi rất tiện chỉ với 1 thao tác xỏ chân',4,100,'2023-12-05','on',2,23),(60,'Dép Sục Mũi Nhọn','Image/Accessory/A1_GiayDep/A1_GiayDep_04_DepSuc/03_Dep_Suc_mui_nhon_00.jpg',169000,199000,'Size 35/39# Chất liệu: da lộn# Màu sắc : Đen# Chiều Cao Gót: 3cm# Phom chuẩn, các chị chân mập thì lấy lên 1 size cho thoải mái nhá# - Thiết kế đẹp mắt, phong cách trẻ trung cho bạn gái luôn nổi bật, thanh lịch.# - Màu sắc trang nhã, dễ phối cùng nhiều kiểu trang phục khác nhau.# - Bền đẹp theo thời gian# - Dễ dàng lau chùi',4,111,'2023-12-05','on',2,23),(61,'Giày Cao Mũi Nhọn Hở Gót','Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/02_Giay_cao_mui_nhon_ho_got_00.jpg',460000,920000,'Kiểu dáng hiện đại, thanh lịch kết hợp quai cài ôm chân quyến rũ# - Form giày vừa vặn, chất liệu DA THẬT, không còn đau nhức, trầy xước như đi giày cao gót thông thường# - Gót giày chắc chắn, chống trơn trượt, độ bám tuyệt đối bất chấp địa hình# - Màu sắc: Đen, BEIGE, Trắng sữa# - Đủ size từ 34 - 41# Đế cao : 6 - 8 CM',4,110,'2023-12-05','on',2,22),(62,'Giày Cao Dự Tiệc','Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/03_Giay_cao_du_tiec_00.jpg',299000,499000,'- Chiều cao gót 5cm# - Chất liệu da PU cao cấp và lụa Satin# - Chất liệu đế pháp êm mềm, độ đàn hồi tốt, chống trơn trượt# - Kiểu dáng giày sandal dây quai ngang# - Màu sắc: Đen - Bò - Trắng# - Size: 34 - 35 - 36 - 37 - 38 - 39',4,115,'2023-12-05','on',2,22),(63,'Giày Cao Gót Công Sở','Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/04_Giay_cao_got_cong_so_00.jpg',259000,399000,'Kiểu dáng hiện đại, thanh lịch kết hợp quai cài ôm chân quyến rũ# - Form giày vừa vặn, chất liệu DA THẬT, không còn đau nhức, trầy xước như đi giày cao gót thông thường# - Gót giày chắc chắn, chống trơn trượt, độ bám tuyệt đối bất chấp địa hình# - Màu sắc: Đen, BEIGE, Trắng sữa# - Đủ size từ 34 - 41# Đế cao : 6 - 8 CM',4,251,'2023-12-05','on',2,22),(64,'Giày Cao Gót Gắn Nơ','Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/05_Giay_cao_got_gan_no_00.jpg',259000,399000,'- Chiều cao gót 5cm# - Chất liệu da PU cao cấp và lụa Satin# - Chất liệu đế pháp êm mềm, độ đàn hồi tốt, chống trơn trượt# - Kiểu dáng giày sandal dây quai ngang# - Màu sắc: Đen - Bò - Trắng# - Size: 34 - 35 - 36 - 37 - 38 - 39',4,242,'2023-12-05','on',2,22),(65,'Giày Boot Cao Gót IELGY Đơn Gian','Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/02_giay_bot_cao_got_IELGY_don_gian_00.jpg',330000,398000,'Hoa văn: Màu trơn# Màu sắc: cổ cao màu đen# Chiều cao gót: gót trung bình (3-5CM)# Hình dạng gót chân: gót chân dày# Kích thước: 36,37,38,39# Chất liệu đế: đế hỗn hợp# Chất liệu đế: PU# Chất liệu thân trên: PU nhân Phong cách: Anh',4,100,'2023-12-05','on',2,21),(66,'Giày Boot Martin Da Bóng Cao Gót','Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/03_giay_bot_Martin_da_bong_cao_got_00.jpg',359000,499000,'Hoa văn: Màu trơn# Màu sắc: cổ cao màu đen# Chiều cao gót: gót trung bình (3-5CM)# Hình dạng gót chân: gót chân dày# Kích thước: 36,37,38,39# Chất liệu đế: đế hỗn hợp# Chất liệu đế: PU# Chất liệu thân trên: PU nhân Phong cách: Anh',4,100,'2023-12-05','on',2,21),(67,'Giày Boot Đế Chống Trượt','Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/04_giay_bot_de_chong_truot_00.jpg',359000,450000,'Hoa văn: Màu trơn# Màu sắc: cổ cao màu đen# Chiều cao gót: gót trung bình (3-5CM)# Hình dạng gót chân: gót chân dày# Kích thước: 36,37,38,39# Chất liệu đế: đế hỗn hợp# Chất liệu đế: PU# Chất liệu thân trên: PU nhân Phong cách: Anh',4,100,'2023-12-05','on',2,21),(68,'Giày Boot IELGY Cổ Thấp Đế Dày Cài Khóa','Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/05_giay_bot_IELGY_co_thap_de_day_cai_khoa_00.jpg',350000,450000,'Hoa văn: Màu trơn# Màu sắc: cổ cao màu đen# Chiều cao gót: gót trung bình (3-5CM)# Hình dạng gót chân: gót chân dày# Kích thước: 36,37,38,39# Chất liệu đế: đế hỗn hợp# Chất liệu đế: PU# Chất liệu thân trên: PU nhân Phong cách: Anh',4,100,'2023-12-05','on',2,21),(69,'Giày Thể Thao Đế Dày Phối Lưới','Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/02_giay_the_thao_de_day_phoi_luoi_00.jpg',399000,450000,'- Giày sneaker Nam Nữ: Full size# - Ảnh và video thật 100% do shop tự quay/chụp# - Kiểu dáng hot trend, trẻ trung dễ phối đồ. Có thể phối đồ# - Giày đẹp, nhẹ, bền, giá phải chăng',4,100,'2023-12-05','on',2,20),(70,'Giày Thể Thao Bonnie Cathy Màu Trắng','Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/03_giay_the_thao_bonnie_cathy_mau_trang_00.jpg',499000,600000,'- Giày sneaker Nam Nữ: Full size# - Ảnh và video thật 100% do shop tự quay/chụp# - Kiểu dáng hot trend, trẻ trung dễ phối đồ. Có thể phối đồ# - Giày đẹp, nhẹ, bền, giá phải chăng',4,110,'2023-12-05','on',2,20),(71,'Giày Thể Thao Adidas Nữ Snaker Siêu Nhẹ','Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/04_giay_the_thao_Adidas_Nam_Nu_Snaker_sieu_nhe_00.jpg',420000,590000,'- Giày sneaker Nam Nữ: Full size# - Ảnh và video thật 100% do shop tự quay/chụp# - Kiểu dáng hot trend, trẻ trung dễ phối đồ. Có thể phối đồ# - Giày đẹp, nhẹ, bền, giá phải chăng',4,111,'2023-12-05','on',2,20),(72,'Giày Thể Thao Nữ SODOHA SDH311','Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/05_giay_the_thao_nu_SODOHA_SDH311_00.jpg',399000,450000,'- Giày sneaker Nam Nữ: Full size# - Ảnh và video thật 100% do shop tự quay/chụp# - Kiểu dáng hot trend, trẻ trung dễ phối đồ. Có thể phối đồ# - Giày đẹp, nhẹ, bền, giá phải chăng',4,125,'2023-12-05','on',2,20),(73,'Chân Váy Dài Jean','Image/Product/P3_Vay/P3_Vay_01_ChanVay/01_Chan_vay_dai_jean_00.jpg',229000,229000,'-Chân váy có QUẦN BẢO HỘ bên trong.# - Sản phẩm giống hình 100%# - Tất cả sản phẩm đều được kiểm tra và là ủi trước khi giao đến tay khách hàng.# - Khi mua hàng tại 2000s , mọi đơn hàng từ 50k đều được freeship tối đa 15k.# - Đối với 2000s chất lượng và dịch vụ luôn được đặt lên hàng đầu.# Bảng chọn size của 2000s: (chọn size theo vòng eo)# Size S: Eo 62-66 (42-47kg)# Size M: Eo 66-70 (48-53kg)# Size L: Eo 70-74 (54-59kg)',4,110,'2023-12-05','on',2,12),(74,'Chân Váy Xếp Ly','Image/Product/P3_Vay/P3_Vay_01_ChanVay/02_Chan_vay_xep_ly_00.jpg',200000,260000,'-Chân váy có QUẦN BẢO HỘ bên trong.# - Sản phẩm giống hình 100%# - Tất cả sản phẩm đều được kiểm tra và là ủi trước khi giao đến tay khách hàng.# - Khi mua hàng tại 2000s , mọi đơn hàng từ 50k đều được freeship tối đa 15k.# - Đối với 2000s chất lượng và dịch vụ luôn được đặt lên hàng đầu.# Bảng chọn size của 2000s: (chọn size theo vòng eo)# Size S: Eo 62-66 (42-47kg)# Size M: Eo 66-70 (48-53kg)# Size L: Eo 70-74 (54-59kg)',4,240,'2023-12-05','on',2,12),(75,'Chân Váy Chữ A','Image/Product/P3_Vay/P3_Vay_01_ChanVay/03_Chan_vay_chu_a_00.jpg',189000,249000,'-Chân váy có QUẦN BẢO HỘ bên trong.# - Sản phẩm giống hình 100%# - Tất cả sản phẩm đều được kiểm tra và là ủi trước khi giao đến tay khách hàng.# - Khi mua hàng tại 2000s , mọi đơn hàng từ 50k đều được freeship tối đa 15k.# - Đối với 2000s chất lượng và dịch vụ luôn được đặt lên hàng đầu.# Bảng chọn size của 2000s: (chọn size theo vòng eo)# Size S: Eo 62-66 (42-47kg)# Size M: Eo 66-70 (48-53kg)# Size L: Eo 70-74 (54-59kg)',4,241,'2023-12-05','on',2,12),(76,'Chân Váy Cao Cấp','Image/Product/P3_Vay/P3_Vay_01_ChanVay/04_Chan_vay_cap_cao_00.jpg',169000,229000,'-Chân váy có QUẦN BẢO HỘ bên trong.# - Sản phẩm giống hình 100%# - Tất cả sản phẩm đều được kiểm tra và là ủi trước khi giao đến tay khách hàng.# - Khi mua hàng tại 2000s , mọi đơn hàng từ 50k đều được freeship tối đa 15k.# - Đối với 2000s chất lượng và dịch vụ luôn được đặt lên hàng đầu.# Bảng chọn size của 2000s: (chọn size theo vòng eo)# Size S: Eo 62-66 (42-47kg)# Size M: Eo 66-70 (48-53kg)# Size L: Eo 70-74 (54-59kg)',4,210,'2023-12-05','on',2,12),(77,'Set Thể Thao Nỉ Ghi','Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/02_Set_the_thao_ni_ghi_00.jpg',299000,400000,'- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự. # - Không được dùng hóa chất tẩy. # - Hạn chế sử dụng máy sấy và ủi ở nhiệt độ thích hợp. # - Lộn mặt trái khi phơi tránh bị phai màu # - Cam kết chất lượng và mẫu mã sản phẩm giống với hình ảnh. # - Size S 43-48kg# - Size M 49-54kg # - Size L 55-60 kg',4,240,'2023-12-04','on',2,19),(78,'Set Thể Thao Kẻ Sọc To','Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/03_Set_the_thao_ke_soc_to_00.jpg',259000,330000,'- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự. # - Không được dùng hóa chất tẩy. # - Hạn chế sử dụng máy sấy và ủi ở nhiệt độ thích hợp. # - Lộn mặt trái khi phơi tránh bị phai màu # - Cam kết chất lượng và mẫu mã sản phẩm giống với hình ảnh. # - Size S 43-48kg# - Size M 49-54kg # - Size L 55-60 kg',4,144,'2023-12-04','on',2,19),(79,'Set Thể Thao Lót Bông Dày Dặn','Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/04_Set_the_thao_lot_bong_day_dan_00.jpg',320000,450000,'- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự. # - Không được dùng hóa chất tẩy. # - Hạn chế sử dụng máy sấy và ủi ở nhiệt độ thích hợp. # - Lộn mặt trái khi phơi tránh bị phai màu # - Cam kết chất lượng và mẫu mã sản phẩm giống với hình ảnh. # - Size S 43-48kg# - Size M 49-54kg # - Size L 55-60 kg',4,124,'2023-12-04','on',2,19),(80,'Set Thể Thao Bó Gấu','Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/05_Set_the_thao_bo_gau_00.jpg',299000,420000,'- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự. # - Không được dùng hóa chất tẩy. # - Hạn chế sử dụng máy sấy và ủi ở nhiệt độ thích hợp. # - Lộn mặt trái khi phơi tránh bị phai màu # - Cam kết chất lượng và mẫu mã sản phẩm giống với hình ảnh. # - Size S 43-48kg# - Size M 49-54kg # - Size L 55-60 kg',4,212,'2023-12-04','on',2,19),(81,'Áo Sơ Mi Mix Cadigan','Image/Product/P1_Ao/P1_Ao_01_SoMi/04_ao_so_mi_mix_cadigan_00.jpg',200000,240000,'Tên: Áo sơ mix cadigan# Màu sắc: Trắng, đen, nâu# Áo dài tay: CỔ BẺ# Chiều dài: Sơ mi tay dài# Chất liệu: Áo sơ mi vải mềm mịn thoáng mát, thấm hút mồ hôi',4,100,'2023-12-04','on',2,1),(82,'Áo Sơ Mi Oxford Tay Dài','Image/Product/P1_Ao/P1_Ao_01_SoMi/05_ao_so_mi_oxford_tay_dai_00.jpg',155000,320000,'Chất liệu: Vải Oxford# Form: Oversize# Màu sắc: Xanh/ Hồng/ Xám# Thiết kế: Thêu logo sắc nét, tinh xảo# Form áo: rộng (khác với phom áo sơ mi công sở thông thường)',4,140,'2023-12-04','on',2,1),(83,'Áo Sơ Mi Nữ Kéo Khóa 2 Đầu Tay Dài','Image/Product/P1_Ao/P1_Ao_01_SoMi/06_ao_so_mi_nu_khoa_keo_2_dau_tay_dai_00.jpg',220000,300000,'Tên sản phẩm: Áo sơ mi nữ khoá kéo 2 đầu tay dài FORGIRL dáng rộng thời trang Hàn Quốc dành cho nữ # Màu sắc : Xanh, trắng# Chất liệu : thô + sợi polyester + khác# Size : S, M, L, XL# Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%',4,150,'2023-12-04','on',2,1),(84,'Áo Sơ Mi Nữ Tiểu Thư','Image/Product/P1_Ao/P1_Ao_01_SoMi/07_ao_so_mi_tieu_thu_00.jpg',210000,280000,'Áo sơ mi tiểu thư phối ly# Màu: trắng# Size: Freesize ( dưới 57kg )# Áo siêu xinh kết hợp quần, váy đều hợp ạ# Chất liệu : thô + sợi polyester + khác',4,220,'2023-12-04','on',2,1),(85,'Áo Sơ Mi Nữ Trắng Công Sở','Image/Product/P1_Ao/P1_Ao_01_SoMi/08_ao_so_mi_nu_trang_cong_so_00.jpg',150000,200000,'Cổ áo: Cổ sơ mi# Chiều dài áo: Dài# Xuất xứ: Việt Nam# Mẫu: Trơn# Chiều dài tay áo: Dài tay# Cropped Top: Không# Mùa: 4 mùa# Chất liệu: tơ ý',4,220,'2023-12-04','on',2,1),(86,'Áo Sơ Mi Nữ Dài Tay Form Rộng Ulzzang','Image/Product/P1_Ao/P1_Ao_01_SoMi/09_ao_so_mi_nu_dai_tay_form_rong_ulzzang_00.jpg',125000,150000,'Phong cách: Hàn Quốc# Cổ áo: Cổ sơ mi# Chiều dài áo: Dài# Chất Liệu: Cotton mềm# Màu Sắc: Trắng, Hồng, Nâu, Xanh, Xanh min, Vàng# Xuất xứ: Việt Nam',4,220,'2023-12-04','on',2,1),(87,'Áo Sơ Mi Form Rộng Ulzzang Kiểu Hàn Basic','Image/Product/P1_Ao/P1_Ao_01_SoMi/10_ao_so_mi_form_rong_ulzzang_kieu_han_basic_00.jpg',140000,160000,'Phong cách: Cơ bản, Hàn Quốc, Tối giản, Công sở# Cổ áo: Cổ sơ mi# Chiều dài áo: Dài# Chất Liệu: Đũi xước# Màu Sắc: Trắng, Xám đậm, Xanh bộ đội# Xuất xứ: Việt Nam',4,200,'2023-12-04','on',2,1),(88,'Áo Sơ Mi Kẻ Phối Cổ Dài Tay Premium','Image/Product/P1_Ao/P1_Ao_01_SoMi/11_ao_so_mi_ke_phoi_co_dai_tay_premium_00.jpg',229000,350000,'Phong cách: Cơ bản, Hàn Quốc, Tối giản, Công sở, Cổ điển# Dịp: Hằng Ngày# Cổ áo: Cổ sơ mi# Chiều dài áo: Dài# Chất Liệu: Cotton# Màu Sắc: Hồng# Xuất xứ: Việt Nam',4,200,'2023-12-04','on',2,1),(89,'Áo Sơ Mi Tay Dài Màu Sắc Đơn Giản','Image/Product/P1_Ao/P1_Ao_01_SoMi/12_ao_so_mi_tay_dai_mau_sac_don_gian_00.jpg',155000,290000,'Phong cách: Cơ bản, Hàn Quốc, Tối giản, Công sở, Cổ điển# Dịp: Hằng Ngày# Cổ áo: Cổ sơ mi# Chiều dài áo: Dài# Chất Liệu: Cotton# Màu Sắc: Hồng# Xuất xứ: Việt Nam',4,210,'2023-12-04','on',2,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productimage`
--

DROP TABLE IF EXISTS `productimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productimage` (
  `ProductImageId` int NOT NULL AUTO_INCREMENT,
  `ProductImageURL` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ProductId` int DEFAULT NULL,
  PRIMARY KEY (`ProductImageId`),
  KEY `ProductId` (`ProductId`),
  CONSTRAINT `productimage_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productimage`
--

LOCK TABLES `productimage` WRITE;
/*!40000 ALTER TABLE `productimage` DISABLE KEYS */;
INSERT INTO `productimage` VALUES (1,'Image/Product/P1_Ao/P1_Ao_01_SoMi/01_ao_so_mi_nu_bat_doi_xung_01.jpg',1),(2,'Image/Product/P1_Ao/P1_Ao_01_SoMi/01_ao_so_mi_nu_bat_doi_xung_02.jpg',1),(3,'Image/Product/P1_Ao/P1_Ao_01_SoMi/01_ao_so_mi_nu_bat_doi_xung_03.jpg',1),(4,'Image/Product/P1_Ao/P1_Ao_01_SoMi/02_ao_so_mi_dai_tay_phong_01.jpg',2),(5,'Image/Product/P1_Ao/P1_Ao_01_SoMi/02_ao_so_mi_dai_tay_phong_02.jpg',2),(6,'Image/Product/P1_Ao/P1_Ao_01_SoMi/02_ao_so_mi_dai_tay_phong_03.jpg',2),(7,'Image/Product/P1_Ao/P1_Ao_01_SoMi/03_ao_so_mi_giau_cuc_01.jpg',3),(8,'Image/Product/P1_Ao/P1_Ao_01_SoMi/03_ao_so_mi_giau_cuc_02.jpg',3),(9,'Image/Product/P1_Ao/P1_Ao_01_SoMi/03_ao_so_mi_giau_cuc_03.jpg',3),(10,'Image/Accessory/A5_Kinh/01_Kinh_mat_dang_day_xich_01.jpg',30),(11,'Image/Accessory/A5_Kinh/01_Kinh_mat_dang_day_xich_02.jpg',30),(12,'Image/Accessory/A5_Kinh/01_Kinh_mat_dang_day_xich_03.jpg',30),(13,'Image/Accessory/A5_Kinh/02_Kinh_gong_lon_chong_anh_sang_xanh_01.jpg',35),(14,'Image/Accessory/A5_Kinh/02_Kinh_gong_lon_chong_anh_sang_xanh_02.jpg',35),(15,'Image/Accessory/A5_Kinh/02_Kinh_gong_lon_chong_anh_sang_xanh_03.jpg',35),(16,'Image/Accessory/A5_Kinh/03_Kinh_gong_tron_kim_loai_01.jpg',36),(17,'Image/Accessory/A5_Kinh/03_Kinh_gong_tron_kim_loai_02.jpg',36),(18,'Image/Accessory/A5_Kinh/03_Kinh_gong_tron_kim_loai_03.jpg',36),(19,'Image/Accessory/A5_Kinh/04_Kinh_ram_oversize_01.jpg',37),(20,'Image/Accessory/A5_Kinh/04_Kinh_ram_oversize_02.jpg',37),(21,'Image/Accessory/A5_Kinh/04_Kinh_ram_oversize_03.jpg',37),(22,'Image/Accessory/A5_Kinh/05_Kinh_ram_mat_meo_01.jpg',38),(23,'Image/Accessory/A5_Kinh/05_Kinh_ram_mat_meo_02.jpg',38),(24,'Image/Accessory/A5_Kinh/05_Kinh_ram_mat_meo_03.jpg',38),(25,'Image/Accessory/A4_ThatLung/01_That_lung_nu_da_that_01.jpg',29),(26,'Image/Accessory/A4_ThatLung/01_That_lung_nu_da_that_02.jpg',29),(27,'Image/Accessory/A4_ThatLung/01_That_lung_nu_da_that_03.jpg',29),(28,'Image/Accessory/A4_ThatLung/02_That_lung_phoi_xich_01.jpg',39),(29,'Image/Accessory/A4_ThatLung/02_That_lung_phoi_xich_02.jpg',39),(30,'Image/Accessory/A4_ThatLung/02_That_lung_phoi_xich_03.jpg',39),(31,'Image/Accessory/A4_ThatLung/03_That_lung_phu_kien_01.jpg',40),(32,'Image/Accessory/A4_ThatLung/03_That_lung_phu_kien_02.jpg',40),(33,'Image/Accessory/A4_ThatLung/03_That_lung_phu_kien_03.jpg',40),(34,'Image/Accessory/A4_ThatLung/04_That_lung_demin_01.jpg',41),(35,'Image/Accessory/A4_ThatLung/04_That_lung_demin_02.jpg',41),(36,'Image/Accessory/A4_ThatLung/04_That_lung_demin_03.jpg',41),(37,'Image/Accessory/A4_ThatLung/05_That_lung_van_ca_sau_01.jpg',42),(38,'Image/Accessory/A4_ThatLung/05_That_lung_van_ca_sau_02.jpg',42),(39,'Image/Accessory/A4_ThatLung/05_That_lung_van_ca_sau_03.jpg',42),(40,'Image/Accessory/A3_Mu/01_Mu_noi_phong_cach_han_01.jpg',28),(41,'Image/Accessory/A3_Mu/01_Mu_noi_phong_cach_han_02.jpg',28),(42,'Image/Accessory/A3_Mu/01_Mu_noi_phong_cach_han_03.jpg',28),(43,'Image/Accessory/A3_Mu/02_Mu_coi_di_bien_01.jpg',43),(44,'Image/Accessory/A3_Mu/02_Mu_coi_di_bien_02.jpg',43),(45,'Image/Accessory/A3_Mu/02_Mu_coi_di_bien_03.jpg',43),(46,'Image/Accessory/A3_Mu/03_Mu_luoi_trai_unisex_01.jpg',44),(47,'Image/Accessory/A3_Mu/03_Mu_luoi_trai_unisex_02.jpg',44),(48,'Image/Accessory/A3_Mu/03_Mu_luoi_trai_unisex_03.jpg',44),(49,'Image/Accessory/A3_Mu/04_Mu_bucket_long_tho_01.jpg',45),(50,'Image/Accessory/A3_Mu/04_Mu_bucket_long_tho_02.jpg',45),(51,'Image/Accessory/A3_Mu/04_Mu_bucket_long_tho_03.jpg',45),(52,'Image/Accessory/A3_Mu/05_Mu_da_ep-cup_no_01.jpg',46),(53,'Image/Accessory/A3_Mu/05_Mu_da_ep-cup_no_02.jpg',46),(54,'Image/Accessory/A3_Mu/05_Mu_da_ep-cup_no_03.jpg',46),(55,'Image/Accessory/A2_Tui/A2_Tui_02_Balo/01_Balo_nu_mau_hong_01.jpg',47),(56,'Image/Accessory/A2_Tui/A2_Tui_02_Balo/01_Balo_nu_mau_hong_02.jpg',47),(57,'Image/Accessory/A2_Tui/A2_Tui_02_Balo/01_Balo_nu_mau_hong_03.jpg',47),(58,'Image/Accessory/A2_Tui/A2_Tui_02_Balo/02_Balo_nu_mau_den_01.jpg',48),(59,'Image/Accessory/A2_Tui/A2_Tui_02_Balo/02_Balo_nu_mau_den_02.jpg',48),(60,'Image/Accessory/A2_Tui/A2_Tui_02_Balo/02_Balo_nu_mau_den_03.jpg',48),(61,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/01_Tui_xach_nu_hop_den_01.jpg',27),(62,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/01_Tui_xach_nu_hop_den_02.jpg',27),(63,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/01_Tui_xach_nu_hop_den_03.jpg',27),(64,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/02_Tui_xach_nu_dusto_01.jpg',55),(65,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/02_Tui_xach_nu_dusto_02.jpg',55),(66,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/02_Tui_xach_nu_dusto_03.jpg',55),(67,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/03_Tui_xach_da_rum_no_01.jpg',56),(68,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/03_Tui_xach_da_rum_no_02.jpg',56),(69,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/03_Tui_xach_da_rum_no_03.jpg',56),(70,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/04_Tui_xach_deo_cheo_kelley_01.jpg',57),(71,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/04_Tui_xach_deo_cheo_kelley_02.jpg',57),(72,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/04_Tui_xach_deo_cheo_kelley_03.jpg',57),(73,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/05_Tui_xach_deo_hoa_tiet_01.jpg',58),(74,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/05_Tui_xach_deo_hoa_tiet_02.jpg',58),(75,'Image/Accessory/A2_Tui/A2_Tui_01_Tui/05_Tui_xach_deo_hoa_tiet_03.jpg',58),(76,'Image/Accessory/A1_GiayDep/A1_GiayDep_04_DepSuc/01_Dep_Suc_Gucci_01.jpg',34),(77,'Image/Accessory/A1_GiayDep/A1_GiayDep_04_DepSuc/01_Dep_Suc_Gucci_02.jpg',34),(78,'Image/Accessory/A1_GiayDep/A1_GiayDep_04_DepSuc/01_Dep_Suc_Gucci_03.jpg',34),(79,'Image/Accessory/A1_GiayDep/A1_GiayDep_04_DepSuc/02_Dep_Suc_don_de_01.jpg',59),(80,'Image/Accessory/A1_GiayDep/A1_GiayDep_04_DepSuc/02_Dep_Suc_don_de_02.jpg',59),(81,'Image/Accessory/A1_GiayDep/A1_GiayDep_04_DepSuc/02_Dep_Suc_don_de_03.jpg',59),(82,'Image/Accessory/A1_GiayDep/A1_GiayDep_04_DepSuc/03_Dep_Suc_mui_nhon_01.jpg',60),(83,'Image/Accessory/A1_GiayDep/A1_GiayDep_04_DepSuc/03_Dep_Suc_mui_nhon_02.jpg',60),(84,'Image/Accessory/A1_GiayDep/A1_GiayDep_04_DepSuc/03_Dep_Suc_mui_nhon_03.jpg',60),(85,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/01_Giay_cao_got_9P_day_manh_01.jpg',33),(86,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/01_Giay_cao_got_9P_day_manh_02.jpg',33),(87,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/01_Giay_cao_got_9P_day_manh_03.jpg',33),(88,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/02_Giay_cao_mui_nhon_ho_got_01.jpg',61),(89,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/02_Giay_cao_mui_nhon_ho_got_02.jpg',61),(90,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/02_Giay_cao_mui_nhon_ho_got_03.jpg',61),(91,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/03_Giay_cao_du_tiec_01.jpg',62),(92,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/03_Giay_cao_du_tiec_02.jpg',62),(93,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/03_Giay_cao_du_tiec_03.jpg',62),(94,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/04_Giay_cao_got_cong_so_01.jpg',63),(95,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/04_Giay_cao_got_cong_so_02.jpg',63),(96,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/04_Giay_cao_got_cong_so_03.jpg',63),(97,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/05_Giay_cao_got_gan_no_01.jpg',64),(98,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/05_Giay_cao_got_gan_no_02.jpg',64),(99,'Image/Accessory/A1_GiayDep/A1_GiayDep_03_GiayCaoGot/05_Giay_cao_got_gan_no_03.jpg',64),(100,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/01_giay_bot_MURIOKI_co_cao_co_gian_01.jpg',32),(101,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/01_giay_bot_MURIOKI_co_cao_co_gian_02.jpg',32),(102,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/01_giay_bot_MURIOKI_co_cao_co_gian_03.jpg',32),(103,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/02_giay_bot_cao_got_IELGY_don_gian_01.jpg',65),(104,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/02_giay_bot_cao_got_IELGY_don_gian_02.jpg',65),(105,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/02_giay_bot_cao_got_IELGY_don_gian_03.jpg',65),(106,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/03_giay_bot_Martin_da_bong_cao_got_01.jpg',66),(107,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/03_giay_bot_Martin_da_bong_cao_got_02.jpg',66),(108,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/03_giay_bot_Martin_da_bong_cao_got_03.jpg',66),(109,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/04_giay_bot_de_chong_truot_01.jpg',67),(110,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/04_giay_bot_de_chong_truot_02.jpg',67),(111,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/04_giay_bot_de_chong_truot_03.jpg',67),(112,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/05_giay_bot_IELGY_co_thap_de_day_cai_khoa_01.jpg',68),(113,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/05_giay_bot_IELGY_co_thap_de_day_cai_khoa_02.jpg',68),(114,'Image/Accessory/A1_GiayDep/A1_GiayDep_02_Bot/05_giay_bot_IELGY_co_thap_de_day_cai_khoa_03.jpg',68),(115,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/01_giay_the_thao_co_dem_khi_thoi_trang_01.jpg',31),(116,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/01_giay_the_thao_co_dem_khi_thoi_trang_02.jpg',31),(117,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/01_giay_the_thao_co_dem_khi_thoi_trang_03.jpg',31),(118,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/02_giay_the_thao_de_day_phoi_luoi_01.jpg',69),(119,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/02_giay_the_thao_de_day_phoi_luoi_02.jpg',69),(120,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/02_giay_the_thao_de_day_phoi_luoi_03.jpg',69),(121,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/03_giay_the_thao_bonnie_cathy_mau_trang_01.jpg',70),(122,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/03_giay_the_thao_bonnie_cathy_mau_trang_02.jpg',70),(123,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/03_giay_the_thao_bonnie_cathy_mau_trang_03.jpg',70),(124,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/04_giay_the_thao_Adidas_Nam_Nu_Snaker_sieu_nhe_01.jpg',71),(125,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/04_giay_the_thao_Adidas_Nam_Nu_Snaker_sieu_nhe_02.jpg',71),(126,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/04_giay_the_thao_Adidas_Nam_Nu_Snaker_sieu_nhe_03.jpg',71),(127,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/05_giay_the_thao_nu_SODOHA_SDH311_01.jpg',72),(128,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/05_giay_the_thao_nu_SODOHA_SDH311_02.jpg',72),(129,'Image/Accessory/A1_GiayDep/A1_GiayDep_01_GiaySport/05_giay_the_thao_nu_SODOHA_SDH311_03.jpg',72),(130,'Image/Product/P3_Vay/P3_Vay_01_ChanVay/01_Chan_vay_dai_jean_01.jpg',73),(131,'Image/Product/P3_Vay/P3_Vay_01_ChanVay/01_Chan_vay_dai_jean_02.jpg',73),(132,'Image/Product/P3_Vay/P3_Vay_01_ChanVay/01_Chan_vay_dai_jean_03.jpg',73),(133,'Image/Product/P3_Vay/P3_Vay_01_ChanVay/02_Chan_vay_xep_ly_01.jpg',74),(134,'Image/Product/P3_Vay/P3_Vay_01_ChanVay/02_Chan_vay_xep_ly_02.jpg',74),(135,'Image/Product/P3_Vay/P3_Vay_01_ChanVay/02_Chan_vay_xep_ly_03.jpg',74),(136,'Image/Product/P3_Vay/P3_Vay_01_ChanVay/03_Chan_vay_chu_a_01.jpg',75),(137,'Image/Product/P3_Vay/P3_Vay_01_ChanVay/03_Chan_vay_chu_a_02.jpg',75),(138,'Image/Product/P3_Vay/P3_Vay_01_ChanVay/03_Chan_vay_chu_a_03.jpg',75),(139,'Image/Product/P3_Vay/P3_Vay_01_ChanVay/04_Chan_vay_cap_cao_01.jpg',76),(140,'Image/Product/P3_Vay/P3_Vay_01_ChanVay/04_Chan_vay_cap_cao_02.jpg',76),(141,'Image/Product/P3_Vay/P3_Vay_01_ChanVay/04_Chan_vay_cap_cao_03.jpg',76),(142,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/01_Set_the_thao_khoac_gio_01.jpg',20),(143,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/01_Set_the_thao_khoac_gio_02.jpg',20),(144,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/01_Set_the_thao_khoac_gio_03.jpg',20),(145,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/02_Set_the_thao_ni_ghi_01.jpg',77),(146,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/02_Set_the_thao_ni_ghi_02.jpg',77),(147,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/02_Set_the_thao_ni_ghi_03.jpg',77),(148,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/03_Set_the_thao_ke_soc_to_01.jpg',78),(149,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/03_Set_the_thao_ke_soc_to_02.jpg',78),(150,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/03_Set_the_thao_ke_soc_to_03.jpg',78),(151,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/04_Set_the_thao_lot_bong_day_dan_01.jpg',79),(152,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/04_Set_the_thao_lot_bong_day_dan_02.jpg',79),(153,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/04_Set_the_thao_lot_bong_day_dan_03.jpg',79),(154,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/05_Set_the_thao_bo_gau_01.jpg',80),(155,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/05_Set_the_thao_bo_gau_02.jpg',80),(156,'Image/Product/P5_SetQuanAo/P6_SetQuanAo_02_DoSport/05_Set_the_thao_bo_gau_03.jpg',80),(157,'Image/Product/P1_Ao/P1_Ao_01_SoMi/04_ao_so_mi_mix_cadigan_01.jpg.',81),(158,'Image/Product/P1_Ao/P1_Ao_01_SoMi/04_ao_so_mi_mix_cadigan_02.jpg',81),(159,'Image/Product/P1_Ao/P1_Ao_01_SoMi/04_ao_so_mi_mix_cadigan_03.jpg',81),(160,'Image/Product/P1_Ao/P1_Ao_01_SoMi/05_ao_so_mi_oxford_tay_dai_01.jpg',82),(161,'Image/Product/P1_Ao/P1_Ao_01_SoMi/05_ao_so_mi_oxford_tay_dai_02.jpg',82),(162,'Image/Product/P1_Ao/P1_Ao_01_SoMi/05_ao_so_mi_oxford_tay_dai_03.jpg',82),(163,'Image/Product/P1_Ao/P1_Ao_01_SoMi/06_ao_so_mi_nu_khoa_keo_2_dau_tay_dai_01.jpg',83),(164,'Image/Product/P1_Ao/P1_Ao_01_SoMi/06_ao_so_mi_nu_khoa_keo_2_dau_tay_dai_02.jpg',83),(165,'Image/Product/P1_Ao/P1_Ao_01_SoMi/06_ao_so_mi_nu_khoa_keo_2_dau_tay_dai_03.jpg',83),(166,'Image/Product/P1_Ao/P1_Ao_01_SoMi/07_ao_so_mi_tieu_thu_01.jpg',84),(167,'Image/Product/P1_Ao/P1_Ao_01_SoMi/07_ao_so_mi_tieu_thu_02.jpg',84),(168,'Image/Product/P1_Ao/P1_Ao_01_SoMi/07_ao_so_mi_tieu_thu_03.jpg',84),(169,'Image/Product/P1_Ao/P1_Ao_01_SoMi/08_ao_so_mi_nu_trang_cong_so_01.jpg	',85),(170,'Image/Product/P1_Ao/P1_Ao_01_SoMi/08_ao_so_mi_nu_trang_cong_so_02.jpg',85),(171,'Image/Product/P1_Ao/P1_Ao_01_SoMi/08_ao_so_mi_nu_trang_cong_so_03.jpg',85),(172,'Image/Product/P1_Ao/P1_Ao_01_SoMi/09_ao_so_mi_nu_dai_tay_form_rong_ulzzang_01.jpg',86),(173,'Image/Product/P1_Ao/P1_Ao_01_SoMi/09_ao_so_mi_nu_dai_tay_form_rong_ulzzang_02.jpg',86),(174,'Image/Product/P1_Ao/P1_Ao_01_SoMi/09_ao_so_mi_nu_dai_tay_form_rong_ulzzang_03.jpg',86),(175,'Image/Product/P1_Ao/P1_Ao_01_SoMi/10_ao_so_mi_form_rong_ulzzang_kieu_han_basic_01.jpg',87),(176,'Image/Product/P1_Ao/P1_Ao_01_SoMi/10_ao_so_mi_form_rong_ulzzang_kieu_han_basic_02.jpg',87),(177,'Image/Product/P1_Ao/P1_Ao_01_SoMi/10_ao_so_mi_form_rong_ulzzang_kieu_han_basic_03.jpg',87),(178,'Image/Product/P1_Ao/P1_Ao_01_SoMi/11_ao_so_mi_ke_phoi_co_dai_tay_premium_01.jpg',88),(179,'Image/Product/P1_Ao/P1_Ao_01_SoMi/11_ao_so_mi_ke_phoi_co_dai_tay_premium_02.jpg',88),(180,'Image/Product/P1_Ao/P1_Ao_01_SoMi/11_ao_so_mi_ke_phoi_co_dai_tay_premium_03.jpg',88),(181,'Image/Product/P1_Ao/P1_Ao_01_SoMi/12_ao_so_mi_tay_dai_mau_sac_don_gian_01.jpg',89),(182,'Image/Product/P1_Ao/P1_Ao_01_SoMi/12_ao_so_mi_tay_dai_mau_sac_don_gian_02.jpg',89),(183,'Image/Product/P1_Ao/P1_Ao_01_SoMi/12_ao_so_mi_tay_dai_mau_sac_don_gian_03.jpg',89);
/*!40000 ALTER TABLE `productimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productsize`
--

DROP TABLE IF EXISTS `productsize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productsize` (
  `ProductId` int NOT NULL,
  `CategorySizeId` int NOT NULL,
  `ProductSizeQuantity` int DEFAULT NULL,
  PRIMARY KEY (`ProductId`,`CategorySizeId`),
  KEY `CategorySizeId` (`CategorySizeId`),
  CONSTRAINT `productsize_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`),
  CONSTRAINT `productsize_ibfk_2` FOREIGN KEY (`CategorySizeId`) REFERENCES `categorysize` (`CategorySizeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productsize`
--

LOCK TABLES `productsize` WRITE;
/*!40000 ALTER TABLE `productsize` DISABLE KEYS */;
INSERT INTO `productsize` VALUES (1,1,200),(1,2,200),(1,3,200),(2,1,200),(2,2,200),(2,3,200),(3,1,200),(3,2,200),(3,3,200),(4,1,200),(4,2,200),(4,3,200),(5,1,200),(5,2,200),(5,3,200),(6,1,200),(6,2,200),(6,3,200),(7,1,200),(7,2,200),(7,3,200),(8,1,200),(8,2,200),(8,3,200),(9,1,200),(9,2,200),(9,3,200),(10,1,200),(10,2,200),(10,3,200),(11,1,200),(11,2,200),(11,3,200),(12,1,200),(12,2,200),(12,3,200),(13,1,200),(13,2,200),(13,3,200),(81,1,200),(81,2,200),(81,3,200),(82,1,200),(82,2,200),(82,3,200),(83,1,200),(83,2,200),(83,3,200),(84,1,200),(84,2,200),(84,3,200),(85,1,200),(85,2,200),(85,3,200),(86,1,200),(86,2,200),(86,3,200),(87,1,200),(87,2,200),(87,3,200),(88,1,200),(88,2,200),(88,3,200),(89,1,200),(89,2,200),(89,3,200);
/*!40000 ALTER TABLE `productsize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `PromotionId` int NOT NULL AUTO_INCREMENT,
  `PromotionName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PromotionDiscount` int DEFAULT NULL,
  `PromotionStartDate` date DEFAULT NULL,
  `PromotionEndDate` date DEFAULT NULL,
  `PromotionQuantity` int DEFAULT NULL,
  `ProductId` int DEFAULT NULL,
  PRIMARY KEY (`PromotionId`),
  KEY `ProductId` (`ProductId`),
  CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'Tết',15,'2024-02-01','2024-02-29',1000,1),(2,'Tết',15,'2024-02-01','2024-02-29',1000,2),(3,'Tết',15,'2024-02-01','2024-02-29',1000,3);
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `RoleId` int NOT NULL AUTO_INCREMENT,
  `RoleTitle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`RoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Admin'),(2,'SalesMan'),(3,'Maketer'),(4,'User');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipper` (
  `ShipperId` int NOT NULL AUTO_INCREMENT,
  `CompanyName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ShipperPhone` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ShipperId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipper`
--

LOCK TABLES `shipper` WRITE;
/*!40000 ALTER TABLE `shipper` DISABLE KEYS */;
INSERT INTO `shipper` VALUES (1,'Viettel Post','0625948652'),(2,'J&T Express','0325684585'),(3,'Ninja Van','0265984569'),(4,'Kerry Express','0235698549');
/*!40000 ALTER TABLE `shipper` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-20 16:36:15
