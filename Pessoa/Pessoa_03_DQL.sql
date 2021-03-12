USE Pessoas;
SELECT * FROM Pessoa;

SELECT * FROM Telefone;

SELECT * FROM Email;

SELECT * FROM CNH;

-- Listar as pessoas em ordem alfabética reversa, mostrando seus telefones, seus e-mails e suas CNHs

SELECT Pessoa.Nome, Telefone.Telefone, CNH.Numero AS CNH, Email.email FROM Pessoa
FULL OUTER JOIN Telefone
ON Pessoa.idPessoa = Telefone.idPessoa
FULL OUTER JOIN CNH
ON Pessoa.idPessoa = CNH.idCNH
FULL OUTER JOIN Email
ON Pessoa.idPessoa = Email.idPessoa
ORDER BY Pessoa.Nome DESC;

