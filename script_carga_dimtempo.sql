DROP TABLE IF EXISTS dim_tempo;
CREATE TABLE dim_tempo (
        idAnoMesDia                      INTEGER PRIMARY KEY,  -- year*10000+month*100+day
        data                DATE NOT NULL,
        ano                 INTEGER NOT NULL,
        mes                 INTEGER NOT NULL, -- 1 to 12
        dia                 INTEGER NOT NULL, -- 1 to 31
        bimestre            INTEGER NOT NULL, -- 1 to 4
        semestre            INTEGER NOT NULL, -- 1 to 4
        NomeDia             VARCHAR(9) NOT NULL, -- 'Monday', 'Tuesday'...
        NomeMes             VARCHAR(9) NOT NULL, -- 'January', 'February'...
        FinaldeSemana       CHAR(1) DEFAULT 'F' CHECK (finaldesemana in ('T', 'F'))
) Engine=InnoDB;

DROP PROCEDURE IF EXISTS carga_dimensao_tempo;
DELIMITER //
CREATE PROCEDURE carga_dimensao_tempo(IN startdate DATE,IN stopdate DATE)
BEGIN
    DECLARE currentdate DATE;
    SET currentdate = startdate;
    WHILE currentdate <= stopdate DO
        INSERT INTO dim_tempo VALUES (
            YEAR(currentdate)*10000+MONTH(currentdate)*100 + DAY(currentdate),
            currentdate,
            YEAR(currentdate),
            MONTH(currentdate),
            DAY(currentdate),
			FLOOR(1 + (month(currentdate) - 1) / 2), #bimestre
            FLOOR(1 + (month(currentdate) - 1) / 6), #semestre
            DATE_FORMAT(currentdate,'%W'),
            DATE_FORMAT(currentdate,'%M'),
            CASE DAYOFWEEK(currentdate) WHEN 1 THEN 'T' WHEN 7 then 'T' ELSE 'F' END
            );
        SET currentdate = ADDDATE(currentdate,INTERVAL 1 DAY);
    END WHILE;
END
//
DELIMITER ;

TRUNCATE TABLE dim_tempo;
CALL carga_dimensao_tempo('2023-01-01','2023-12-31');

Select * from dim_tempo limit 1000;


