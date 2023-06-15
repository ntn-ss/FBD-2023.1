CREATE TABLE Funcionario (
  Pnome VARCHAR(50),
  Minicial CHAR(1),
  Unome VARCHAR(50),
  Cpf CHAR(11) PRIMARY KEY,
  Datanasc DATE,
  Endereco VARCHAR(150),
  Sexo CHAR(1),
  Salario FLOAT (2),
  Cpf_supervisor CHAR(11),
  Dnr INTEGER,
  FOREIGN KEY (Dnr) REFERENCES Departamento(Dnumero),
  FOREIGN KEY (Cpf_supervisor) REFERENCES Funcionario(Cpf)
);