USE Locadora;


SELECT * FROM Empresa;

SELECT * FROM PessoaFisica;

SELECT * FROM Veiculo;

SELECT * FROM Marca;

SELECT * FROM Modelo;

SELECT * FROM Placa;

SELECT * FROM DataInicio;

SELECT * FROM DataFim;

--DQL
-- Listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro
SELECT PessoaFisica.Nome, Veiculo.Numero AS NumeroVeiculo, DataInicio.Inicio as Retirada, DataFim.Fim as Devolução  FROM Aluguel
LEFT JOIN PessoaFisica
ON Aluguel.idPessoa = PessoaFisica.idPessoa
LEFT JOIN Veiculo
ON Aluguel.idVeiculo = Veiculo.idVeiculo
LEFT JOIN DataInicio
ON Aluguel.idDataInicio = DataInicio.idDataInicio
LEFT JOIN DataFim
ON Aluguel.idDataFim = DataFim.idDataFim;
-- Listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro

