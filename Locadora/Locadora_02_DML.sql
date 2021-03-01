USE Locadora;

INSERT INTO Empresa (Nome)
VALUES				('Unidos');

INSERT INTO PessoaFisica (Nome, idEmpresa)
VALUES				('Ana Maria', 1);

INSERT INTO Veiculo	(Numero, idEmpresa)
VALUES				('00001', 1);

INSERT INTO Veiculo	(Numero, idEmpresa)
VALUES				('00002', 1);

INSERT INTO Marca	(Marca, idVeiculo)
VALUES				('Volkswagen', 1)
,					('Ford', 3)
;

INSERT INTO Modelo	(Modelo,idMarca)
VALUES				('Fusca', 3)
,					('Ecosport', 4)
;

INSERT INTO Placa	(Numero,idModelo)
VALUES				('CNK-4343', 1)
,					('VJI-0987', 2)
;

INSERT INTO DataInicio (Inicio)
VALUES					('22/04/2020');

INSERT INTO DataFim (Fim)
VALUES					('22/05/2020');

INSERT INTO Aluguel (idPessoa, idVeiculo, idDataInicio, idDataFim, Aluguel)
VALUES				(    1   ,     1    ,      1      ,     1    , '1000')
;

;