CREATE TABLE fornecedor(fid INTEGER, fnome VARCHAR(30), cidade VARCHAR(30), PRIMARY KEY (fid));
CREATE TABLE peca(pid INTEGER, pnome VARCHAR (30), cor VARCHAR(20), PRIMARY KEY (pid));
CREATE TABLE projetos(jid INTEGER, jnome VARCHAR(30), cidade VARCHAR(30), PRIMARY KEY(jid));
CREATE TABLE fornpecaproj(fid INTEGER, pid INTEGER, jid INTEGER, qtd INTEGER, FOREIGN KEY (fid) REFERENCES fornecedor(fid), FOREIGN KEY (pid) REFERENCES peca(pid), FOREIGN KEY (jid) REFERENCES projetos(jid));

INSERT INTO fornecedor VALUES (1, 'João Maria', 'Quixadá'), (2, 'Maria Silva', 'Horizonte'), (3, 'Tonhão Autopeças', 'Fortaleza'), (4, ‘Tô Triste’, ‘Itapipoca’);
INSERT INTO peca VALUES (1, 'Parafuso X', 'Cinza'), (2, 'Porca X', 'Preto'), (3, 'Marreta', 'Marrom');
INSERT INTO projetos VALUES (1, 'Secreto', 'Miami'), (2, 'Bomba', 'Moscou'), (3, 'Supergalinha', 'Quixadá');
INSERT INTO fornpecaproj VALUES (1, 1, 1, 300), (1, 2, 2, 100), (2, 1, 2, 100), (2, 2, 1, 300), (3, 1, 3, 5000), (3, 3, 2, 1);