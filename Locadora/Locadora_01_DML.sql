CREATE DATABASE Locadora;
USE Locadora;
CREATE TABLE Empresa
(
	idEmpresa	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL
);

CREATE TABLE PessoaFisica
(
	idPessoa	INT PRIMARY KEY IDENTITY
	,idEmpresa	INT FOREIGN KEY REFERENCES Empresa (idEmpresa)
	,Nome		VARCHAR(200) NOT NULL
);

CREATE TABLE Veiculo
(
	idVeiculo	INT PRIMARY KEY IDENTITY
	,idEmpresa	INT FOREIGN KEY REFERENCES Empresa (idEmpresa)
	,Numero		VARCHAR(200) NOT NULL
);

CREATE TABLE Marca
(
	idMarca	INT PRIMARY KEY IDENTITY
	,idVeiculo	INT FOREIGN KEY REFERENCES Veiculo (idVeiculo)
	,Marca		VARCHAR(200) NOT NULL
);
CREATE TABLE Modelo
(
	idModelo	INT PRIMARY KEY IDENTITY
	,idMarca	INT FOREIGN KEY REFERENCES Marca (idMarca)
	,Modelo		VARCHAR(200) NOT NULL
);
CREATE TABLE Placa
(
	idPlaca		INT PRIMARY KEY IDENTITY
	,idModelo	INT FOREIGN KEY REFERENCES Modelo (idModelo)
	,Numero		VARCHAR(200) NOT NULL
);

CREATE TABLE DataInicio
(
	idDataInicio		INT PRIMARY KEY IDENTITY
	,Inicio				VARCHAR(100) NOT NULL
);
CREATE TABLE DataFim
(
	idDataFim		INT PRIMARY KEY IDENTITY
	,Fim				VARCHAR(100) NOT NULL
);

CREATE TABLE Aluguel
(
	idAluguel			INT PRIMARY KEY IDENTITY
	,idPessoa			INT FOREIGN KEY REFERENCES PessoaFisica (idPessoa)
	,idVeiculo			INT FOREIGN KEY REFERENCES Veiculo (idVeiculo)
	,idDataInicio		INT FOREIGN KEY REFERENCES DataInicio(idDataInicio)
	,idDataFim			INT FOREIGN KEY REFERENCES DataFim(idDataFim)
	,Aluguel			VARCHAR(200) NOT NULL
);
