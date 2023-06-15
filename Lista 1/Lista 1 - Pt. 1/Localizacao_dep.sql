CREATE TABLE Localizacao_dep (
  Dnumero INTEGER,
  Dlocal VARCHAR(50),
  FOREIGN KEY (Dnumero) REFERENCES Departamento(Dnumero)
);