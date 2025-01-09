
CREATE DATABASE hastane_veri;
GO


USE hastane_veri;
GO


CREATE TABLE Adresler (
    AdresID INT PRIMARY KEY IDENTITY(1,1),
    Þehir NVARCHAR(50),
    Ýlçe NVARCHAR(50),
    PostaKodu NVARCHAR(10),
    Detay NVARCHAR(250)
);


CREATE TABLE Hastalar (
    HastaID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    TCNo NVARCHAR(11) UNIQUE,
    DoðumTarihi DATE,
    Telefon NVARCHAR(15),
    AdresID INT FOREIGN KEY REFERENCES Adresler(AdresID)
);


CREATE TABLE Poliklinikler (
    PoliklinikID INT PRIMARY KEY IDENTITY(1,1),
    PoliklinikAdý NVARCHAR(100),
    Kat NVARCHAR(10)
);


CREATE TABLE Doktorlar (
    DoktorID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    Uzmanlýk NVARCHAR(100),
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


CREATE TABLE Ýlaçlar (
    ÝlaçID INT PRIMARY KEY IDENTITY(1,1),
    ÝlaçAdý NVARCHAR(100),
    Üretici NVARCHAR(100),
    Barkod NVARCHAR(20) UNIQUE
);

CREATE TABLE Reçeteler (
    ReçeteID INT PRIMARY KEY IDENTITY(1,1),
    RandevuID INT FOREIGN KEY REFERENCES Randevular(RandevuID),
    ÝlaçID INT FOREIGN KEY REFERENCES Ýlaçlar(ÝlaçID),
    Dozaj NVARCHAR(50),
    KullanýmSüresi NVARCHAR(50)
);


CREATE TABLE Personel (
    PersonelID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    Görev NVARCHAR(100),
    Telefon NVARCHAR(15),
    PoliklinikID INT FOREIGN KEY REFERENCES Poliklinikler(PoliklinikID)
);
GO
