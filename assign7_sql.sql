USE [master]
GO
/****** Object:  Database [JAVA_ASSIGN7]    Script Date: 22/03/2022 08:24:13 ******/
CREATE DATABASE [JAVA_ASSIGN7]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JAVA_ASSIGN7', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\JAVA_ASSIGN7.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'JAVA_ASSIGN7_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\JAVA_ASSIGN7_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [JAVA_ASSIGN7] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JAVA_ASSIGN7].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JAVA_ASSIGN7] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET ARITHABORT OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET  MULTI_USER 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JAVA_ASSIGN7] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [JAVA_ASSIGN7] SET DELAYED_DURABILITY = DISABLED 
GO
USE [JAVA_ASSIGN7]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 22/03/2022 08:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[departmentID] [int] IDENTITY(1,1) NOT NULL,
	[departmentName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[departmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 22/03/2022 08:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[SSN] [int] NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[birthDate] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[empType] [int] NOT NULL,
	[commissionRate] [float] NULL,
	[grossSales] [float] NULL,
	[basicSalary] [float] NULL,
	[rate] [float] NULL,
	[workingHours] [float] NULL,
	[departmentID] [int] NOT NULL,
	[fullName] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([departmentID], [departmentName]) VALUES (1, N'AUT')
INSERT [dbo].[Department] ([departmentID], [departmentName]) VALUES (2, N'JAVA')
INSERT [dbo].[Department] ([departmentID], [departmentName]) VALUES (5, N'C#')
INSERT [dbo].[Department] ([departmentID], [departmentName]) VALUES (6, N'JavaSript')
INSERT [dbo].[Department] ([departmentID], [departmentName]) VALUES (7, N'Kotlin')
INSERT [dbo].[Department] ([departmentID], [departmentName]) VALUES (8, N'Assembly')
SET IDENTITY_INSERT [dbo].[Department] OFF
INSERT [dbo].[Employee] ([SSN], [firstName], [lastName], [birthDate], [phone], [email], [empType], [commissionRate], [grossSales], [basicSalary], [rate], [workingHours], [departmentID], [fullName]) VALUES (1111, N'Anh', N'Ngo', N'17-09-1994', N'099999999', N'anhngo@gmail.com', 1, 1.2, 2000, 300, NULL, NULL, 1, N'Anh Ngo')
INSERT [dbo].[Employee] ([SSN], [firstName], [lastName], [birthDate], [phone], [email], [empType], [commissionRate], [grossSales], [basicSalary], [rate], [workingHours], [departmentID], [fullName]) VALUES (1222, N'Anh', N'Xuan', N'19-09-2001', N'09992999', N'xuantocdo@gmail.com', 1, 1.3, 300, 800, NULL, NULL, 2, N'Anh Xuan')
INSERT [dbo].[Employee] ([SSN], [firstName], [lastName], [birthDate], [phone], [email], [empType], [commissionRate], [grossSales], [basicSalary], [rate], [workingHours], [departmentID], [fullName]) VALUES (213, N'Anh', N'Dang', N'22-02-2002', N'2132312219', N'anhNt2@gmail.com', 2, NULL, NULL, NULL, 99, 6, 6, N'Anh Dang')
INSERT [dbo].[Employee] ([SSN], [firstName], [lastName], [birthDate], [phone], [email], [empType], [commissionRate], [grossSales], [basicSalary], [rate], [workingHours], [departmentID], [fullName]) VALUES (9800, N'Mem', N'DaiNhan', N'20-02-1998', N'22213312', N'231dainhan@gmail.com', 2, NULL, NULL, NULL, 1.8999999761581421, 2, 7, N'Mem DaiNhan')
INSERT [dbo].[Employee] ([SSN], [firstName], [lastName], [birthDate], [phone], [email], [empType], [commissionRate], [grossSales], [basicSalary], [rate], [workingHours], [departmentID], [fullName]) VALUES (666, N'Luci', N'fer', N'01-01-1001', N'213312429', N'frmhellnah@gmail.com', 2, NULL, NULL, NULL, 0, 1, 1, N'Luci fer')
USE [master]
GO
ALTER DATABASE [JAVA_ASSIGN7] SET  READ_WRITE 
GO
