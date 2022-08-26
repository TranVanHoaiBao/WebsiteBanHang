USE [master]
GO
/****** Object:  Database [Websitebanhang]    Script Date: 8/26/2022 2:15:48 PM ******/
CREATE DATABASE [Websitebanhang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Websitebanhang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Websitebanhang.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Websitebanhang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Websitebanhang_log.ldf' , SIZE = 2880KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Websitebanhang] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Websitebanhang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Websitebanhang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Websitebanhang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Websitebanhang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Websitebanhang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Websitebanhang] SET ARITHABORT OFF 
GO
ALTER DATABASE [Websitebanhang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Websitebanhang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Websitebanhang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Websitebanhang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Websitebanhang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Websitebanhang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Websitebanhang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Websitebanhang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Websitebanhang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Websitebanhang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Websitebanhang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Websitebanhang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Websitebanhang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Websitebanhang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Websitebanhang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Websitebanhang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Websitebanhang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Websitebanhang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Websitebanhang] SET  MULTI_USER 
GO
ALTER DATABASE [Websitebanhang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Websitebanhang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Websitebanhang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Websitebanhang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Websitebanhang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Websitebanhang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Websitebanhang', N'ON'
GO
ALTER DATABASE [Websitebanhang] SET QUERY_STORE = OFF
GO
USE [Websitebanhang]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 8/26/2022 2:15:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Img] [nvarchar](255) NULL,
	[Slug] [nvarchar](255) NULL,
	[Showonhomepage] [bit] NULL,
	[Deleted] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdateOnUtc] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/26/2022 2:15:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Img] [nvarchar](255) NULL,
	[Slug] [nvarchar](255) NULL,
	[Showonhomepage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[Deleted] [bit] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdateOnUtc] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/26/2022 2:15:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Productid] [int] NULL,
	[Price] [float] NULL,
	[Statused] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 8/26/2022 2:15:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Descirption] [nvarchar](3000) NULL,
	[img] [nvarchar](255) NULL,
	[Slug] [nvarchar](255) NULL,
	[Deleted] [bit] NULL,
	[Showonhomepage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdateOnUtc] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/26/2022 2:15:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Img] [nvarchar](255) NULL,
	[img1] [nvarchar](255) NULL,
	[img2] [nvarchar](255) NULL,
	[img3] [nvarchar](255) NULL,
	[Categoryid] [int] NULL,
	[producter] [nvarchar](255) NULL,
	[specication] [nvarchar](255) NULL,
	[origin] [nvarchar](255) NULL,
	[ShortDes] [nvarchar](255) NULL,
	[FullDes] [nvarchar](2000) NULL,
	[Price] [float] NULL,
	[PriceDiscount] [float] NULL,
	[discount] [smallint] NULL,
	[Soild] [int] NULL,
	[Available] [int] NULL,
	[Typeid] [int] NULL,
	[Slug] [nvarchar](255) NULL,
	[Bandld] [int] NULL,
	[Deleted] [bit] NULL,
	[Showonhomepage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdateOnUtc] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 8/26/2022 2:15:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Img] [nvarchar](255) NULL,
	[Deleted] [bit] NULL,
	[Showonhomepage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdateOnUtc] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/26/2022 2:15:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[IsAdmin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Websitebanhang] SET  READ_WRITE 
GO
