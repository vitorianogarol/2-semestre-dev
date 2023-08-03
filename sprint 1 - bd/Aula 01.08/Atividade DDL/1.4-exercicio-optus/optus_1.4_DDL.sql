-- DDL

CREATE DATABASE Exercicio_1_4_V;
USE Exercicio_1_4_V;

CREATE TABLE Artista
(
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20) NOT NULL
);

---------------------------------------
CREATE TABLE Estilo
(
	IdEstilo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20) NOT NULL
);

---------------------------------------

CREATE TABLE Usuario
(
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20) NOT NULL,
	Email VARCHAR(20) NOT NULL UNIQUE,
	Senha VARCHAR(20) NOT NULL,
	Permissao VARCHAR(20) NOT NULL
);

------------------------------------

CREATE TABLE Album 
(
	IdAlbum INT PRIMARY KEY IDENTITY,
	IdArtista INT FOREIGN KEY REFERENCES Artista(IdArtista) NOT NULL,
	Titulo VARCHAR(20),
	DataLancamento DATE,
	Localizacao VARCHAR(20),
	QtdMinutos VARCHAR(20),
	Ativo VARCHAR(20)
);

------------------------------------
CREATE TABLE AlbumEstilo
(
	IdAlbum INT FOREIGN KEY REFERENCES Album(IdAlbum) NOT NULL,
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo) NOT NULL
);

------------------------------------

SELECT * FROM Artista
SELECT * FROM Estilo
SELECT * FROM Usuario
SELECT * FROM Album
SELECT * FROM AlbumEstilo