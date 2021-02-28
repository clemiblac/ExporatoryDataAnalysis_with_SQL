select * from daly FETCH FIRST 5 ROWS ONLY;
select * from f_life_exp FETCH FIRST 5 ROWS ONLY;
select * from gdp FETCH FIRST 5 ROWS ONLY;
select * from malaria FETCH FIRST 5 ROWS ONLY;
select * from transparency FETCH FIRST 5 ROWS ONLY;

--Joining all five tables to make a single dataset and creating a table from the result
select * from
(select daly.country,daly.total_env_dalys,f_life_exp.years,gdp.gdp_capita,malaria.malaria_deaths,transparency.cpia
from daly inner join f_life_exp on daly.country=f_life_exp.country
inner join gdp on daly.country=gdp.country
inner join malaria on daly.country=malaria.country
inner join transparency on daly.country=transparency.country) as new;

COPY 
(select daly.country,daly.total_env_dalys,f_life_exp.years,gdp.gdp_capita,malaria.malaria_deaths,transparency.cpia
from daly inner join f_life_exp on daly.country=f_life_exp.country
inner join gdp on daly.country=gdp.country
inner join malaria on daly.country=malaria.country
inner join transparency on daly.country=transparency.country)

TO 'C:\sql_data\new.csv' DELIMITER ',' CSV HEADER;
