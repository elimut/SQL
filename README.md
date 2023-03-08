# SQL

Le SQL **(Structured Query Language // langage de requête structurée)** est un langage permettant de communiquer avec une base de données. Ce langage informatique est notamment très utilisé par les développeurs web pour communiquer avec les données d’un site web. 
[cours et exercices SQL.sh](https://sql.sh/)

## Les bases de données

### Qu 'est ce qu' une base de donnée

Une base de donnée est un espace de stockage structuré et optimisé (avec le moins de redondance possible).
Ce qui caratérise une base de données d' un ensemble de données aléatoires, c'est que pour parler de nos données, elles doivent être bien organisées et structurées afin qu' on puisse bien les utiliser, et les exploiter.
Pas de répétition dans nos données.

Base de données: il faut savoir économiser au maximum(1 caractère de mémoire). Il faut préparer l' espace mémoire.

### Dans quel but?

Pour deux raisons principales:

- Assurer la qualité 
- Exploiter les données de manière simple et efficace, de la part des sites web, utilisateurs...

Leurs usages peut s' étendre à tous les domaines de notre vie quotidienne (transaction bancaire, achat...)

### Les types de bases de données

Il existe deux catégories:
- Les bases de données relationnelles:
Elle est composée de **tables à deux dimensions**, qui est composé d' un ensemble de lignes et d'un ensemble de colonnes. Permet de représenter les données de manière claire et lisible.
Une table est appelée une **relation**, une relation est composée de lignes. Chaque lignes est appelées **enregistrement ou entité**.
Chaque relation ou chaque table gère et organise les données qui sont liées à un sujet donné. Et chaque entité sera représenté dans une ligne de la relation .
Chaque colonne de la relation est appelée **attribut**. Les entités ou enregistrements doivent être homogènes, appartenir à la même famille (même caractéristiques, même propriétés) qui sera représentée par une colonne de la relation.
On peut trouver plusieurs relations ou plusieurs tables.
Ces relations sont liées entre elles par des liaisons, ces liaison permettent en commençant par une table  d'avoir accès à toutes les données que contient les autres tables.
>Dans une base de données, on a une **table** (tableau), comme un tableau excel comportant des colonnes (variables) et des lignes (valeurs des variables).
- Les bases de données NoSQL (ou non relationnelles):
Toutes bases de données qui ne respectent pas le modèle relationnel = NoSQL.
Permet d' enregistrer des données non structurées et non organisées.


Exemple:

Tableau relationnel ->
Facebook, enregistre ses clients inscrits dans une table: Membres inscrits.
Chaque membre inscrit sera enregistré dans une ligne, donc une entité dns cette table va correspondre à un membre qui possède un compte.
Tous les membres partagent une même caratéristique, comme le nom.

## Les types de données 

Pour optimiser le stockage, il faut bien choisir le type.
->**un octet par caractère!**

Il existe pleins de types:
- BOOL,
- DATE,
- FLOAT (nombres à virgules),
- VARCHAR (on lui donne sa taille, ne nécessite pas d' être rempli),
- CHAR (qui doit être rempli complétement, on lui donne sa taille),
  

## Les requêtes

une requête commence par :

- SELECT (sélectionner),
Exemple:

        SELECT ville FROM client
        ->séléctionner ville depuis client 
- FROM (depuis),
- AS (comme): SQL AS (alias)
Dans le langage SQL il est possible d’utiliser des alias pour renommer temporairement une colonne ou une table dans une requête.
->Alias sur une colonne:
Permet de renommer le nom d’une colonne dans les résultats d’une requête SQL. C’est pratique pour avoir un nom facilement identifiable dans une application qui doit ensuite exploiter les résultats d’une recherche.
->Alias sur une table:
Permet d’attribuer un autre nom à une table dans une requête SQL. Cela peut aider à avoir des noms plus court, plus simple et plus facilement compréhensible. Ceci est particulièrement vrai lorsqu’il y a des jointures.
Exemple:

        SELECT colonne1 AS c1, colonne2
        FROM `table` 
        =>Syntaxe pour renommer une colonne de colonne1 à c1 (sélection colonne1 et 2, en renommant colonne1).

        SELECT *
        FROM `nom_table` AS t1
        =>La syntaxe pour renommer une table dans une requête.
- WHERE,
La commande WHERE dans une requête SQL permet d’extraire les lignes d’une base de données qui respectent une condition. Cela permet d’obtenir uniquement les informations désirées.
SELECT nom_colonnes FROM nom_table WHERE condition
- GROUP BY (),
La commande GROUP BY est utilisée en SQL pour grouper plusieurs résultats et utiliser une fonction de totaux sur un groupe de résultat. Sur une table qui contient toutes les ventes d’un magasin, il est par exemple possible de liste regrouper les ventes par clients identiques et d’obtenir le coût total des achats pour chaque client.

        SELECT colonne1, fonction(colonne2)
        FROM table
        GROUP BY colonne1
- AND,
- LIMIT,
- ...

## Les jointures

Pour économiser les données, optimiser au lieux le stockage des données dans les bases de données.
Prendre une table avec des informations redondantes, et la découper en plusieurs tables en créant des jointures.
Il faut un mécanisme qui physique qui fait le lien entre les tables, enchaîner des actions. = clés.

>Les jointures en SQL permettent d’associer plusieurs tables dans une même requête. Cela permet d’exploiter la puissance des bases de données relationnelles pour obtenir des résultats qui combinent les données de plusieurs tables de manière efficace.

A la création de table,l'on rajoute des options.

### Join, pour joindre les tables

Pour joindre les tables, il faut les joindre sur quelque chose.

    SELECT *
    FROM table_1
    INNER JOIN table_2 ON table_1.une_colonne = table_2.autre_colonne;

**Attention : il est important de noter que si un utilisateur à été supprimé, alors on ne verra pas ses commandes dans la liste puisque INNER JOIN retourne uniquement les résultats ou la condition est vrai dans les 2 tables.**

### Comment retrouver les données?

Exemple:

    SELECT U.ID,U.Nom,P.Pays FROM utilisateur AS U JOIN Pays AS P ON U.Pays  = P.ID;

### Notion de clés primaires et étrangères

Il en existe deux types:

- primaire,
Correspond à sa propre table.
- étrangère,
Pointe vers une table étrangère.
Cela permet de chaîner les tables entre elles.
  

## Système de gestion de base de données (SGBD)

Un système de gestion de base de données (SGBD) est le logiciel qui permet à un ordinateur de stocker, récupérer, ajouter, supprimer et modifier des données. Un SGBD gère tous les aspects primaires d'une base de données, y compris la gestion de la manipulation des données, comme l'authentification des utilisateurs, ainsi que l'insertion ou l'extraction des données. Un SGBD définit ce qu'on appelle le schéma de données ou la structure dans laquelle les données sont stockées.
Chaque SGBD possède ses propres spécificités et caractéristiques. Pour présenter ces différences, les logiciels de gestion de bases de données sont cités, tels que : MySQL, PostgreSQL, SQLite, Microsoft SQL Server ou encore Oracle.

## CRUD

Google Slide:

![diapo1](Slide%20CRUD/slide1.png)
![diapo2](Slide%20CRUD/slide2.png)
![diapo3](Slide%20CRUD/slide3.png)
![diapo4](Slide%20CRUD/slide4.png)
![diapo5](Slide%20CRUD/slide5.png)
![diapo6](Slide%20CRUD/slide6.png)
![diapo7](Slide%20CRUD/slide7.png)
![diapo8](Slide%20CRUD/slide8.png)
![diapo9](Slide%20CRUD/slide9.png)
![diapo10](Slide%20CRUD/slide10.png)
![diapo11](Slide%20CRUD/slide11.png)
![diapo12](Slide%20CRUD/12.png)
![diapo13](Slide%20CRUD/slide13.png)
![diapo14](Slide%20CRUD/slide14.png)
![diapo15](Slide%20CRUD/slide15.png)

## Exercices:

- https://www.programiz.com/sql/online-compiler/
- https://www.w3schools.com/sql/exercise.asp
    ->Afficher tous les prénoms:

        SELECT first_name FROM customers;
    ->Afficher tous les noms pour le pays UK (WHERE):

        SELECT last_name FROM customers WHERE country = 'UK';
    ->Afficher l' âge des gens qui vivent aux USA et dont le prénom est Robert (and):

        SELECT age FROM customers WHERE country = 'USA' AND first_name = 'Robert';
    ->Afficher combien de moniteur il y a dans la table orders:

        SELECT amount FROM Orders where item = 'Monitor';
    ->Afficher le nombre de clients (COUNT()):

        SELECT COUNT(*) FROM Customers;
        >En SQL, la fonction d’agrégation COUNT() permet de compter le nombre d’enregistrement dans une table. Connaître le nombre de lignes dans une table est très pratique dans de nombreux cas, par exemple pour savoir combien d’utilisateurs sont présents dans une table ou pour connaître le nombre de commentaires sur un article.
    ->Afficher l' âge moyen des clients (AVG()):

        SELECT AVG(age) FROM Customers;
        >La fonction d’agrégation AVG() dans le langage SQL permet de calculer une valeur moyenne sur un ensemble d’enregistrement de type numérique et non nul.
- https://exercices-sql.fr/
    ->Trier les villes suivantes par ID décroissant. Afficher toutes les colonnes mais uniquement les deux dernieres lignes.

        SELECT * FROM ville ORDER BY ville_id DESC LIMIT 2;
    ->Trier les villes suivantes par ID décroissant.Afficher toutes les lignes, toutes les colonnes.

        SELECT * FROM ville ORDER BY ville_id DESC;
    ->Afficher la ville ayant le code insee 1004. Afficher toutes les colonnes.

        SELECT * FROM ville where insee_code = 1004;
    ->Afficher les villes dont la latitude se trouve entre 46.00 et 46.02. Afficher toutes les colonnes.

        SELECT * FROM ville WHERE gps_lat BETWEEN 46.00 AND 46.02;
    ->Afficher la moyenne, le nombre, la somme, le min et le max de toutes les notes.

        SELECT AVG (not_note) AS moyenne,
        COUNT (not_note) AS "nombre de note",
        SUM (not_note) AS "totale des notes",
        MIN (not_note) AS "note minimale",
        MAX (not_note) AS "note maximale" FROM note;
    ->Afficher les élèves qui s'appellent Gomez et ceux qui s'appellent Navarro Francoise.

        SELECT * FROM eleve WHERE ele_nom = "Gomez" OR ele_nom = "Navarro" AND ele_prenom = "Francoise";
    ->Afficher les noms, prénoms et classes des élèves. Ne pas afficher les élèves n'ayant pas de classe affectée. Trier les résultats par nom.

        SELECT ele_nom AS "Nom", ele_prenom AS "Prénom", cla_nom AS "Classe"
        FROM eleve 
        JOIN classe ON eleve.cla_id = classe.cla_id;
        ou

        SELECT ele_nom AS "Nom", ele_prenom AS "Prénom", cla_nom AS "Classe"
        FROM eleve 
        INNER JOIN classe ON eleve.cla_id = classe.cla_id;
        >Automatiquement n'affiche que les points communs, donc null n' apparaît pas.
    ->Afficher les noms, prénoms et classes des élèves. Inclure les élèves n'ayant pas de classe affectée.

        SELECT ele_nom AS "Nom", ele_prenom AS "Prénom", cla_nom AS "Classe"
        FROM eleve
        LEFT JOIN classe ON eleve.cla_id = classe.cla_id;
        >Dans le langage SQL, la commande LEFT JOIN (aussi appelée LEFT OUTER JOIN) est un type de jointure entre 2 tables. Cela permet de lister tous les résultats de la table de gauche (left = gauche) même s’il n’y a pas de correspondance dans la deuxième tables.
    ->Lister les noms, prénoms des élèves ansi que leur note et le nom de la matière concernée. Trier les résultats par note décroissante.

        SELECT ele_nom AS "Nom", ele_prenom AS "Prénom", not_note AS "note", mat_nom AS "matière concernée"
        FROM eleve 
        INNER JOIN note ON eleve.ele_id = note.ele_id
        INNER JOIN matiere ON note.mat_id = matiere.mat_id
        ORDER BY "note" DESC;
    ->Calculer la moyenne par matiere, tous élèves confondus. Afficher le nom de la matiere ainsi que la moyenne. Trier les résultats de la moyenne la plus élevée à la plus basse.

        SELECT mat_nom AS "Matière",
        AVG(not_note) AS "Moyenne"
        FROM note
        INNER JOIN matiere ON note.mat_id = matiere.mat_id
        GROUP BY mat_nom
        ORDER BY "Moyenne" DESC;
        >La commande GROUP BY est utilisée en SQL pour grouper plusieurs résultats et utiliser une fonction de totaux sur un groupe de résultat. Sur une table qui contient toutes les ventes d’un magasin, il est par exemple possible de liste regrouper les ventes par clients identiques et d’obtenir le coût total des achats pour chaque client.
    ->Calculer la moyenne par élève, toutes matieres confondues. Afficher le nom de l'élève ainsi que le nom de sa classe et sa moyenne. Inclure les élèves n'ayant pas de classe. Trier les résultats par ordre alphabétique.

        SELECT ele_nom AS "Nom",
        cla_nom AS "Nom de classe",
        AVG(not_note) AS "Moyenne"
        FROM eleve
        LEFT JOIN note ON eleve.ele_id = note.ele_id
        LEFT JOIN classe ON eleve.cla_id = classe.cla_id
        GROUP BY eleve.ele_id
        ORDER BY "Nom" ASC;
        =>Dans le langage SQL, la commande LEFT JOIN (aussi appelée LEFT OUTER JOIN) est un type de jointure entre 2 tables. Cela permet de lister tous les résultats de la table de gauche (left = gauche) même s’il n’y a pas de correspondance dans la deuxième tables.
    ->Lister tous les élèves qui n'ont jamais été notés. Triez les par ID.

        SELECT ele_id, 
        ele_nom,
        ele_prenom,
        cla_id
        FROM eleve
        WHERE NOT EXISTS (
        SELECT *
        FROM note
        WHERE eleve.ele_id = note.ele_id
        );
    ->Calculer la moyenne (tous élèves confondus) en chaque matière. Afficher le nom de la matière et la note, y compris s'il n'y a aucune note. Trier de la moyenne la plus faible à la plus élevée.

        SELECT mat_nom AS "Matière",
        AVG(not_note) AS "Moyenne"
        FROM matiere
        LEFT JOIN note ON matiere.mat_id = note.mat_id
        GROUP BY mat_nom
        ORDER BY "Moyenne" ASC;
        ->Lister les noms et les moyennes générales des élèves ayant au moins 12 de moyenne. Trier les résultats de la plus basse à la plus élevée.

        SELECT ele_nom AS "Nom",
        AVG(not_note) AS "Moyenne"
        FROM eleve
        JOIN note ON eleve.ele_id = note.ele_id
        GROUP BY ele_nom
        HAVING AVG(not_note) >= 12
        ORDER BY "Moyenne" ASC;
    ->Lister les catégories de matiere (littéraire et scientifique) ansi que la moyenne des notes tous élèves confondus de chaque catégorie. Afficher d'abord la moyenne littéraire puis la moyenne scientifique.

        SELECT mat_categorie AS "Catégorie",
        AVG(not_note) AS "Moyenne"
        FROM matiere
        JOIN note ON matiere.mat_id = note.mat_id
        GROUP BY "Catégorie"
        ORDER BY "Catégorie" ASC;
    ->Afficher les nombre de 100 à 10 compris, par ordre décroissant

        WITH CompteurCTE
        AS (
            SELECT 100 AS i
            UNION ALL
            SELECT i - 1
            FROM CompteurCTE
            WHERE i > 10
            )
        SELECT *
        FROM CompteurCTE;
        =>Une CTE (expression de table commune) est une sous-requête nommée définie dans une clause WITH. Vous pouvez considérer la CTE comme une vue temporaire à utiliser dans l’instruction qui définit la CTE. La CTE définit le nom de la vue temporaire, une liste facultative de noms de colonnes et une expression de requête (c’est-à-dire une instruction SELECT). Le résultat de l’expression de requête est effectivement une table. Chaque colonne de cette table correspond à une colonne de la liste (facultative) de noms de colonnes.
    ->Lister les noms et les moyennes générales des élèves ayant au moins la moyenne générale toutes matières classes confondues.

        SELECT ele_nom AS "Nom",
            AVG(not_note) AS "Moyenne"
            FROM eleve
            JOIN note ON eleve.ele_id = note.ele_id
            GROUP BY ele_nom
            HAVING AVG(not_note) >= (
                SELECT AVG(Not_note)
                FROM note
            );
    ->Calculer la moyenne pondérée par matière de chaque classe. Afficher le nom des classe ainsi que leur moyenne en triant de la plus élevée à la plus basse.

        