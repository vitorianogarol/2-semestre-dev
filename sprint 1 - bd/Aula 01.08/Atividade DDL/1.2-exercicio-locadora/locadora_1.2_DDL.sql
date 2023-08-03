--DDL -------------------------------

-- CRIAR TABELAS

CREATE DATABASE Exercicio_1_2_V;
USE Exercicio_1_2_V;

------------------------------------------
CREATE TABLE Empresa 
(
	IdEmpresa INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20) NOT NULL 
);
---------------------------------------------

CREATE TABLE Modelo 
(
	IdModelo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20) NOT NULL 
);

----------------------------------------------

CREATE TABLE Marca 
(
	IdMarca INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20) NOT NULL 
);

-------------------------------------------------

CREATE TABLE Cliente 
(
	IdCliente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (20) NOT NULL,
	CPF VARCHAR (11) NOT NULL UNIQUE
);

---------------------------------------------

CREATE TABLE Veiculo
(
	IdVeiculo INT PRIMARY KEY IDENTITY,
	IdEmpresa INT FOREIGN KEY REFERENCES Empresa(IdEmpresa) NOT NULL,
	IdModelo INT FOREIGN KEY REFERENCES Modelo(IdModelo) NOT NULL,
	IdMarca INT FOREIGN KEY REFERENCES Marca(IdMarca) NOT NULL,
	Placa VARCHAR(7) NOT NULL UNIQUE
);
---------------------------------------------
CREATE TABLE Aluguel 
(
	IdAluguel INT PRIMARY KEY IDENTITY,
	IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente),
	IdVeiculo INT FOREIGN KEY REFERENCES Veiculo(IdVeiculo),
	Protocolo VARCHAR(20) NOT NULL UNIQUE 
);
---------------------------------------------
SELECT * FROM Empresa
SELECT * FROM Modelo
SELECT * FROM Marca
SELECT * FROM Cliente
SELECT * FROM Veiculo
SELECT * FROM Aluguel
