CREATE DATABASE [E-BOOKERY]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'E-BOOKERY', FILENAME = N'F:\Apec\Base de datos\3RO Examen Final' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'E-BOOKERY_log', FILENAME = N'F:Apec\Base de datos\3RO Examen Final' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [E-BOOKERY] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [E-BOOKERY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [E-BOOKERY] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [E-BOOKERY] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [E-BOOKERY] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [E-BOOKERY] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [E-BOOKERY] SET ARITHABORT OFF 
GO
ALTER DATABASE [E-BOOKERY] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [E-BOOKERY] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [E-BOOKERY] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [E-BOOKERY] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [E-BOOKERY] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [E-BOOKERY] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [E-BOOKERY] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [E-BOOKERY] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [E-BOOKERY] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [E-BOOKERY] SET  DISABLE_BROKER 
GO
ALTER DATABASE [E-BOOKERY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [E-BOOKERY] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [E-BOOKERY] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [E-BOOKERY] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [E-BOOKERY] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [E-BOOKERY] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [E-BOOKERY] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [E-BOOKERY] SET RECOVERY FULL 
GO
ALTER DATABASE [E-BOOKERY] SET  MULTI_USER 
GO
ALTER DATABASE [E-BOOKERY] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [E-BOOKERY] SET DB_CHAINING OFF 
GO
ALTER DATABASE [E-BOOKERY] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [E-BOOKERY] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [E-BOOKERY] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'E-BOOKERY', N'ON'
GO
ALTER DATABASE [E-BOOKERY] SET QUERY_STORE = OFF
GO
USE [E-BOOKERY]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo](
	[IDArticulo] [nchar](10) NULL,
	[UPC] [int] NOT NULL,
 CONSTRAINT [PK_Articulo] PRIMARY KEY CLUSTERED 
(
	[UPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articulo DVD]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo DVD](
	[UPC] [int] NOT NULL,
	[IRSC] [int] NULL,
 CONSTRAINT [PK_Articulo DVD] PRIMARY KEY CLUSTERED 
(
	[UPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articulo Libro]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo Libro](
	[ID_AU] [int] NOT NULL,
	[UPC] [int] NOT NULL,
 CONSTRAINT [PK_Articulo Libro] PRIMARY KEY CLUSTERED 
(
	[ID_AU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articulo Proveedor]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo Proveedor](
	[NIF] [int] NOT NULL,
 CONSTRAINT [PK_Articulo Proveedor] PRIMARY KEY CLUSTERED 
(
	[NIF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticuloVideojuego]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloVideojuego](
	[UPC] [int] NULL,
	[ID_VideoJuegos] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor](
	[ID] [int] NOT NULL,
	[NOMBRE] [varchar](50) NULL,
 CONSTRAINT [PK_Autor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cantante]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cantante](
	[Id_CANTANTE] [int] NOT NULL,
 CONSTRAINT [PK_Cantante] PRIMARY KEY CLUSTERED 
(
	[Id_CANTANTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrito_Compra]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrito_Compra](
	[ID_CC] [int] NOT NULL,
	[ID_Cliente] [int] NULL,
	[Cantidad] [int] NULL,
	[UPC] [int] NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK_Carrito_Compra] PRIMARY KEY CLUSTERED 
(
	[ID_CC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[ID_Categoria] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descuento] [int] NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[ID_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaVideojuego]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaVideojuego](
	[ID_Videojuegos] [int] NULL,
	[ID_Categoria] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[CodigoPostal] [int] NOT NULL,
	[IsoProvincia] [int] NULL,
 CONSTRAINT [PK_Sector] PRIMARY KEY CLUSTERED 
(
	[CodigoPostal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ID_Cliente] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Nombre_Usuario] [varchar](50) NULL,
	[No._ID] [int] NULL,
	[Cedula] [int] NULL,
	[CodigoPostal] [int] NULL,
	[Correo] [varchar](50) NULL,
	[Clave] [varchar](50) NULL,
	[FechaRegistro] [date] NULL,
	[Punto_Regalo] [int] NULL,
	[Nick] [varchar](50) NULL,
	[ID_Tarjeta] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ID_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comentario]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentario](
	[ID_Comentario] [int] NOT NULL,
	[Comentario] [varchar](50) NULL,
	[Fecha] [date] NULL,
	[ID_Cliente] [int] NULL,
	[UPC] [int] NULL,
	[Pais] [varchar](50) NULL,
 CONSTRAINT [PK_Comentario] PRIMARY KEY CLUSTERED 
(
	[ID_Comentario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DVD]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DVD](
	[ISRC] [int] NOT NULL,
	[CANTANTE/GRUPOMUSICAL] [varchar](50) NULL,
	[TITULO] [varchar](50) NULL,
	[CANCIONES] [varchar](50) NULL,
	[PRODUCTORA] [varchar](50) NULL,
	[AÑO PUBLICACION] [date] NULL,
	[DISTRIBUIDOR] [varchar](50) NULL,
 CONSTRAINT [PK_DVD] PRIMARY KEY CLUSTERED 
(
	[ISRC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DVD_Categoria]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DVD_Categoria](
	[ISRC] [int] NOT NULL,
	[ID_CATEGORIA] [int] NULL,
 CONSTRAINT [PK_DVD_Categoria] PRIMARY KEY CLUSTERED 
(
	[ISRC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DVDCantante]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DVDCantante](
	[ID_DVDC] [int] NOT NULL,
	[ISRC] [int] NOT NULL,
 CONSTRAINT [PK_DVDCantante] PRIMARY KEY CLUSTERED 
(
	[ID_DVDC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Edicion]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Edicion](
	[Num_Edicion] [int] NOT NULL,
	[Tipo] [int] NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK_Edicion] PRIMARY KEY CLUSTERED 
(
	[Num_Edicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EdicionAudioLibro]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EdicionAudioLibro](
	[ID_AL] [int] NOT NULL,
	[ISBN] [int] NULL,
	[Num_Edicion] [int] NULL,
 CONSTRAINT [PK_EdicionAudioLibro] PRIMARY KEY CLUSTERED 
(
	[ID_AL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EdicionElectronica]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EdicionElectronica](
	[idEE] [int] NOT NULL,
	[IBSN] [int] NULL,
	[Num_Edicion] [int] NULL,
 CONSTRAINT [PK_EdicionElectronica] PRIMARY KEY CLUSTERED 
(
	[idEE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EdicionImpr.]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EdicionImpr.](
	[Id_EI] [nchar](10) NOT NULL,
	[IBSN] [int] NULL,
	[Num_Edicion] [int] NULL,
	[TipoImpresa] [varchar](50) NULL,
 CONSTRAINT [PK_EdicionImpr.] PRIMARY KEY CLUSTERED 
(
	[Id_EI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro](
	[ISBN] [int] NOT NULL,
	[EDITORIAL] [varchar](20) NULL,
	[AUTORES] [varchar](50) NULL,
	[AÑOPUBLICACION] [date] NULL,
	[CATEGORIA] [ntext] NULL,
	[IDIOMA] [varchar](20) NULL,
	[RESUMEN] [varchar](50) NULL,
 CONSTRAINT [PK_Libro] PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libro Categoria]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro Categoria](
	[IBSN] [int] NULL,
	[IDCATEGORIA] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libro_Autor]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro_Autor](
	[idlibroautor] [int] NOT NULL,
	[ISBN] [int] NULL,
	[Autor_Id] [int] NULL,
 CONSTRAINT [PK_Libro_Autor] PRIMARY KEY CLUSTERED 
(
	[idlibroautor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Metodo_Pago]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Metodo_Pago](
	[Medio_Pago_ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Metodo_Pago] PRIMARY KEY CLUSTERED 
(
	[Medio_Pago_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[IsoPais] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[IsoPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[No_Pedido] [int] NOT NULL,
	[ID_Cliente] [int] NULL,
	[Fecha_Expedicion] [date] NULL,
	[Fecha_Cargo] [date] NULL,
	[Fecha_Pedido] [date] NULL,
	[Estado] [varchar](50) NULL,
	[Cantidad] [int] NULL,
	[Subtotal] [int] NULL,
	[SubtotalID] [int] NULL,
	[Importe_Total] [int] NULL,
	[Importe_Total_Id] [int] NULL,
	[Medio_Pago_ID] [int] NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[No_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoDetalle]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoDetalle](
	[No_Pedido] [int] NULL,
	[UPC] [int] NULL,
	[Cantidad] [int] NULL,
	[Precio] [money] NULL,
	[Descuento] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[NIF] [int] NOT NULL,
	[ID_PROVEEDOR] [int] NOT NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[ID_PROVEEDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[Iso_Provincia] [int] NOT NULL,
	[Nombre_Provincia] [varchar](50) NULL,
	[Iso_Pais] [int] NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[Iso_Provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserva](
	[No_Reseva] [int] NOT NULL,
	[NIF] [int] NULL,
	[UPC] [int] NULL,
	[ID_CLIENTE] [int] NULL,
	[FECHA] [date] NULL,
	[TOTALRESERVA] [int] NULL,
 CONSTRAINT [PK_Reserva] PRIMARY KEY CLUSTERED 
(
	[No_Reseva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarjeta]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarjeta](
	[ID_Tarjeta] [int] NOT NULL,
	[CVV2] [int] NULL,
	[Fecha_Expiracion] [int] NULL,
	[Estado] [int] NULL,
	[No_Tarjeta] [int] NULL,
 CONSTRAINT [PK_Tarjeta] PRIMARY KEY CLUSTERED 
(
	[ID_Tarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoJuego]    Script Date: 4/4/2020 6:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoJuego](
	[ID_VideoJuegos] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Plataforma] [varchar](50) NULL,
	[FechaPublicacion] [date] NULL,
	[Num_Ejemplo] [int] NULL,
	[Empresa] [varchar](50) NULL,
	[Num_Ejemplares] [int] NULL,
 CONSTRAINT [PK_VideoJuego] PRIMARY KEY CLUSTERED 
(
	[ID_VideoJuegos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Articulo]  WITH CHECK ADD  CONSTRAINT [FK_Articulo_Articulo Proveedor] FOREIGN KEY([UPC])
REFERENCES [dbo].[Articulo Proveedor] ([NIF])
GO
ALTER TABLE [dbo].[Articulo] CHECK CONSTRAINT [FK_Articulo_Articulo Proveedor]
GO
ALTER TABLE [dbo].[Articulo DVD]  WITH CHECK ADD  CONSTRAINT [FK_Articulo DVD_Reserva] FOREIGN KEY([IRSC])
REFERENCES [dbo].[Reserva] ([No_Reseva])
GO
ALTER TABLE [dbo].[Articulo DVD] CHECK CONSTRAINT [FK_Articulo DVD_Reserva]
GO
ALTER TABLE [dbo].[Articulo Libro]  WITH CHECK ADD  CONSTRAINT [FK_Articulo Libro_Articulo] FOREIGN KEY([UPC])
REFERENCES [dbo].[Articulo] ([UPC])
GO
ALTER TABLE [dbo].[Articulo Libro] CHECK CONSTRAINT [FK_Articulo Libro_Articulo]
GO
ALTER TABLE [dbo].[Articulo Libro]  WITH CHECK ADD  CONSTRAINT [FK_Articulo Libro_Edicion] FOREIGN KEY([UPC])
REFERENCES [dbo].[Edicion] ([Num_Edicion])
GO
ALTER TABLE [dbo].[Articulo Libro] CHECK CONSTRAINT [FK_Articulo Libro_Edicion]
GO
ALTER TABLE [dbo].[ArticuloVideojuego]  WITH CHECK ADD  CONSTRAINT [FK_ArticuloVideojuego_VideoJuego] FOREIGN KEY([ID_VideoJuegos])
REFERENCES [dbo].[VideoJuego] ([ID_VideoJuegos])
GO
ALTER TABLE [dbo].[ArticuloVideojuego] CHECK CONSTRAINT [FK_ArticuloVideojuego_VideoJuego]
GO
ALTER TABLE [dbo].[Carrito_Compra]  WITH CHECK ADD  CONSTRAINT [FK_Carrito_Compra_Articulo] FOREIGN KEY([UPC])
REFERENCES [dbo].[Articulo] ([UPC])
GO
ALTER TABLE [dbo].[Carrito_Compra] CHECK CONSTRAINT [FK_Carrito_Compra_Articulo]
GO
ALTER TABLE [dbo].[Ciudad]  WITH CHECK ADD  CONSTRAINT [FK_Sector_Provincia] FOREIGN KEY([IsoProvincia])
REFERENCES [dbo].[Provincia] ([Iso_Provincia])
GO
ALTER TABLE [dbo].[Ciudad] CHECK CONSTRAINT [FK_Sector_Provincia]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Sector] FOREIGN KEY([CodigoPostal])
REFERENCES [dbo].[Ciudad] ([CodigoPostal])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Sector]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Tarjeta] FOREIGN KEY([ID_Tarjeta])
REFERENCES [dbo].[Tarjeta] ([ID_Tarjeta])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Tarjeta]
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_Articulo] FOREIGN KEY([UPC])
REFERENCES [dbo].[Articulo] ([UPC])
GO
ALTER TABLE [dbo].[Comentario] CHECK CONSTRAINT [FK_Comentario_Articulo]
GO
ALTER TABLE [dbo].[DVD_Categoria]  WITH CHECK ADD  CONSTRAINT [FK_DVD_Categoria_Categoria] FOREIGN KEY([ISRC])
REFERENCES [dbo].[Categoria] ([ID_Categoria])
GO
ALTER TABLE [dbo].[DVD_Categoria] CHECK CONSTRAINT [FK_DVD_Categoria_Categoria]
GO
ALTER TABLE [dbo].[DVDCantante]  WITH CHECK ADD  CONSTRAINT [FK_DVDCantante_Cantante] FOREIGN KEY([ISRC])
REFERENCES [dbo].[Cantante] ([Id_CANTANTE])
GO
ALTER TABLE [dbo].[DVDCantante] CHECK CONSTRAINT [FK_DVDCantante_Cantante]
GO
ALTER TABLE [dbo].[DVDCantante]  WITH CHECK ADD  CONSTRAINT [FK_DVDCantante_DVD] FOREIGN KEY([ISRC])
REFERENCES [dbo].[DVD] ([ISRC])
GO
ALTER TABLE [dbo].[DVDCantante] CHECK CONSTRAINT [FK_DVDCantante_DVD]
GO
ALTER TABLE [dbo].[EdicionAudioLibro]  WITH CHECK ADD  CONSTRAINT [FK_EdicionAudioLibro_Edicion] FOREIGN KEY([Num_Edicion])
REFERENCES [dbo].[Edicion] ([Num_Edicion])
GO
ALTER TABLE [dbo].[EdicionAudioLibro] CHECK CONSTRAINT [FK_EdicionAudioLibro_Edicion]
GO
ALTER TABLE [dbo].[EdicionElectronica]  WITH CHECK ADD  CONSTRAINT [FK_EdicionElectronica_Edicion] FOREIGN KEY([Num_Edicion])
REFERENCES [dbo].[Edicion] ([Num_Edicion])
GO
ALTER TABLE [dbo].[EdicionElectronica] CHECK CONSTRAINT [FK_EdicionElectronica_Edicion]
GO
ALTER TABLE [dbo].[EdicionElectronica]  WITH CHECK ADD  CONSTRAINT [FK_EdicionElectronica_Libro] FOREIGN KEY([IBSN])
REFERENCES [dbo].[Libro] ([ISBN])
GO
ALTER TABLE [dbo].[EdicionElectronica] CHECK CONSTRAINT [FK_EdicionElectronica_Libro]
GO
ALTER TABLE [dbo].[EdicionImpr.]  WITH CHECK ADD  CONSTRAINT [FK_EdicionImpr._Edicion] FOREIGN KEY([Num_Edicion])
REFERENCES [dbo].[Edicion] ([Num_Edicion])
GO
ALTER TABLE [dbo].[EdicionImpr.] CHECK CONSTRAINT [FK_EdicionImpr._Edicion]
GO
ALTER TABLE [dbo].[EdicionImpr.]  WITH CHECK ADD  CONSTRAINT [FK_EdicionImpr._Libro] FOREIGN KEY([IBSN])
REFERENCES [dbo].[Libro] ([ISBN])
GO
ALTER TABLE [dbo].[EdicionImpr.] CHECK CONSTRAINT [FK_EdicionImpr._Libro]
GO
ALTER TABLE [dbo].[Libro Categoria]  WITH CHECK ADD  CONSTRAINT [FK_Libro Categoria_Categoria] FOREIGN KEY([IDCATEGORIA])
REFERENCES [dbo].[Categoria] ([ID_Categoria])
GO
ALTER TABLE [dbo].[Libro Categoria] CHECK CONSTRAINT [FK_Libro Categoria_Categoria]
GO
ALTER TABLE [dbo].[Libro_Autor]  WITH CHECK ADD  CONSTRAINT [FK_Libro_Autor_Autor] FOREIGN KEY([Autor_Id])
REFERENCES [dbo].[Autor] ([ID])
GO
ALTER TABLE [dbo].[Libro_Autor] CHECK CONSTRAINT [FK_Libro_Autor_Autor]
GO
ALTER TABLE [dbo].[Libro_Autor]  WITH CHECK ADD  CONSTRAINT [FK_Libro_Autor_Libro] FOREIGN KEY([ISBN])
REFERENCES [dbo].[Libro] ([ISBN])
GO
ALTER TABLE [dbo].[Libro_Autor] CHECK CONSTRAINT [FK_Libro_Autor_Libro]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Cliente] FOREIGN KEY([ID_Cliente])
REFERENCES [dbo].[Cliente] ([ID_Cliente])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Cliente]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Metodo_Pago] FOREIGN KEY([Medio_Pago_ID])
REFERENCES [dbo].[Metodo_Pago] ([Medio_Pago_ID])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Metodo_Pago]
GO
ALTER TABLE [dbo].[PedidoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_PedidoDetalle_Pedido] FOREIGN KEY([No_Pedido])
REFERENCES [dbo].[Pedido] ([No_Pedido])
GO
ALTER TABLE [dbo].[PedidoDetalle] CHECK CONSTRAINT [FK_PedidoDetalle_Pedido]
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Proveedor_Articulo Proveedor] FOREIGN KEY([NIF])
REFERENCES [dbo].[Articulo Proveedor] ([NIF])
GO
ALTER TABLE [dbo].[Proveedor] CHECK CONSTRAINT [FK_Proveedor_Articulo Proveedor]
GO
ALTER TABLE [dbo].[Provincia]  WITH CHECK ADD  CONSTRAINT [FK_Provincia_Pais] FOREIGN KEY([Iso_Pais])
REFERENCES [dbo].[Pais] ([IsoPais])
GO
ALTER TABLE [dbo].[Provincia] CHECK CONSTRAINT [FK_Provincia_Pais]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Articulo Proveedor] FOREIGN KEY([NIF])
REFERENCES [dbo].[Articulo Proveedor] ([NIF])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Articulo Proveedor]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_DVD] FOREIGN KEY([NIF])
REFERENCES [dbo].[DVD] ([ISRC])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_DVD]
GO
USE [master]
GO
ALTER DATABASE [E-BOOKERY] SET  READ_WRITE 
GO