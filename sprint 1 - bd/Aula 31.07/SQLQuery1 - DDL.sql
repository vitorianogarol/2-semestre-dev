--DDL - Data Definition Language

--cria banco de dados 
CREATE DATABASE BancoTarde;
------------------------------------------------

-- usa o banco de dados
USE BancoTarde;
---------------------------------------------

----cria a tabela
CREATE TABLE Funcionarios
(
	IdFuncionarios INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(10)
);

CREATE TABLE Empresas 
(
	IdEmpresa INT PRIMARY KEY IDENTITY,
	IdFuncionarios INT FOREIGN KEY REFERENCES Funcionarios(IdFuncionarios),
	Nome VARCHAR(10)
);
--------------------------------------------------

--altera

ALTER TABLE Funcionarios 
ADD Cpf VARCHAR(11)

ALTER TABLE Funcionarios 
DROP COLUMN Cpf 

DROP TABLE Empresas;

DROP DATABASE BancoTarde