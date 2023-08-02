--DML --------------------

USE Exercicio_1_2;


--INSERIR----------------------

INSERT INTO Empresa(Nome)
VALUES ('Exemplo1'),('Exemplo1')
-----------------------------------

INSERT INTO Modelo(Nome)
VALUES ('Exemplo1'),('Exemplo1')

-----------------------------------

INSERT INTO Marca(Nome)
VALUES ('Exemplo1'),('Exemplo1')
------------------------------------

INSERT INTO Cliente (Nome,CPF)
VALUES ('Cliente1', 123456), ('Cliente2', 654321)
------------------------------------

INSERT INTO Veiculo(IdEmpresa,IdModelo,IdMarca,Placa)
VALUES (1,1,1,'1234567'),(2,2,2,'7654321')

------------------------------------

INSERT INTO Aluguel(IdCliente,IdVeiculo,Protocolo)
VALUES (1,1,'123'),(1,1,'321')

------------------------------------

SELECT * FROM Empresa
SELECT * FROM Modelo
SELECT * FROM Marca
SELECT * FROM Cliente
SELECT * FROM Veiculo
SELECT * FROM Aluguel