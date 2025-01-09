
CREATE DATABASE hastane_veri;
GO


USE hastane_veri;
GO


CREATE TABLE Adresler (
    AdresID INT PRIMARY KEY IDENTITY(1,1),
    �ehir NVARCHAR(50),
    �l�e NVARCHAR(50),
    PostaKodu NVARCHAR(10),
    Detay NVARCHAR(250)
);


CREATE TABLE Hastalar (
    HastaID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    TCNo NVARCHAR(11) UNIQUE,
    Do�umTarihi DATE,
    Telefon NVARCHAR(15),
    AdresID INT FOREIGN KEY REFERENCES Adresler(AdresID)
);


CREATE TABLE Poliklinikler (
    PoliklinikID INT PRIMARY KEY IDENTITY(1,1),
    PoliklinikAd� NVARCHAR(100),
    Kat NVARCHAR(10)
);


CREATE TABLE Doktorlar (
    DoktorID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    Uzmanl�k NVARCHAR(100),
    Telefon NVARCHAR(15),
    PoliklinikID INT FOREIGN KEY REFERENCES Poliklinikler(PoliklinikID)
);


CREATE TABLE Randevular (
    RandevuID INT PRIMARY KEY IDENTITY(1,1),
    HastaID INT FOREIGN KEY REFERENCES Hastalar(HastaID),
    DoktorID INT FOREIGN KEY REFERENCES Doktorlar(DoktorID),
    RandevuTarihi DATE,
    Saat NVARCHAR(5)
);


CREATE TABLE �la�lar (
    �la�ID INT PRIMARY KEY IDENTITY(1,1),
    �la�Ad� NVARCHAR(100),
    �retici NVARCHAR(100),
    Barkod NVARCHAR(20) UNIQUE
);

CREATE TABLE Re�eteler (
    Re�eteID INT PRIMARY KEY IDENTITY(1,1),
    RandevuID INT FOREIGN KEY REFERENCES Randevular(RandevuID),
    �la�ID INT FOREIGN KEY REFERENCES �la�lar(�la�ID),
    Dozaj NVARCHAR(50),
    Kullan�mS�resi NVARCHAR(50)
);


CREATE TABLE Personel (
    PersonelID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    G�rev NVARCHAR(100),
    Telefon NVARCHAR(15),
    PoliklinikID INT FOREIGN KEY REFERENCES Poliklinikler(PoliklinikID)
);
GO
