-- DML 

INSERT INTO Clinica(Endereco)
VALUES ('EnderecoClinica1'),('EnderecoClinica2')

SELECT * FROM Clinica
----------------------------------------

INSERT INTO TipoPet(Descricao)
VALUES ('Descricao1'),('Descricao2')

SELECT * FROM TipoPet
----------------------------------------

INSERT INTO Raca(Descricao)
VALUES ('Descricao1'),('Descricao2')

SELECT * FROM Raca
----------------------------------------

INSERT INTO Dono(Nome)
VALUES ('Nome1'),('Nome2')

SELECT * FROM Dono
----------------------------------------

INSERT INTO Veteninario(IdClinica, Nome, CRMV)
VALUES (1,'Nome1','000000'),(2,'Nome2','555555')

SELECT * FROM Veteninario
-----------------------------------------

INSERT INTO Pet(IdTipoPet, IdRaca, IdDono, Nome, DataNascimento)
VALUES (1,1,1,'Nome1', '14/12/2022'),(2,2,2,'Nome2', '09/01/2023')

SELECT * FROM Pet
---------------------------------------
INSERT INTO Atendimento(IdVeteninario, IdPet, Descricao, DataAtendimento)
VALUES (1,3,'Descricao1', '22/07/2023'),(2,4,'Descricao2', '31/05/2023')

SELECT * FROM Atendimento
