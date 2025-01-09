SELECT HastaID, Ad, Soyad, TCNo, Do�umTarihi, Telefon
FROM Hastalar;
SELECT Doktorlar.Ad, Doktorlar.Soyad, Poliklinikler.PoliklinikAd�
FROM Doktorlar
JOIN Poliklinikler ON Doktorlar.PoliklinikID = Poliklinikler.PoliklinikID
WHERE Doktorlar.DoktorID = 1;
SELECT DoktorID, Ad, Soyad, Uzmanl�k
FROM Doktorlar
WHERE PoliklinikID = 2;
INSERT INTO Adresler (�ehir, �l�e, PostaKodu, Detay)
VALUES ('�stanbul', 'Kad�k�y', '34710', 'Cafera�a Mahallesi, No: 45');
INSERT INTO Hastalar (Ad, Soyad, TCNo, Do�umTarihi, Telefon, AdresID)
VALUES ('Ahmet', 'Kaya', '98765432101', '1990-08-21', '05431234567', 1);
INSERT INTO Doktorlar (Ad, Soyad, Uzmanl�k, Telefon, PoliklinikID)
VALUES ('Dr. Ali', 'Demir', 'Kardiyoloji', '05321234567', 1);
UPDATE Hastalar
SET Telefon = '05431234567'
WHERE HastaID = 1;
UPDATE Doktorlar
SET Uzmanl�k = 'N�roloji'
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

