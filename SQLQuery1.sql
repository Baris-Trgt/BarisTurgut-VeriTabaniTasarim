

select *from ogrenci  

select * from dersler    

select * from notlar   



SELECT d.DersAdi,n.Vize,n.Final,n.OgrenciNo,n.DersNo
FROM notlar n
LEFT JOIN dersler d
ON n.DersNo = d.DersNo



SELECT * FROM bolumler                       
 

 SELECT o.BolumNo,b.BolumAdi
FROM ogrenci o
RIGHT JOIN bolumler b
ON b.BolumNo= o.BolumNo



SELECT o.Adi,o.Soyad,o.BolumNo,o.OgrenciNo,d.DersAdi,d.DersNo,d.OkulAdi
FROM ogrenci o 
INNER JOIN dersler d
ON o.OgrenciNo=d.OgrenciNo 


SELECT n.DersNo,n.OgrenciNo,n.Vize,n.Final,d.DersAdi
FROM notlar n
INNER JOIN dersler d
ON n.OgrenciNo=d.OgrenciNo


SELECT o.Adi,o.Soyad,o.OgrenciNo,n.DersNo,n.Vize,n.Final
FROM ogrenci o
INNER JOIN notlar n
ON o.OgrenciNo=n.OgrenciNo


SELECT o.Adi,o.Soyad,o.BolumNo,o.OgrenciNo,b.BolumAdi
FROM ogrenci o
INNER JOIN bolumler b
ON o.BolumNo=b.BolumNo






                                        
										--           KOD KISMI        --





CREATE TABLE ogrenci(       /* ogrenci tablosu olu�turdum  PRIMARY KEY olarak OgrenciNo olarak atad�m .Girilmesi gerekenleri alanlar� not null yapt�m */

OgrenciNo int NOT NULL,
Adi nvarchar(20) NOT NULL,
Soyad nvarchar(20) NOT NULL,
Cinsiyet nvarchar(20) NULL,
DogumTarihi date NULL,
BolumNo int NOT NULL,

 PRIMARY KEY CLUSTERED 
  (
 OgrenciNo
  ) ON [PRIMARY]


);


select *from ogrenci          /*   ogrenci  tablosunda bulunan alanlar� getirir   */


                                   --   ogrenci tablomun i�ini doldurdum     --

INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (10,'Baris','Turgut','Erkek','2001-01-14',500)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (20,'Sefa','Ay','Erkek','2001-01-18',500)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (30,'Melis','G�ng�r','K�z','2001-10-3',500)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (40,'Eda','Nur','K�z','2001-05-25',500)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (50,'Mert','Aslan','Erkek','2001-07-16',500)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (60,'Nisa','Y�lmaz','K�z','2001-02-14',400)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (70,'Emir','Kuru','Erkek','2001-11-20',400)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (80,'Okan','Serbes','Erkek','2001-12-12',400)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (90,'Elif','Oznur','K�z','2001-04-23',400)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (100,'Aylin','Vural','K�z','2001-06-20',400)






CREATE TABLE dersler (      /* dersler tablosu olu�turdum DersNo yu PRIMARY KEY olarak atad�m.Girilmesi gerekenleri alanlar� not null yapt�m */

DersNo int NOT NULL,
DersAdi nvarchar(20) NOT NULL,
BolumNo int NOT NULL,
OkulAdi nvarchar(20) NULL,
OgrenciNo int NULL,
 
 PRIMARY KEY CLUSTERED 
  (
 DersNo
  ) ON [PRIMARY]

);


select * from dersler      /*   dersler  tablosunda bulunan alanlar� getirir   */



                                 -- dersler tablosunun i�ini doldurdum --

INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (50,'Matematik',500,'Okan �niversitesi',10)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (40,'Fizik',400,'Okan �niversitesi',20)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (30,'Java',400,'Okan �niversitesi',30)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (5,'VeriTaban�',400,'Okan �niversitesi',40)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (10,'C#',400,'Okan �niversitesi',50)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (20,'Python',400,'Okan �niversitesi',60)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (60,'Algoritma',500,'Okan �niversitesi',70)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (65,'JavaScript',500,'Okan �niversitesi',80)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (70,'React Native',500,'Okan �niversitesi',90)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (99,'SiberG�venlik',500,'Okan �niversitesi',100)


/* dersler tablosunda de�i�iklik yapmak istedim , CONSTRAINT  �zellik ekledim ad�na FK_derslerogrenci dedim FOREIGN KEY alan� olarak da 
   OgrenciNo kolonunu referans alarak (derslerdeki OgrenciNo kolnunu referans al) dedim , referans etti�im tabloda ogrenci tablosunun OgrenciNo kolonu  */


ALTER TABLE dersler  WITH CHECK ADD  CONSTRAINT [FK_derslerogrenci] FOREIGN KEY([OgrenciNo])
REFERENCES ogrenci (OgrenciNo)
GO






CREATE TABLE notlar(    /* notlar tablosunu olu�turdum OgrenciNo yu PRIMARY KEY olarak atad�m.Girilmesi gereken alanlar� NOT NULL yapt�m*/

OgrenciNo int NOT NULL,
DersNo int NOT NULL,
Vize int NULL,
Final int NULL,

 PRIMARY KEY CLUSTERED 
  (
 OgrenciNo
 ) ON [PRIMARY]

);

select * from notlar     /*   notlar  tablosunda bulunan alanlar� getirir   */



 
                                          --   notlar tablomun i�ini doldurdum     -

INSERT INTO notlar (OgrenciNo,DersNo,Vize,Final) values (10,50,80,95)
INSERT INTO notlar (OgrenciNo,DersNo,Vize,Final) values (20,99,09,44)
INSERT INTO notlar (OgrenciNo,DersNo,Vize,Final) values (30,70,45,65)
INSERT INTO notlar (OgrenciNo,DersNo,Vize,Final) values (40,65,71,61)
INSERT INTO notlar (OgrenciNo,DersNo,Vize,Final) values (50,60,75,74)
INSERT INTO notlar (OgrenciNo,DersNo,Vize,Final) values (60,20,88,17)
INSERT INTO notlar (OgrenciNo,DersNo,Vize,Final) values (70,10,100,98)
INSERT INTO notlar (OgrenciNo,DersNo,Vize,Final) values (80,5,35,65)
INSERT INTO notlar (OgrenciNo,DersNo,Vize,Final) values (90,30,32,56)
INSERT INTO notlar (OgrenciNo,DersNo,Vize,Final) values (100,40,68,66)


/* notlar tablosunda de�i�iklik yapmak istedim ,  CONSTRAINT �zellik ekledim ad�na  FK_notlardersler dedim  FOREIGN KEY alan� olarak da
 DersNo kolonunu referans alarak (notlardaki DersNo kolonunu referans al) dedim referans etti�im tabloda dersler tablosunun DersNo kolonu  */


ALTER TABLE notlar  WITH CHECK ADD  CONSTRAINT [FK_notlardersler] FOREIGN KEY([DersNo])
REFERENCES dersler (DersNo)
GO



/* notlar tablosundaki b�t�n alanlar gelmesini istedim ve dersler tablosunda da sadece notlar tablosuyla
   kesi�en alanlar�n gelmesini istedim */

SELECT d.DersAdi,n.Vize,n.Final,n.OgrenciNo,n.DersNo
FROM notlar n
LEFT JOIN dersler d
ON n.DersNo = d.DersNo






CREATE TABLE bolumler(    /* bolumler tablosunu olu�turdum BolumNo yu PRIMARY KEY olarak atad�m. Girilmesi gereken yerleti NOTT NULL olarak atad�m      */

BolumNo int NOT NULL,
BolumAdi nvarchar(30) NULL

 PRIMARY KEY CLUSTERED 
  (
 BolumNo
  ) ON [PRIMARY]

);


SELECT * FROM bolumler   /*   bolumler  tablosunda bulunan alanlar� getirir   */




                                   --      bolumler tablosunun i�ini doldurdum      --

INSERT INTO bolumler (BolumNo,BolumAdi) VALUES (500,'Bilgisayar M�hendisli�i')
INSERT INTO bolumler (BolumNo,BolumAdi) Values (400,'Yaz�l�m M�hendisl�i')



/*  bolumler tablosundaki b�t�n alanlar�n gelmesini istedim ve ogrenci tablosunda da sadece bolumler
  tablosu ile kesi�en  alanlar�n gelmesini istedim . */


SELECT o.BolumNo,b.BolumAdi
FROM ogrenci o
RIGHT JOIN bolumler b
ON b.BolumNo= o.BolumNo






/*   a�a��da merkezi tablo olarak ogrenci tablosunu belirledim ve dersler tablosuna ba�lanmas�n� istedim daha sonra
     ko�ul olarak  ogrenci tablosunun OgrenciNo s�tunu  ile  dersler tablosunun da  OgrenciNo s�tunu e�it olmal�(olmak zorunda) ko�ulunu verdim.
     ogrenci alan�n�n Ad�,Soyad,BolumNoO,,OgrenciNo     ve          derslerin de  DersAdi,DersNo,OkulAdi al�n� getirmek istedim.  
	 iki tabloda kesi�enler = OgrenciNo     */


SELECT o.Adi,o.Soyad,o.BolumNo,o.OgrenciNo,d.DersAdi,d.DersNo,d.OkulAdi
FROM ogrenci o 
INNER JOIN dersler d
ON o.OgrenciNo=d.OgrenciNo 




/*   a�a��da merkezi tablo olarak notlar tablosunu belirledim ve dersler tablosuna ba�lanmas�n� istedim daha sonra 
     ko�ul olarak notlar tablosunun OgrenciNo s�tunu ile dersler tablosunun OgrenciNo s�tunu e�it olaml�(olmak zorunda) ko�ulunu verdim.
	 notlar alan�n�n DersNo,OgrenciNo,Vize,Final         ve       derslerin de DersAdi  alan�n� getirmek istedim  .        
	 iki tabloda kesi�enler = OgrenciNo   */



SELECT n.DersNo,n.OgrenciNo,n.Vize,n.Final,d.DersAdi
FROM notlar n
INNER JOIN dersler d
ON n.OgrenciNo=d.OgrenciNo




/*   a�a��da merkezi tablo olarak ogrenci tablosunu belirledim ve notlar tablosuna ba�lanmas�n� istedim daha sonra   
     ko�ul olarak notlar tablosunun OgrenciNO s�tunu ile ogrenci tablosunun OgrenciNo s�tunu e�it olamal�(olmak zorunda) ko�ulunu verdim.
	 ogrenci alan�n�n Adi,Soyad,OgrenciNo              ve       notlar alan�nda da  DersNo,Vize,Final alan�n� getirmek istedim. 
	 iki tabloda kesi�enler = OgrenciNo   */



SELECT o.Adi,o.Soyad,o.OgrenciNo,n.DersNo,n.Vize,n.Final
FROM ogrenci o
INNER JOIN notlar n
ON o.OgrenciNo=n.OgrenciNo





/*  a�a��da merkezi tablo olarak ogrenci tablosunu belirledim ve bolumler tablosuna ba�lanmas�n� istedim daha sonra 
    ko�ul olarak ogrenci tablosunun BolumNo s�tunu ile bolumler tablosunun BolumNo s�tunu e�it olmal�(olmak zorunda) ko�ulunu verdim.
	ogrenci alan�n�n Adi,Soyad,Bolumu,OgrenciNo     ve           bolumler alan�nda da BolumAdi alan�n� getirmek istedim    
	iki tabloda kesi�enler  = BolumNo  */




SELECT o.Adi,o.Soyad,o.BolumNo,o.OgrenciNo,b.BolumAdi
FROM ogrenci o
INNER JOIN bolumler b
ON o.BolumNo=b.BolumNo


