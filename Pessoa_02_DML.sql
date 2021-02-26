USE Pessoas;
INSERT INTO Pessoa (Nome)
VALUES				('Pedrinho')
					,('Ana')
					,('Maria');

INSERT INTO Telefone (Telefone, idPessoa)
VALUES				('12345678', 1 )
					,('87654321',2)
					,('32123465',3);

INSERT INTO Email (email, idPessoa)
VALUES			  ('ana@email.com', 2)
				 ,('pedrinho@email.com',1)
				 ,('pedroca@email.com',1)
				 ,('maria@email.com',3);

INSERT INTO CNH (Numero, idPessoa)
VALUES			('000123456789',1)
			    ,('000987654321',2)
				,('000123212345',3);