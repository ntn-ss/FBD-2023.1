-- ITEM 1
SELECT DISTINCT f.fnome from fornecedor f WHERE fid IN (SELECT fpp.fid FROM fornpecaproj fpp JOIN projetos p ON fpp.jid = p.jid WHERE p.cidade='Quixadá');

-- ITEM 2
SELECT p.pid, p.pnome FROM peca p WHERE p.pid NOT IN (SELECT fpp.pid FROM fornpecaproj fpp WHERE fpp.fid IN (SELECT f.fid FROM fornecedor f WHERE fnome = 'João Maria' OR f.fnome = 'Maria Silva'));

-- ITEM 3
SELECT p.pnome, SUM(fpp.qtd) soma FROM fornpecaproj fpp JOIN peca p ON p.pid = fpp.pid GROUP BY p.pnome ORDER BY p.pnome ASC;

-- ITEM 4
SELECT DISTINCT f.fnome FROM fornecedor f JOIN fornpecaproj fpp ON f.fid = fpp.fid JOIN peca p ON p.pid = 1 AND fpp.pid = p.pid;

-- ITEM 5
SELECT p.pnome from peca p JOIN fornpecaproj fpp ON p.pid = fpp.pid JOIN fornecedor f ON f.fid = 1 AND fpp.fid = f.fid;

-- ITEM 6
SELECT p.pnome, MAX(fpp.qtd), MIN(fpp.qtd) FROM peca p JOIN fornpecaproj fpp ON fpp.pid = p.pid AND fpp.fid <> 1 GROUP BY p.pnome;

-- ITEM 7
SELECT p.pnome, fpp.pid, COUNT(DISTINCT fpp.fid) AS num_fornecedores FROM fornpecaproj fpp JOIN peca p ON p.pid = fpp.pid GROUP BY fpp.pid, p.pnome HAVING COUNT(DISTINCT fpp.fid) > 1;

-- ITEM 8
SELECT f.fnome, fpp.fid, SUM(fpp.qtd) FROM fornecedor f LEFT JOIN fornpecaproj fpp ON f.fid = fpp.fid GROUP BY fpp.fid, f.fnome ORDER BY fpp.fid ASC;