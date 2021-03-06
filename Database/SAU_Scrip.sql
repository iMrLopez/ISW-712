USE [master]
GO
/****** Object:  Database [SAU_BD]    Script Date: 7/2/2018 8:52:29 p. m. ******/
CREATE DATABASE [SAU_BD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SAU_BD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SAU_BD.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SAU_BD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SAU_BD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SAU_BD] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SAU_BD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SAU_BD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SAU_BD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SAU_BD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SAU_BD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SAU_BD] SET ARITHABORT OFF 
GO
ALTER DATABASE [SAU_BD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SAU_BD] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SAU_BD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SAU_BD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SAU_BD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SAU_BD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SAU_BD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SAU_BD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SAU_BD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SAU_BD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SAU_BD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SAU_BD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SAU_BD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SAU_BD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SAU_BD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SAU_BD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SAU_BD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SAU_BD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SAU_BD] SET RECOVERY FULL 
GO
ALTER DATABASE [SAU_BD] SET  MULTI_USER 
GO
ALTER DATABASE [SAU_BD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SAU_BD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SAU_BD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SAU_BD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SAU_BD', N'ON'
GO
USE [SAU_BD]
GO
/****** Object:  Table [dbo].[AaCantones]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AaCantones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[puntos] [int] NOT NULL,
	[estado] [int] NOT NULL,
	[idCanton] [int] NOT NULL,
	[idSede] [int] NOT NULL,
 CONSTRAINT [PK_AaCantones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AaColegioConvenios]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AaColegioConvenios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idsede] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[estodo] [int] NOT NULL,
	[puntos] [int] NOT NULL,
 CONSTRAINT [PK_AaColegioConvenios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AaColegioSedes]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AaColegioSedes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[puntos] [int] NOT NULL,
	[estado] [int] NOT NULL,
	[idsede] [int] NOT NULL,
 CONSTRAINT [PK_AaColegioSedes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AaColegiosTecnico]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AaColegiosTecnico](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[estado] [int] NOT NULL,
	[puntos] [int] NOT NULL,
 CONSTRAINT [PK_AaColegiosTecnico] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AaColegioTecnicoProfesional]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AaColegioTecnicoProfesional](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[puntos] [int] NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_AaColegioTecnicoProfesional] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AaInstitutoAprendizajeNacional]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AaInstitutoAprendizajeNacional](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[estado] [int] NOT NULL,
	[puntos] [int] NOT NULL,
 CONSTRAINT [PK_AaInstitutoAprendizajeNacional] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Aalaborales]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aalaborales](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[puntos] [int] NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_Aalaborales] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Aspirante]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aspirante](
	[Cedula] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido1] [varchar](50) NOT NULL,
	[apellido2] [varchar](50) NOT NULL,
	[sexo] [char](10) NOT NULL,
	[fechaNacimiento] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[provincia] [varchar](50) NOT NULL,
	[canton] [varchar](50) NOT NULL,
	[distrito] [varchar](50) NOT NULL,
	[notaAdmision] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Aspirante] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspiranteCarrera]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspiranteCarrera](
	[idCarrera] [int] NOT NULL,
	[idAspirante] [int] NOT NULL,
 CONSTRAINT [PK_AspiranteCarrera] PRIMARY KEY CLUSTERED 
(
	[idCarrera] ASC,
	[idAspirante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cantones]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cantones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_Cantones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Carreras]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carreras](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_Carreras] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarreraSede]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarreraSede](
	[idSede] [int] NOT NULL,
	[idCarrera] [int] NOT NULL,
 CONSTRAINT [PK_CarreraSede] PRIMARY KEY CLUSTERED 
(
	[idSede] ASC,
	[idCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ColegioTecnicoCarrera]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColegioTecnicoCarrera](
	[idColegioTecnico] [int] NOT NULL,
	[ideCarrera] [int] NOT NULL,
 CONSTRAINT [PK_ColegioTecnicoCarrera] PRIMARY KEY CLUSTERED 
(
	[idColegioTecnico] ASC,
	[ideCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTPCarrera]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPCarrera](
	[idCTP] [int] NOT NULL,
	[idCarrera] [int] NOT NULL,
 CONSTRAINT [PK_CTPCarrera] PRIMARY KEY CLUSTERED 
(
	[idCTP] ASC,
	[idCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DatosAspiranteINA]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DatosAspiranteINA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idAspirante] [int] NOT NULL,
	[tituloEspecialidad] [varchar](50) NOT NULL,
	[nombreCurso] [varchar](50) NOT NULL,
	[puntos] [int] NULL,
 CONSTRAINT [PK_DatosAspiranteINA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DatosAspiranteMEP]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DatosAspiranteMEP](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idAspirante] [int] NOT NULL,
	[tituloBachicher] [varchar](50) NOT NULL,
	[tituloEspecialidad] [varchar](50) NOT NULL,
	[nombreColegio] [varchar](50) NOT NULL,
	[direccionColegio] [varchar](50) NOT NULL,
	[tipoColegio] [varchar](50) NOT NULL,
	[NotaPromedio] [int] NOT NULL,
 CONSTRAINT [PK_DatosAspiranteMEP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[datosLaboral]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[datosLaboral](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idAspirante] [int] NOT NULL,
	[empresa] [varchar](50) NOT NULL,
	[Añolaborales] [varchar](50) NOT NULL,
	[departamentoLaboral] [varchar](50) NOT NULL,
	[puestotrabajo] [varchar](50) NOT NULL,
	[puntos] [int] NOT NULL,
 CONSTRAINT [PK_datosLaboral] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[horarioCarrera]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[horarioCarrera](
	[idCarrera] [int] NOT NULL,
	[idHorario] [int] NOT NULL,
	[Cupos] [varchar](10) NOT NULL,
 CONSTRAINT [PK_horarioCarrera] PRIMARY KEY CLUSTERED 
(
	[idCarrera] ASC,
	[idHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Horarios]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Horarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[horaInicio] [datetime] NOT NULL,
	[horaFinal] [datetime] NOT NULL,
 CONSTRAINT [PK_Horarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INACarrera]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INACarrera](
	[idINA] [int] NOT NULL,
	[idCarrera] [int] NOT NULL,
 CONSTRAINT [PK_INACarrera] PRIMARY KEY CLUSTERED 
(
	[idINA] ASC,
	[idCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LaboralCarrera]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LaboralCarrera](
	[idLaboral] [int] NOT NULL,
	[idCarrera] [int] NOT NULL,
 CONSTRAINT [PK_LaboralCarrera] PRIMARY KEY CLUSTERED 
(
	[idLaboral] ASC,
	[idCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permiso]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permiso](
	[id] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Permiso] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rol](
	[id] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rolpermiso]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rolpermiso](
	[idRol] [varchar](50) NOT NULL,
	[idPermiso] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Rolpermiso] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC,
	[idPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sedes]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sedes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lugar] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sedes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 7/2/2018 8:52:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idRol] [varchar](50) NOT NULL,
	[contraseña] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AaCantones]  WITH CHECK ADD  CONSTRAINT [FK_AaCantones_Cantones] FOREIGN KEY([idCanton])
REFERENCES [dbo].[Cantones] ([id])
GO
ALTER TABLE [dbo].[AaCantones] CHECK CONSTRAINT [FK_AaCantones_Cantones]
GO
ALTER TABLE [dbo].[AaCantones]  WITH CHECK ADD  CONSTRAINT [FK_AaCantones_Sedes] FOREIGN KEY([idSede])
REFERENCES [dbo].[Sedes] ([id])
GO
ALTER TABLE [dbo].[AaCantones] CHECK CONSTRAINT [FK_AaCantones_Sedes]
GO
ALTER TABLE [dbo].[AaColegioConvenios]  WITH CHECK ADD  CONSTRAINT [FK_AaColegioConvenios_Sedes] FOREIGN KEY([idsede])
REFERENCES [dbo].[Sedes] ([id])
GO
ALTER TABLE [dbo].[AaColegioConvenios] CHECK CONSTRAINT [FK_AaColegioConvenios_Sedes]
GO
ALTER TABLE [dbo].[AaColegioSedes]  WITH CHECK ADD  CONSTRAINT [FK_AaColegioSedes_Sedes] FOREIGN KEY([idsede])
REFERENCES [dbo].[Sedes] ([id])
GO
ALTER TABLE [dbo].[AaColegioSedes] CHECK CONSTRAINT [FK_AaColegioSedes_Sedes]
GO
ALTER TABLE [dbo].[AspiranteCarrera]  WITH CHECK ADD  CONSTRAINT [FK_AspiranteCarrera_Aspirante] FOREIGN KEY([idAspirante])
REFERENCES [dbo].[Aspirante] ([Cedula])
GO
ALTER TABLE [dbo].[AspiranteCarrera] CHECK CONSTRAINT [FK_AspiranteCarrera_Aspirante]
GO
ALTER TABLE [dbo].[AspiranteCarrera]  WITH CHECK ADD  CONSTRAINT [FK_AspiranteCarrera_Carreras] FOREIGN KEY([idCarrera])
REFERENCES [dbo].[Carreras] ([id])
GO
ALTER TABLE [dbo].[AspiranteCarrera] CHECK CONSTRAINT [FK_AspiranteCarrera_Carreras]
GO
ALTER TABLE [dbo].[CarreraSede]  WITH CHECK ADD  CONSTRAINT [FK_CarreraSede_Carreras] FOREIGN KEY([idCarrera])
REFERENCES [dbo].[Carreras] ([id])
GO
ALTER TABLE [dbo].[CarreraSede] CHECK CONSTRAINT [FK_CarreraSede_Carreras]
GO
ALTER TABLE [dbo].[CarreraSede]  WITH CHECK ADD  CONSTRAINT [FK_CarreraSede_Sedes] FOREIGN KEY([idSede])
REFERENCES [dbo].[Sedes] ([id])
GO
ALTER TABLE [dbo].[CarreraSede] CHECK CONSTRAINT [FK_CarreraSede_Sedes]
GO
ALTER TABLE [dbo].[ColegioTecnicoCarrera]  WITH CHECK ADD  CONSTRAINT [FK_ColegioTecnicoCarrera_AaColegiosTecnico] FOREIGN KEY([idColegioTecnico])
REFERENCES [dbo].[AaColegiosTecnico] ([id])
GO
ALTER TABLE [dbo].[ColegioTecnicoCarrera] CHECK CONSTRAINT [FK_ColegioTecnicoCarrera_AaColegiosTecnico]
GO
ALTER TABLE [dbo].[ColegioTecnicoCarrera]  WITH CHECK ADD  CONSTRAINT [FK_ColegioTecnicoCarrera_Carreras] FOREIGN KEY([ideCarrera])
REFERENCES [dbo].[Carreras] ([id])
GO
ALTER TABLE [dbo].[ColegioTecnicoCarrera] CHECK CONSTRAINT [FK_ColegioTecnicoCarrera_Carreras]
GO
ALTER TABLE [dbo].[CTPCarrera]  WITH CHECK ADD  CONSTRAINT [FK_CTPCarrera_AaColegioTecnicoProfesional] FOREIGN KEY([idCTP])
REFERENCES [dbo].[AaColegioTecnicoProfesional] ([id])
GO
ALTER TABLE [dbo].[CTPCarrera] CHECK CONSTRAINT [FK_CTPCarrera_AaColegioTecnicoProfesional]
GO
ALTER TABLE [dbo].[CTPCarrera]  WITH CHECK ADD  CONSTRAINT [FK_CTPCarrera_Carreras] FOREIGN KEY([idCarrera])
REFERENCES [dbo].[Carreras] ([id])
GO
ALTER TABLE [dbo].[CTPCarrera] CHECK CONSTRAINT [FK_CTPCarrera_Carreras]
GO
ALTER TABLE [dbo].[DatosAspiranteINA]  WITH CHECK ADD  CONSTRAINT [FK_DatosAspiranteINA_Aspirante] FOREIGN KEY([idAspirante])
REFERENCES [dbo].[Aspirante] ([Cedula])
GO
ALTER TABLE [dbo].[DatosAspiranteINA] CHECK CONSTRAINT [FK_DatosAspiranteINA_Aspirante]
GO
ALTER TABLE [dbo].[DatosAspiranteMEP]  WITH CHECK ADD  CONSTRAINT [FK_DatosAspiranteMEP_Aspirante] FOREIGN KEY([idAspirante])
REFERENCES [dbo].[Aspirante] ([Cedula])
GO
ALTER TABLE [dbo].[DatosAspiranteMEP] CHECK CONSTRAINT [FK_DatosAspiranteMEP_Aspirante]
GO
ALTER TABLE [dbo].[datosLaboral]  WITH CHECK ADD  CONSTRAINT [FK_datosLaboral_Aspirante] FOREIGN KEY([idAspirante])
REFERENCES [dbo].[Aspirante] ([Cedula])
GO
ALTER TABLE [dbo].[datosLaboral] CHECK CONSTRAINT [FK_datosLaboral_Aspirante]
GO
ALTER TABLE [dbo].[horarioCarrera]  WITH CHECK ADD  CONSTRAINT [FK_horarioCarrera_Carreras] FOREIGN KEY([idCarrera])
REFERENCES [dbo].[Carreras] ([id])
GO
ALTER TABLE [dbo].[horarioCarrera] CHECK CONSTRAINT [FK_horarioCarrera_Carreras]
GO
ALTER TABLE [dbo].[horarioCarrera]  WITH CHECK ADD  CONSTRAINT [FK_horarioCarrera_Horarios] FOREIGN KEY([idHorario])
REFERENCES [dbo].[Horarios] ([id])
GO
ALTER TABLE [dbo].[horarioCarrera] CHECK CONSTRAINT [FK_horarioCarrera_Horarios]
GO
ALTER TABLE [dbo].[INACarrera]  WITH CHECK ADD  CONSTRAINT [FK_INACarrera_AaInstitutoAprendizajeNacional] FOREIGN KEY([idINA])
REFERENCES [dbo].[AaInstitutoAprendizajeNacional] ([id])
GO
ALTER TABLE [dbo].[INACarrera] CHECK CONSTRAINT [FK_INACarrera_AaInstitutoAprendizajeNacional]
GO
ALTER TABLE [dbo].[INACarrera]  WITH CHECK ADD  CONSTRAINT [FK_INACarrera_Carreras] FOREIGN KEY([idCarrera])
REFERENCES [dbo].[Carreras] ([id])
GO
ALTER TABLE [dbo].[INACarrera] CHECK CONSTRAINT [FK_INACarrera_Carreras]
GO
ALTER TABLE [dbo].[LaboralCarrera]  WITH CHECK ADD  CONSTRAINT [FK_LaboralCarrera_Aalaborales] FOREIGN KEY([idLaboral])
REFERENCES [dbo].[Aalaborales] ([id])
GO
ALTER TABLE [dbo].[LaboralCarrera] CHECK CONSTRAINT [FK_LaboralCarrera_Aalaborales]
GO
ALTER TABLE [dbo].[LaboralCarrera]  WITH CHECK ADD  CONSTRAINT [FK_LaboralCarrera_Carreras] FOREIGN KEY([idCarrera])
REFERENCES [dbo].[Carreras] ([id])
GO
ALTER TABLE [dbo].[LaboralCarrera] CHECK CONSTRAINT [FK_LaboralCarrera_Carreras]
GO
ALTER TABLE [dbo].[Rolpermiso]  WITH CHECK ADD  CONSTRAINT [FK_Rolpermiso_Permiso] FOREIGN KEY([idPermiso])
REFERENCES [dbo].[Permiso] ([id])
GO
ALTER TABLE [dbo].[Rolpermiso] CHECK CONSTRAINT [FK_Rolpermiso_Permiso]
GO
ALTER TABLE [dbo].[Rolpermiso]  WITH CHECK ADD  CONSTRAINT [FK_Rolpermiso_Rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([id])
GO
ALTER TABLE [dbo].[Rolpermiso] CHECK CONSTRAINT [FK_Rolpermiso_Rol]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Rol]
GO
USE [master]
GO
ALTER DATABASE [SAU_BD] SET  READ_WRITE 
GO
