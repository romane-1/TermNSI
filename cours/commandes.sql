-- -- CREATE TABLE Joueur(nom VARCHAR(255), PRENOM VARCHAR(255),
-- -- couleurMaillot CHAR(10), salaire NUMERIC(7, 2), tel VARCHAR(20)
-- -- );

-- -- copier le fichier dans /tmp/...
-- -- executer avec \i /tmp/... dans psql


-- --CREATE TABLE Eleve(nom VARCHAR(255) PRIMARY KEY, PRENOM VARCHAR(255)UNIQUE NOT NULL,
-- --naissance DATE, age INT, CHECK(age >= 18)
-- --);

-- SELECT espece,nom FROM animal;  --affiche ces colonnes

-- SELECT nom,naissance,sexe FROM animal WHERE sexe='M';

-- SELECT nom FROM Animal
-- WHERE UPPER(espece)='LAPIN'
-- AND UPPER(nom) <> '%I%';

-- -- ou

-- SELECT nom FROM Animal
-- WHERE UPPER(espece)='LAPIN'
-- AND UPPER(nom) NOT LIKE '%I%';

INSERT INTO Animal VALUES
(5,'CHIEN','F','2013-10-10','Pepita','bruyante',2),
(6, 'chat', 'F', '2012-08-23', 'Lila', 'Peureuse', 1),
(7, 'cheval', 'M', '2008-03-14', 'Valentin', 'Rapide',2),
(8, 'cheval', 'F', '2008-03-14', 'Valentine', 'Lente',1),
(9, 'poisson', NULL, '2019-10-01', 'Nemo', NULL, 2),
(10, 'oiseau', 'M', '2018-12-23', 'Mozart', 'Bruyant', 1),
(11, 'chien', 'F', '2015-02-01', 'Windows', 'Gentille', 1);

SELECT nom,espece,naissance FROM Animal
WHERE proID=1
ORDER BY naissance DESC, nom;  -- pour nommer WINDOWS avant LINUX on ajoute DESC après nom

SELECT nom,espece,naissance FROM Animal
WHERE espece='chien'
ORDER BY naissance DESC
chapitre-# LIMIT 2
chapitre-# OFFSET 1;

SELECT DISTINCT naissance FROM Animal;
