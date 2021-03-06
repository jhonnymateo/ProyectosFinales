/* Nombre:      Jhonny Mateo
   Matricula:   16-EIIN-1-053
   Seccion:     0541                              */

USE [master]
GO
/****** Object:  Database [Proyecto1]    Script Date: 15/04/2019 13:51:39 ******/
CREATE DATABASE [Proyecto1]

USE [Proyecto1]
GO
/****** Object:  Table [dbo].[Despachos]    Script Date: 15/04/2019 13:51:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Despachos](
	[Numero] [int] NOT NULL,
	[Capacidad] [int] NULL,
 CONSTRAINT [PK_Despachos] PRIMARY KEY CLUSTERED 
(
	[Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Directores]    Script Date: 15/04/2019 13:51:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Directores](
	[DNI] [varchar](50) NOT NULL,
	[NomApels] [nvarchar](50) NULL,
	[DNIJefe] [varchar](50) NULL,
	[Despacho] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (1, 64655161)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (2, 61351134)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (3, 65165313)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (4, 53512151)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (5, 68484682)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (6, 38453113)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (7, 84385121)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (8, 51351264)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (9, 46846461)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (10, 61561166)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'1', N'Alturo Matos', N'10', 10)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'10', N'Alberto Perez', N'1', 1)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'2', N'Maria Pineda', N'9', 9)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'3', N'Natanael Ruiz', N'8', 8)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'4', N'Amalia Cruz', N'7', 7)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'5', N'Leidy Betances', N'6', 6)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'6', N'Laura Mella', N'5', 5)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'7', N'Paul Feliz', N'4', 4)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'8', N'Robert Vicente', N'3', 3)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'9', N'Tania Olivero', N'2', 2)
ALTER TABLE [dbo].[Directores]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_Despachos] FOREIGN KEY([Despacho])
REFERENCES [dbo].[Despachos] ([Numero])
GO
ALTER TABLE [dbo].[Directores] CHECK CONSTRAINT [FK_Table_1_Despachos]
GO
ALTER TABLE [dbo].[Directores]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_Table_1] FOREIGN KEY([DNIJefe])
REFERENCES [dbo].[Directores] ([DNI])
GO
ALTER TABLE [dbo].[Directores] CHECK CONSTRAINT [FK_Table_1_Table_1]
GO
USE [master]
GO
ALTER DATABASE [Proyecto1] SET  READ_WRITE 
GO
