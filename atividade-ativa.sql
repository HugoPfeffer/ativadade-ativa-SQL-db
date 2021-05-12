CREATE TABLE aluno (
  matricula INTEGER AUTO_INCREMENT NOT NULL,
  nome VARCHAR(32),
  sobrenome VARCHAR(32),
  curso VARCHAR(64),
  PRIMARY KEY(matricula)
);

CREATE TABLE materia (
  cod_materia INTEGER AUTO_INCREMENT NOT NULL,
  materia VARCHAR(64),
  professor VARCHAR(255),
  PRIMARY KEY(cod_materia)
);

CREATE TABLE bimestre (
  id_bimestre INTEGER AUTO_INCREMENT NOT NULL,
  num_bimestre INTEGER,
  bimestre_ini DATE,
  bimestre_fim DATE,
  PRIMARY KEY(id_bimestre)
);

CREATE TABLE materia_aluno (
  id_bimestre_matuno INTEGER NOT NULL,
  matricula_matuno INTEGER NOT NULL,
  cod_materia_matuno INTEGER NOT NULL,
  notas FLOAT, 
  aprovado BOOLEAN,
  FOREIGN KEY(matricula_matuno) REFERENCES aluno(matricula) ON DELETE CASCADE,
  FOREIGN KEY(cod_materia_matuno) REFERENCES materia(cod_materia) ON DELETE CASCADE,
  FOREIGN KEY(id_bimestre_matuno) REFERENCES bimestre(id_bimestre) ON DELETE CASCADE,
  PRIMARY KEY(id_bimestre_matuno, cod_materia_matuno, matricula_matuno)
);



INSERT INTO aluno(nome, sobrenome, curso) VALUES ('Hugo', 'Pfeffer', 'Computação');
INSERT INTO aluno(nome, sobrenome, curso) VALUES ('Luiz', 'Fernando', 'Engenharia Elétrica');
INSERT INTO aluno(nome, sobrenome, curso) VALUES ('Igor', 'Coutinho', 'Engenharia de Redes');
INSERT INTO aluno(nome, sobrenome, curso) VALUES ('Thiago', 'Pontinho', 'Engenharia Elétrica');


INSERT INTO materia(cod_materia, materia, professor) VALUES (101, 'materia1', 'prof1');
INSERT INTO materia(cod_materia, materia, professor) VALUES (102, 'materia2', 'prof2');
INSERT INTO materia(cod_materia, materia, professor) VALUES (103, 'materia3', 'prof3');
INSERT INTO materia(cod_materia, materia, professor) VALUES (104, 'materia4', 'prof4');


INSERT INTO bimestre(num_bimestre, bimestre_ini, bimestre_fim) VALUES (1, '2021-01-01', '2021-02-28');
INSERT INTO bimestre(num_bimestre, bimestre_ini, bimestre_fim) VALUES (2, '2021-03-01', '2021-04-30');
INSERT INTO bimestre(num_bimestre, bimestre_ini, bimestre_fim) VALUES (3, '2021-05-01', '2021-06-30');
INSERT INTO bimestre(num_bimestre, bimestre_ini, bimestre_fim) VALUES (4, '2021-07-01', '2021-08-31');


INSERT INTO materia_aluno(notas, aprovado, matricula_matuno, cod_materia_matuno, id_bimestre_matuno) VALUES (1.0, FALSE, 1, 101, 1);
INSERT INTO materia_aluno(notas, aprovado, matricula_matuno, cod_materia_matuno, id_bimestre_matuno) VALUES (6.0, TRUE, 2, 101, 2);
INSERT INTO materia_aluno(notas, aprovado, matricula_matuno, cod_materia_matuno, id_bimestre_matuno) VALUES (6.0, TRUE, 2, 102, 2);
INSERT INTO materia_aluno(notas, aprovado, matricula_matuno, cod_materia_matuno, id_bimestre_matuno) VALUES (10.0, TRUE, 3, 103, 3);
