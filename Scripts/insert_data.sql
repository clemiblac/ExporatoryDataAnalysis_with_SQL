/* Important to pull data directory from C folder not in documents or other folders*/
COPY daly
FROM 'C:\sql_data\envdaly.csv'
DELIMITER ','
CSV HEADER;


COPY f_life_exp
FROM 'C:\sql_data\lifexfemale.csv'
DELIMITER ','
CSV HEADER;

COPY gdp
FROM 'C:\sql_data\gdpcapita.csv'
DELIMITER ','
CSV HEADER;


COPY malaria
FROM 'C:\sql_data\malaria.csv'
DELIMITER ','
CSV HEADER;

COPY transparency
FROM 'C:\sql_data\transparency.csv'
DELIMITER ','
CSV HEADER;


