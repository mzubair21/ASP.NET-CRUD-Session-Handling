USE [master]
GO
/****** Object:  Database [Authentication]    Script Date: 11/8/2021 6:39:26 AM ******/
CREATE DATABASE [Authentication]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Authentication', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL15.LAB2126\MSSQL\DATA\Authentication.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Authentication_log', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL15.LAB2126\MSSQL\DATA\Authentication_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Authentication] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Authentication].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Authentication] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Authentication] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Authentication] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Authentication] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Authentication] SET ARITHABORT OFF 
GO
ALTER DATABASE [Authentication] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Authentication] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Authentication] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Authentication] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Authentication] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Authentication] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Authentication] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Authentication] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Authentication] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Authentication] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Authentication] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Authentication] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Authentication] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Authentication] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Authentication] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Authentication] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Authentication] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Authentication] SET RECOVERY FULL 
GO
ALTER DATABASE [Authentication] SET  MULTI_USER 
GO
ALTER DATABASE [Authentication] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Authentication] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Authentication] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Authentication] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Authentication] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Authentication] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Authentication', N'ON'
GO
ALTER DATABASE [Authentication] SET QUERY_STORE = OFF
GO
USE [Authentication]
GO
/****** Object:  Table [dbo].[users]    Script Date: 11/8/2021 6:39:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[userid] [nvarchar](50) NOT NULL,
	[accesslevel] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[fname] [nvarchar](50) NOT NULL,
	[lname] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[empscale] [nvarchar](50) NULL,
	[companyname] [nchar](10) NULL,
	[admintype] [nchar](10) NULL,
	[custmembership] [nchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[users] ([userid], [accesslevel], [email], [password], [fname], [lname], [address], [empscale], [companyname], [admintype], [custmembership]) VALUES (N'1', N'0', N'a', N'a', N'Zubair', N'Qureshi', N'Rawalpindi', N'', N'          ', N'General   ', N'          ')
INSERT [dbo].[users] ([userid], [accesslevel], [email], [password], [fname], [lname], [address], [empscale], [companyname], [admintype], [custmembership]) VALUES (N'1', N'2', N's', N's', N'Hadi', N'Butt', N'Airport', N'', N'Bytewise  ', N'          ', N'          ')
INSERT [dbo].[users] ([userid], [accesslevel], [email], [password], [fname], [lname], [address], [empscale], [companyname], [admintype], [custmembership]) VALUES (N'1', N'3', N'c', N'c', N'Ahtisham', N'Mughal', N'Rawalpindi', N'', N'          ', N'          ', N'VIP       ')
INSERT [dbo].[users] ([userid], [accesslevel], [email], [password], [fname], [lname], [address], [empscale], [companyname], [admintype], [custmembership]) VALUES (N'1', N'1', N'e', N'e', N'Abdullah', N'Durrani', N'Rawalpindi', N'19', N'          ', N'          ', N'          ')
GO
USE [master]
GO
ALTER DATABASE [Authentication] SET  READ_WRITE 
GO
