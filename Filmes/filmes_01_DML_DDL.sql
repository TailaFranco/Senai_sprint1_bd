-- Cria um banco de dados chamados filmes
CREATE DATABASE Filmes;

-- Define o banco de dados que ser� utilizado Filmes
USE Filmes;

CREATE TABLE Generos
(
	idGenero	INT		Primary Key		Identity
	, Nome		Varchar(200) NOT NULL -- N�o nulo
);

CREATE TABLE Filmes
(
	idFilme		INT PRIMARY KEY		Identity
	,idGenero	int FOREIGN KEY REFERENCES Generos (idGenero)
	, Titulo	VARCHAR(150)	NOT NULL 
);
	--		Tabela	 Coluna
INSERT INTO Generos	(Nome)
VALUES	('A��o')
		,('Aventura');

INSERT INTO Generos	(Nome)
VALUES	('Romance')
		,('Fic��o');

DELETE FROM Generos WHERE idGenero = 3;

INSERT INTO Filmes (Titulo, idGenero)
VALUES				('Rambo', 1)
				   ,('Vingadores',1)
				   ,('Ghost',2)
				   ,('Di�rio de uma paix�o',2);

INSERT INTO Filmes (Titulo, idGenero)
VALUES				('Homem Aranha', 2)
				   ,('Vingadores',2)

DELETE FROM Filmes WHERE idFilme = 4;

INSERT INTO Filmes (Titulo, idGenero)
VALUES				('Ghost',3)
				   ,('Di�rio de uma paix�o',3);

INSERT INTO Filmes (Titulo)
VALUES				('Irm�o Urso');
