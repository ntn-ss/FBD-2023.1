-- ITEM 1
SELECT l.titulo FROM livros l WHERE l.valor = (SELECT MAX(l.valor) FROM livros l);

-- ITEM 2
SELECT a.nome FROM autores a JOIN livros_autores la ON la.id_autor = a.id JOIN livros l ON l.isbn = la.isbn WHERE l.valor = (SELECT MIN(l.valor) FROM livros l);

-- ITEM 3
SELECT a.nome FROM autores a JOIN livros_autores la ON la.id_autor = a.id JOIN livros l ON l.isbn = la.isbn WHERE l.valor > (SELECT AVG(l.valor) FROM livros l) ORDER BY a.nome ASC;

-- ITEM 4
SELECT l.titulo, l.qtd_estoque FROM livros l WHERE l.qtd_estoque>1 ORDER BY l.valor DESC;

-- ITEM 5
SELECT a.id, a.nome, COUNT(*) publicacoes FROM autores a JOIN livros_autores la ON la.id_autor = a.id JOIN livros l ON l.isbn = la.isbn GROUP BY a.id ORDER BY a.id;

-- ITEM 6
SELECT e.nome, MAX(l.valor) valor_max, MIN(l.valor) valor_min FROM editoras e JOIN livros l ON e.id = l.id_editora GROUP BY e.id;

-- ITEM 7
SELECT e.nome, (SELECT MAX(l.valor)) maior_valor FROM editoras e JOIN livros l ON e.id = l.id_editora GROUP BY e.id HAVING (SELECT MIN(l.valor)>30);

-- ITEM 8
SELECT e.id, e.nome, COUNT(l.isbn) livros FROM editoras e JOIN livros l ON e.id = l.id_editora GROUP BY e.id HAVING COUNT(l.isbn) > 1;

-- ITEM 9
SELECT a.nome, COUNT(l.isbn) publicacoes_melhoramentos FROM autores a JOIN livros_autores la ON a.id = la.id_autor JOIN livros l ON l.isbn = la.isbn JOIN editoras e ON l.id_editora = e.id AND e.nome = 'Melhoramentos' GROUP BY a.id;

-- ITEM 10
SELECT a.id, a.nome FROM autores a LEFT JOIN livros_autores la ON a.id = la.id_autor WHERE la.isbn IS NULL;

-- ITEM 11
SELECT l.titulo, l.valor FROM livros l WHERE l.valor >= (SELECT MAX(l.valor) FROM livros l);

-- ITEM 11.1
SELECT l1.titulo, l1.valor FROM livros l1 WHERE NOT EXISTS (SELECT * FROM livros l2 WHERE l2.valor > l1.valor);

-- ITEM 12
SELECT l.titulo titulo_livro, a.nome nome_autor, e.nome editora FROM livros l FULL JOIN editoras e ON l.id_editora = e.id FULL JOIN livros_autores la ON l.isbn = la.isbn FULL JOIN autores a ON a.id = la.id_autor;

-- ITEM 13
CREATE VIEW montantes AS SELECT d.dnome, SUM(f.salario) montante FROM departamento d LEFT JOIN funcionario f ON f.dnr = d.dnumero GROUP BY d.dnumero ORDER BY montante DESC;
SELECT * FROM montantes;

-- ITEM 14
CREATE VIEW contagem_trabalhadores AS SELECT p.projlocal, COUNT(f.cpf) FROM projeto p LEFT JOIN trabalha_em t ON t.pnr = p.projnumero LEFT JOIN funcionario f ON t.fcpf = f.cpf GROUP BY p.projnumero;
SELECT * FROM contagem_trabalhadores;

-- ITEM 15
CREATE VIEW sexo_dependentes AS SELECT CONCAT(f.pnome, ' ', f.minicial, '.', ' ', f.unome) AS nome_completo, (SELECT COUNT(*) FROM dependente d WHERE SEXO='M' AND d.fcpf = f.cpf) AS dependentes_masculinos, (SELECT COUNT(*) FROM dependente d WHERE SEXO='F' AND d.fcpf = f.cpf) AS dependentes_femininos FROM funcionario f GROUP BY f.cpf ORDER BY nome_completo ASC;
SELECT * FROM sexo_dependentes;

-- ITEM 16
CREATE VIEW maior_salario AS SELECT CONCAT(f.pnome, ' ', f.minicial, '.', ' ', f.unome) AS nome_completo, f.salario FROM funcionario f WHERE f.salario = (SELECT MAX(salario) from funcionario);
SELECT * FROM maior_salario;

-- ITEM 16.1
CREATE VIEW maior_salario_v2 AS SELECT CONCAT(f.pnome, ' ', f.minicial, '.', ' ', f.unome) AS nome_completo, f.salario FROM funcionario f WHERE f.salario >= ALL (SELECT salario FROM funcionario);
SELECT * FROM maior_salario_v2;

-- ITEM 17
CREATE VIEW funcionarios_projetos AS SELECT CONCAT(f.pnome, ' ', f.minicial, '. ', f.unome) AS nome_completo, COUNT(t.pnr) AS quantidade_projetos FROM funcionario f JOIN trabalha_em t ON f.cpf = t.fcpf GROUP BY f.cpf, f.pnome, f.minicial, f.unome HAVING COUNT(t.pnr) > 1;
SELECT * FROM funcionarios_projetos;