USE [master]
GO
/******  Jonnifel Batista MAT. 16-MIIN-I-1-119 SEC. 0541 ******/
CREATE DATABASE [LosGrandesAlmacenes] ON  PRIMARY 
( NAME = N'LosGrandesAlmacenes', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\LosGrandesAlmacenes.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LosGrandesAlmacenes_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\LosGrandesAlmacenes_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LosGrandesAlmacenes] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LosGrandesAlmacenes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LosGrandesAlmacenes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET ARITHABORT OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET  MULTI_USER 
GO
ALTER DATABASE [LosGrandesAlmacenes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LosGrandesAlmacenes] SET DB_CHAINING OFF 
GO
USE [LosGrandesAlmacenes]
GO
/****** Object:  Table [dbo].[cajeros]    Script Date: 20/08/2017 8:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cajeros](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NULL,
 CONSTRAINT [PK_cajeros] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[maquinaRegistradora]    Script Date: 20/08/2017 8:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maquinaRegistradora](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[piso] [int] NULL,
 CONSTRAINT [PK_maquinaRegistradora] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[productos]    Script Date: 20/08/2017 8:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[precio] [int] NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[venta]    Script Date: 20/08/2017 8:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[cajero] [int] NULL,
	[maquina] [int] NULL,
	[producto] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[cajeros] ON 

INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (1, N'carmen rodriguez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (2, N'juan garcia')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (3, N'xiomara castellanos')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (4, N'elvin gutierrez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (5, N'eloisa peralta')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (6, N'miguel martinez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (7, N'carlos acosta')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (8, N'audri gonzalez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (9, N'jonni batista')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (10, N'julio guzman')
SET IDENTITY_INSERT [dbo].[cajeros] OFF
SET IDENTITY_INSERT [dbo].[maquinaRegistradora] ON 

INSERT [dbo].[maquinaRegistradora] ([codigo], [piso]) VALUES (1, 1)
INSERT [dbo].[maquinaRegistradora] ([codigo], [piso]) VALUES (2, 2)
INSERT [dbo].[maquinaRegistradora] ([codigo], [piso]) VALUES (3, 3)
INSERT [dbo].[maquinaRegistradora] ([codigo], [piso]) VALUES (4, 4)
INSERT [dbo].[maquinaRegistradora] ([codigo], [piso]) VALUES (5, 5)
INSERT [dbo].[maquinaRegistradora] ([codigo], [piso]) VALUES (6, 8)
INSERT [dbo].[maquinaRegistradora] ([codigo], [piso]) VALUES (7, 9)
INSERT [dbo].[maquinaRegistradora] ([codigo], [piso]) VALUES (8, 10)
INSERT [dbo].[maquinaRegistradora] ([codigo], [piso]) VALUES (9, 20)
INSERT [dbo].[maquinaRegistradora] ([codigo], [piso]) VALUES (10, 26)
SET IDENTITY_INSERT [dbo].[maquinaRegistradora] OFF
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (1, N'menta', 1)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (2, N'jugo', 30)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (3, N'cuaderno', 45)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (4, N'libro', 800)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (5, N'galleta', 15)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (6, N'papa', 25)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (7, N'guineo', 3)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (8, N'platano', 15)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (9, N'suape', 10)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (10, N'escoba', 100)
SET IDENTITY_INSERT [dbo].[productos] OFF
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (1, 1, 1)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 2, 2)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (3, 3, 3)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (4, 4, 4)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (5, 5, 5)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (6, 8, 6)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (7, 6, 7)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (8, 7, 8)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (9, 9, 9)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (10, 10, 10)
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_cajeros] FOREIGN KEY([cajero])
REFERENCES [dbo].[cajeros] ([codigo])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_cajeros]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_maquinaRegistradora] FOREIGN KEY([maquina])
REFERENCES [dbo].[maquinaRegistradora] ([codigo])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_maquinaRegistradora]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_productos] FOREIGN KEY([producto])
REFERENCES [dbo].[productos] ([codigo])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_productos]
GO
USE [master]
GO
ALTER DATABASE [LosGrandesAlmacenes] SET  READ_WRITE 
GO
