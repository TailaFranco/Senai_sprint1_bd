USE Optus;
-- Select de tudo
SELECT * FROM usuarios;
SELECT * FROM empresa;
SELECT * FROM artistas;
SELECT * FROM estilos;
SELECT * FROM albuns;
SELECT * FROM tiposUsuarios;

-- listar todos os usuários administradores, sem exibir suas senhas
SELECT usuarios.idUsuario ID, usuarios.nome, usuarios.email, tiposUsuarios.tipoUsuario tipo FROM usuarios
LEFT JOIN tiposUsuarios
ON usuarios.idTipoUsuario = tiposUsuarios.idTipoUsuario
WHERE usuarios.idTipoUsuario =1;

-- listar todos os álbuns lançados após o um determinado ano de lançamento
SELECT * From albuns
WHERE albuns.datalancamento between '01/10/2005' AND '05/10/2021'
ORDER BY albuns.datalancamento DESC ;

-- listar os dados de um usuário através do e-mail e senha
SELECT usuarios.email, usuarios.senha FROM usuarios;

-- listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum
SELECT albuns.idAlbuns ID, albuns.titulo, artistas.nomeArtista, albuns.visualizacao From albuns
LEFT JOIN artistas
ON albuns.idArtista = artistas.idArtista
LEFT JOIN estilos
ON albuns.idEstilo = estilos.idEstilo
WHERE albuns.visualizacao = 'ativo';