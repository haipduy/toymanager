USE [master]
GO
/****** Object:  Database [ToyManagement]    Script Date: 09/11/2018 20:21:21 ******/
CREATE DATABASE [ToyManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ToyManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS2014\MSSQL\DATA\ToyManagement.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ToyManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS2014\MSSQL\DATA\ToyManagement_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ToyManagement] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ToyManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ToyManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ToyManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ToyManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ToyManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ToyManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [ToyManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ToyManagement] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ToyManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ToyManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ToyManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ToyManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ToyManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ToyManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ToyManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ToyManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ToyManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ToyManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ToyManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ToyManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ToyManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ToyManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ToyManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ToyManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ToyManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ToyManagement] SET  MULTI_USER 
GO
ALTER DATABASE [ToyManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ToyManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ToyManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ToyManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ToyManagement]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 09/11/2018 20:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[SupplierID] [nvarchar](50) NULL,
	[CategoryID] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_TblItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblAccount]    Script Date: 09/11/2018 20:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAccount](
	[UserID] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[Sex] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[RoleID] [int] NULL,
	[StatusAcc] [bit] NULL,
 CONSTRAINT [PK_TblAccount] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblCategory]    Script Date: 09/11/2018 20:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCategory](
	[CategoryID] [nvarchar](50) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblOrder]    Script Date: 09/11/2018 20:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOrder](
	[Id] [nvarchar](50) NOT NULL,
	[UserID] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[ReceivingPhone] [nvarchar](50) NULL,
	[ReceivingAddress] [nvarchar](50) NULL,
	[Note] [nvarchar](500) NULL,
	[BuyDate] [date] NULL,
	[StatusOrder] [bit] NULL,
 CONSTRAINT [PK_TblOrder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblOrderDetails]    Script Date: 09/11/2018 20:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetails](
	[OrderId] [nvarchar](50) NOT NULL,
	[ProductId] [nvarchar](50) NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_tblOrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblRole]    Script Date: 09/11/2018 20:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblRole](
	[RoleID] [int] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblRole] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblStatus]    Script Date: 09/11/2018 20:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblStatus](
	[StatusItemID] [nvarchar](50) NOT NULL,
	[StatusItemName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblStatus] PRIMARY KEY CLUSTERED 
(
	[StatusItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblSupplier]    Script Date: 09/11/2018 20:21:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSupplier](
	[SupplierID] [nvarchar](50) NOT NULL,
	[SupplierName] [nvarchar](50) NULL,
	[AddressItem] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblSupplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Product] ([ID], [Name], [Price], [SupplierID], [CategoryID], [Quantity], [Description], [Status]) VALUES (N'P001', N'SamSung Note 8', 1000, N'S001', N'C01', 20, N'Dien thoai Samsung not 8', 1)
INSERT [dbo].[TblAccount] ([UserID], [Password], [FullName], [Address], [Email], [StartDate], [Sex], [Phone], [RoleID], [StatusAcc]) VALUES (N'admin', N'123', N'Pham Duy Hai', N'Quan 12', N'haipduy@gmail.com', CAST(0x0000A9B400000000 AS DateTime), N'Male', N'123272398137', 1, 1)
INSERT [dbo].[TblAccount] ([UserID], [Password], [FullName], [Address], [Email], [StartDate], [Sex], [Phone], [RoleID], [StatusAcc]) VALUES (N'E001', N'123', N'Duy Hai', N'Quan 1', N'haipdy@gmail.com', CAST(0x0000A97700000000 AS DateTime), N'Female', N'23', 2, 1)
INSERT [dbo].[TblAccount] ([UserID], [Password], [FullName], [Address], [Email], [StartDate], [Sex], [Phone], [RoleID], [StatusAcc]) VALUES (N'E002', N'123@123', N'Phung Ngoc Khuong Duy', N'Quan Binh Thanh', N'pnkDuy@gmail.com', CAST(0x00009F7000000000 AS DateTime), N'Male', N'08-1212-6868', 2, 1)
INSERT [dbo].[TblAccount] ([UserID], [Password], [FullName], [Address], [Email], [StartDate], [Sex], [Phone], [RoleID], [StatusAcc]) VALUES (N'E003', N'123@123', N'kjdwheak', N'kjhkajh', N'kjhakd', CAST(0x00009FEB00000000 AS DateTime), N'Female', N'90182847', 2, 1)
INSERT [dbo].[TblAccount] ([UserID], [Password], [FullName], [Address], [Email], [StartDate], [Sex], [Phone], [RoleID], [StatusAcc]) VALUES (N'E00399238', N'kshd', N'qidjakdj', N'kjhakdj', N'jkdhaskld', CAST(0x0000A12F00000000 AS DateTime), N'Male', N'910238', 2, 1)
INSERT [dbo].[TblAccount] ([UserID], [Password], [FullName], [Address], [Email], [StartDate], [Sex], [Phone], [RoleID], [StatusAcc]) VALUES (N'E004', N'01293', N'qlkejl', N'kjlkj', N'kjhadsj', CAST(0x0000A0E600000000 AS DateTime), N'Female', N'012938', 2, 1)
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName]) VALUES (N'C01', N'Dien Thoai')
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName]) VALUES (N'C02', N'Lap top')
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName]) VALUES (N'C03', N'May tinh Bang')
INSERT [dbo].[TblOrder] ([Id], [UserID], [CustomerName], [ReceivingPhone], [ReceivingAddress], [Note], [BuyDate], [StatusOrder]) VALUES (N'0001', N'E01', N'Duy hai', N'12039127', N'quan 12', N'giao buoi sang', CAST(0x5F350B00 AS Date), 1)
INSERT [dbo].[tblOrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (N'001', N'P00233y', 3)
INSERT [dbo].[tblOrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (N'001', N'P01', 1)
INSERT [dbo].[tblOrderDetails] ([OrderId], [ProductId], [Quantity]) VALUES (N'001', N'P02', 34)
INSERT [dbo].[TblRole] ([RoleID], [RoleName]) VALUES (1, N'Admintrator')
INSERT [dbo].[TblRole] ([RoleID], [RoleName]) VALUES (2, N'Employee')
INSERT [dbo].[TblSupplier] ([SupplierID], [SupplierName], [AddressItem], [Phone]) VALUES (N'S001', N'Tap Doan Viettel', N'Quan 1, Ho Chi Minh', N'08-6868-7979')
INSERT [dbo].[TblSupplier] ([SupplierID], [SupplierName], [AddressItem], [Phone]) VALUES (N'S002', N'Tap Doan Fpt', N'Quan 2, Ho Chi Minh', N'02-8989-0000')
USE [master]
GO
ALTER DATABASE [ToyManagement] SET  READ_WRITE 
GO
