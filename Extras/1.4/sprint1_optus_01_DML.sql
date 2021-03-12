USE Optus;

INSERT INTO empresa(Nome)
VALUES		('Optus Musical');

INSERT INTO tiposUsuarios(tipoUsuario)
VALUES		('Administrador')
			,('Comum');

INSERT INTO usuarios(idEmpresa,idTipoUsuario,nome,email,senha)
VALUES		 (1, 1, 'Admin', 'adm@adm.com', 'segredo123456')
			,(1, 2, 'Aninha', 'ana@email.com', 'secret123')
			,(1, 2, 'Maria', 'maria@email.com', 'seila');

INSERT INTO artistas(nomeArtista)
VALUES		('Pitty')
			,('Melim');

INSERT INTO artistas(nomeArtista)
VALUES		('Taylor Swift');

INSERT INTO estilos(nomeEstilo)
VALUES		('Reggae')
			,('Folk')
			,('Rock');

INSERT INTO albuns(idEmpresa, idArtista, idEstilo,titulo,datalancamento,tempo,visualizacao)
VALUES			(1,1,3,'Admiravel Chip Novo', '07/05/2003', '39:31', 'ativo')
				,(1,2,1,'Melim', '07/12/2018', '32:59', 'inativo');

INSERT INTO albuns(idEmpresa, idArtista, idEstilo,titulo,datalancamento,tempo,visualizacao)
VALUES			(1,3,2,'Fearless', '11/11/2008', '53:47', 'ativo');



