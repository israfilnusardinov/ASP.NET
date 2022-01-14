USE [DekorasyonWeb]
GO
/****** Object:  Table [dbo].[Adres]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adresler] [nvarchar](max) NOT NULL,
	[Tanım] [nvarchar](50) NOT NULL,
	[SiraNo] [int] NOT NULL,
	[Durum] [int] NOT NULL,
 CONSTRAINT [PK_Adres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AltMenu]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AltMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NOT NULL,
	[SEOLink] [nvarchar](max) NOT NULL,
	[Icerik] [nvarchar](max) NULL,
	[Durum] [int] NOT NULL,
	[SiraNo] [int] NOT NULL,
	[Gorsel] [nvarchar](max) NULL,
	[MenuId] [int] NOT NULL,
 CONSTRAINT [PK_AltMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalismaSaatleri]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalismaSaatleri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AcilisSaat] [nvarchar](50) NOT NULL,
	[KapanisSaat] [nvarchar](50) NOT NULL,
	[GunId] [int] NOT NULL,
 CONSTRAINT [PK_CalismaSaatleri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ekip]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ekip](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](50) NOT NULL,
	[Unvan] [nvarchar](50) NOT NULL,
	[SEOLink] [nvarchar](50) NOT NULL,
	[Gorsel] [nvarchar](50) NOT NULL,
	[SiraNo] [int] NOT NULL,
	[Icerik] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Ekip] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EkipGaleri]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EkipGaleri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EkipId] [int] NOT NULL,
	[SiraNo] [int] NOT NULL,
	[Gorsel] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_EkipGaleri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gunler]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gunler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Gunler1] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Gunler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Haber]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Haber](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NOT NULL,
	[Gorsel] [nvarchar](max) NOT NULL,
	[SEOLink] [nvarchar](max) NOT NULL,
	[Durum] [int] NOT NULL,
	[SiraNo] [int] NOT NULL,
	[Icerik] [nvarchar](max) NOT NULL,
	[HaberKategoriId] [int] NOT NULL,
 CONSTRAINT [PK_Haber] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HaberGaleri]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HaberGaleri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NOT NULL,
	[Gorsel] [nvarchar](max) NOT NULL,
	[HaberId] [int] NOT NULL,
 CONSTRAINT [PK_HaberGaleri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HaberKategori]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HaberKategori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NOT NULL,
	[SEOLink] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_HaberKategori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hizmet]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hizmet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NOT NULL,
	[SiraNo] [int] NOT NULL,
	[Durum] [int] NOT NULL,
	[Icerik] [nvarchar](max) NOT NULL,
	[Gorsel] [nvarchar](max) NULL,
	[SEOLink] [nvarchar](max) NOT NULL,
	[HizmetKategoriId] [int] NULL,
 CONSTRAINT [PK_Hizmet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HizmetGaleri]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HizmetGaleri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NOT NULL,
	[Gorsel] [nvarchar](max) NOT NULL,
	[HizmetId] [int] NOT NULL,
 CONSTRAINT [PK_HizmetGaleri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HizmetKategori]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HizmetKategori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NOT NULL,
	[Durum] [int] NOT NULL,
	[SiraNo] [int] NOT NULL,
	[Gorsel] [nvarchar](max) NULL,
	[SEOLink] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_HizmetKategori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomePage]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomePage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NOT NULL,
	[Icerik] [nvarchar](max) NOT NULL,
	[Gorsel] [nvarchar](max) NULL,
 CONSTRAINT [PK_HomePage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IletisimForm]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IletisimForm](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[Telefon] [nvarchar](50) NOT NULL,
	[Konu] [nvarchar](50) NOT NULL,
	[Icerik] [nvarchar](250) NOT NULL,
	[Tarih] [datetime] NOT NULL,
	[Durum] [int] NOT NULL,
 CONSTRAINT [PK_IletisimForm] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Tarih] [datetime] NOT NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mail]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mailler] [nvarchar](50) NOT NULL,
	[Tanım] [nvarchar](50) NOT NULL,
	[SiraNo] [int] NOT NULL,
	[Durum] [int] NOT NULL,
 CONSTRAINT [PK_Mail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NOT NULL,
	[SEOLink] [nvarchar](max) NULL,
	[Icerik] [nvarchar](max) NULL,
	[Durum] [int] NOT NULL,
	[SiraNo] [int] NOT NULL,
	[Gorsel] [nvarchar](max) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profil]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Unvan] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Profil] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NOT NULL,
	[AtlBaslik] [nvarchar](max) NULL,
	[Gorsel] [nvarchar](max) NULL,
	[SEOLink] [nvarchar](max) NOT NULL,
	[Durum] [int] NOT NULL,
	[SiraNo] [int] NOT NULL,
	[Icerik] [nvarchar](max) NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SosyalMedya]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SosyalMedya](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Facebook] [nvarchar](max) NULL,
	[Instagram] [nvarchar](max) NULL,
	[Twitter] [nvarchar](max) NULL,
	[YouTube] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_SosyalMedya] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefon]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TelefonNo] [nvarchar](50) NOT NULL,
	[Tanım] [nvarchar](50) NOT NULL,
	[SiraNo] [int] NOT NULL,
	[Durum] [int] NOT NULL,
 CONSTRAINT [PK_Telefon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urun]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NOT NULL,
	[Gorsel] [nvarchar](max) NOT NULL,
	[Icerik] [nvarchar](max) NULL,
	[SEOLink] [nvarchar](max) NULL,
	[SiraNo] [int] NULL,
	[Durum] [int] NULL,
	[Hit] [int] NOT NULL,
	[KategoriId] [int] NOT NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrunGaleri]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunGaleri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NOT NULL,
	[Gorsel] [nvarchar](max) NOT NULL,
	[UrunId] [int] NOT NULL,
	[SiraNo] [int] NOT NULL,
	[Durum] [int] NOT NULL,
 CONSTRAINT [PK_UrunGaleri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrunKategori]    Script Date: 13.01.2022 01:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunKategori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NOT NULL,
	[SiraNo] [int] NULL,
	[Durum] [int] NULL,
	[SEOLink] [nvarchar](max) NOT NULL,
	[Gorsel] [nvarchar](max) NULL,
 CONSTRAINT [PK_UrunKategori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adres] ON 
GO
INSERT [dbo].[Adres] ([Id], [Adresler], [Tanım], [SiraNo], [Durum]) VALUES (1, N'Kızılay Ankara', N'Merkez', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Adres] OFF
GO
SET IDENTITY_INSERT [dbo].[AltMenu] ON 
GO
INSERT [dbo].[AltMenu] ([Id], [Baslik], [SEOLink], [Icerik], [Durum], [SiraNo], [Gorsel], [MenuId]) VALUES (6, N'Bilişim', N'bilisim', N'What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 0, N'bilisim.jpg', 16)
GO
SET IDENTITY_INSERT [dbo].[AltMenu] OFF
GO
SET IDENTITY_INSERT [dbo].[Hizmet] ON 
GO
INSERT [dbo].[Hizmet] ([Id], [Baslik], [SiraNo], [Durum], [Icerik], [Gorsel], [SEOLink], [HizmetKategoriId]) VALUES (4, N'doga', 2, 1, N'manzaraya bak be', N'doga.jpg', N'doga', 5)
GO
INSERT [dbo].[Hizmet] ([Id], [Baslik], [SiraNo], [Durum], [Icerik], [Gorsel], [SEOLink], [HizmetKategoriId]) VALUES (5, N'Dodge Challenger SRT', 3, 1, N'747 HP', N'dodge-challenger-srt.jpg', N'dodge-challenger-srt', 4)
GO
INSERT [dbo].[Hizmet] ([Id], [Baslik], [SiraNo], [Durum], [Icerik], [Gorsel], [SEOLink], [HizmetKategoriId]) VALUES (7, N'Ağaç', 4, 1, N'Ahşap parke, yüzeyi düzgün, kalınlığı homojen, yan ve baş taraflarının birbirleri ile birleştirilebilmesini sağlayacak şekilde lamba ve zıvana açılmış olan prizma şeklindeki zemin kaplama malzemesidir.', N'agac.jpg', N'agac', 8)
GO
SET IDENTITY_INSERT [dbo].[Hizmet] OFF
GO
SET IDENTITY_INSERT [dbo].[HizmetKategori] ON 
GO
INSERT [dbo].[HizmetKategori] ([Id], [Baslik], [Durum], [SiraNo], [Gorsel], [SEOLink]) VALUES (4, N'Araba', 1, 2, N'araba.jpg', N'araba')
GO
INSERT [dbo].[HizmetKategori] ([Id], [Baslik], [Durum], [SiraNo], [Gorsel], [SEOLink]) VALUES (5, N'Dogaa', 1, 3, N'dogaa.jpg', N'dogaa')
GO
INSERT [dbo].[HizmetKategori] ([Id], [Baslik], [Durum], [SiraNo], [Gorsel], [SEOLink]) VALUES (8, N'Ahşap', 1, 4, N'ahsap.jpg', N'ahsap')
GO
SET IDENTITY_INSERT [dbo].[HizmetKategori] OFF
GO
SET IDENTITY_INSERT [dbo].[HomePage] ON 
GO
INSERT [dbo].[HomePage] ([Id], [Baslik], [Icerik], [Gorsel]) VALUES (1, N'Yeni Nesil Dekorasyon', N'Asma tavan nedir ?
Asma tavan, alçı yardımı ile oluşturulan, evlerde tavan dekorasyonu için kullanılan bir yapı malzemesidir. Işıklı ve ışıksız olarak kullanılabilir. Ayrıca çeşitli desenler ile evinize renk katabilir. Ofislerde ve evlerde tercih edilmektedir. Asma tavanlar yaratıcı dekorasyon ürünleridir. Asma tavan yapımı, genellikle büyük ev ve ofislerde yapılmaktadır. Işıklı modelleri ile günümüzde en çok tercih edilen tavan modelleri arasında yer almaktadır.', N'Yeni Nesil Dekorasyon2.jpg')
GO
SET IDENTITY_INSERT [dbo].[HomePage] OFF
GO
SET IDENTITY_INSERT [dbo].[IletisimForm] ON 
GO
INSERT [dbo].[IletisimForm] ([Id], [FullName], [Mail], [Telefon], [Konu], [Icerik], [Tarih], [Durum]) VALUES (3, N'osman gultekin', N'nusardinov99@gmail.com', N'6584854156', N'sa', N'AS', CAST(N'2022-01-11T21:34:02.303' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[IletisimForm] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanici] ON 
GO
INSERT [dbo].[Kullanici] ([Id], [UserName], [UserPassword]) VALUES (1, N'admin', N'12345')
GO
INSERT [dbo].[Kullanici] ([Id], [UserName], [UserPassword]) VALUES (2, N'reza', N'12345')
GO
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
GO
SET IDENTITY_INSERT [dbo].[Log] ON 
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (1, N'admin', CAST(N'2022-01-08T15:49:57.587' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (2, N'admin', CAST(N'2022-01-08T15:59:01.847' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (3, N'admin', CAST(N'2022-01-08T17:01:39.370' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (4, N'admin', CAST(N'2022-01-08T17:10:01.010' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (5, N'admin', CAST(N'2022-01-08T18:16:49.110' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (6, N'admin', CAST(N'2022-01-08T19:16:23.490' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (7, N'admin', CAST(N'2022-01-08T19:36:47.910' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (8, N'admin', CAST(N'2022-01-08T20:08:54.243' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (9, N'admin', CAST(N'2022-01-08T20:51:42.573' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (10, N'admin', CAST(N'2022-01-08T21:39:01.520' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (11, N'admin', CAST(N'2022-01-08T21:46:05.317' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (12, N'admin', CAST(N'2022-01-08T22:07:05.353' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (13, N'admin', CAST(N'2022-01-08T22:32:05.550' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (14, N'admin', CAST(N'2022-01-08T22:38:13.423' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (15, N'admin', CAST(N'2022-01-10T03:07:41.760' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (16, N'admin', CAST(N'2022-01-10T03:49:50.260' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (17, N'admin', CAST(N'2022-01-10T04:53:18.230' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (18, N'admin', CAST(N'2022-01-10T05:08:07.230' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (19, N'admin', CAST(N'2022-01-10T23:17:39.510' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (20, N'admin', CAST(N'2022-01-10T23:41:19.510' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (21, N'admin', CAST(N'2022-01-11T16:56:50.590' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (22, N'admin', CAST(N'2022-01-11T17:17:09.750' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (23, N'admin', CAST(N'2022-01-11T18:20:00.063' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (24, N'admin', CAST(N'2022-01-11T18:28:41.447' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (25, N'admin', CAST(N'2022-01-11T20:05:19.177' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (26, N'admin', CAST(N'2022-01-11T20:05:33.873' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (27, N'admin', CAST(N'2022-01-11T20:22:50.690' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (28, N'admin', CAST(N'2022-01-11T21:40:51.403' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (29, N'admin', CAST(N'2022-01-11T21:56:10.860' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (30, N'admin', CAST(N'2022-01-11T22:03:25.550' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (31, N'admin', CAST(N'2022-01-11T22:13:51.593' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (32, N'admin', CAST(N'2022-01-11T23:23:45.320' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (33, N'admin', CAST(N'2022-01-11T23:39:12.793' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (34, N'admin', CAST(N'2022-01-11T23:42:22.000' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (35, N'admin', CAST(N'2022-01-12T00:30:45.650' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (36, N'admin', CAST(N'2022-01-12T00:31:44.847' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (37, N'admin', CAST(N'2022-01-12T23:01:08.613' AS DateTime))
GO
INSERT [dbo].[Log] ([id], [Username], [Tarih]) VALUES (38, N'admin', CAST(N'2022-01-13T00:17:06.953' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Log] OFF
GO
SET IDENTITY_INSERT [dbo].[Mail] ON 
GO
INSERT [dbo].[Mail] ([Id], [Mailler], [Tanım], [SiraNo], [Durum]) VALUES (1, N'Dekorasyon@gmail.com', N'gmail.com', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Mail] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 
GO
INSERT [dbo].[Menu] ([Id], [Baslik], [SEOLink], [Icerik], [Durum], [SiraNo], [Gorsel]) VALUES (16, N'Kollektif', N'kollektif', NULL, 1, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Profil] ON 
GO
INSERT [dbo].[Profil] ([Id], [Unvan]) VALUES (1, N'muhasebe')
GO
SET IDENTITY_INSERT [dbo].[Profil] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 
GO
INSERT [dbo].[Slider] ([Id], [Baslik], [AtlBaslik], [Gorsel], [SEOLink], [Durum], [SiraNo], [Icerik]) VALUES (8, N'Mdff', N'Sunta', N'mdf.jpg', N'mdff', 1, 1, NULL)
GO
INSERT [dbo].[Slider] ([Id], [Baslik], [AtlBaslik], [Gorsel], [SEOLink], [Durum], [SiraNo], [Icerik]) VALUES (9, N'mdffff', NULL, N'mdffff.jpg', N'mdffff', 1, 2, NULL)
GO
INSERT [dbo].[Slider] ([Id], [Baslik], [AtlBaslik], [Gorsel], [SEOLink], [Durum], [SiraNo], [Icerik]) VALUES (11, N'Mutfak eşya', N'Mutfak takımı', N'mutfak-esya.jpg', N'mutfak-esya', 1, 3, N'Mdflam Nedir?
mutfak dolabı
Mdf nin ana maddesi ağaç tozları ve tutkalın kimyasal maddeler ile preslenmesi sayesinde elde edilir. İçi tozdan oluştuğu için oldukça sağlam bir malzemedir. Giderek gelişen teknoloji ile birlikte içeriğine yeni kimyasallar eklenerek sağlamlığı arttırılmıştır. Zaten sağlam olan mdf, mdflam sayesinde daha da sağlamlaştırılarak dayanıklı bir hale getirilmektedir. Tabii reçeteye uymak mdflam için de önemlidir. Reçeteye uyulmadan üretilen bazı mdflam ürünler suntalam dan daha dayanıksız olabilmektedir. Mdflam ürünler genellikle sağlam olması gereken mobilyalarda kullanılmaktadır. Örneğin; Gardırop kapıları, banyo dolapları, mutfak dolapları (genel olarak sık kullanıldığı için dolap kapılarında kullanılır.) gibi alanlarda  sıkça kullanılmaktadır. Ayrıca rutubetin fazla olduğu yerlerde de gönül rahatlığıyla kullanılmaktadır')
GO
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
SET IDENTITY_INSERT [dbo].[SosyalMedya] ON 
GO
INSERT [dbo].[SosyalMedya] ([Id], [Facebook], [Instagram], [Twitter], [YouTube], [Description]) VALUES (1, N'https://www.facebook.com/', N'https://www.instagram.com/', N'https://twitter.com/', N'https://www.youtube.com/', NULL)
GO
SET IDENTITY_INSERT [dbo].[SosyalMedya] OFF
GO
SET IDENTITY_INSERT [dbo].[Telefon] ON 
GO
INSERT [dbo].[Telefon] ([Id], [TelefonNo], [Tanım], [SiraNo], [Durum]) VALUES (1, N'0312 9 31 31', N'Merkez', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Telefon] OFF
GO
SET IDENTITY_INSERT [dbo].[Urun] ON 
GO
INSERT [dbo].[Urun] ([Id], [Baslik], [Gorsel], [Icerik], [SEOLink], [SiraNo], [Durum], [Hit], [KategoriId]) VALUES (18, N'Stoleş', N'stolesh.jpg', N'Mutfak dolapları', N'stoles', 1, 1, 0, 9)
GO
INSERT [dbo].[Urun] ([Id], [Baslik], [Gorsel], [Icerik], [SEOLink], [SiraNo], [Durum], [Hit], [KategoriId]) VALUES (19, N'Mdf Kapı', N'mdf.jpg', N'MDF kapı ne demek?
MDF kapı nedir

Mdf kapı; son derece kaliteli, üzerinde oluşturulan oyma ve desenleri hiçbir şekilde bozulmayan, işlenmesi kolay malzemeler ile yapılan bir kapı türüdür.', N'mdf-kapi', 3, 1, 0, 8)
GO
INSERT [dbo].[Urun] ([Id], [Baslik], [Gorsel], [Icerik], [SEOLink], [SiraNo], [Durum], [Hit], [KategoriId]) VALUES (21, N'Ahşap palet', N'ahsap-palet.png', N'Ahşap Palet; genellikle çam veya kavak kerestesi kullanılarak yapılmış, transpalet ve forkliftle paketlenmiş ürünlerin taşıması için kullanılan malzemelerdir. ... Standart tip ahşap paletler genellikle uluslararası taşımacılıkta konteyner veya kasalarda maksimum alan kullanımı için tasarlan', N'ahsap-palet', 3, 1, 0, 9)
GO
SET IDENTITY_INSERT [dbo].[Urun] OFF
GO
SET IDENTITY_INSERT [dbo].[UrunKategori] ON 
GO
INSERT [dbo].[UrunKategori] ([Id], [Baslik], [SiraNo], [Durum], [SEOLink], [Gorsel]) VALUES (8, N'Kapi', 1, 1, N'kapi', N'kapi.jpg')
GO
INSERT [dbo].[UrunKategori] ([Id], [Baslik], [SiraNo], [Durum], [SEOLink], [Gorsel]) VALUES (9, N'mutfak', 2, 1, N'mutfak', N'mutfak.jpg')
GO
SET IDENTITY_INSERT [dbo].[UrunKategori] OFF
GO
ALTER TABLE [dbo].[AltMenu]  WITH CHECK ADD  CONSTRAINT [FK_AltMenu_Menu] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([Id])
GO
ALTER TABLE [dbo].[AltMenu] CHECK CONSTRAINT [FK_AltMenu_Menu]
GO
ALTER TABLE [dbo].[CalismaSaatleri]  WITH CHECK ADD  CONSTRAINT [FK_CalismaSaatleri_Gunler] FOREIGN KEY([GunId])
REFERENCES [dbo].[Gunler] ([Id])
GO
ALTER TABLE [dbo].[CalismaSaatleri] CHECK CONSTRAINT [FK_CalismaSaatleri_Gunler]
GO
ALTER TABLE [dbo].[Haber]  WITH CHECK ADD  CONSTRAINT [FK_Haber_HaberKategori] FOREIGN KEY([HaberKategoriId])
REFERENCES [dbo].[HaberKategori] ([Id])
GO
ALTER TABLE [dbo].[Haber] CHECK CONSTRAINT [FK_Haber_HaberKategori]
GO
ALTER TABLE [dbo].[HaberGaleri]  WITH CHECK ADD  CONSTRAINT [FK_HaberGaleri_Haber] FOREIGN KEY([HaberId])
REFERENCES [dbo].[Haber] ([Id])
GO
ALTER TABLE [dbo].[HaberGaleri] CHECK CONSTRAINT [FK_HaberGaleri_Haber]
GO
ALTER TABLE [dbo].[Hizmet]  WITH CHECK ADD  CONSTRAINT [FK_Hizmet_HizmetKategori] FOREIGN KEY([HizmetKategoriId])
REFERENCES [dbo].[HizmetKategori] ([Id])
GO
ALTER TABLE [dbo].[Hizmet] CHECK CONSTRAINT [FK_Hizmet_HizmetKategori]
GO
ALTER TABLE [dbo].[HizmetGaleri]  WITH CHECK ADD  CONSTRAINT [FK_HizmetGaleri_Hizmet] FOREIGN KEY([HizmetId])
REFERENCES [dbo].[Hizmet] ([Id])
GO
ALTER TABLE [dbo].[HizmetGaleri] CHECK CONSTRAINT [FK_HizmetGaleri_Hizmet]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_UrunKategori] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[UrunKategori] ([Id])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_UrunKategori]
GO
ALTER TABLE [dbo].[UrunGaleri]  WITH CHECK ADD  CONSTRAINT [FK_UrunGaleri_Urun] FOREIGN KEY([UrunId])
REFERENCES [dbo].[Urun] ([Id])
GO
ALTER TABLE [dbo].[UrunGaleri] CHECK CONSTRAINT [FK_UrunGaleri_Urun]
GO
