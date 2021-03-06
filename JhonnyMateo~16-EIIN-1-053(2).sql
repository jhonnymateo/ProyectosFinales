/* Nombre:      Jhonny Mateo
   Matricula:   16-EIIN-1-053
   Seccion:     0541                              */

USE [master]
GO
/****** Object:  Database [Proyecto2]    Script Date: 15/04/2019 14:11:49 ******/
CREATE DATABASE [Proyecto2]

USE [Proyecto2]
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 15/04/2019 14:11:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacenes](
	[Codigo] [int] NOT NULL,
	[Lugar] [nvarchar](50) NULL,
	[Capacidad] [int] NULL,
 CONSTRAINT [PK_Table_2] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cajas]    Script Date: 15/04/2019 14:11:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cajas](
	[NumReferencia] [char](10) NOT NULL,
	[Contenido] [nvarchar](50) NULL,
	[Valor] [int] NULL,
	[Almacen] [int] NULL,
 CONSTRAINT [PK_Cajas] PRIMARY KEY CLUSTERED 
(
	[NumReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (1, N'Santo Domingo', 51313513)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (2, N'Santiago', 35152135)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (3, N'Puerto Plata', 53151351)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (4, N'Samana', 31515353)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (5, N'Barahona', 63153211)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (6, N'San Juan', 68465321)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (7, N'Azua', 86416531)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (8, N'San Pedro', 68463213)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (9, N'San Francisco', 64846846)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (10, N'La Vega', 64848446)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'1         ', N'Arroz', 200000, 10)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'10        ', N'Platano', 890000, 1)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'2         ', N'Habichuelas', 300000, 9)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'3         ', N'Maiz', 500000, 8)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'4         ', N'Ajo', 600000, 7)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'5         ', N'Gandules', 800000, 6)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'6         ', N'Tomates', 100000, 5)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'7         ', N'Ajies', 100000, 4)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'8         ', N'Granadillo', 200000, 3)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'9         ', N'Mangos', 600000, 2)
ALTER TABLE [dbo].[Cajas]  WITH CHECK ADD  CONSTRAINT [FK_Cajas_Almacenes] FOREIGN KEY([Almacen])
REFERENCES [dbo].[Almacenes] ([Codigo])
GO
ALTER TABLE [dbo].[Cajas] CHECK CONSTRAINT [FK_Cajas_Almacenes]
GO
USE [master]
GO
ALTER DATABASE [Proyecto2] SET  READ_WRITE 
GO
