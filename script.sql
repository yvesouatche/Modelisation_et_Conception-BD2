USE [elmassar_db]
GO
/****** Object:  Table [dbo].[Agence]    Script Date: 18/02/2022 16:30:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agence](
	[id_agence] [int] NOT NULL,
	[nom] [varchar](255) NULL,
	[adresse] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_agence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorie_Chambre]    Script Date: 18/02/2022 16:30:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorie_Chambre](
	[id_catech] [int] NOT NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_catech] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorie_Hotel]    Script Date: 18/02/2022 16:30:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorie_Hotel](
	[code] [int] NOT NULL,
	[Nb_etoile] [int] NULL,
	[Caracteristique] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chambre]    Script Date: 18/02/2022 16:30:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chambre](
	[num_chambre] [int] NOT NULL,
	[num_telephone] [int] NULL,
	[id_hotel] [int] NULL,
	[id_catech] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_chambre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 18/02/2022 16:30:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[id_clt] [int] NOT NULL,
	[nom] [varchar](255) NULL,
	[prenom] [varchar](255) NULL,
	[adresse] [varchar](255) NULL,
	[ville] [varchar](255) NULL,
	[codepostal] [varchar](255) NULL,
	[pays] [varchar](255) NULL,
	[telephone] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[num_facture] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_clt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consommation]    Script Date: 18/02/2022 16:30:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consommation](
	[num_conso] [int] NOT NULL,
	[DateConso] [date] NULL,
	[HeureConso] [datetime] NULL,
	[id_clt] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_conso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enregistrer]    Script Date: 18/02/2022 16:30:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enregistrer](
	[num_conso] [int] NOT NULL,
	[id_hotel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facture]    Script Date: 18/02/2022 16:30:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facture](
	[num_facture] [int] NOT NULL,
	[prix] [float] NULL,
	[quantite] [int] NULL,
	[id_hotel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_facture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 18/02/2022 16:30:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[id_hotel] [int] NOT NULL,
	[Nom] [varchar](255) NULL,
	[Adresse] [varchar](255) NULL,
	[CPH] [varchar](255) NULL,
	[Telephone] [int] NULL,
	[code] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_hotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prestation]    Script Date: 18/02/2022 16:30:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestation](
	[id_prestation] [int] NOT NULL,
	[Designation] [varchar](255) NULL,
	[id_hotel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_prestation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prester]    Script Date: 18/02/2022 16:30:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prester](
	[id_clt] [int] NOT NULL,
	[id_prestation] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 18/02/2022 16:30:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[num_reservation] [int] NOT NULL,
	[DateDebut] [date] NULL,
	[DateFin] [date] NULL,
	[DatePayeArres] [date] NULL,
	[MontantArres] [date] NULL,
	[id_agence] [int] NULL,
	[num_chambre] [int] NULL,
	[id_clt] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_reservation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chambre]  WITH CHECK ADD FOREIGN KEY([id_catech])
REFERENCES [dbo].[Categorie_Chambre] ([id_catech])
GO
ALTER TABLE [dbo].[Chambre]  WITH CHECK ADD FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotel] ([id_hotel])
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD FOREIGN KEY([num_facture])
REFERENCES [dbo].[Facture] ([num_facture])
GO
ALTER TABLE [dbo].[Consommation]  WITH CHECK ADD FOREIGN KEY([id_clt])
REFERENCES [dbo].[Client] ([id_clt])
GO
ALTER TABLE [dbo].[Enregistrer]  WITH CHECK ADD FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotel] ([id_hotel])
GO
ALTER TABLE [dbo].[Enregistrer]  WITH CHECK ADD FOREIGN KEY([num_conso])
REFERENCES [dbo].[Consommation] ([num_conso])
GO
ALTER TABLE [dbo].[Facture]  WITH CHECK ADD FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotel] ([id_hotel])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([code])
REFERENCES [dbo].[Categorie_Hotel] ([code])
GO
ALTER TABLE [dbo].[Prestation]  WITH CHECK ADD FOREIGN KEY([id_hotel])
REFERENCES [dbo].[Hotel] ([id_hotel])
GO
ALTER TABLE [dbo].[Prester]  WITH CHECK ADD FOREIGN KEY([id_clt])
REFERENCES [dbo].[Client] ([id_clt])
GO
ALTER TABLE [dbo].[Prester]  WITH CHECK ADD FOREIGN KEY([id_prestation])
REFERENCES [dbo].[Prestation] ([id_prestation])
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([id_agence])
REFERENCES [dbo].[Agence] ([id_agence])
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([id_clt])
REFERENCES [dbo].[Client] ([id_clt])
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([num_chambre])
REFERENCES [dbo].[Chambre] ([num_chambre])
GO
