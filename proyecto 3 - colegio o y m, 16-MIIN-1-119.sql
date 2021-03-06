USE [master]
GO
/****** Jonnifel Batista MAT. 16-MIIN-I-1-119 SEC. 0541 ******/
CREATE DATABASE [Colegio o y m] ON  PRIMARY 
( NAME = N'Colegio o y m', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Colegio o y m.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Colegio o y m_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Colegio o y m_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Colegio o y m] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Colegio o y m].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Colegio o y m] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Colegio o y m] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Colegio o y m] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Colegio o y m] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Colegio o y m] SET ARITHABORT OFF 
GO
ALTER DATABASE [Colegio o y m] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Colegio o y m] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Colegio o y m] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Colegio o y m] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Colegio o y m] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Colegio o y m] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Colegio o y m] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Colegio o y m] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Colegio o y m] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Colegio o y m] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Colegio o y m] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Colegio o y m] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Colegio o y m] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Colegio o y m] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Colegio o y m] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Colegio o y m] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Colegio o y m] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Colegio o y m] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Colegio o y m] SET  MULTI_USER 
GO
ALTER DATABASE [Colegio o y m] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Colegio o y m] SET DB_CHAINING OFF 
GO
USE [Colegio o y m]
GO
/****** Object:  Table [dbo].[Calificaciones]    Script Date: 20/08/2017 11:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificaciones](
	[CalificacionID] [int] NOT NULL,
	[MateriaID] [int] NULL,
	[EstudianteID] [int] NULL,
	[ProfesorID] [int] NULL,
	[Calificacion1] [float] NULL,
	[Calificacion2] [float] NULL,
	[Calificacion3] [float] NULL,
	[Calificacion4] [float] NULL,
	[Promedio] [float] NULL,
	[Examenfinal] [float] NOT NULL,
	[Calificaionfinal] [float] NULL,
 CONSTRAINT [PK_Calificaciones] PRIMARY KEY CLUSTERED 
(
	[CalificacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cursos]    Script Date: 20/08/2017 11:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cursos](
	[curso] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[horario] [varchar](20) NULL,
 CONSTRAINT [PK_cursos] PRIMARY KEY CLUSTERED 
(
	[curso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 20/08/2017 11:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[EstudianteID] [int] NOT NULL,
	[Nombre] [varchar](60) NULL,
	[Matricula] [varchar](15) NULL,
	[CursoID] [int] NULL,
	[Fechanacimiento] [datetime] NULL,
	[Sexo] [char](1) NULL,
	[Direccion] [varchar](250) NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[EstudianteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MateriaID]    Script Date: 20/08/2017 11:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MateriaID](
	[MateriaID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[CursoID] [int] NULL,
	[ProfesorID] [int] NULL,
 CONSTRAINT [PK_MateriaID] PRIMARY KEY CLUSTERED 
(
	[MateriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[profesorID]    Script Date: 20/08/2017 11:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[profesorID](
	[ProfesorID] [int] NOT NULL,
	[Direccion] [varchar](60) NULL,
	[Sexo] [char](1) NULL,
	[Telefono] [varchar](13) NULL,
	[Email] [varchar](30) NULL,
 CONSTRAINT [PK_profesorID] PRIMARY KEY CLUSTERED 
(
	[ProfesorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Calificaciones] ([CalificacionID], [MateriaID], [EstudianteID], [ProfesorID], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificaionfinal]) VALUES (1, 1, 1, 1, 10, 10, 10, 10, 40, 50, 90)
INSERT [dbo].[Calificaciones] ([CalificacionID], [MateriaID], [EstudianteID], [ProfesorID], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificaionfinal]) VALUES (2, 2, 2, 2, 15, 15, 10, 10, 50, 40, 90)
INSERT [dbo].[Calificaciones] ([CalificacionID], [MateriaID], [EstudianteID], [ProfesorID], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificaionfinal]) VALUES (3, 3, 3, 3, 10, 10, 15, 10, 45, 30, 75)
INSERT [dbo].[Calificaciones] ([CalificacionID], [MateriaID], [EstudianteID], [ProfesorID], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificaionfinal]) VALUES (4, 4, 4, 4, 11, 10, 10, 10, 41, 40, 81)
INSERT [dbo].[Calificaciones] ([CalificacionID], [MateriaID], [EstudianteID], [ProfesorID], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificaionfinal]) VALUES (5, 5, 5, 5, 13, 10, 10, 15, 48, 40, 88)
INSERT [dbo].[Calificaciones] ([CalificacionID], [MateriaID], [EstudianteID], [ProfesorID], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificaionfinal]) VALUES (6, 6, 6, 6, 10, 5, 5, 10, 30, 40, 70)
INSERT [dbo].[Calificaciones] ([CalificacionID], [MateriaID], [EstudianteID], [ProfesorID], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificaionfinal]) VALUES (7, 7, 7, 7, 15, 10, 10, 10, 45, 40, 85)
INSERT [dbo].[Calificaciones] ([CalificacionID], [MateriaID], [EstudianteID], [ProfesorID], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificaionfinal]) VALUES (8, 8, 8, 8, 16, 10, 10, 10, 46, 50, 96)
INSERT [dbo].[Calificaciones] ([CalificacionID], [MateriaID], [EstudianteID], [ProfesorID], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificaionfinal]) VALUES (9, 9, 9, 9, 10, 10, 10, 10, 40, 30, 70)
INSERT [dbo].[Calificaciones] ([CalificacionID], [MateriaID], [EstudianteID], [ProfesorID], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificaionfinal]) VALUES (10, 10, 10, 10, 15, 15, 15, 15, 60, 40, 100)
INSERT [dbo].[Calificaciones] ([CalificacionID], [MateriaID], [EstudianteID], [ProfesorID], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificaionfinal]) VALUES (11, 11, 11, 10, 9, 8, 10, 10, 37, 40, 77)
INSERT [dbo].[Calificaciones] ([CalificacionID], [MateriaID], [EstudianteID], [ProfesorID], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificaionfinal]) VALUES (12, 12, 12, 9, 9, 9, 9, 9, 36, 50, 86)
INSERT [dbo].[cursos] ([curso], [nombre], [horario]) VALUES (1, N'primero de barchiller', N'tarde')
INSERT [dbo].[cursos] ([curso], [nombre], [horario]) VALUES (2, N'segundo de barchiller', N'tarde')
INSERT [dbo].[cursos] ([curso], [nombre], [horario]) VALUES (3, N'tercero barchiller', N'tarde')
INSERT [dbo].[cursos] ([curso], [nombre], [horario]) VALUES (4, N'cuato barchiller', N'tarde')
INSERT [dbo].[cursos] ([curso], [nombre], [horario]) VALUES (5, N'primero barchiller', N'noche')
INSERT [dbo].[cursos] ([curso], [nombre], [horario]) VALUES (6, N'segundo de barchiller', N'noche')
INSERT [dbo].[cursos] ([curso], [nombre], [horario]) VALUES (7, N'tercero de barchiller', N'noche')
INSERT [dbo].[cursos] ([curso], [nombre], [horario]) VALUES (8, N'cuarto de barchiller', N'noche')
INSERT [dbo].[cursos] ([curso], [nombre], [horario]) VALUES (9, N'primero barchiller', N'mañana')
INSERT [dbo].[cursos] ([curso], [nombre], [horario]) VALUES (10, N'segundo barchiller', N'mañana')
INSERT [dbo].[cursos] ([curso], [nombre], [horario]) VALUES (11, N'tercero barchiller', N'mañana')
INSERT [dbo].[cursos] ([curso], [nombre], [horario]) VALUES (12, N'cuarto barchiller', N'mañana')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Fechanacimiento], [Sexo], [Direccion]) VALUES (1, N'pedro', N'123456', 1, CAST(N'2001-01-12 00:00:00.000' AS DateTime), N'm', N'c/pedro no.5')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Fechanacimiento], [Sexo], [Direccion]) VALUES (2, N'julio', N'789654', 2, CAST(N'2003-05-20 00:00:00.000' AS DateTime), N'm', N'c/julio no.6')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Fechanacimiento], [Sexo], [Direccion]) VALUES (3, N'martina', N'852369', 3, CAST(N'2004-02-05 00:00:00.000' AS DateTime), N'f', N'c/k no.9')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Fechanacimiento], [Sexo], [Direccion]) VALUES (4, N'marcos', N'741258', 4, CAST(N'2004-02-04 00:00:00.000' AS DateTime), N'm', N'c/f no.5')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Fechanacimiento], [Sexo], [Direccion]) VALUES (5, N'petronila', N'852365', 5, CAST(N'2003-06-01 00:00:00.000' AS DateTime), N'f', N'c/g no.85')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Fechanacimiento], [Sexo], [Direccion]) VALUES (6, N'julian', N'753689', 6, CAST(N'2001-08-01 00:00:00.000' AS DateTime), N'm', N'c/b no.2')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Fechanacimiento], [Sexo], [Direccion]) VALUES (7, N'katy', N'742358', 7, CAST(N'2002-06-08 00:00:00.000' AS DateTime), N'f', N'c/r no.89')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Fechanacimiento], [Sexo], [Direccion]) VALUES (8, N'carmen', N'852654', 8, CAST(N'2000-03-06 00:00:00.000' AS DateTime), N'f', N'c/j no.20')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Fechanacimiento], [Sexo], [Direccion]) VALUES (9, N'xiomara', N'741853', 9, CAST(N'1999-03-01 00:00:00.000' AS DateTime), N'f', N'c/a no.83')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Fechanacimiento], [Sexo], [Direccion]) VALUES (10, N'jennimer', N'856931', 10, CAST(N'2000-08-26 00:00:00.000' AS DateTime), N'f', N'c/y no.9')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Fechanacimiento], [Sexo], [Direccion]) VALUES (11, N'patricia', N'856246', 11, CAST(N'2001-08-08 00:00:00.000' AS DateTime), N'f', N'c/t no.45')
INSERT [dbo].[Estudiantes] ([EstudianteID], [Nombre], [Matricula], [CursoID], [Fechanacimiento], [Sexo], [Direccion]) VALUES (12, N'estarling', N'555563', 12, CAST(N'1999-05-27 00:00:00.000' AS DateTime), N'm', N'c/d no.11')
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [CursoID], [ProfesorID]) VALUES (1, N'matematicaº', 1, 1)
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [CursoID], [ProfesorID]) VALUES (2, N'naturales', 2, 2)
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [CursoID], [ProfesorID]) VALUES (3, N'sociales', 3, 3)
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [CursoID], [ProfesorID]) VALUES (4, N'bilogia', 4, 4)
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [CursoID], [ProfesorID]) VALUES (5, N'ingles', 5, 5)
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [CursoID], [ProfesorID]) VALUES (6, N'frances', 6, 6)
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [CursoID], [ProfesorID]) VALUES (7, N'civica', 7, 7)
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [CursoID], [ProfesorID]) VALUES (8, N'informatica', 8, 8)
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [CursoID], [ProfesorID]) VALUES (9, N'datos', 9, 9)
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [CursoID], [ProfesorID]) VALUES (10, N'ecologia', 10, 10)
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [CursoID], [ProfesorID]) VALUES (11, N'estadistica', 11, 9)
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [CursoID], [ProfesorID]) VALUES (12, N'fisica', 1, 1)
INSERT [dbo].[profesorID] ([ProfesorID], [Direccion], [Sexo], [Telefono], [Email]) VALUES (1, N'c/juan no.2', N'm', N'8092660000', N'victor@hotmail.com')
INSERT [dbo].[profesorID] ([ProfesorID], [Direccion], [Sexo], [Telefono], [Email]) VALUES (2, N'c/el bonito no.16', N'm', N'8095000000', N'carlos@hotmail.com')
INSERT [dbo].[profesorID] ([ProfesorID], [Direccion], [Sexo], [Telefono], [Email]) VALUES (3, N'c/la julia no.12', N'f', N'8092368888', N'maria@hotmail.com')
INSERT [dbo].[profesorID] ([ProfesorID], [Direccion], [Sexo], [Telefono], [Email]) VALUES (4, N'c/la pidedra no.45', N'f', N'8299005623', N'carlina@hotmail.com')
INSERT [dbo].[profesorID] ([ProfesorID], [Direccion], [Sexo], [Telefono], [Email]) VALUES (5, N'c/coroto no.80', N'f', N'8095656666', N'jennifer@hotmail.com')
INSERT [dbo].[profesorID] ([ProfesorID], [Direccion], [Sexo], [Telefono], [Email]) VALUES (6, N'c/el pan no.8', N'm', N'8095555555', N'jose@hotmail.com')
INSERT [dbo].[profesorID] ([ProfesorID], [Direccion], [Sexo], [Telefono], [Email]) VALUES (7, N'c/la gualliga no.32', N'm', N'8495333333', N'mateo@hotmail.com')
INSERT [dbo].[profesorID] ([ProfesorID], [Direccion], [Sexo], [Telefono], [Email]) VALUES (8, N'c/el  penon no.20', N'f', N'8092222323', N'julia@hotmail.com')
INSERT [dbo].[profesorID] ([ProfesorID], [Direccion], [Sexo], [Telefono], [Email]) VALUES (9, N'c/la julia no.17', N'f', N'8094562356', N'karina@hotmail.com')
INSERT [dbo].[profesorID] ([ProfesorID], [Direccion], [Sexo], [Telefono], [Email]) VALUES (10, N'c/los gatos no7', N'm', N'8294115555', N'johan@hotmail.com')
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Estudiantes] FOREIGN KEY([EstudianteID])
REFERENCES [dbo].[Estudiantes] ([EstudianteID])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Estudiantes]
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_MateriaID] FOREIGN KEY([MateriaID])
REFERENCES [dbo].[MateriaID] ([MateriaID])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_MateriaID]
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_profesorID] FOREIGN KEY([ProfesorID])
REFERENCES [dbo].[profesorID] ([ProfesorID])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_profesorID]
GO
ALTER TABLE [dbo].[Estudiantes]  WITH CHECK ADD  CONSTRAINT [FK_Estudiantes_cursos] FOREIGN KEY([EstudianteID])
REFERENCES [dbo].[cursos] ([curso])
GO
ALTER TABLE [dbo].[Estudiantes] CHECK CONSTRAINT [FK_Estudiantes_cursos]
GO
ALTER TABLE [dbo].[MateriaID]  WITH CHECK ADD  CONSTRAINT [FK_MateriaID_cursos] FOREIGN KEY([CursoID])
REFERENCES [dbo].[cursos] ([curso])
GO
ALTER TABLE [dbo].[MateriaID] CHECK CONSTRAINT [FK_MateriaID_cursos]
GO
ALTER TABLE [dbo].[MateriaID]  WITH CHECK ADD  CONSTRAINT [FK_MateriaID_profesorID] FOREIGN KEY([ProfesorID])
REFERENCES [dbo].[profesorID] ([ProfesorID])
GO
ALTER TABLE [dbo].[MateriaID] CHECK CONSTRAINT [FK_MateriaID_profesorID]
GO
USE [master]
GO
ALTER DATABASE [Colegio o y m] SET  READ_WRITE 
GO
