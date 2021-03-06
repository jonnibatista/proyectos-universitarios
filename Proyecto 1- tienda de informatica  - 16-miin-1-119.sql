USE [master]
GO
/****** Jonnifel Batista MAT. 16-MIIN-I-1-119 SEC. 0541 ******/
CREATE DATABASE [la tienda de infotmatica] ON  PRIMARY 
( NAME = N'la tienda de infotmatica', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\la tienda de infotmatica.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'la tienda de infotmatica_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\la tienda de infotmatica_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [la tienda de infotmatica] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [la tienda de infotmatica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [la tienda de infotmatica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET ARITHABORT OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [la tienda de infotmatica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [la tienda de infotmatica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [la tienda de infotmatica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [la tienda de infotmatica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [la tienda de infotmatica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [la tienda de infotmatica] SET  MULTI_USER 
GO
ALTER DATABASE [la tienda de infotmatica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [la tienda de infotmatica] SET DB_CHAINING OFF 
GO
USE [la tienda de infotmatica]
GO
/****** Object:  Table [dbo].[articulos]    Script Date: 20/08/2017 7:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articulos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[precio] [int] NULL,
	[fabricante] [int] NULL,
 CONSTRAINT [PK_articulos] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[fabricante]    Script Date: 20/08/2017 7:27:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fabricante](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
 CONSTRAINT [PK_fabricante] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[articulos] ON 

INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (1, N'pinturas domastur', 1400, 1)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (2, N'pinturas indistrias cx a', 1200, 2)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (3, N'pinturas del caribe', 1250, 3)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (4, N'pinturas tucab', 450, 4)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (5, N'pinturas lider', 600, 5)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (6, N'pinturas king', 850, 6)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (7, N'pinturas arquipro', 1300, 7)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (8, N'pinturas el pintor', 400, 8)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (9, N'pinturas la diferencia', 460, 9)
INSERT [dbo].[articulos] ([codigo], [nombre], [precio], [fabricante]) VALUES (10, N'brochas de pintar', 80, 10)
SET IDENTITY_INSERT [dbo].[articulos] OFF
SET IDENTITY_INSERT [dbo].[fabricante] ON 

INSERT [dbo].[fabricante] ([codigo], [nombre]) VALUES (1, N'pinturas domastur')
INSERT [dbo].[fabricante] ([codigo], [nombre]) VALUES (2, N'indistrias cxa')
INSERT [dbo].[fabricante] ([codigo], [nombre]) VALUES (3, N'industrias del caribe')
INSERT [dbo].[fabricante] ([codigo], [nombre]) VALUES (4, N'pinturas tucan')
INSERT [dbo].[fabricante] ([codigo], [nombre]) VALUES (5, N'pinturas lider')
INSERT [dbo].[fabricante] ([codigo], [nombre]) VALUES (6, N'pinturas king')
INSERT [dbo].[fabricante] ([codigo], [nombre]) VALUES (7, N'pinturas arquipro')
INSERT [dbo].[fabricante] ([codigo], [nombre]) VALUES (8, N'pinturas el pintor')
INSERT [dbo].[fabricante] ([codigo], [nombre]) VALUES (9, N'pinturas la diferencia')
INSERT [dbo].[fabricante] ([codigo], [nombre]) VALUES (10, N'pinturas antena')
SET IDENTITY_INSERT [dbo].[fabricante] OFF
ALTER TABLE [dbo].[articulos]  WITH CHECK ADD  CONSTRAINT [FK_articulos_fabricante] FOREIGN KEY([fabricante])
REFERENCES [dbo].[fabricante] ([codigo])
GO
ALTER TABLE [dbo].[articulos] CHECK CONSTRAINT [FK_articulos_fabricante]
GO
USE [master]
GO
ALTER DATABASE [la tienda de infotmatica] SET  READ_WRITE 
GO

