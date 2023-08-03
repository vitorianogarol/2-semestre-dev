--DDL ----------------------

CREATE DATABASE Exercicio_1_3_V;
USE Exercicio_1_3_V;

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
CREATE TABLE Veteninario
(
	IdVeteninario INT PRIMARY KEY IDENTITY,
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica) NOT NULL,
	Nome VARCHAR(20) NOT NULL,
	CRMV VARCHAR(20) NOT NULL UNIQUE 

);
-------------------------------------------
CREATE TABLE Pet
(
	IdPet INT PRIMARY KEY IDENTITY,
	IdTipoPet INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet) NOT NULL,
	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca) NOT NULL,
	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono) NOT NULL,
	Nome VARCHAR(30) NOT NULL,
	DataNascimento DATE
	
);
-------------------------------------------
CREATE TABLE Atendimento 
(
	IdAtendimento INT PRIMARY KEY IDENTITY,
	IdVeteninario INT FOREIGN KEY REFERENCES Veteninario(IdVeteninario) NOT NULL,
	IdPet INT FOREIGN KEY REFERENCES Pet(IdPet) NOT NULL,
	Descricao VARCHAR(30) NOT NULL,
	DataAtendimento DATE
);
-------------------------------------------
SELECT * FROM Clinica
SELECT * FROM TipoPet
SELECT * FROM Raca
SELECT * FROM Dono
SELECT * FROM Veteninario
SELECT * FROM Pet
SELECT * FROM Atendimento
