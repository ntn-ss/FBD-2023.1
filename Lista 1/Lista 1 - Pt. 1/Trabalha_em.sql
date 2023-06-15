CREATE TABLE Trabalha_em (
  Fcpf CHAR(11),
  Pnr INTEGER,
  Horas FLOAT (2),
  FOREIGN KEY (Fcpf) REFERENCES Funcionario(cpf),
  FOREIGN KEY (Pnr) REFERENCES Projeto(Projnumero)
);