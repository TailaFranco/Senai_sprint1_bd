USE Filmes;

SELECT * FROM Generos;


SELECT * FROM Filmes;

-- As (Alias == Apelido) utilizado para mudar o nome (do texto)
-- Para o caso a seguir a alteração é apenas visual...
--Utilizando INNER JOIN 
--Nesse caso mostra apenas a intersecção com base no idGenero

SELECT Filmes.idFilme as Código, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes
INNER JOIN Generos
ON Filmes.idGenero = Generos.idGenero;

--Utilizando LEFT JOIN 
--Nesse caso mostra a intersecção com base no idGenero e todos os dados da tabela a esquerda, logo mostra todos os filmes cadastrados mesmo sem genero...

SELECT Filmes.idFilme as Código, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes
LEFT JOIN Generos
ON Filmes.idGenero = Generos.idGenero;

--Utilizando RIGHT JOIN 
--Nesse caso mostra a intersecção com base no idGenero e todos os dados da tabela a direita, logo mostra todos os generos cadastrados mesmo sem filme...

SELECT Filmes.idFilme as Código, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes
RIGHT JOIN Generos
ON Filmes.idGenero = Generos.idGenero;

--Utilizando FULL OUTER JOIN 
--Nesse caso mostra TUDO solicitado de ambas as tabelas
SELECT Filmes.idFilme as Código, Filmes.Titulo AS Filme, Generos.Nome AS Genero FROM Filmes
FULL OUTER JOIN Generos
ON Filmes.idGenero = Generos.idGenero;






