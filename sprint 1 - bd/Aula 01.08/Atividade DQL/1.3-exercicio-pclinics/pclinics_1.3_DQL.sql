-- DQL
USE Exercicio_1_3_V;

-- listar todos os veterinários (nome e CRMV) de uma clínica (razão social)


SELECT 
Clinica.IdClinica AS 'Clinica',
Veteninario.Nome AS 'Nome do Veteninario',
Veteninario.CRMV AS 'CRMV Veteninario'


FROM Clinica
INNER JOIN Veteninario ON  Clinica.IdClinica = Veteninario.IdClinica

WHERE Clinica.IdClinica = 1


-- listar todas as raças que começam com a letra S

INSERT INTO Raca(Descricao)
VALUES ('Shih Tzu')

SELECT * FROM Raca
WHERE Raca.Descricao LIKE 'S%'

-- listar todos os tipos de pet que terminam com a letra O

INSERT INTO TipoPet(Descricao)
VALUES ('Cachorro')

SELECT * FROM TipoPet
WHERE TipoPet.Descricao LIKE '%o'

-- listar todos os pets mostrando os nomes dos seus donos

SELECT 
Pet.Nome AS 'Nome do Pet',
Dono.Nome AS 'Nome do Dono'

FROM Pet INNER JOIN Dono ON Pet.IdDono = Dono.IdDono


-- listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome, a raça e o tipo do pet que foi atendido,
--o nome do dono do pet e o nome da clínica onde o pet foi atendido


SELECT 
Atendimento.IdAtendimento AS 'Atendimento',
Veteninario.Nome AS 'Nome do Veteninario',
Pet.Nome AS 'Nome do Pet',
Raca.Descricao AS 'Raça',
TipoPet.Descricao AS 'Tipo de Pet',
Dono.Nome AS 'Nome do Dono' ,
Clinica.IdClinica AS 'Nome da Clinica'

FROM Atendimento
INNER JOIN Veteninario ON Atendimento.IdVeteninario = Veteninario.IdVeteninario
INNER JOIN Pet ON Pet.IdPet = Atendimento.IdPet
INNER JOIN Raca ON Pet.IdRaca = Pet.IdRaca
INNER JOIN TipoPet ON TipoPet.IdTipoPet = Pet.IdTipoPet
INNER JOIN Dono ON Dono.IdDono = Pet.IdDono
INNER JOIN Clinica ON Clinica.IdClinica = Veteninario.IdClinica







