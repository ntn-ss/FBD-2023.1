-- ITEM 1
SELECT * FROM funcionario WHERE endereco LIKE '%São Paulo, SP';

-- ITEM 2
SELECT d.dnome, concat(f.pnome, ' ', f.minicial, ' ',f.unome) AS nome_completo, p.projnome FROM funcionario f, departamento d, trabalha_em t, projeto p WHERE d.dnumero = f.dnr AND t.fcpf = f.cpf AND t.pnr = projnumero ORDER BY d.dnome, f.unome, f.pnome;

-- ITEM 3
SELECT concat(f.pnome, ' ', f.minicial, ' ',f.unome) AS nome_completo FROM funcionario f JOIN trabalha_em t ON t.fcpf = f.cpf JOIN projeto p ON t.pnr = p.projnumero WHERE dnr=5 AND t.horas > 10 AND p.projnome = 'ProdutoX';

-- ITEM 4
SELECT concat(f.pnome, ' ', f.minicial, ' ',f.unome) AS nome_completo, concat (f2.pnome, ' ', f2.minicial, ' ',f2.unome) AS nome_completo_supervisor FROM funcionario f, funcionario f2 WHERE f2.pnome = 'Fernando' AND f2.unome = 'Wong' AND f.cpf_supervisor = f2.cpf;

-- ITEM 5
SELECT concat(f.pnome, ' ', f.minicial, ' ',f.unome) AS nome_completo FROM funcionario f, dependente d WHERE d.nome_dependente = f.pnome;

-- ITEM 6
SELECT concat(f.pnome, ' ', f.minicial, ' ',f.unome) AS nome_completo from funcionario f WHERE f.cpf_supervisor IS NULL;

-- ITEM 7
SELECT f2.cpf FROM funcionario f JOIN trabalha_em t ON f.cpf = t.fcpf JOIN trabalha_em t2 ON t.pnr = t2.pnr AND t.horas = t2.horas JOIN funcionario f2 ON t2.fcpf = f2.cpf WHERE f.cpf = '12345678966';

-- ITEM 8
SELECT concat(f.pnome, ' ', f.minicial, ' ',f.unome) AS nome_completo FROM funcionario f WHERE f.salario > (SELECT MAX(f2.salario) FROM funcionario f2 WHERE f2.dnr = 5);

-- ITEM 9
SELECT concat(f.pnome, ' ', f.minicial, ' ',f.unome) AS nome_completo FROM funcionario f, dependente d WHERE d.sexo = f.sexo AND d.fcpf = f.cpf;

-- ITEM 10
SELECT DISTINCT concat(f.pnome, ' ', f.minicial, ' ',f.unome) AS nome_completo FROM funcionario f JOIN departamento d ON d.cpf_gerente = f.cpf JOIN dependente dp ON dp.fcpf=f.cpf;

-- ITEM 11
SELECT f.cpf FROM funcionario f JOIN trabalha_em t ON t.fcpf = f.cpf WHERE t.pnr IN (1, 2, 3);

-- ITEM 12
SELECT DISTINCT f.salario from funcionario f;

-- ITEM 13
SELECT concat(f.pnome, ' ', f.minicial, ' ',f.unome) AS nome_completo, f.salario*1.1 AS salario_acrescido FROM funcionario f JOIN trabalha_em t ON t.fcpf = f.cpf JOIN projeto p ON t.pnr=p.projnumero AND p.projnome='ProdutoX';