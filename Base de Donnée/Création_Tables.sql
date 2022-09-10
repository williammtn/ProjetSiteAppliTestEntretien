
drop schema if exists BaseAppli CASCADE;
create schema BaseAppli;
set search_path to BaseAppli;

create table Reponse(
	id_reponse SERIAL not NULL,
	nb_point int not NULL,
	tmp_reponse int not NULL,
	PRIMARY KEY(id_reponse)

);

create table Question(
	id_question serial not NULL,
	theme varchar(30) not NULL,
	niveau int not NULL CHECK(niveau>0),
	difficulte varchar(30) not NULL,
	reponse int,
	FOREIGN KEY (reponse) REFERENCES Reponse(id_reponse) ON DELETE SET NULL,
	PRIMARY KEY(id_question)

);

create table Partie(
	id_partie SERIAL not NULL,
	nb_partie int not NULL,
	nb_joueur int not NULL CHECK(nb_joueur>1),
	type_partie varchar(20) not null,
	PRIMARY KEY(id_partie)
);

create table Modedejeu(
	id_mode SERIAL  not NULL,
	nom_mode varchar(15) not NULL,
	newgame int,
	FOREIGN KEY (newgame) REFERENCES Partie(id_partie) ON DELETE SET NULL,
	PRIMARY KEY(id_mode)
);

create table Joueur(
	id_joueur serial not NULL,
	nom varchar(15) not NULL,
	prenom varchar(15) not NULL,
	age int check(age>0),
	annee_etude int not NULL,
	score int,
	mode_choisi int,
	FOREIGN KEY (score) REFERENCES Reponse(id_reponse) ON DELETE SET NULL,
	FOREIGN KEY (mode_choisi) REFERENCES Modedejeu(id_mode) ON DELETE SET NULL,
	PRIMARY KEY(id_joueur)
);