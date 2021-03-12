CREATE DATABASE Gufi;
GO -- O go faz uma pausa para saber qual bloco irei executar primeiro

USE Gufi;
GO

CREATE TABLE tiposUsuarios
(
	 idTipoUsuario		INT PRIMARY KEY IDENTITY
	,tituloTipoUsuario		VARCHAR(100) UNIQUE NOT NULL --Unique significa que o valor � �nico
);
GO

CREATE TABLE usuarios
(
	 idUsuario		INT PRIMARY KEY IDENTITY
	,idTipoUsuario	INT FOREIGN KEY	REFERENCES tiposUsuarios(idTipoUsuario)
	,nomeUsuario	VARCHAR(150) NOT NULL
	,email			VARCHAR(150) UNIQUE NOT NULL
	,senha			VARCHAR(150) NOT NULL
);
GO

CREATE TABLE tiposEventos
(
	 idTipoEvento			INT PRIMARY KEY IDENTITY
	,tituloTipoEvento		VARCHAR(150) UNIQUE NOT NULL
);
GO

CREATE TABLE instituicoes
(
	 idInstituicao			INT PRIMARY KEY IDENTITY
	,cnpj					CHAR(14) UNIQUE NOT NULL
	,nomeFantasia			VARCHAR(150) NOT NULL
	,endereco				VARCHAR(150) UNIQUE NOT NULL
);
GO

CREATE TABLE eventos
(
	 idEvento		INT PRIMARY KEY IDENTITY
	,idTipoEvento	INT FOREIGN KEY REFERENCES tiposEventos (idTipoEvento)
	,idInstituicao	INT FOREIGN KEY REFERENCES instituicoes (idInstituicao)
	,nomeEvento		VARCHAR(200) NOT NULL
	,acessoLivre	BIT DEFAULT (1) --bit s� pode ter dois valores zero ou um // default define um padr�o que ser� colocado entre parenteses, assim se n�o for informado seguir� o padr�o 
	,dataEvento		DATE NOT NULL
	,descricao		VARCHAR(250)
);
GO

CREATE TABLE presencas
(
	idPresenca	INT PRIMARY KEY IDENTITY
	,idUsuario	INT FOREIGN KEY REFERENCES usuarios(idUsuario)
	,idEvento	INT FOREIGN KEY REFERENCES eventos(idEvento)
	,situacao	VARCHAR(150) NOT NULL
);
GO