-- Cria um banco de dados chamados filmes
CREATE DATABASE Filmes;

-- Define o banco de dados que será utilizado Filmes
USE Filmes;

CREATE TABLE Generos
(
	idGenero	INT		Primary Key		Identity
	, Nome		Varchar(200) NOT NULL -- Não nulo
);

CREATE TABLE Filmes
(
	idFilme		INT PRIMARY KEY		Identity
	,idGenero	int FOREIGN KEY REFERENCES Generos (idGenero)
	, Titulo	VARCHAR(150)	NOT NULL 
);
	--		Tabela	 Coluna
INSERT INTO Generos	(Nome)
VALUES	('Ação')
		,('Aventura');

INSERT INTO Generos	(Nome)
VALUES	('Romance')
		,('Ficção');

DELETE FROM Generos WHERE idGenero = 3;

INSERT INTO Filmes (Titulo, idGenero)
VALUES				('Rambo', 1)
				   ,('Vingadores',1)
				   ,('Ghost',2)
				   ,('Diário de uma paixão',2);

INSERT INTO Filmes (Titulo, idGenero)
VALUES				('Homem Aranha', 2)
				   ,('Vingadores',2)

DELETE FROM Filmes WHERE idFilme = 4;

INSERT INTO Filmes (Titulo, idGenero)
VALUES				('Ghost',3)
				   ,('Diário de uma paixão',3);

INSERT INTO Filmes (Titulo)
VALUES				('Irmão Urso');
