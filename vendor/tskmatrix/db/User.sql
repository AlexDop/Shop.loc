-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 27, 2016 at 02:56 PM
-- Server version: 5.7.17
-- PHP Version: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `User`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `AddressId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `SupplierId` int(11) DEFAULT NULL,
  `AddressTypeId` int(11) DEFAULT NULL,
  `IsCompany` bit(1) DEFAULT NULL,
  `CompanyName` varchar(500) DEFAULT NULL,
  `TaxNumber` varchar(50) DEFAULT NULL,
  `TaxOffice` varchar(500) DEFAULT NULL,
  `ShippingPerson` varchar(100) DEFAULT NULL,
  `ShippingPhone` char(10) DEFAULT NULL,
  `IdentityNumber` char(11) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `AddressLine1` varchar(1000) DEFAULT NULL,
  `AddressLine2` varchar(1000) DEFAULT NULL,
  `District` varchar(1000) DEFAULT NULL,
  `County` varchar(1000) DEFAULT NULL,
  `City` varchar(1000) DEFAULT NULL,
  `GeoZone` varchar(1000) DEFAULT NULL,
  `Country` varchar(1000) DEFAULT NULL,
  `PostalCode` char(5) DEFAULT NULL,
  `FullAddress` mediumtext,
  `IsValid` bit(1) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `addresstypes`
--

CREATE TABLE `addresstypes` (
  `AddressTypeId` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` mediumtext,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

CREATE TABLE `affiliates` (
  `AffiliateId` int(11) NOT NULL,
  `CustomerId` int(11) DEFAULT NULL,
  `ReferedCustomerId` int(11) DEFAULT NULL,
  `ActivatedOn` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('superuser', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('marketingadmin', 2, NULL, NULL, NULL, 1409767977, 1409767977),
('productadmin', 2, NULL, NULL, NULL, 1409767897, 1409767897),
('superuser', 2, 'GOD', NULL, NULL, 1409767810, 1409767810),
('suppliersadmin', 2, NULL, NULL, NULL, 1409767977, 1409767977),
('user', 2, 'a user', NULL, NULL, 1409768049, 1409768049);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('superuser', 'marketingadmin'),
('superuser', 'productadmin'),
('superuser', 'suppliersadmin'),
('superuser', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `BankId` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `WebSite` varchar(500) DEFAULT NULL,
  `Eft` varchar(20) DEFAULT NULL,
  `Swift` varchar(20) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `BrandId` int(11) NOT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `Description` mediumtext,
  `Website` varchar(500) DEFAULT NULL,
  `LogoUrl` varchar(1000) DEFAULT NULL,
  `IsLogoVisible` bit(1) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaignproducts`
--

CREATE TABLE `campaignproducts` (
  `CampaignProductId` int(11) NOT NULL,
  `CampaignId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Price` decimal(18,2) DEFAULT NULL,
  `Stock` decimal(18,2) DEFAULT NULL,
  `StockUnitId` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `CampaignId` int(11) NOT NULL,
  `CampaignTypeId` int(11) DEFAULT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `ShortDescription` varchar(500) DEFAULT NULL,
  `Description` mediumtext,
  `HtmlDescription` varchar(150) DEFAULT NULL,
  `DiscountPercent` int(11) DEFAULT NULL,
  `ImageUrl` varchar(500) DEFAULT NULL,
  `OrderLimit` int(11) DEFAULT NULL,
  `MaximumProductPurchaceLimit` int(11) DEFAULT NULL,
  `MinimumProductPurchaceLimit` int(11) DEFAULT NULL,
  `StartedOn` int(11) DEFAULT NULL,
  `EndedOn` int(11) DEFAULT NULL,
  `ShippingStartsOn` int(11) DEFAULT NULL,
  `ShippingEndsOn` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigntypes`
--

CREATE TABLE `campaigntypes` (
  `CampaignTypeId` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` mediumtext,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `CityId` int(11) NOT NULL,
  `GeoZoneId` int(11) DEFAULT NULL,
  `Name` varchar(1000) NOT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `counties`
--

CREATE TABLE `counties` (
  `CountyId` int(11) NOT NULL,
  `CityId` int(11) DEFAULT NULL,
  `Name` varchar(1000) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `CountryId` int(11) NOT NULL,
  `Name` varchar(1000) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `creditcards`
--

CREATE TABLE `creditcards` (
  `CreditCardId` int(11) NOT NULL,
  `CreditCardTypeId` int(11) NOT NULL,
  `BankId` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Bin` char(6) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `creditcardtypes`
--

CREATE TABLE `creditcardtypes` (
  `CreditCardTypeId` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `CurrencyId` int(11) NOT NULL,
  `CurrencyCode` varchar(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `IsMallingActive` bit(1) DEFAULT NULL,
  `VirtualMoney` decimal(18,2) DEFAULT NULL,
  `AffiliateSlug` varchar(50) DEFAULT NULL,
  `RefererCustomerId` int(11) DEFAULT NULL,
  `LastInvoiceAddressId` int(11) DEFAULT NULL,
  `LastShippingAddressId` int(11) DEFAULT NULL,
  `LastCreditCardName` varchar(50) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `failedtransactions`
--

CREATE TABLE `failedtransactions` (
  `FailedTransactionId` int(11) DEFAULT NULL,
  `OrderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `geozones`
--

CREATE TABLE `geozones` (
  `GeoZoneId` int(11) NOT NULL,
  `CountryId` int(11) DEFAULT NULL,
  `Name` varchar(1000) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `giftcardhistories`
--

CREATE TABLE `giftcardhistories` (
  `GiftCardHistoryId` int(11) NOT NULL,
  `GiftCardID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `BasketAmount` decimal(18,2) DEFAULT NULL,
  `GiftCardAmount` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `giftcards`
--

CREATE TABLE `giftcards` (
  `GiftCardId` int(11) NOT NULL,
  `GiftCardTypeId` int(11) DEFAULT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `Description` mediumtext,
  `GiftCardCode` varchar(50) DEFAULT NULL,
  `SenderCustomerId` int(11) DEFAULT NULL,
  `SenderName` varchar(100) DEFAULT NULL,
  `SenderPhone` char(10) DEFAULT NULL,
  `SenderEmail` varchar(255) DEFAULT NULL,
  `SenderMessage` mediumtext,
  `RecipientCustomerId` int(11) DEFAULT NULL,
  `RecipientName` varchar(100) DEFAULT NULL,
  `RecipientPhone` char(10) DEFAULT NULL,
  `RecipientEmail` varchar(255) DEFAULT NULL,
  `StartedOn` int(11) DEFAULT NULL,
  `EndedOn` int(11) DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  `IsNotified` bit(1) DEFAULT NULL,
  `IsLimited` bit(1) DEFAULT NULL,
  `MinimumBasketAmount` decimal(18,2) DEFAULT NULL,
  `MinimumBasketItemCount` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `giftcardtypes`
--

CREATE TABLE `giftcardtypes` (
  `GiftCardTypeId` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` mediumtext,
  `Amount` int(11) DEFAULT NULL,
  `ImageUrl` varchar(1000) DEFAULT NULL,
  `Comment` char(10) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logevents`
--

CREATE TABLE `logevents` (
  `LogEventId` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Description` mediumtext,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `LogId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `LogEventId` int(11) DEFAULT NULL,
  `Expression` mediumtext,
  `OldRow` mediumtext,
  `NewRow` mediumtext,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_bin NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1482850107);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `OrderDetailId` int(11) NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` decimal(18,2) DEFAULT NULL,
  `Amount` decimal(18,2) DEFAULT NULL,
  `DiscountedAmount` decimal(18,2) DEFAULT NULL,
  `TaxRate` decimal(18,2) DEFAULT NULL,
  `TaxAmout` decimal(18,2) DEFAULT NULL,
  `ShippedOn` int(11) DEFAULT NULL,
  `pProductCategoryId` int(11) DEFAULT NULL,
  `pSupplierId` int(11) DEFAULT NULL,
  `pBrandId` int(11) DEFAULT NULL,
  `pProductTypeId` int(11) DEFAULT NULL,
  `pGender` char(1) DEFAULT NULL,
  `pName` varchar(500) DEFAULT NULL,
  `pSupplierDescription` mediumtext,
  `pDescription` mediumtext,
  `pShortDescription` varchar(2000) DEFAULT NULL,
  `pHtmlDescription` varchar(150) DEFAULT NULL,
  `pUrlName` varchar(500) DEFAULT NULL,
  `pMarketPrice` decimal(18,2) DEFAULT NULL,
  `pPriceFromSupplier` decimal(18,2) DEFAULT NULL,
  `pDiscountPercent` int(11) DEFAULT NULL,
  `pCommissionPercent` int(11) DEFAULT NULL,
  `pTaxPercent` decimal(18,0) DEFAULT NULL,
  `pBarcode` varchar(50) DEFAULT NULL,
  `pHasDifferentPriceForOptions` bit(1) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderId` int(11) NOT NULL,
  `CustomerId` int(11) DEFAULT NULL,
  `CampaignId` int(11) DEFAULT NULL,
  `PaymentId` int(11) DEFAULT NULL,
  `OrderStatusId` int(11) DEFAULT NULL,
  `CustomerNote` mediumtext,
  `InvoiceAddressText` mediumtext,
  `InvoicePerson` varchar(500) DEFAULT NULL,
  `InvoiceTaxNumber` varchar(250) DEFAULT NULL,
  `InvoiceTaxOffice` varchar(250) DEFAULT NULL,
  `InvoicedOn` int(11) DEFAULT NULL,
  `PaidAmount` decimal(18,2) DEFAULT NULL,
  `TotalDiscountAmount` decimal(18,2) DEFAULT NULL,
  `TaxAmount` decimal(18,2) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orderstatuses`
--

CREATE TABLE `orderstatuses` (
  `OrderStatusId` int(11) NOT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `Description` mediumtext,
  `StatusOrder` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `paymenttransactions`
--

CREATE TABLE `paymenttransactions` (
  `PaymentId` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `BankId` int(11) NOT NULL,
  `CreditCardTypeId` int(11) NOT NULL,
  `CreditCardId` int(11) NOT NULL,
  `PaymentTypeId` int(11) NOT NULL,
  `VPosOrderId` varchar(50) DEFAULT NULL,
  `ResponseSource` varchar(50) DEFAULT NULL,
  `ResponseCode` char(2) DEFAULT NULL,
  `ResponseReasonCode` char(2) DEFAULT NULL,
  `ResponseMessage` mediumtext,
  `ResponseErrorMsg` mediumtext,
  `ResponseSysErrMsg` mediumtext,
  `RequestMode` mediumtext,
  `RequestChannelcode` mediumtext,
  `RequestVersion` mediumtext,
  `RequestProvUserId` mediumtext,
  `UserId` mediumtext,
  `RequestId` mediumtext,
  `RequestMerchantId` mediumtext,
  `RequestTransactionType` mediumtext,
  `RequestMotoInd` mediumtext,
  `RetrefNum` varchar(50) DEFAULT NULL,
  `AuthCode` varchar(50) NOT NULL,
  `BatchNum` varchar(50) DEFAULT NULL,
  `SequenceNum` varchar(50) DEFAULT NULL,
  `ProvDate` int(11) DEFAULT NULL,
  `MaskedCardNumber` varchar(16) DEFAULT NULL,
  `MaskedCardHolderName` varchar(50) DEFAULT NULL,
  `RequestHashData` char(40) DEFAULT NULL,
  `ResponseHashData` char(40) DEFAULT NULL,
  `PaymentRequestIp` varchar(50) DEFAULT NULL,
  `CurrencyCode` varchar(5) DEFAULT NULL,
  `InstalmentCount` int(11) DEFAULT NULL,
  `IsInstalmentBuying` bit(1) DEFAULT NULL,
  `IsPaidWithBonusPoints` bit(1) DEFAULT NULL,
  `IsCompleted` bit(1) DEFAULT NULL,
  `BonusPointAmount` decimal(18,2) DEFAULT NULL,
  `Amount` decimal(18,2) DEFAULT NULL,
  `TotalAmount` decimal(18,2) NOT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `paymenttypes`
--

CREATE TABLE `paymenttypes` (
  `PaymentTypeId` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `PhoneId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Phone` char(10) DEFAULT NULL,
  `IsFax` bit(1) DEFAULT NULL,
  `IsPrimary` bit(1) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productcategories`
--

CREATE TABLE `productcategories` (
  `ProductCategoryId` int(11) NOT NULL,
  `ParentProductCategoryId` int(11) DEFAULT NULL,
  `Name` varchar(1000) DEFAULT NULL,
  `Description` mediumtext,
  `ShortDescription` varchar(2000) DEFAULT NULL,
  `HtmlDecription` mediumtext,
  `AvatarUrl` varchar(500) DEFAULT NULL,
  `IconUrl` varchar(500) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productcategories`
--

INSERT INTO `productcategories` (`ProductCategoryId`, `ParentProductCategoryId`, `Name`, `Description`, `ShortDescription`, `HtmlDecription`, `AvatarUrl`, `IconUrl`, `Comment`, `created_by`, `LastUpdatedBy`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'Photography', '', '', '', '', 'product-1.jpg', '', 1, 1, 1410198595, 1410199987, NULL),
(2, 0, 'Camcorders', '', '', '', '', 'product-3.jpg', '', 1, 1, 1410198655, 1410200024, NULL),
(3, 0, 'Professional', '', '', '', '', 'product-5.jpg', '', 1, 1, 1410198690, 1410200062, NULL),
(4, 0, 'Accessories', '', '', '', '', 'product-7.jpg', '', 1, 1, 1410198719, 1410200093, NULL),
(5, 1, 'Digital Cameras', '', '', '', '', '', '', 1, 1, 1410198774, 1410198774, NULL),
(6, 1, 'Lenses', '', '', '', '', '', '', 1, 1, 1410198803, 1410198803, NULL),
(7, 1, 'Printers & Scanners', '', '', '', '', '', '', 1, 1, 1410198839, 1410198839, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productmedias`
--

CREATE TABLE `productmedias` (
  `ProductMediaId` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `SmallImageUrl` varchar(1000) DEFAULT NULL,
  `ImageUrl` varchar(1000) DEFAULT NULL,
  `ZoomImageUrl` varchar(1000) DEFAULT NULL,
  `EmbedCode` mediumtext,
  `HtmlAlt` varchar(100) DEFAULT NULL,
  `HtmlTitle` varchar(100) DEFAULT NULL,
  `FeaturedText` varchar(2000) DEFAULT NULL,
  `DisplayOrder` int(11) DEFAULT NULL,
  `IsVideo` bit(1) DEFAULT NULL,
  `IsPrimary` bit(1) DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productmedias`
--

INSERT INTO `productmedias` (`ProductMediaId`, `ProductId`, `SmallImageUrl`, `ImageUrl`, `ZoomImageUrl`, `EmbedCode`, `HtmlAlt`, `HtmlTitle`, `FeaturedText`, `DisplayOrder`, `IsVideo`, `IsPrimary`, `IsActive`, `Comment`, `created_by`, `LastUpdatedBy`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 1, 'photography/product-1.jpg', 'photography/product-1.jpg', 'photography/product-1.jpg', '', '', '', '', NULL, b'0', b'0', b'1', '', 1, 1, 1410255871, 1410255871, NULL),
(2, 2, 'photography/product-3.jpg', 'photography/product-3.jpg', 'photography/product-3.jpg', '', '', '', '', NULL, b'0', b'0', b'1', '', 1, 1, 1410255914, 1410255914, NULL),
(3, 3, 'photography/product-4.jpg', 'photography/product-4.jpg', 'photography/product-4.jpg', '', '', '', '', NULL, b'0', b'0', b'1', '', 1, 1, 1410255951, 1410255951, NULL),
(4, 4, 'camcorders/product-5.jpg', 'camcorders/product-5.jpg', 'camcorders/product-5.jpg', '', '', '', '', NULL, b'0', b'0', b'1', '', 1, 1, 1410256099, 1410256099, NULL),
(5, 5, 'camcorders/product-8.jpg', 'camcorders/product-8.jpg', 'camcorders/product-8.jpg', '', '', '', '', NULL, b'0', b'0', b'1', '', 1, 1, 1410256298, 1410256298, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productoptioncombinations`
--

CREATE TABLE `productoptioncombinations` (
  `ProductOptionCombinationId` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `ProductOptionGroupMemberId1` int(11) DEFAULT NULL,
  `ProductOptionGroupMemberId2` int(11) DEFAULT NULL,
  `ProductOptionGroupMemberId3` int(11) DEFAULT NULL,
  `ProductOptionGroupMemberId4` int(11) DEFAULT NULL,
  `ProductOptionGroupMemberId5` int(11) DEFAULT NULL,
  `Barcode` varchar(50) DEFAULT NULL,
  `Price` decimal(18,2) DEFAULT NULL,
  `PriceMarket` decimal(18,2) DEFAULT NULL,
  `PriceSupplier` decimal(18,2) DEFAULT NULL,
  `CampaignStock` decimal(18,2) DEFAULT NULL,
  `ActualStock` decimal(18,2) DEFAULT NULL,
  `StockWarningLevel` decimal(18,2) DEFAULT NULL,
  `StockUnitId` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productoptiongroupmembers`
--

CREATE TABLE `productoptiongroupmembers` (
  `ProductOptionGroupMemberId` int(11) NOT NULL,
  `ProductOptionGroupId` int(11) DEFAULT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `DisplayOrder` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productoptiongroups`
--

CREATE TABLE `productoptiongroups` (
  `ProductOptionGroupId` int(11) NOT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `DisplayOrder` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productoptionprices`
--

CREATE TABLE `productoptionprices` (
  `ProductOptionPriceId` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `ProductOptionGroupMemberId1` int(11) DEFAULT NULL,
  `ProductOptionGroupMemberId2` int(11) DEFAULT NULL,
  `ProductOptionGroupMemberId3` int(11) DEFAULT NULL,
  `ProductOptionGroupMemberId4` int(11) DEFAULT NULL,
  `Price` decimal(18,2) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productoptions`
--

CREATE TABLE `productoptions` (
  `ProductOptionId` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `ProductOptionGroupId` int(11) DEFAULT NULL,
  `ProductOptionGroupMemberId` int(11) DEFAULT NULL,
  `Value` mediumtext,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productpricehistories`
--

CREATE TABLE `productpricehistories` (
  `ProductPriceHistoryId` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `ProductOptionCombinationId` int(11) DEFAULT NULL,
  `ProductOptionPriceId` int(11) DEFAULT NULL,
  `OldPrice` decimal(18,2) DEFAULT NULL,
  `NewPrice` decimal(18,2) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductId` int(11) NOT NULL,
  `ProductCategoryId` int(11) DEFAULT NULL,
  `SupplierId` int(11) DEFAULT NULL,
  `BrandId` int(11) DEFAULT NULL,
  `ProductTypeId` int(11) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `SupplierDescription` mediumtext,
  `Description` mediumtext,
  `ShortDescription` varchar(2000) DEFAULT NULL,
  `HtmlDescription` varchar(150) DEFAULT NULL,
  `UrlName` varchar(500) DEFAULT NULL,
  `DiscountPercent` int(11) DEFAULT NULL,
  `CommissionPercent` int(11) DEFAULT NULL,
  `TaxPercent` decimal(18,0) DEFAULT NULL,
  `Price` decimal(18,2) DEFAULT NULL,
  `PriceMarket` decimal(18,2) DEFAULT NULL,
  `PriceSupplier` decimal(18,2) DEFAULT NULL,
  `MaximumPurchaseCount` int(11) DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  `IsFeatured` bit(1) DEFAULT NULL,
  `IsOnVote` bit(1) DEFAULT NULL,
  `VoteCount` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `PublishedOn` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductId`, `ProductCategoryId`, `SupplierId`, `BrandId`, `ProductTypeId`, `Gender`, `Name`, `SupplierDescription`, `Description`, `ShortDescription`, `HtmlDescription`, `UrlName`, `DiscountPercent`, `CommissionPercent`, `TaxPercent`, `Price`, `PriceMarket`, `PriceSupplier`, `MaximumPurchaseCount`, `IsActive`, `IsFeatured`, `IsOnVote`, `VoteCount`, `Comment`, `created_by`, `LastUpdatedBy`, `PublishedOn`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 1, NULL, NULL, NULL, '', 'Product #1', '', '', '', 'Digital camera', '', NULL, NULL, NULL, '129.00', NULL, '57.60', NULL, b'1', b'1', b'0', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, NULL, NULL, NULL, 'a', 'Product #3', '', '', '', 'Digital SLR', '', NULL, NULL, NULL, '399.99', '389.99', '239.99', NULL, b'1', b'0', b'0', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, NULL, NULL, NULL, 'a', 'Product #4', '', '', '', 'Digital Camera', '', NULL, NULL, NULL, '349.99', NULL, '179.99', NULL, b'1', b'1', b'0', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, NULL, NULL, NULL, 'a', 'Product #5', '', '', '', 'Digital HD ', '', NULL, NULL, NULL, '499.99', NULL, '399.99', NULL, b'1', b'1', b'0', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 2, NULL, NULL, NULL, 'a', 'Product #8', '', '', '', 'Digital HD SLR', '', NULL, NULL, NULL, '599.99', NULL, '449.99', NULL, b'1', b'1', b'0', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productsrelated`
--

CREATE TABLE `productsrelated` (
  `ProductsRelatedId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `RelatedProductId1` int(11) DEFAULT NULL,
  `RelatedProductId2` int(11) DEFAULT NULL,
  `RelatedProductId3` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `LastUpdatedBy` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `producttypes`
--

CREATE TABLE `producttypes` (
  `ProductTypeId` int(11) NOT NULL,
  `ProductCategoryId` int(11) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productvotehistories`
--

CREATE TABLE `productvotehistories` (
  `ProductVoteHistoryId` int(11) NOT NULL,
  `CustomerId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Message` mediumtext,
  `IsLiked` bit(1) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `queuedemails`
--

CREATE TABLE `queuedemails` (
  `QueuedEmailID` int(11) NOT NULL,
  `CustomerId` int(11) DEFAULT NULL,
  `SendingTo` varchar(255) DEFAULT NULL,
  `ToName` varchar(500) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `SendingFrom` varchar(255) DEFAULT NULL,
  `FromName` varchar(500) DEFAULT NULL,
  `Cc` varchar(255) DEFAULT NULL,
  `Bcc` varchar(255) DEFAULT NULL,
  `Subject` varchar(500) DEFAULT NULL,
  `Body` mediumtext,
  `SendTries` int(11) DEFAULT NULL,
  `SentOn` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `refundtransactions`
--

CREATE TABLE `refundtransactions` (
  `RefundTransactionId` int(11) DEFAULT NULL,
  `OrderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `SettingId` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Value` mediumtext,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `ShippingId` int(11) NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  `OrderDetailId` int(11) DEFAULT NULL,
  `ShippingAddressText` mediumtext,
  `ShippingPerson` varchar(500) DEFAULT NULL,
  `ShippingNumber` varchar(100) DEFAULT NULL,
  `ShippingTypeId` int(11) DEFAULT NULL,
  `ShippingStatusId` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shippingstatuses`
--

CREATE TABLE `shippingstatuses` (
  `ShippingStatusId` int(11) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Description` mediumtext,
  `StatusOrder` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shippingtypes`
--

CREATE TABLE `shippingtypes` (
  `ShippingTypeId` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stockunits`
--

CREATE TABLE `stockunits` (
  `StockUnitId` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierId` int(11) NOT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `ShortName` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `Website` varchar(500) DEFAULT NULL,
  `LogoUrl` varchar(1000) DEFAULT NULL,
  `TaxOffice` varchar(1000) DEFAULT NULL,
  `TaxNumber` varchar(1000) DEFAULT NULL,
  `PrimaryPhone` char(10) DEFAULT NULL,
  `PrimaryEmail` varchar(255) DEFAULT NULL,
  `PrimaryPersonName` varchar(100) DEFAULT NULL,
  `PrimaryPersonId` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `suppliersbrands`
--

CREATE TABLE `suppliersbrands` (
  `SuppliersBrandId` int(11) NOT NULL,
  `BrandId` int(11) DEFAULT NULL,
  `SupplierId` int(11) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` char(10) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplierspeople`
--

CREATE TABLE `supplierspeople` (
  `SuppliersPeopleId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `SupplierId` int(11) DEFAULT NULL,
  `Department` varchar(500) DEFAULT NULL,
  `IsPrimary` bit(1) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `UserTypeId` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `Names` varchar(50) DEFAULT NULL,
  `PreferredName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `Birthday` int(11) DEFAULT '11',
  `Website` varchar(255) DEFAULT NULL,
  `FacebookId` varchar(100) DEFAULT NULL,
  `TwitterId` varchar(100) DEFAULT NULL,
  `IsLikedFanPage` varchar(1) DEFAULT NULL,
  `PhotoUrl` varchar(1000) DEFAULT NULL,
  `IsPersonal` varchar(1) DEFAULT NULL,
  `IdentityNumber` varchar(11) DEFAULT NULL,
  `TaxNumber` varchar(250) DEFAULT NULL,
  `TaxOffice` varchar(250) DEFAULT NULL,
  `Comment` text,
  `role` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `lastLogin` int(11) DEFAULT '11',
  `previousLogin` int(11) DEFAULT '11',
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT '11',
  `created_at` int(11) NOT NULL DEFAULT '11',
  `updated_at` int(11) NOT NULL DEFAULT '11',
  `deleted_at` int(11) DEFAULT '11'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userrestdata`
--

CREATE TABLE `userrestdata` (
  `UserDetailId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `FacebookData` mediumtext,
  `TwitterData` mediumtext,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usertypes`
--

CREATE TABLE `usertypes` (
  `UserTypeId` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` mediumtext,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `WarehouseId` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `FullAddress` mediumtext,
  `IsActive` bit(1) DEFAULT NULL,
  `Comment` mediumtext,
  `created_by` int(11) DEFAULT NULL,
  `LastUpdatedBy` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`AddressId`),
  ADD KEY `FK_Addresses_User` (`UserId`),
  ADD KEY `FK_Addresses_AddressTypes` (`AddressTypeId`);

--
-- Indexes for table `addresstypes`
--
ALTER TABLE `addresstypes`
  ADD PRIMARY KEY (`AddressTypeId`);

--
-- Indexes for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD PRIMARY KEY (`AffiliateId`),
  ADD KEY `FK_Affilates_Customers` (`CustomerId`);

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`BankId`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`BrandId`);

--
-- Indexes for table `campaignproducts`
--
ALTER TABLE `campaignproducts`
  ADD PRIMARY KEY (`CampaignProductId`),
  ADD KEY `FK_CampaignProducts_Campaigns` (`CampaignId`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`CampaignId`),
  ADD KEY `FK_Campaigns_CampaignTypes` (`CampaignTypeId`);

--
-- Indexes for table `campaigntypes`
--
ALTER TABLE `campaigntypes`
  ADD PRIMARY KEY (`CampaignTypeId`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`CityId`),
  ADD KEY `FK_Cities_GeoZones` (`GeoZoneId`);

--
-- Indexes for table `counties`
--
ALTER TABLE `counties`
  ADD PRIMARY KEY (`CountyId`),
  ADD KEY `FK_Counties_Cities` (`CityId`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`CountryId`);

--
-- Indexes for table `creditcards`
--
ALTER TABLE `creditcards`
  ADD PRIMARY KEY (`CreditCardId`),
  ADD KEY `FK_CreditCards_Banks` (`BankId`),
  ADD KEY `FK_CreditCards_CreditCardTypes` (`CreditCardTypeId`);

--
-- Indexes for table `creditcardtypes`
--
ALTER TABLE `creditcardtypes`
  ADD PRIMARY KEY (`CreditCardTypeId`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`CurrencyId`),
  ADD KEY `CurrencyCode` (`CurrencyCode`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indexes for table `geozones`
--
ALTER TABLE `geozones`
  ADD PRIMARY KEY (`GeoZoneId`),
  ADD KEY `FK_GeoZones_Countries` (`CountryId`);

--
-- Indexes for table `giftcardhistories`
--
ALTER TABLE `giftcardhistories`
  ADD PRIMARY KEY (`GiftCardHistoryId`),
  ADD KEY `FK_GiftCardHistories_Customers` (`CustomerID`),
  ADD KEY `FK_GiftCardHistories_GiftCards` (`GiftCardID`);

--
-- Indexes for table `giftcards`
--
ALTER TABLE `giftcards`
  ADD PRIMARY KEY (`GiftCardId`),
  ADD KEY `FK_GiftCards_GiftCardTypes` (`GiftCardTypeId`);

--
-- Indexes for table `giftcardtypes`
--
ALTER TABLE `giftcardtypes`
  ADD PRIMARY KEY (`GiftCardTypeId`);

--
-- Indexes for table `logevents`
--
ALTER TABLE `logevents`
  ADD PRIMARY KEY (`LogEventId`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`LogId`),
  ADD KEY `FK_Logs_LogEvents` (`LogEventId`),
  ADD KEY `FK_Logs_User` (`UserId`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`OrderDetailId`),
  ADD KEY `FK_OrderDetails_Orders` (`OrderId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderId`),
  ADD KEY `FK_Orders_OrderStatuses` (`OrderStatusId`),
  ADD KEY `FK_Orders_Payments` (`PaymentId`);

--
-- Indexes for table `orderstatuses`
--
ALTER TABLE `orderstatuses`
  ADD PRIMARY KEY (`OrderStatusId`);

--
-- Indexes for table `paymenttransactions`
--
ALTER TABLE `paymenttransactions`
  ADD PRIMARY KEY (`PaymentId`),
  ADD KEY `FK_Payments_PaymentTypes` (`PaymentTypeId`),
  ADD KEY `FK_Payments_CreditCards` (`CreditCardId`),
  ADD KEY `FK_PaymentTransactions_Currencies` (`CurrencyCode`);

--
-- Indexes for table `paymenttypes`
--
ALTER TABLE `paymenttypes`
  ADD PRIMARY KEY (`PaymentTypeId`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`PhoneId`),
  ADD KEY `FK_Phones_User` (`UserId`);

--
-- Indexes for table `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`ProductCategoryId`);

--
-- Indexes for table `productmedias`
--
ALTER TABLE `productmedias`
  ADD PRIMARY KEY (`ProductMediaId`),
  ADD KEY `FK_ProductMedias_Products` (`ProductId`);

--
-- Indexes for table `productoptioncombinations`
--
ALTER TABLE `productoptioncombinations`
  ADD PRIMARY KEY (`ProductOptionCombinationId`);

--
-- Indexes for table `productoptiongroupmembers`
--
ALTER TABLE `productoptiongroupmembers`
  ADD PRIMARY KEY (`ProductOptionGroupMemberId`),
  ADD KEY `FK_ProductOptionGroupMembers_ProductOptionGroups` (`ProductOptionGroupId`);

--
-- Indexes for table `productoptiongroups`
--
ALTER TABLE `productoptiongroups`
  ADD PRIMARY KEY (`ProductOptionGroupId`);

--
-- Indexes for table `productoptionprices`
--
ALTER TABLE `productoptionprices`
  ADD PRIMARY KEY (`ProductOptionPriceId`),
  ADD KEY `FK_ProductOptionPrices_Products` (`ProductId`),
  ADD KEY `FK_ProductOptionPrices_ProductOptionGroupMembers3` (`ProductOptionGroupMemberId4`),
  ADD KEY `FK_ProductOptionPrices_ProductOptionGroupMembers2` (`ProductOptionGroupMemberId2`),
  ADD KEY `FK_ProductOptionPrices_ProductOptionGroupMembers1` (`ProductOptionGroupMemberId3`),
  ADD KEY `FK_ProductOptionPrices_ProductOptionGroupMembers` (`ProductOptionGroupMemberId1`);

--
-- Indexes for table `productoptions`
--
ALTER TABLE `productoptions`
  ADD PRIMARY KEY (`ProductOptionId`),
  ADD KEY `FK_ProductOptions_Products` (`ProductId`),
  ADD KEY `FK_ProductOptions_ProductOptionGroupMembers` (`ProductOptionGroupMemberId`);

--
-- Indexes for table `productpricehistories`
--
ALTER TABLE `productpricehistories`
  ADD PRIMARY KEY (`ProductPriceHistoryId`),
  ADD KEY `FK_ProductPriceHistories_Products` (`ProductId`),
  ADD KEY `FK_ProductPriceHistories_ProductOptionPrices` (`ProductOptionPriceId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductId`),
  ADD KEY `FK_Products_ProductTypes` (`ProductTypeId`),
  ADD KEY `FK_Products_ProductCategories` (`ProductCategoryId`);

--
-- Indexes for table `productsrelated`
--
ALTER TABLE `productsrelated`
  ADD PRIMARY KEY (`ProductsRelatedId`),
  ADD KEY `ProductId` (`ProductId`);

--
-- Indexes for table `producttypes`
--
ALTER TABLE `producttypes`
  ADD PRIMARY KEY (`ProductTypeId`);

--
-- Indexes for table `productvotehistories`
--
ALTER TABLE `productvotehistories`
  ADD PRIMARY KEY (`ProductVoteHistoryId`),
  ADD KEY `FK_ProductVoteHistories_Products` (`ProductId`);

--
-- Indexes for table `queuedemails`
--
ALTER TABLE `queuedemails`
  ADD PRIMARY KEY (`QueuedEmailID`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`SettingId`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`ShippingId`),
  ADD KEY `FK_Shippings_ShippingTypes` (`ShippingTypeId`),
  ADD KEY `FK_Shippings_ShippingStatuses` (`ShippingStatusId`),
  ADD KEY `FK_Shippings_Orders` (`OrderId`);

--
-- Indexes for table `shippingstatuses`
--
ALTER TABLE `shippingstatuses`
  ADD PRIMARY KEY (`ShippingStatusId`);

--
-- Indexes for table `shippingtypes`
--
ALTER TABLE `shippingtypes`
  ADD PRIMARY KEY (`ShippingTypeId`);

--
-- Indexes for table `stockunits`
--
ALTER TABLE `stockunits`
  ADD PRIMARY KEY (`StockUnitId`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierId`);

--
-- Indexes for table `suppliersbrands`
--
ALTER TABLE `suppliersbrands`
  ADD PRIMARY KEY (`SuppliersBrandId`),
  ADD KEY `FK_SuppliersBrands_Suppliers` (`SupplierId`),
  ADD KEY `FK_SuppliersBrands_Brands` (`BrandId`);

--
-- Indexes for table `supplierspeople`
--
ALTER TABLE `supplierspeople`
  ADD PRIMARY KEY (`SuppliersPeopleId`),
  ADD KEY `FK_SuppliersPeople_Suppliers` (`SupplierId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_User_UserTypes` (`UserTypeId`);

--
-- Indexes for table `userrestdata`
--
ALTER TABLE `userrestdata`
  ADD PRIMARY KEY (`UserDetailId`),
  ADD KEY `FK_UserRestData_Users` (`UserId`);

--
-- Indexes for table `usertypes`
--
ALTER TABLE `usertypes`
  ADD PRIMARY KEY (`UserTypeId`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`WarehouseId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `AddressId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `addresstypes`
--
ALTER TABLE `addresstypes`
  MODIFY `AddressTypeId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `affiliates`
--
ALTER TABLE `affiliates`
  MODIFY `AffiliateId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `BankId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `BrandId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `campaignproducts`
--
ALTER TABLE `campaignproducts`
  MODIFY `CampaignProductId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `CampaignId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `campaigntypes`
--
ALTER TABLE `campaigntypes`
  MODIFY `CampaignTypeId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `CityId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `counties`
--
ALTER TABLE `counties`
  MODIFY `CountyId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `CountryId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `creditcards`
--
ALTER TABLE `creditcards`
  MODIFY `CreditCardId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `creditcardtypes`
--
ALTER TABLE `creditcardtypes`
  MODIFY `CreditCardTypeId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `CurrencyId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `geozones`
--
ALTER TABLE `geozones`
  MODIFY `GeoZoneId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `giftcardhistories`
--
ALTER TABLE `giftcardhistories`
  MODIFY `GiftCardHistoryId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `giftcards`
--
ALTER TABLE `giftcards`
  MODIFY `GiftCardId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `giftcardtypes`
--
ALTER TABLE `giftcardtypes`
  MODIFY `GiftCardTypeId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logevents`
--
ALTER TABLE `logevents`
  MODIFY `LogEventId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `LogId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `OrderDetailId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orderstatuses`
--
ALTER TABLE `orderstatuses`
  MODIFY `OrderStatusId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `paymenttransactions`
--
ALTER TABLE `paymenttransactions`
  MODIFY `PaymentId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `paymenttypes`
--
ALTER TABLE `paymenttypes`
  MODIFY `PaymentTypeId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `PhoneId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productcategories`
--
ALTER TABLE `productcategories`
  MODIFY `ProductCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `productmedias`
--
ALTER TABLE `productmedias`
  MODIFY `ProductMediaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `productoptioncombinations`
--
ALTER TABLE `productoptioncombinations`
  MODIFY `ProductOptionCombinationId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productoptiongroupmembers`
--
ALTER TABLE `productoptiongroupmembers`
  MODIFY `ProductOptionGroupMemberId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productoptiongroups`
--
ALTER TABLE `productoptiongroups`
  MODIFY `ProductOptionGroupId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productoptionprices`
--
ALTER TABLE `productoptionprices`
  MODIFY `ProductOptionPriceId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productoptions`
--
ALTER TABLE `productoptions`
  MODIFY `ProductOptionId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productpricehistories`
--
ALTER TABLE `productpricehistories`
  MODIFY `ProductPriceHistoryId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `productsrelated`
--
ALTER TABLE `productsrelated`
  MODIFY `ProductsRelatedId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `producttypes`
--
ALTER TABLE `producttypes`
  MODIFY `ProductTypeId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productvotehistories`
--
ALTER TABLE `productvotehistories`
  MODIFY `ProductVoteHistoryId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `queuedemails`
--
ALTER TABLE `queuedemails`
  MODIFY `QueuedEmailID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `SettingId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `ShippingId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shippingstatuses`
--
ALTER TABLE `shippingstatuses`
  MODIFY `ShippingStatusId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shippingtypes`
--
ALTER TABLE `shippingtypes`
  MODIFY `ShippingTypeId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stockunits`
--
ALTER TABLE `stockunits`
  MODIFY `StockUnitId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `SupplierId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suppliersbrands`
--
ALTER TABLE `suppliersbrands`
  MODIFY `SuppliersBrandId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplierspeople`
--
ALTER TABLE `supplierspeople`
  MODIFY `SuppliersPeopleId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userrestdata`
--
ALTER TABLE `userrestdata`
  MODIFY `UserDetailId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usertypes`
--
ALTER TABLE `usertypes`
  MODIFY `UserTypeId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `WarehouseId` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `FK_Addresses_AddressTypes` FOREIGN KEY (`AddressTypeId`) REFERENCES `addresstypes` (`AddressTypeId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Addresses_User` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD CONSTRAINT `FK_Affilates_Customers` FOREIGN KEY (`CustomerId`) REFERENCES `customers` (`CustomerId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `campaignproducts`
--
ALTER TABLE `campaignproducts`
  ADD CONSTRAINT `FK_CampaignProducts_Campaigns` FOREIGN KEY (`CampaignId`) REFERENCES `campaigns` (`CampaignId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD CONSTRAINT `FK_Campaigns_CampaignTypes` FOREIGN KEY (`CampaignTypeId`) REFERENCES `campaigntypes` (`CampaignTypeId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `FK_Cities_GeoZones` FOREIGN KEY (`GeoZoneId`) REFERENCES `geozones` (`GeoZoneId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `counties`
--
ALTER TABLE `counties`
  ADD CONSTRAINT `FK_Counties_Cities` FOREIGN KEY (`CityId`) REFERENCES `cities` (`CityId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `creditcards`
--
ALTER TABLE `creditcards`
  ADD CONSTRAINT `FK_CreditCards_Banks` FOREIGN KEY (`BankId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_CreditCards_CreditCardTypes` FOREIGN KEY (`CreditCardTypeId`) REFERENCES `creditcardtypes` (`CreditCardTypeId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `geozones`
--
ALTER TABLE `geozones`
  ADD CONSTRAINT `FK_GeoZones_Countries` FOREIGN KEY (`CountryId`) REFERENCES `countries` (`CountryId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `giftcardhistories`
--
ALTER TABLE `giftcardhistories`
  ADD CONSTRAINT `FK_GiftCardHistories_Customers` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_GiftCardHistories_GiftCards` FOREIGN KEY (`GiftCardID`) REFERENCES `giftcards` (`GiftCardId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `giftcards`
--
ALTER TABLE `giftcards`
  ADD CONSTRAINT `FK_GiftCards_GiftCardTypes` FOREIGN KEY (`GiftCardTypeId`) REFERENCES `giftcardtypes` (`GiftCardTypeId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `FK_Logs_LogEvents` FOREIGN KEY (`LogEventId`) REFERENCES `logevents` (`LogEventId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Logs_User` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FK_OrderDetails_Orders` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`OrderId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_Orders_OrderStatuses` FOREIGN KEY (`OrderStatusId`) REFERENCES `orderstatuses` (`OrderStatusId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Orders_Payments` FOREIGN KEY (`PaymentId`) REFERENCES `paymenttransactions` (`PaymentId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `paymenttransactions`
--
ALTER TABLE `paymenttransactions`
  ADD CONSTRAINT `FK_PaymentTransactions_Currencies` FOREIGN KEY (`CurrencyCode`) REFERENCES `currencies` (`CurrencyCode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Payments_CreditCards` FOREIGN KEY (`CreditCardId`) REFERENCES `creditcards` (`CreditCardId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Payments_PaymentTypes` FOREIGN KEY (`PaymentTypeId`) REFERENCES `paymenttypes` (`PaymentTypeId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `phones`
--
ALTER TABLE `phones`
  ADD CONSTRAINT `FK_Phones_User` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `productmedias`
--
ALTER TABLE `productmedias`
  ADD CONSTRAINT `FK_ProductMedias_Products` FOREIGN KEY (`ProductId`) REFERENCES `products` (`ProductId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `productoptiongroupmembers`
--
ALTER TABLE `productoptiongroupmembers`
  ADD CONSTRAINT `FK_ProductOptionGroupMembers_ProductOptionGroups` FOREIGN KEY (`ProductOptionGroupId`) REFERENCES `productoptiongroups` (`ProductOptionGroupId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `productoptionprices`
--
ALTER TABLE `productoptionprices`
  ADD CONSTRAINT `FK_ProductOptionPrices_ProductOptionGroupMembers` FOREIGN KEY (`ProductOptionGroupMemberId1`) REFERENCES `productoptiongroupmembers` (`ProductOptionGroupMemberId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ProductOptionPrices_ProductOptionGroupMembers1` FOREIGN KEY (`ProductOptionGroupMemberId3`) REFERENCES `productoptiongroupmembers` (`ProductOptionGroupMemberId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ProductOptionPrices_ProductOptionGroupMembers2` FOREIGN KEY (`ProductOptionGroupMemberId2`) REFERENCES `productoptiongroupmembers` (`ProductOptionGroupMemberId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ProductOptionPrices_ProductOptionGroupMembers3` FOREIGN KEY (`ProductOptionGroupMemberId4`) REFERENCES `productoptiongroupmembers` (`ProductOptionGroupMemberId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ProductOptionPrices_Products` FOREIGN KEY (`ProductId`) REFERENCES `products` (`ProductId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `productoptions`
--
ALTER TABLE `productoptions`
  ADD CONSTRAINT `FK_ProductOptions_ProductOptionGroupMembers` FOREIGN KEY (`ProductOptionGroupMemberId`) REFERENCES `productoptiongroupmembers` (`ProductOptionGroupMemberId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ProductOptions_Products` FOREIGN KEY (`ProductId`) REFERENCES `products` (`ProductId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `productpricehistories`
--
ALTER TABLE `productpricehistories`
  ADD CONSTRAINT `FK_ProductPriceHistories_ProductOptionPrices` FOREIGN KEY (`ProductOptionPriceId`) REFERENCES `productoptionprices` (`ProductOptionPriceId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ProductPriceHistories_Products` FOREIGN KEY (`ProductId`) REFERENCES `products` (`ProductId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_Products_ProductCategories` FOREIGN KEY (`ProductCategoryId`) REFERENCES `productcategories` (`ProductCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Products_ProductTypes` FOREIGN KEY (`ProductTypeId`) REFERENCES `producttypes` (`ProductTypeId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `productsrelated`
--
ALTER TABLE `productsrelated`
  ADD CONSTRAINT `FK_ProductsRelated_Products` FOREIGN KEY (`ProductId`) REFERENCES `products` (`ProductId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `productsrelated_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `products` (`ProductId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `productvotehistories`
--
ALTER TABLE `productvotehistories`
  ADD CONSTRAINT `FK_ProductVoteHistories_Products` FOREIGN KEY (`ProductId`) REFERENCES `products` (`ProductId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `FK_Shippings_Orders` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`OrderId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Shippings_ShippingStatuses` FOREIGN KEY (`ShippingStatusId`) REFERENCES `shippingstatuses` (`ShippingStatusId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Shippings_ShippingTypes` FOREIGN KEY (`ShippingTypeId`) REFERENCES `shippingtypes` (`ShippingTypeId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `suppliersbrands`
--
ALTER TABLE `suppliersbrands`
  ADD CONSTRAINT `FK_SuppliersBrands_Brands` FOREIGN KEY (`BrandId`) REFERENCES `brands` (`BrandId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_SuppliersBrands_Suppliers` FOREIGN KEY (`SupplierId`) REFERENCES `suppliers` (`SupplierId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `supplierspeople`
--
ALTER TABLE `supplierspeople`
  ADD CONSTRAINT `FK_SuppliersPeople_Suppliers` FOREIGN KEY (`SupplierId`) REFERENCES `suppliers` (`SupplierId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_User_UserTypes` FOREIGN KEY (`UserTypeId`) REFERENCES `usertypes` (`UserTypeId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `userrestdata`
--
ALTER TABLE `userrestdata`
  ADD CONSTRAINT `FK_UserRestData_Users` FOREIGN KEY (`UserId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
