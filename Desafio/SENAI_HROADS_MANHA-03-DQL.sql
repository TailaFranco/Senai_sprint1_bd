USE Hroads;

--6.	Selecionar todos os personagens;
SELECT * FROM Personagem;

--7.	Selecionar todos as classes;
SELECT * FROM Classe;

--8.	Selecionar somente o nome das classes;
SELECT Classe.NomeClasse AS Classe FROM Classe;

--9.	Selecionar todas as habilidades;
SELECT * FROM Habilidade;

--10.	Realizar a contagem de quantas habilidades estão cadastradas;
SELECT COUNT (*) AS Quantidade FROM Habilidade;

--11.	Selecionar somente os id’s das habilidades classificando-os por ordem crescente;
SELECT Habilidade.idHabilidade FROM Habilidade;

--12.	Selecionar todos os tipos de habilidades;
SELECT Tipo.idTipo AS id,Tipo.NomeTipo AS Tipo FROM Tipo;

--13.	Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte;
SELECT Habilidade.idHabilidade, Habilidade.NomeHabilidade AS Habilidade, Tipo.NomeTipo AS Tipo FROM Habilidade
LEFT JOIN Tipo
ON Habilidade.idTipo = Tipo.idTipo;

--14.	Selecionar todos os personagens e suas respectivas classes;
SELECT Personagem.NomePersonagem AS Nome, Personagem.idPersonagem AS Personagem, Classe.NomeClasse AS Classe FROM Personagem
LEFT JOIN Classe
ON Personagem.idClasse = Classe.idClasse;

--15.	Selecionar todos os personagens e as classes (mesmo que elas não tenham correspondência em personagens);
SELECT  Personagem.NomePersonagem AS Nome, Personagem.idPersonagem AS Personagem, Classe.NomeClasse AS Classe FROM Personagem
FULL OUTER JOIN Classe
ON Personagem.idClasse = Classe.idClasse;

--16.	Selecionar todas as classes e suas respectivas habilidades;
SELECT Classe.idClasse AS ID, Classe.NomeClasse AS Classe, Habilidade.NomeHabilidade AS Habilidade FROM ClasseHabilidade
FULL OUTER JOIN Classe
ON ClasseHabilidade.idClasse = Classe.idClasse
FULL OUTER JOIN Habilidade
ON ClasseHabilidade.idHabilidade = Habilidade.idHabilidade;

--17.	Selecionar todas as habilidades e suas classes (somente as que possuem correspondência);
SELECT  Habilidade.idHabilidade AS ID, Habilidade.NomeHabilidade AS Habilidade, Classe.NomeClasse AS Classe FROM ClasseHabilidade
LEFT JOIN Classe
ON ClasseHabilidade.idClasse = Classe.idClasse
LEFT JOIN Habilidade
ON ClasseHabilidade.idHabilidade = Habilidade.idHabilidade;

--18.	Selecionar todas as habilidades e suas classes (mesmo que elas não tenham correspondência).
SELECT  Habilidade.idHabilidade AS ID, Habilidade.NomeHabilidade AS Habilidade, Classe.NomeClasse AS Classe FROM ClasseHabilidade
FULL OUTER JOIN Classe
ON ClasseHabilidade.idClasse = Classe.idClasse
FULL OUTER JOIN Habilidade
ON ClasseHabilidade.idHabilidade = Habilidade.idHabilidade;

