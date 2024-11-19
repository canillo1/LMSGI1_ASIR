CREATE TABLE Persona
(
  nombre_persona VARCHAR(55) NOT NULL,
  cod_persona_ INT NOT NULL,
  tlf_persona CHAR(9) NOT NULL,
  apellido1 VARCHAR(45) NOT NULL,
  apellido2 VARCHAR(45),
  PRIMARY KEY (cod_persona_)
);

CREATE TABLE Entrevista
(
  cod_entrevista INT NOT NULL,
  lugar_entrevista VARCHAR(50) NOT NULL,
  Fecha_entrevista DATE NOT NULL,
  cod_persona_ INT NOT NULL,
  PRIMARY KEY (cod_entrevista),
  FOREIGN KEY (cod_persona_) REFERENCES Persona(cod_persona_)
);

CREATE TABLE contrato
(
  duracion_contrato NUMERIC(4,2) NOT NULL,
  tipo_contrato VARCHAR(45) NOT NULL,
  cod_entrevista INT NOT NULL,
  PRIMARY KEY (cod_entrevista),
  FOREIGN KEY (cod_entrevista) REFERENCES Entrevista(cod_entrevista)
);