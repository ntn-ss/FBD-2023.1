CREATE TABLE clientes (id INTEGER PRIMARY KEY, nome VARCHAR(50), data_cadastro DATE, cidade varchar(50), uf char(2));
CREATE TABLE categorias (id INTEGER PRIMARY KEY, nome VARCHAR(20));
CREATE TABLE classes (id INTEGER PRIMARY KEY, nome VARCHAR(20), preco DECIMAL (10,2));
CREATE TABLE distribuidores (id INTEGER PRIMARY KEY, nome VARCHAR(50));
CREATE TABLE filmes (id INTEGER PRIMARY KEY, titulo VARCHAR(50), id_distribuidor INTEGER, ano_lancamento INTEGER, id_categoria INTEGER, id_classe INTEGER,
    
    FOREIGN KEY (id_distribuidor) REFERENCES distribuidores(id),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id),
    FOREIGN KEY (id_classe) REFERENCES classes(id));

CREATE TABLE locacoes (id INTEGER PRIMARY KEY, id_cliente INTEGER, id_filme INTEGER, dt_locacao DATE, dt_devolucao_prevista DATE, dt_devolucao DATE, valor DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_filme) REFERENCES filmes(id));

INSERT INTO clientes VALUES
    (1, 'Nathan', '2021-03-08', 'Horizonte', 'CE'),
    (2, 'Fulano', '2023-04-23', 'Quixadá', 'CE'),
    (3, 'Olegário', '2001-01-01', 'Horizonte', 'CE');

INSERT INTO categorias VALUES
    (1, 'Ação'),
    (2, 'Comédia'),
    (3, 'Animação');

INSERT INTO classes VALUES
    (1, 'Lançamento', 20.00),
    (2, 'Fora de Cartaz', 10.00),
    (3, 'Clássico', 5.00);

INSERT INTO distribuidores VALUES
    (1, 'Crunchyroll'),
    (2, 'Televisa'),
    (3, 'PlayArte');

INSERT INTO filmes VALUES
    (1, 'Missão Possível', 2, 2001, 1, 3),
    (2, 'Patati & Patatá', 3, 2020, 2, 2),
    (3, 'Dragão Bola Súper: Super-herói', 1, 2023, 3, 1);

INSERT INTO locacoes VALUES
    (1, 1, 3, '2023-04-16', '2023-04-23', '2023-04-23', 20.00),
    (2, 2, 2, '2023-03-07', '2023-03-14', '2023-03-21', 15.00),
    (3, 3, 1, '2005-01-01', '2005-01-08', '2006-01-01', 270.00);