-- ITEM 1
SELECT datanasc, endereco FROM funcionario WHERE pnome='João' AND minicial ='B' AND unome='Silva';

-- ITEM 2
SELECT concat(pnome, ' ', minicial, ' ', unome) as nome_completo, endereco FROM funcionario JOIN departamento ON dnr = dnumero WHERE dnome='Pesquisa';

-- ITEM 3
SELECT projnumero, dnum, unome, endereco, datanasc FROM projeto, funcionario JOIN departamento ON cpf_gerente = cpf WHERE projlocal='Maua';

-- ITEM 4
-- Cancelado pelo professor.

-- ITEM 5
SELECT cpf FROM funcionário;

-- ITEM 6
SELECT cpf, dnome FROM funcionario, departamento WHERE dnr = dnumero;

-- ITEM 7
-- Cancelado pelo professor.

-- ITEM 8
SELECT projnumero FROM projeto JOIN departamento ON dnum=dnumero JOIN funcionario ON cpf_gerente = cpf AND unome='Silva';

--ITEM 9
-- Cancelado pelo professor.

-- ITEM 10
SELECT concat(pnome, ' ', minicial, ' ', unome) as nome_completo FROM funcionario WHERE dnr = 5 AND salario > 30000 AND salario < 40000;