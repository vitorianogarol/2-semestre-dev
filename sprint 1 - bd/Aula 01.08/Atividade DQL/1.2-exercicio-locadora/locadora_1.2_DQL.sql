--DQL

-- listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro

USE Exercicio_1_2_V;

SELECT 

Aluguel.Protocolo AS 'Aluguel',
Cliente.Nome AS 'Nome do Cliente',
Modelo.Nome AS 'Nome do Modelo'

FROM Aluguel 
INNER JOIN Cliente ON Cliente.IdCliente = Aluguel.IdCliente 
INNER JOIN Veiculo ON Aluguel.IdVeiculo = Veiculo.IdVeiculo
INNER JOIN Modelo ON Veiculo.IdModelo = Modelo.IdModelo

-- listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro


SELECT 

Aluguel.Protocolo AS 'Aluguel',
Cliente.Nome AS 'Nome do Cliente',
Modelo.Nome AS 'Nome do Modelo'

FROM Aluguel 
INNER JOIN Cliente ON Cliente.IdCliente = Aluguel.IdCliente 
INNER JOIN Veiculo ON Aluguel.IdVeiculo = Veiculo.IdVeiculo
INNER JOIN Modelo ON Veiculo.IdModelo = Modelo.IdModelo

WHERE Cliente.Nome = 'Cliente1'
