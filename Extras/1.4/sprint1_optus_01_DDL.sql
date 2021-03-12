CREATE DATABASE Optus;
GO

USE Optus;
GO

CREATE TABLE empresa
(
	idEmpresa INT PRIMARY KEY Identity
	,Nome	  VARCHAR(110) NOT NULL

);
GO

CREATE TABLE tiposUsuarios
(
	idTipoUsuario	INT PRIMARY KEY IDENTITY
	,tipoUsuario	VARCHAR(100) NOT NULL
);
GO

CREATE TABLE usuarios
(
	idUsuario		INT PRIMARY KEY IDENTITY
	,idEmpresa		INT FOREIGN KEY REFERENCES empresa(idEmpresa)
	,idTipoUsuario	INT FOREIGN KEY REFERENCES tiposUsuarios(idTipoUsuario)
	,nome			VARCHAR(110) NOT NULL
	,email			VARCHAR(150) NOT NULL
	,senha			VARCHAR(110) NOT NULL
);
GO

CREATE TABLE artistas
(
	idArtista	INT PRIMARY KEY IDENTITY
	,nomeArtista		VARCHAR(110) NOT NULL
);
GO

CREATE TABLE estilos
(
	idEstilo	INT PRIMARY KEY IDENTITY
	,nomeEstilo		VARCHAR(150) NOT NULL
);
GO

CREATE TABLE albuns
(
	idAlbuns	INT PRIMARY KEY IDENTITY
	,idEmpresa	INT FOREIGN KEY REFERENCES empresa(idEmpresa)
	,idArtista	INT FOREIGN KEY REFERENCES artistas(idArtista)
	,idEstilo	INT FOREIGN KEY REFERENCES estilos(idEstilo)
	,titulo			VARCHAR(150) NOT NULL
	,datalancamento	DATE	NOT NULL
	,tempo			VARCHAR(200) NOT NULL
	,visualizacao	VARCHAR(150) NOT NULL
);
GO
