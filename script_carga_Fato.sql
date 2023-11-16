-- Cargas FATO FACSENAC

use mmd_Facsenac;

-- delete from fatomatricula;

INSERT INTO `mmd_facsenac`.`fatomatricula`
(`idDimTempo`,
`idDimSexo`,
`idDimCurso`,
`idDimRaca`,
`idDimTurno`,
`idDimCondicaoEconomica`,
`Quantidade`)
VALUES
(<{idDimTempo: }>,
<{idDimSexo: }>,
<{idDimCurso: }>,
<{idDimRaca: }>,
<{idDimTurno: }>,
<{idDimCondicaoEconomica: }>,
<{Quantidade: }>);

SELECT `matricula`.`IdAluno`,
    `matricula`.`AnoIngresso`,
    `matricula`.`SemestreIngresso`,
    `matricula`.`Curso`,
    `matricula`.`Turno`,
    `matricula`.`FormaIngresso`,
    `matricula`.`Bolsista`,
    `matricula`.`Idade`,
    `matricula`.`Sexo`,
    `matricula`.`CondEconomica`,
    `matricula`.`Raca`
FROM `staging_facsenac`.`matricula`;

update  `staging_facsenac`.`matricula`
set sexo = 2
where sexo= 'F';



SELECT Aluno, Ano, Semestre, Sigla_Curso, Sigla_Turno,
Desc_FormaIngresso FROM tab_aluno INNER JOIN dim_curso on Curso = pk_curso
INNER JOIN dim_turno on Turno = pk_turno INNER JOIN dim_formaingresso ON
Forma_Ingresso = PK_FormaIngresso WHERE Sigla_Curso = 'ADS' AND Sigla_Turno
= 'MAT' AND Desc_FormaIngresso = 'Vestibular';

