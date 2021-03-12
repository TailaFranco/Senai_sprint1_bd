USE Optus;
-- Select de tudo
SELECT * FROM usuarios;
SELECT * FROM empresa;
SELECT * FROM artistas;
SELECT * FROM estilos;
SELECT * FROM albuns;
SELECT * FROM tiposUsuarios;

-- listar todos os usu�rios administradores, sem exibir suas senhas
SELECT usuarios.idUsuario ID, usuarios.nome, usuarios.email, tiposUsuarios.tipoUsuario tipo FROM usuarios
LEFT JOIN tiposUsuarios
ON usuarios.idTipoUsuario = tiposUsuarios.idTipoUsuario
WHERE usuarios.idTipoUsuario =1;

-- listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento
SELECT * From albuns
WHERE albuns.datalancamento between '01/10/2005' AND '05/10/2021'
ORDER BY albuns.datalancamento DESC ;

-- listar os dados de um usu�rio atrav�s do e-mail e senha
SELECT usuarios.email, usuarios.senha FROM usuarios;

-- listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum
SELECT albuns.idAlbuns ID, albuns.titulo, artistas.nomeArtista, albuns.visualizacao From albuns
LEFT JOIN artistas
ON albuns.idArtista = artistas.idArtista
LEFT JOIN estilos
ON albuns.idEstilo = estilos.idEstilo
WHERE albuns.visualizacao = 'ativo';