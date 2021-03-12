CREATE DATABASE clinicaVeterinaria;
GO

USE clinicaVeterinaria;
GO

CREATE TABLE clinica
(
	 idClinica		INT PRIMARY KEY IDENTITY
	,endereco		VARCHAR(150) UNIQUE NOT NULL
	,razaoSocial	VARCHAR(150) UNIQUE NOT NULL
	,nome			VARCHAR(100) NOT NULL
);
GO

CREATE TABLE veterinario
(
	idVeterinario		INT PRIMARY KEY IDENTITY
	,idClinica			INT FOREIGN KEY REFERENCES clinica(idClinica)
	,veterinario		VARCHAR(150) NOT NULL
	,crmv				VARCHAR(150) UNIQUE NOT NULL
);
GO

CREATE TABLE pet
(
	idPet				INT PRIMARY KEY IDENTITY
	,idClinica			INT FOREIGN KEY REFERENCES clinica(idClinica)
	,nomePet			VARCHAR(150) NOT NULL
	,nascimento			DATE NOT NULL
	,raca				VARCHAR(150) NOT NULL
	,dono				VARCHAR(150) NOT NULL
);
GO

CREATE TABLE atendimento
(
	idAtendimento		INT PRIMARY KEY IDENTITY
	,idVeterinario		INT FOREIGN KEY REFERENCES veterinario(idVeterinario)
	,idPet				INT FOREIGN KEY REFERENCES pet(idPet)
	,descricao			VARCHAR(150) NOT NULL
	,dataconsulta		DATE NOT NULL
);
GO