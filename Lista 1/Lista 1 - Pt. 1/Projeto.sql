CREATE TABLE Projeto (
  Projnome VARCHAR(50),
  Projnumero INTEGER PRIMARY KEY,
  Projlocal VARCHAR(50),
  Dnum INTEGER,
  FOREIGN KEY (Dnum) REFERENCES Departamento(Dnumero)
);