--DML - DATA MANIPULATION LANGUAGE

INSERT INTO Funcionarios(Nome)
VALUES ('VITÓRIA')

UPDATE Funcionarios 
SET Nome = 'Vitoria' WHERE Nome = 'VITORIA'

UPDATE Funcionarios 
SET Nome = 'Vitoria' WHERE IdFuncionarios = 2

DELETE FROM Funcionarios WHERE IdFuncionarios = 2

INSERT INTO Empresas(IdFuncionarios, Nome)
VALUES (3, 'GOOGLE')


