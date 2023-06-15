INSERT INTO editoras VALUES (
    'Ática',
    'FTD',
    'Melhoramentos',
    'Novatec',
    'Bookman'
);

INSERT INTO autores VALUES (
    'João',
    'Maria',
    'José',
    'Lúcia',
    'Carlos',
    'Pedro',
    'Ana'
);

INSERT INTO livros VALUES
    ('213', 'Banco de Dados', 2011, 2, 50.00, 4),
    ('425', 'Sistemas Operacionais', 2010, 3, 80.00, 3),
    ('732', 'Lógica de Programação', 2009, 1, 60.00, 2),
    ('441', 'Programação Orientada a Objetos', 2012, 1, 70.00, 1),
    ('659', 'Java para Nerds', 2010, 3, 90.00, 1)
    ('863', 'Engenharia de Software', 2010, 2, 40.00, 2)
    ('376', 'Redes de Computadores', 2008, 1, 100.00, 3);

INSERT INTO livros_autores VALUES
    (732, 1),
    (425, 3),
    (659, 4),
    (441, 2),
    (659, 1),
    (425, 5),
    (213, 3);