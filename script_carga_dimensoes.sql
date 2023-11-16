-- Cargas Dimensoes FACSENAC

-- ----------------------------
-- Dimensão Condição Econômica
-- ----------------------------

use mmd_Facsenac;

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

Select * from DimCondicaoEconomica;

-- ----------------------------
-- Dimensão Raça
-- ----------------------------

use mmd_Facsenac;

-- delete from DimRaca;

INSERT into DimRaca (
  IddimRaca,
  DeRaca)
VALUES
(1, "Branca"),
(2, "Preta"),
(3, "Amarela"),
(4, "Parda"),
(5, "Indígena");

Select * from DimRaca;


-- ----------------------------
-- Dimensão Sexo
-- ----------------------------

use mmd_Facsenac;

-- delete from DimSexo;

INSERT into DimSexo (
  IddimSexo,
  DeSexo)
VALUES
(1, "Masculino"),
(2, "Feminino");

Select * from DimSexo;


-- ----------------------------
-- Dimensão Sexo
-- ----------------------------

use mmd_Facsenac;

-- delete from DimCurso;

INSERT into DimCurso (
  IddimCurso,
  DeCurso)
VALUES
(1, "ADS"),
(2, "GTI"),
(3, "TCD"),
(4, "TSI");

Select * from DimCurso;


-- ----------------------------
-- Dimensão turno
-- ----------------------------

use mmd_Facsenac;

-- delete from Dimturno;

INSERT into Dimturno (
  IddimTurno,
  DeTurno)
VALUES
(1, "Matutino"),
(2, "Vespertino"),
(3, "Noturno");

Select * from Dimturno;








