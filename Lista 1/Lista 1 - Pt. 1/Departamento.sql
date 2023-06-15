CREATE TABLE Departamento (
  Dnome VARCHAR(50),
  Dnumero INTEGER PRIMARY KEY,
  Cpf_gerente CHAR(11),
  Data_inicio_gerente DATE,
  FOREIGN KEY (Cpf_gerente) REFERENCES Funcionario(cpf)
);