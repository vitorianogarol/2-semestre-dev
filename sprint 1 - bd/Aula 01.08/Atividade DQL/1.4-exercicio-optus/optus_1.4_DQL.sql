--DQL

-- listar todos os usuários administradores, sem exibir suas senhas

SELECT 
Nome,Permissao
FROM Usuario
WHERE Usuario.Permissao = 'Administrador'

-- listar todos os álbuns lançados após o um determinado ano de lançamento

SELECT DataLancamento
FROM Album
WHERE DataLancamento >= '01/01/2010'

-- listar os dados de um usuário através do e-mail e senha

SELECT 
Email,
Nome,
Permissao
FROM Usuario 
WHERE Email = 'usuario1@gmail.com' AND Senha = '11111'


-- listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 


SELECT 
ALbum.IdAlbum,
Album.Titulo AS 'Titulo do Album',
Album.Ativo AS 'Status do Album',
Artista.Nome AS 'Nome do Artista',
Estilo.Nome AS 'Nome do Estilo'

FROM AlbumEstilo
INNER JOIN Estilo ON AlbumEstilo.IdEstilo = Estilo.IdEstilo
INNER JOIN Album ON AlbumEstilo.IdAlbum = Album.IdAlbum
INNER JOIN Artista ON Album.IdArtista = Artista.IdArtista


WHERE Album.Ativo = 'Ativo'

