--DML

USE Exercicio_1_4_V;

INSERT INTO Artista(Nome)
VALUES ('Nome1'),('Nome2')

SELECT * FROM Artista

--------------------------------

INSERT INTO Estilo(Nome)
VALUES ('Nome1'),('Nome2')

SELECT * FROM Estilo

--------------------------------

INSERT INTO Usuario (Nome, Email, Senha, Permissao)
VALUES ('Usuario1','usuario1@gmail.com','11111', 'Administrador'),('Usuario2','usuario2@gmail.com','222222', 'Comum')

SELECT * FROM Usuario

--------------------------------

INSERT INTO Album(IdArtista, Titulo, DataLancamento, Localizacao, QtdMinutos, Ativo)
VALUES (1,'Titulo1','11/07/2005', 'Localizacao1', '20min', 'Ativo'),(2,'Titulo2','19/02/2012', 'Localizacao2', '45min', 'Desativo')

SELECT * FROM Album

--------------------------------

INSERT INTO AlbumEstilo(IdAlbum,IdEstilo)
VALUES (1,2),(2,1)

SELECT * FROM AlbumEstilo