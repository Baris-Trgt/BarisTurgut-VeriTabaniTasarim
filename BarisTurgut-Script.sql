USE [SQL VİZE]
GO
/****** Object:  Table [dbo].[bolumler]    Script Date: 7.12.2020 00:21:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bolumler](
	[BolumNo] [int] NOT NULL,
	[BolumAdi] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[BolumNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dersler]    Script Date: 7.12.2020 00:21:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dersler](
	[DersNo] [int] NOT NULL,
	[DersAdi] [nvarchar](20) NOT NULL,
	[BolumNo] [int] NOT NULL,
	[OkulAdi] [nvarchar](20) NULL,
	[OgrenciNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DersNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notlar]    Script Date: 7.12.2020 00:21:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notlar](
	[OgrenciNo] [int] NOT NULL,
	[DersNo] [int] NOT NULL,
	[Vize] [int] NULL,
	[Final] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OgrenciNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogrenci]    Script Date: 7.12.2020 00:21:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogrenci](
	[OgrenciNo] [int] NOT NULL,
	[Adi] [nvarchar](20) NOT NULL,
	[Soyad] [nvarchar](20) NOT NULL,
	[Cinsiyet] [nvarchar](20) NULL,
	[DogumTarihi] [date] NULL,
	[BolumNo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OgrenciNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[bolumler] ([BolumNo], [BolumAdi]) VALUES (400, N'Yazılım Mühendislği')
INSERT [dbo].[bolumler] ([BolumNo], [BolumAdi]) VALUES (500, N'Bilgisayar Mühendisliği')
GO
INSERT [dbo].[dersler] ([DersNo], [DersAdi], [BolumNo], [OkulAdi], [OgrenciNo]) VALUES (5, N'VeriTabanı', 400, N'Okan Üniversitesi', 40)
INSERT [dbo].[dersler] ([DersNo], [DersAdi], [BolumNo], [OkulAdi], [OgrenciNo]) VALUES (10, N'C#', 400, N'Okan Üniversitesi', 50)
INSERT [dbo].[dersler] ([DersNo], [DersAdi], [BolumNo], [OkulAdi], [OgrenciNo]) VALUES (20, N'Python', 400, N'Okan Üniversitesi', 60)
INSERT [dbo].[dersler] ([DersNo], [DersAdi], [BolumNo], [OkulAdi], [OgrenciNo]) VALUES (30, N'Java', 400, N'Okan Üniversitesi', 30)
INSERT [dbo].[dersler] ([DersNo], [DersAdi], [BolumNo], [OkulAdi], [OgrenciNo]) VALUES (40, N'Fizik', 400, N'Okan Üniversitesi', 20)
INSERT [dbo].[dersler] ([DersNo], [DersAdi], [BolumNo], [OkulAdi], [OgrenciNo]) VALUES (50, N'Matematik', 500, N'Okan Üniversitesi', 10)
INSERT [dbo].[dersler] ([DersNo], [DersAdi], [BolumNo], [OkulAdi], [OgrenciNo]) VALUES (60, N'Algoritma', 500, N'Okan Üniversitesi', 70)
INSERT [dbo].[dersler] ([DersNo], [DersAdi], [BolumNo], [OkulAdi], [OgrenciNo]) VALUES (65, N'JavaScript', 500, N'Okan Üniversitesi', 80)
INSERT [dbo].[dersler] ([DersNo], [DersAdi], [BolumNo], [OkulAdi], [OgrenciNo]) VALUES (70, N'React Native', 500, N'Okan Üniversitesi', 90)
INSERT [dbo].[dersler] ([DersNo], [DersAdi], [BolumNo], [OkulAdi], [OgrenciNo]) VALUES (99, N'SiberGüvenlik', 500, N'Okan Üniversitesi', 100)
GO
INSERT [dbo].[notlar] ([OgrenciNo], [DersNo], [Vize], [Final]) VALUES (10, 50, 80, 95)
INSERT [dbo].[notlar] ([OgrenciNo], [DersNo], [Vize], [Final]) VALUES (20, 99, 9, 44)
INSERT [dbo].[notlar] ([OgrenciNo], [DersNo], [Vize], [Final]) VALUES (30, 70, 45, 65)
INSERT [dbo].[notlar] ([OgrenciNo], [DersNo], [Vize], [Final]) VALUES (40, 65, 71, 61)
INSERT [dbo].[notlar] ([OgrenciNo], [DersNo], [Vize], [Final]) VALUES (50, 60, 75, 74)
INSERT [dbo].[notlar] ([OgrenciNo], [DersNo], [Vize], [Final]) VALUES (60, 20, 88, 17)
INSERT [dbo].[notlar] ([OgrenciNo], [DersNo], [Vize], [Final]) VALUES (70, 10, 100, 98)
INSERT [dbo].[notlar] ([OgrenciNo], [DersNo], [Vize], [Final]) VALUES (80, 5, 35, 65)
INSERT [dbo].[notlar] ([OgrenciNo], [DersNo], [Vize], [Final]) VALUES (90, 30, 32, 56)
INSERT [dbo].[notlar] ([OgrenciNo], [DersNo], [Vize], [Final]) VALUES (100, 40, 68, 66)
GO
INSERT [dbo].[ogrenci] ([OgrenciNo], [Adi], [Soyad], [Cinsiyet], [DogumTarihi], [BolumNo]) VALUES (10, N'Baris', N'Turgut', N'Erkek', CAST(N'2001-01-14' AS Date), 500)
INSERT [dbo].[ogrenci] ([OgrenciNo], [Adi], [Soyad], [Cinsiyet], [DogumTarihi], [BolumNo]) VALUES (20, N'Sefa', N'Ay', N'Erkek', CAST(N'2001-01-18' AS Date), 500)
INSERT [dbo].[ogrenci] ([OgrenciNo], [Adi], [Soyad], [Cinsiyet], [DogumTarihi], [BolumNo]) VALUES (30, N'Melis', N'Güngör', N'Kız', CAST(N'2001-10-03' AS Date), 500)
INSERT [dbo].[ogrenci] ([OgrenciNo], [Adi], [Soyad], [Cinsiyet], [DogumTarihi], [BolumNo]) VALUES (40, N'Eda', N'Nur', N'Kız', CAST(N'2001-05-25' AS Date), 500)
INSERT [dbo].[ogrenci] ([OgrenciNo], [Adi], [Soyad], [Cinsiyet], [DogumTarihi], [BolumNo]) VALUES (50, N'Mert', N'Aslan', N'Erkek', CAST(N'2001-07-16' AS Date), 500)
INSERT [dbo].[ogrenci] ([OgrenciNo], [Adi], [Soyad], [Cinsiyet], [DogumTarihi], [BolumNo]) VALUES (60, N'Nisa', N'Yılmaz', N'Kız', CAST(N'2001-02-14' AS Date), 400)
INSERT [dbo].[ogrenci] ([OgrenciNo], [Adi], [Soyad], [Cinsiyet], [DogumTarihi], [BolumNo]) VALUES (70, N'Emir', N'Kuru', N'Erkek', CAST(N'2001-11-20' AS Date), 400)
INSERT [dbo].[ogrenci] ([OgrenciNo], [Adi], [Soyad], [Cinsiyet], [DogumTarihi], [BolumNo]) VALUES (80, N'Okan', N'Serbes', N'Erkek', CAST(N'2001-12-12' AS Date), 400)
INSERT [dbo].[ogrenci] ([OgrenciNo], [Adi], [Soyad], [Cinsiyet], [DogumTarihi], [BolumNo]) VALUES (90, N'Elif', N'Oznur', N'Kız', CAST(N'2001-04-23' AS Date), 400)
INSERT [dbo].[ogrenci] ([OgrenciNo], [Adi], [Soyad], [Cinsiyet], [DogumTarihi], [BolumNo]) VALUES (100, N'Aylin', N'Vural', N'Kız', CAST(N'2001-06-20' AS Date), 400)
GO
ALTER TABLE [dbo].[dersler]  WITH CHECK ADD  CONSTRAINT [FK_derslerogrenci] FOREIGN KEY([OgrenciNo])
REFERENCES [dbo].[ogrenci] ([OgrenciNo])
GO
ALTER TABLE [dbo].[dersler] CHECK CONSTRAINT [FK_derslerogrenci]
GO
ALTER TABLE [dbo].[notlar]  WITH CHECK ADD  CONSTRAINT [FK_notlardersler] FOREIGN KEY([DersNo])
REFERENCES [dbo].[dersler] ([DersNo])
GO
ALTER TABLE [dbo].[notlar] CHECK CONSTRAINT [FK_notlardersler]
GO
