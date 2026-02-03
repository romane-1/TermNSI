-- 1
SELECT nom FROM ville ORDER BY nom;

--2
SELECT code, nom FROM ville
WHERE UPPER(nom) LIKE '%Z%' OR UPPER(nom) LIKE 'T%';

--3
SELECT DISTINCT(categorie) FROM evolution ORDER BY categorie;

--4
SELECT code FROM ville
WHERE nom LIKE 'Caullery';

--5
SELECT nom FROM ville
WHERE nom LIKE '_____';

--6
SELECT * FROM evolution
WHERE code = '59140' ORDER BY effectif;

--7
INSERT INTO ville 
VALUES (35000, 'Rennes', 50.291048, 2.7772211);

--8

UPDATE ville SET nom='New-York' WHERE nom='Rennes';

--9
ALTER TABLE ville
RENAME COLUMN nom   
TO nomVille;

--10
