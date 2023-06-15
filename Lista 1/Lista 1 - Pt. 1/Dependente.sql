CREATE TABLE Dependente(
  Fcpf CHAR(11),
  Nome_dependente VARCHAR(50),
  Sexo CHAR(1),
  Datanasc DATE,
  Parentesco VARCHAR(30),
  FOREIGN KEY (Fcpf) REFERENCES Funcionario(cpf)
);