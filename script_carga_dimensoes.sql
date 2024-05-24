-- Cargas Dimensoes MMD MATRICULA

-- ----------------------------
-- Dimensão Condição Econômica
-- ----------------------------

use mmd_matricula;

-- delete from DimCondicaoEconomica;

INSERT into DimCondicaoEconomica (
  IddimcondicaoEconomica,
  DeCondicaoEconomica)
VALUES
(1, "Extremamente pobre"),
(2, "Pobre, mas não extremamente pobre"),
(3, "Vulnerável"),
(4, "Classe média"),
(5, "Classe alta");

Select * from mmd_matricula.DimCondicaoEconomica;

-- ----------------------------
-- Dimensão Raça
-- ----------------------------

use mmd_matricula;
-- delete from DimRaca;

INSERT INTO mmd_matricula.dimraca (deRaca)
SELECT distinct raça FROM staging_matricula.alunos;

SELECT * FROM mmd_matricula.dimraca;

-- ----------------------------
-- Dimensão Sexo
-- ----------------------------

use mmd_matricula;
-- delete from DimSexo;

INSERT into DimSexo (
  IddimSexo,
  DeSexo)
VALUES
(1, "Masculino"),
(2, "Feminino");

Select * from mmd_matricula.DimSexo;

-- ----------------------------
-- Dimensão Curso
-- ----------------------------

use mmd_matricula;

-- delete from DimCurso;

insert into mmd_matricula.dimcurso (deCurso) 
select distinct curso 
from staging_matricula.matriculas;

SELECT * FROM  mmd_matricula.dimcurso;

-- ----------------------------
-- Dimensão turno
-- ----------------------------

use mmd_matricula;

-- delete from Dimturno;

INSERT into Dimturno (
  IddimTurno,
  DeTurno)
VALUES
(1, "Matutino"),
(2, "Vespertino"),
(3, "Noturno");

Select * from Dimturno;








