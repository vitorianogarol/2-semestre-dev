--DQL

-- listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro
-- listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro

SELECT Protocolo
FROM Aluguel INNER JOIN Cliente
ON Aluguel.Protocolo = Cliente.Nome

