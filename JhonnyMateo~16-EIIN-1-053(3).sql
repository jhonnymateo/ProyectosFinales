/* Nombre:      Jhonny Mateo
   Matricula:   16-EIIN-1-053
   Seccion:     0541                              */

USE [master]
GO
/****** Object:  Database [Proyecto3]    Script Date: 15/04/2019 14:17:21 ******/
CREATE DATABASE [Proyecto3]
 
USE [Proyecto3]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 15/04/2019 14:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Precio] [int] NULL,
	[Fabricante] [int] NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fabricantes]    Script Date: 15/04/2019 14:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricantes](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Fabricantes] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (1, N'Jersey', 2500, 1)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (2, N'Calsonzillo', 800, 2)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (3, N'Medias', 1200, 3)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (4, N'Short', 4300, 4)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (5, N'Jean', 6000, 5)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (6, N'Abrigo', 5000, 6)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (7, N'Franela', 1000, 7)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (8, N'Camiseta', 3000, 8)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (9, N'Balon ', 2000, 9)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (10, N'Gorra', 12000, 10)
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (1, N'Gucci')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (2, N'Nike')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (3, N'Reebok')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (4, N'Balenciaga')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (5, N'Armany')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (6, N'Givenchi')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (7, N'Adiddas')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (8, N'Jordan')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (9, N'New Balance')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (10, N'Under Armour')
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Fabricantes] FOREIGN KEY([Fabricante])
REFERENCES [dbo].[Fabricantes] ([Codigo])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Fabricantes]
GO
USE [master]
GO
ALTER DATABASE [Proyecto3] SET  READ_WRITE 
GO
