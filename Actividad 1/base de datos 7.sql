CREATE TABLE Persona
(
  cod_persona INT NOT NULL,
  nombre_persona VARCHAR(45) NOT NULL,
  tlf_persona CHAR(9) NOT NULL,
  apellido1 VARCHAR(40) NOT NULL,
  apellido2 VARCHAR(40),
  PRIMARY KEY (cod_persona)
);

CREATE TABLE Entrevista
(
  cod_entrevista INT NOT NULL,
  lugar_entrevista VARCHAR(60) NOT NULL,
  Fecha_entrevista DATE NOT NULL,
  cod_persona INT NOT NULL,
  PRIMARY KEY (cod_entrevista),
  FOREIGN KEY (cod_persona) REFERENCES Persona(cod_persona)
);

CREATE TABLE contrato
(
  duración_contrato NUMERIC(4,2) NOT NULL,
  cod_contrato INT NOT NULL,
  tipo_contrato VARCHAR(40) NOT NULL,
  cod_entrevista INT NOT NULL,
  PRIMARY KEY (cod_contrato),
  FOREIGN KEY (cod_entrevista) REFERENCES Entrevista(cod_entrevista)
);