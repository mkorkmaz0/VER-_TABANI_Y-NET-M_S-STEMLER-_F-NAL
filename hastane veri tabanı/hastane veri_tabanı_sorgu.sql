SELECT HastaID, Ad, Soyad, TCNo, DoðumTarihi, Telefon
FROM Hastalar;
SELECT Doktorlar.Ad, Doktorlar.Soyad, Poliklinikler.PoliklinikAdý
FROM Doktorlar
JOIN Poliklinikler ON Doktorlar.PoliklinikID = Poliklinikler.PoliklinikID
WHERE Doktorlar.DoktorID = 1;
SELECT DoktorID, Ad, Soyad, Uzmanlýk
FROM Doktorlar
WHERE PoliklinikID = 2;
INSERT INTO Adresler (Þehir, Ýlçe, PostaKodu, Detay)
VALUES ('Ýstanbul', 'Kadýköy', '34710', 'Caferaða Mahallesi, No: 45');
INSERT INTO Hastalar (Ad, Soyad, TCNo, DoðumTarihi, Telefon, AdresID)
VALUES ('Ahmet', 'Kaya', '98765432101', '1990-08-21', '05431234567', 1);
INSERT INTO Doktorlar (Ad, Soyad, Uzmanlýk, Telefon, PoliklinikID)
VALUES ('Dr. Ali', 'Demir', 'Kardiyoloji', '05321234567', 1);
UPDATE Hastalar
SET Telefon = '05431234567'
WHERE HastaID = 1;
UPDATE Doktorlar
SET Uzmanlýk = 'Nöroloji'
WHERE DoktorID = 3;
UPDATE Poliklinikler
SET Kat = '2'
WHERE PoliklinikID = 1;
DELETE FROM Hastalar
WHERE HastaID = 4;
DELETE FROM Doktorlar
WHERE DoktorID = 5;
DELETE FROM Poliklinikler
WHERE PoliklinikID = 2;

