--DML

INSERT INTO Pessoa (Nome, CNH)
VALUES ('Carlos','12345'),('Eduardo','54321' )

INSERT INTO Email (IdPessoa, Endereco)
VALUES (1,'carlos@gmail.com')

INSERT INTO Telefone(IdPessoa, Numero)
VALUES (1,'000000')


SELECT * FROM Pessoa
SELECT * FROM Email
SELECT * FROM Telefone