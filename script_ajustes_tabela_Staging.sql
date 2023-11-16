-- Ajustes na tabela de Staging
-- Cargas FATO FACSENAC

use mmd_Facsenac;

-- ajuste em sexo
update  `staging_facsenac`.`matricula`
set sexo = 1 where sexo= 'M';

update  `staging_facsenac`.`matricula`
set sexo = 2 where sexo= 'F';

-- ajuste em turno
update  `staging_facsenac`.`matricula`
set turno = 1 where turno= 'M';

update  `staging_facsenac`.`matricula`
set turno = 2 where turno= 'V';

update  `staging_facsenac`.`matricula`
set turno = 3 where turno= 'N';

