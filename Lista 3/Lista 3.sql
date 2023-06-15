-- ITEM 1
SELECT t2.fcpf from trabalha_em t JOIN trabalha_em t2 ON t.fcpf = '12345678966' AND t.pnr=t2.pnr AND t.horas=t2.horas;

-- ITEM 2
SELECT concat(f.pnome, ' ', f.minicial, '.', ' ', f.unome) as nome_completo FROM funcionario f, funcionario f2 WHERE f2.dnr = 5 GROUP BY f.cpf HAVING f.salario > MAX(f2.salario);

-- ITEM 3
SELECT concat(f.pnome, ' ', f.minicial, '.', ' ', f.unome) as nome_completo FROM funcionario f JOIN dependente d ON f.sexo=d.sexo AND d.fcpf = f.cpf;

-- ITEM 4
SELECT DISTINCT concat(f.pnome, ' ', f.minicial, '.', ' ', f.unome) as nome_completo FROM funcionario f JOIN departamento d ON d.cpf_gerente = f.cpf JOIN dependente dep ON dep.fcpf = f.cpf;

-- ITEM 5
SELECT SUM(f.salario) as soma_salarios, AVG(f.salario) AS media_salarios, MIN(f.salario) as menor_salario, MAX(f.salario) as maior_salario FROM funcionario f;

-- ITEM 6
SELECT f.dnr, SUM(f.salario) AS soma_salarios, MIN(f.salario) AS menor_salario, AVG(f.salario) AS salario_medio FROM funcionario f GROUP BY f.dnr ORDER BY f.dnr ASC;

-- ITEM 7
SELECT COUNT(*) from funcionario f;

-- ITEM 8
SELECT f.dnr as departamento, COUNT(*) AS contagem FROM funcionario f GROUP BY f.dnr ORDER BY f.dnr ASC;

-- ITEM 9
SELECT DISTINCT f.salario FROM funcionario f ORDER BY f.salario ASC;

-- ITEM 10
SELECT concat(f.pnome, ' ', f.minicial, '.', ' ', f.unome) AS nome_completo, count(dep.fcpf) AS dependentes FROM funcionario f JOIN dependente dep ON dep.fcpf = f.cpf GROUP BY f.cpf HAVING count(dep.fcpf) > 1;

-- ITEM 11
SELECT f.dnr, COUNT(f.cpf) AS funcionarios, AVG(f.salario) FROM funcionario f GROUP BY f.dnr ORDER BY f.dnr ASC;

-- ITEM 12
SELECT p.projnome, p.projnumero, count(t.fcpf) AS trabalhadores FROM projeto p JOIN trabalha_em t ON p.projnumero=t.pnr GROUP BY p.projnumero ORDER BY p.projnome ASC;