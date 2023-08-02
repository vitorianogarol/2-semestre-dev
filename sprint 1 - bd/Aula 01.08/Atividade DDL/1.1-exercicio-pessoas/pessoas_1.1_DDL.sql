CREATE DATABASE Exercicio_1_1;

USE Exercicio_1_1;

CREATE TABLE Pessoa
(
   IdPessoa INT PRIMARY KEY IDENTITY,
   Nome VARCHAR(20) NOT NULL,
   CNH VARCHAR(10) NOT NULL UNIQUE

);

CREATE TABLE Telefone
(
	IdTelefone INT PRIMARY KEY IDENTITY,
	IdPessoa INT FOREIGN KEY REFERENCES Pessoa(IdPessoa),
	Numero VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE Email 
(
	IdEmail INT PRIMARY KEY IDENTITY,
	IdPessoa INT FOREIGN KEY REFERENCES Pessoa(IdPessoa) NOT NULL,
	Endereco VARCHAR(30) NOT NULL UNIQUE 
);

SELECT * FROM Email


