--DDL ----------------------

CREATE DATABASE Exercicio_1_3;
USE Exercicio_1_3;

-- CRIAR TABELAS ----------------------------

CREATE TABLE Clinica 
(
	IdClinica INT PRIMARY KEY IDENTITY,
	Endereco VARCHAR(20) NOT NULL
);

-------------------------------------------

CREATE TABLE TipoPet 
(
	IdTipoPet INT PRIMARY KEY IDENTITY,
	Descricao VARCHAR(30) NOT NULL UNIQUE 
);

------------------------------------------

CREATE TABLE Raca 
(
	IdRaca INT PRIMARY KEY IDENTITY,
	Descricao VARCHAR(30) NOT NULL
);

------------------------------------------

CREATE TABLE Dono 
(
	IdDono INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20) NOT NULL
);

-------------------------------------------

-------------------------------------------

SELECT * FROM Clinica
SELECT * FROM TipoPet
SELECT * FROM Raca
SELECT * FROM Dono
