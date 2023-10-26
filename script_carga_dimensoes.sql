-- Cargas Dimensoes FACSENAC

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


