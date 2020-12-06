

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





CREATE TABLE ogrenci(       /* ogrenci tablosu oluþturdum  PRIMARY KEY olarak OgrenciNo olarak atadým .Girilmesi gerekenleri alanlarý not null yaptým */

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


select *from ogrenci          /*   ogrenci  tablosunda bulunan alanlarý getirir   */


                                   --   ogrenci tablomun içini doldurdum     --

INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (10,'Baris','Turgut','Erkek','2001-01-14',500)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (20,'Sefa','Ay','Erkek','2001-01-18',500)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (30,'Melis','Güngör','Kýz','2001-10-3',500)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (40,'Eda','Nur','Kýz','2001-05-25',500)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (50,'Mert','Aslan','Erkek','2001-07-16',500)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (60,'Nisa','Yýlmaz','Kýz','2001-02-14',400)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (70,'Emir','Kuru','Erkek','2001-11-20',400)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (80,'Okan','Serbes','Erkek','2001-12-12',400)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (90,'Elif','Oznur','Kýz','2001-04-23',400)
INSERT INTO ogrenci (OgrenciNo,Adi,Soyad,Cinsiyet,DogumTarihi,BolumNo) VALUES (100,'Aylin','Vural','Kýz','2001-06-20',400)






CREATE TABLE dersler (      /* dersler tablosu oluþturdum DersNo yu PRIMARY KEY olarak atadým.Girilmesi gerekenleri alanlarý not null yaptým */

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


select * from dersler      /*   dersler  tablosunda bulunan alanlarý getirir   */



                                 -- dersler tablosunun içini doldurdum --

INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (50,'Matematik',500,'Okan Üniversitesi',10)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (40,'Fizik',400,'Okan Üniversitesi',20)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (30,'Java',400,'Okan Üniversitesi',30)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (5,'VeriTabaný',400,'Okan Üniversitesi',40)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (10,'C#',400,'Okan Üniversitesi',50)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (20,'Python',400,'Okan Üniversitesi',60)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (60,'Algoritma',500,'Okan Üniversitesi',70)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (65,'JavaScript',500,'Okan Üniversitesi',80)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (70,'React Native',500,'Okan Üniversitesi',90)
INSERT INTO dersler (DersNo,DersAdi,BolumNo,OkulAdi,OgrenciNo) VALUES (99,'SiberGüvenlik',500,'Okan Üniversitesi',100)


/* dersler tablosunda deðiþiklik yapmak istedim , CONSTRAINT  özellik ekledim adýna FK_derslerogrenci dedim FOREIGN KEY alaný olarak da 
   OgrenciNo kolonunu referans alarak (derslerdeki OgrenciNo kolnunu referans al) dedim , referans ettiðim tabloda ogrenci tablosunun OgrenciNo kolonu  */


ALTER TABLE dersler  WITH CHECK ADD  CONSTRAINT [FK_derslerogrenci] FOREIGN KEY([OgrenciNo])
REFERENCES ogrenci (OgrenciNo)
GO






CREATE TABLE notlar(    /* notlar tablosunu oluþturdum OgrenciNo yu PRIMARY KEY olarak atadým.Girilmesi gereken alanlarý NOT NULL yaptým*/

OgrenciNo int NOT NULL,
DersNo int NOT NULL,
Vize int NULL,
Final int NULL,

 PRIMARY KEY CLUSTERED 
  (
 OgrenciNo
 ) ON [PRIMARY]

);

select * from notlar     /*   notlar  tablosunda bulunan alanlarý getirir   */



 
                                          --   notlar tablomun içini doldurdum     -

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


/* notlar tablosunda deðiþiklik yapmak istedim ,  CONSTRAINT özellik ekledim adýna  FK_notlardersler dedim  FOREIGN KEY alaný olarak da
 DersNo kolonunu referans alarak (notlardaki DersNo kolonunu referans al) dedim referans ettiðim tabloda dersler tablosunun DersNo kolonu  */


ALTER TABLE notlar  WITH CHECK ADD  CONSTRAINT [FK_notlardersler] FOREIGN KEY([DersNo])
REFERENCES dersler (DersNo)
GO



/* notlar tablosundaki bütün alanlar gelmesini istedim ve dersler tablosunda da sadece notlar tablosuyla
   kesiþen alanlarýn gelmesini istedim */

SELECT d.DersAdi,n.Vize,n.Final,n.OgrenciNo,n.DersNo
FROM notlar n
LEFT JOIN dersler d
ON n.DersNo = d.DersNo






CREATE TABLE bolumler(    /* bolumler tablosunu oluþturdum BolumNo yu PRIMARY KEY olarak atadým. Girilmesi gereken yerleti NOTT NULL olarak atadým      */

BolumNo int NOT NULL,
BolumAdi nvarchar(30) NULL

 PRIMARY KEY CLUSTERED 
  (
 BolumNo
  ) ON [PRIMARY]

);


SELECT * FROM bolumler   /*   bolumler  tablosunda bulunan alanlarý getirir   */




                                   --      bolumler tablosunun içini doldurdum      --

INSERT INTO bolumler (BolumNo,BolumAdi) VALUES (500,'Bilgisayar Mühendisliði')
INSERT INTO bolumler (BolumNo,BolumAdi) Values (400,'Yazýlým Mühendislði')



/*  bolumler tablosundaki bütün alanlarýn gelmesini istedim ve ogrenci tablosunda da sadece bolumler
  tablosu ile kesiþen  alanlarýn gelmesini istedim . */


SELECT o.BolumNo,b.BolumAdi
FROM ogrenci o
RIGHT JOIN bolumler b
ON b.BolumNo= o.BolumNo






/*   aþaðýda merkezi tablo olarak ogrenci tablosunu belirledim ve dersler tablosuna baðlanmasýný istedim daha sonra
     koþul olarak  ogrenci tablosunun OgrenciNo sütunu  ile  dersler tablosunun da  OgrenciNo sütunu eþit olmalý(olmak zorunda) koþulunu verdim.
     ogrenci alanýnýn AdÝ,Soyad,BolumNoO,,OgrenciNo     ve          derslerin de  DersAdi,DersNo,OkulAdi alýný getirmek istedim.  
	 iki tabloda kesiþenler = OgrenciNo     */


SELECT o.Adi,o.Soyad,o.BolumNo,o.OgrenciNo,d.DersAdi,d.DersNo,d.OkulAdi
FROM ogrenci o 
INNER JOIN dersler d
ON o.OgrenciNo=d.OgrenciNo 




/*   aþaðýda merkezi tablo olarak notlar tablosunu belirledim ve dersler tablosuna baðlanmasýný istedim daha sonra 
     koþul olarak notlar tablosunun OgrenciNo sütunu ile dersler tablosunun OgrenciNo sütunu eþit olamlý(olmak zorunda) koþulunu verdim.
	 notlar alanýnýn DersNo,OgrenciNo,Vize,Final         ve       derslerin de DersAdi  alanýný getirmek istedim  .        
	 iki tabloda kesiþenler = OgrenciNo   */



SELECT n.DersNo,n.OgrenciNo,n.Vize,n.Final,d.DersAdi
FROM notlar n
INNER JOIN dersler d
ON n.OgrenciNo=d.OgrenciNo




/*   aþaðýda merkezi tablo olarak ogrenci tablosunu belirledim ve notlar tablosuna baðlanmasýný istedim daha sonra   
     koþul olarak notlar tablosunun OgrenciNO sütunu ile ogrenci tablosunun OgrenciNo sütunu eþit olamalý(olmak zorunda) koþulunu verdim.
	 ogrenci alanýnýn Adi,Soyad,OgrenciNo              ve       notlar alanýnda da  DersNo,Vize,Final alanýný getirmek istedim. 
	 iki tabloda kesiþenler = OgrenciNo   */



SELECT o.Adi,o.Soyad,o.OgrenciNo,n.DersNo,n.Vize,n.Final
FROM ogrenci o
INNER JOIN notlar n
ON o.OgrenciNo=n.OgrenciNo





/*  aþaðýda merkezi tablo olarak ogrenci tablosunu belirledim ve bolumler tablosuna baðlanmasýný istedim daha sonra 
    koþul olarak ogrenci tablosunun BolumNo sütunu ile bolumler tablosunun BolumNo sütunu eþit olmalý(olmak zorunda) koþulunu verdim.
	ogrenci alanýnýn Adi,Soyad,Bolumu,OgrenciNo     ve           bolumler alanýnda da BolumAdi alanýný getirmek istedim    
	iki tabloda kesiþenler  = BolumNo  */




SELECT o.Adi,o.Soyad,o.BolumNo,o.OgrenciNo,b.BolumAdi
FROM ogrenci o
INNER JOIN bolumler b
ON o.BolumNo=b.BolumNo


