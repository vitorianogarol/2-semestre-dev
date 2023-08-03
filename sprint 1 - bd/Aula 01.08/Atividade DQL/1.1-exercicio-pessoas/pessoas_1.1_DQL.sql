-- SCRIPT SEM USAR JOIN

-- DQL

-- SCRIPT SEM USAR JOIN

SELECT 

P.Nome AS NomePessoa,
Telefone.Numero AS Telefone,
E.Endereco AS Email,
P.CNH AS PessoaCNH

FROM 
Pessoa AS P,
Email AS E,
Telefone

WHERE 
P.IdPessoa = E.IdPessoa 
AND P.IdPessoa = Telefone.IdPessoa 

ORDER BY
Nome DESC 

insert into Pessoa 
(Nome, CNH)
values
('Gabriel', '4958346'),
('Vitoria', '3738022'),
('Vinicius', '3463453'),
('Gustavo', '35435644');

SELECT * FROM Pessoa