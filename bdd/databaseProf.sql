CREATE TABLE categories (
  id_categorie serial PRIMARY KEY NOT NULL,
  label_fr varchar(300) NOT NULL,
  label_en varchar(300) NOT NULL
);

INSERT INTO categories (id_categorie, label_fr, label_en) VALUES
(1, 'Base de données', 'Database'),
(2, 'Réseau', 'Network'),
(3, 'Web - Front', 'Web - Front'),
(4, 'Web - Back', 'Web - Back'),
(5,'Prog Objet', 'Oriented Object Programmation'),
(6, 'Experience','Experience'),
(7,'Personnel','Personnal'),
(8, 'PHP', 'PHP'),
(9, 'Soft Skills','Soft Skills');



CREATE TABLE difficultes (
  id_difficulte serial PRIMARY KEY NOT NULL,
  level_fr varchar(300) NOT NULL,
  level_en varchar(300) NOT NULL
);



INSERT INTO difficultes (id_difficulte, level_fr, level_en) VALUES
(1, 'Facile', 'Easy'),
(2, 'Moyen', 'Medium'),
(3, 'Difficile', 'Hard');



CREATE TABLE questions (
  id_question serial PRIMARY KEY NOT NULL,
  label_fr varchar(300) NOT NULL,
  label_en varchar(300) NOT NULL,
  id_categorie int REFERENCES categories(id_categorie) NOT NULL,
  id_difficulte int REFERENCES difficultes(id_difficulte) NOT NULL,
  eval_mode boolean NOT NULL,
  training_mode boolean NOT NULL,
  survival_mode boolean NOT NULL,
  pro_tips_fr varchar(300),
  pro_tips_en varchar(300)
);

INSERT INTO questions (id_question, label_fr, label_en, id_categorie, id_difficulte, eval_mode, training_mode, survival_mode, pro_tips_fr, pro_tips_en) VALUES
(1, 'Parmi ces technologies, lesquelles sont utilisées pour le développement Web ?', 'Which of these technologies are used for web development?', 3, 2, TRUE, TRUE, FALSE, NULL, NULL),
(2, 'Lequel de ces protocoles n est qu un protocole d échange de fichiers entre un client et un serveur sur Internet ?', 'Which of these protocols is only a file exchange protocol between a client and a server on the Internet ?', 2, 1, TRUE, TRUE, TRUE, 'FTP pour Protocole de Transport de Fichier', 'FTP for File Trasfert Protocol'),
(3, 'Comment améliorer une page web qui se charge lentement?', 'How to improve a web page that loads slowly?', 4,2, TRUE,TRUE,TRUE,NULL,NULL ),
(4,'Comment vous assurez-vous que vos sites Web et applications sont accessibles aux utilisateurs ?','How do you ensure that your websites and applications are accessible to users?',4,2,TRUE,TRUE,TRUE,NULL,NULL ),
(5,'Quel est votre langage de programmation préféré, et pourquoi ?','What is your favorite programming language, and why?',7,1,TRUE,FALSE,FALSE,NULL,NULL),
(6,'Quelle est la différence entre les classes et les ID dans les CSS ?','What is the difference between classes and IDs in CSS?',3,2,TRUE,TRUE,TRUE,NULL,NULL),
(7,'En Java, peut-on surcharger la méthode main() ?','In Java, can we override the main() method?', 5,3,TRUE,TRUE,TRUE,NULL,NULL),
(8, 'Sur quels sites internet et de quels tailles avez vous travaillé auparavant?','What websites of what size have you worked on before?',6,1,TRUE,FALSE,FALSE,NULL,NULL),
(9, 'Qu''est ce que le HTML sémantique ?','What is Semantic HTML?',3,2,TRUE,TRUE,TRUE,NULL,NULL),
(10, 'Un site ne s''affiche pas correctement sur des appareils différents. Quels sont les premières choses que vous feriez pour corriger le problème ?','The website does not display correctly on different devices.  What are the first steps you would take to fix it?',3,2,TRUE,TRUE,TRUE,NULL,NULL),
(11, 'Quelle est pour vous, la meilleure qualité pour un développeur ?','What is for you, the best quality for a developper ?',7,1,TRUE,FALSE,FALSE,NULL,NULL),
(12, 'En Java, quelle est la différence entre equals() et == ?','In Java, what is the difference between equals() and ==?',5,2,TRUE,TRUE,TRUE,NULL,NULL),
(13, 'PHP est-il un langage de programmation POO ?', 'Is PHP a programming language OOP ?',8,1,TRUE,TRUE,TRUE, NULL, NULL),
(14, 'Expliquer _construct() et _destruct()', 'Explain _construct() and _destruct()', 8,2,TRUE,FALSE,FALSE,NULL,NULL),
(15, 'Comment exporter des données PHP dans Excel ?', 'How to export PHP datas in Excel ?', 8,2,TRUE,FALSE,FALSE,NULL,NULL),
(16, 'Quelle est la balise la plus courante pour intégrer PHP au HTML?','What is the most common element to integrate PHP into HTML ?',8,1,TRUE,TRUE,TRUE,NULL,NULL),
(17, 'Quelle est la différence entre «==» et «===»','What is the difference between == and ===?',6,1,TRUE,TRUE,TRUE,NULL,NULL),
(18, 'As-tu déjà travaillé en direct avec des clients pour réaliser un projet ? Si non, est-ce que cela t’intéresse ?','Have you ever worked live with clients on a project? If not, are you interested?',9,1,TRUE,FALSE,FALSE,NULL,NULL),
(19, 'Que penses-tu de la programmation en équipe ? L’as-tu déjà fait ou serais-tu intéressé pour essayer ?', 'What do you think about team programming? Have you ever done it or would you be interested in trying?', 9,1,TRUE,FALSE,FALSE,NULL,NULL),
(20, 'Qu’est-ce que tu trouves le plus difficile dans ton métier ?','What do you find most difficult about your job?',9,1,TRUE,FALSE,FALSE,NULL,NULL),
(21, 'Parle moi d’un projet dont tu es particulièrement fier et de ce que tu as accompli dans ce projet','Tell me about a project you are particularly proud of and what you have accomplished in this project', 6,1,TRUE,FALSE,FALSE,NULL,NULL),
(22, 'Tu bloques sur une ligne de code ou un problème technique. Comment trouves-tu la réponse ?','You are blocking on a line of code or a technical problem. How do you find the answer ?',9,1,TRUE,FALSE,FALSE,NULL,NULL),
(23, 'Qu est ce qu une base de données ?','What is a database ?',1,1,TRUE,TRUE,TRUE,NULL,NULL),
(24, 'Qu est-ce qu un SGBD ?','What is a DBMS ?',1,1,TRUE,TRUE,TRUE,NULL,NULL),
(25, 'Qu est-ce qu un SGBDR ?','What is an RDBMS ?',1,2,TRUE,TRUE,TRUE,NULL,NULL),
(26, 'Que sont les tableaux et les champs en SQL ?','What are tables and fields in SQL?',1,1,TRUE,TRUE,TRUE,NULL,NULL),
(27, 'Qu est-ce qu une clé primaire ?','What s a primary key ?',1,1,TRUE,TRUE,TRUE,NULL,NULL),
(28, 'Que sont les routeurs ?','What are routers ?',2,2,TRUE,TRUE,TRUE,NULL,NULL),
(29, 'Quelle est la différence entre GET et POST ?','What is the difference between GET and POST ?',4,2,TRUE,TRUE,TRUE,NULL,NULL),
(30, 'Quelles sont les différences entre HTML et XHTML ?','What are the differences between HTML and XHTML ?',3,2,TRUE,TRUE,TRUE,NULL,NULL),
(31, 'Quelles sont vos forces et vos faiblesses ?', 'What are your strengths and weaknesses?',7,1,TRUE,FALSE,FALSE,NULL,NULL),
(32, 'Qu’est-ce que l’ héritage en Programmation Orientée Objet ?', 'What is legacy in Oriented Object Programmation ?',5,2,TRUE,TRUE,TRUE,NULL,NULL);

CREATE TABLE reponses (
  id_reponse serial PRIMARY KEY NOT NULL, 
  id_question int REFERENCES questions(id_question) NOT NULL,
  label_fr varchar(300) NOT NULL,
  label_en varchar(300) NOT NULL,
  valid boolean NOT NULL
);

INSERT INTO reponses (id_reponse, id_question, label_fr, label_en, valid) VALUES
(1, 1, 'Angular', 'Angular',  TRUE),
(2, 1, 'Laravel', 'Laravel',  TRUE),
(3, 1, 'JupyterNotebook', 'JupyterNotebook',  FALSE),
(4, 1, 'Aucun', 'None', FALSE),
(5, 2, 'TCP', 'TCP',  FALSE),
(6, 2, 'HTTP', 'HTTP',  TRUE),
(7, 2, 'FTP', 'FTP',  TRUE),
(8, 2, 'SSH', 'SSH',  TRUE),
(9, 3, 'Trouver le bon hébergeur','Find the right host', TRUE),
(10, 3, 'Supprimer les extensions inutiles', 'Delete all useless plugins',TRUE),
(11, 3, 'Réduire le poids des images', 'Reduce pictures size',TRUE),
(12, 3, 'Supprimer les balises','Delete some elements',TRUE),
(13, 4, 'Leur demander','Ask them',FALSE),
(14, 4, 'Utiliser des outils pour vérifier l''accessibilité du site','Use tools to check website accessibility',TRUE),
(15, 4, 'Vérifier par soi-même une fois le site en ligne','Check by yourself once the website is online',TRUE),
(16, 4, 'Vérifier à l''aide d''un tuto Youtube','Check with a youtube tutorial',FALSE),
(17, 6, 'ID s''applique à un objet unique et class à plusieurs objets','ID applies to a single object and class to multiple objects',TRUE),
(18, 6, 'Class s''applique à un objet unique et ID à plusieurs objets','Class applies to a single object and ID to multiple objects',FALSE),
(19, 6, 'Il n''y a aucune différence', 'There is no difference',FALSE),
(20, 6, 'Class sert à mieux modulariser le CSS','Class is used to better modularize the CSS',TRUE),
(21, 7, 'Oui','Yes',TRUE),
(22, 7, 'Non','No',FALSE),
(23, 7, 'Je ne sais pas','I d''ont know',FALSE),
(24, 7, 'La réponse D','Answer D',FALSE),
(25, 9, 'C''est l''utilisation du balisage HTML visant à renforcer la signification des informations contenues dans les pages web, c''est-à-dire leur sens, plutôt que définir leurs présentations','It is the use of HTML element to strengthen the meaning of the information contained in web pages, that is, their meaning, rather than defining their presentations.',TRUE),
(26, 9, 'C''est de l''HTML qui s''aime de manière antique','That''s semantic HTML',FALSE ),
(27, 9, 'Une convention d''écriture du code HTML','A convention for writing HTML code', FALSE),
(28, 9, 'Une façon d''organiser son répertoire de travail','A way to organize your working directory',FALSE),
(29, 10, 'Recréer le site pour chaque appareil','Recreate the website for each device',FALSE),
(30, 10, 'Je change d''hébergeur','I change host',FALSE),
(31, 10, 'J''adapte mon CSS', 'I adapt my CSS',TRUE),
(32, 10, 'Je rends mon site réactif', 'I make my website responsive', TRUE),
(33, 12, 'Aucune', 'None',FALSE),
(34, 12, 'L''une est une méthode et l''autre une opération','One is a method and the other one is an operator',TRUE),
(35, 12, '== est une comparaison d''adresse et equals() une comparaison de contenu','== is an address comparison and equals() a content comparison',TRUE),
(36, 12, '== est une comparaison de contenu et equals() une comparaison d''adresse','== is a content comparison and equals() an address comparison',FALSE),
(37, 13, 'Oui','Yes',TRUE),
(38, 13, 'Non','No',FALSE),
(39, 13, 'C koi POO ?','What is POO ?',FALSE),
(40, 13, 'Oui, parce qu il y a un P dans les deux','Yes, because there is a P in both',FALSE),
(41, 16, '<script language="php"> et </script>','<script language="php"> and </script>',TRUE),
(42, 16, '<"php"=script language> et </script>','<"php"=script language> and </script>',FALSE),
(43, 16, '<script language="php"> et <script>','<script language="php"> and <script>',FALSE),
(44, 16, '<php language="script"> et </php>','<php language="script"> and </php>',FALSE),
(45, 17, 'Le «==» est utilisé pour une comparaison du type et de la valeur des deux variables et le «===» pour une comparaison entre deux varialbes quel que soit le type','The "==" is used for a comparison of the type and value of two variables and the "===" for a comparison between two varialbes regardless of the type',FALSE),
(46, 17, 'Le «==» est utilisé pour une comparaison entre deux variables quel que soit le type et le «===» pour une comparaison du type et de la valeur des deux variables','The "==" is used for a comparison between two variables whatever the type and the "===" for a comparison of the type and the value of the two variables',TRUE),
(47, 17, 'Il y a un égal en plus','There is one more equal',FALSE),
(48, 17, 'Aucune','None',FALSE),
(49, 23, 'C est un truc avec des données dedans','It s a thing with data in it',FALSE),
(50, 23, 'C est une base avec des données dedans','It is a database with data in it',FALSE),
(51, 23, 'Une base de données est une collection organisée d informations structurées, généralement stockées électroniquement dans un système informatique','A database is an organized collection of structured information, usually stored electronically in a computer system',TRUE),
(52, 23, 'La réponse D','Answer D',FALSE),
(53, 24, 'Des lettres','Some letters',FALSE),
(54, 24, 'Un logiciel système permettant aux utilisateurs et programmeurs de créer et de gérer des bases de données','A software system that allows users and programmers to create and manage databases',TRUE),
(55, 24, 'Un code wifi','A wifi code'),
(56, 24, 'Un logiciel système permettant aux utilisateurs et programmeurs de créer et de gérer des serveurs web','A system software that allows users and programmers to create and manage web servers',FALSE),
(57, 25, 'Un code de jeu Steam'),
(58, 25, 'Une base de données relationnelle est une base de données où l information est organisée dans des tableaux à deux dimensions appelés des relations ou tables','A relational database is a database where information is organized in two-dimensional tables called relations or tables',TRUE),
(59, 25, 'Une relation de base de données est une relation où l information est organisée dans des tableaux à deux dimensions appelés des relations ou tables','A database relationship is a relationship where information is organized in two-dimensional tables called relations or tables',FALSE),
(60, 25, 'Ton code Izzly','Your Izzly code',FALSE),

CREATE TABLE users (
  idU serial PRIMARY KEY NOT NULL,
  idRole int NOT NULL,
  pseudo varchar(50) NOT NULL,
  password varchar(255) NOT NULL,
  hash varchar(255) NOT NULL
);
