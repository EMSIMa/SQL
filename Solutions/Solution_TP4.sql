
-- 1. 

-- Answer: 

CREATE TABLE actors (
    id integer,
    movie text,
    actor text
);

COPY actors
FROM 'C:\YourDirectory\movies.txt'
WITH (FORMAT CSV, HEADER, DELIMITER ':', QUOTE '#');



-- 2. 

-- Answer:

COPY (
    SELECT county_name, state_name, births_2019
    FROM us_counties_pop_est_2019 ORDER BY births_2019 DESC LIMIT 20
     )
TO 'C:\YourDirectory\us_counties_births_export.txt'
WITH (FORMAT CSV, HEADER);



-- 3.

-- Answer:
-- Non, ce n'est pas le cas. En fait, vous ne pourrez même pas créer une colonne avec ce type de données, 
-- car la précision doit être supérieure à l'échelle. Le type correct pour les données de l'exemple est numeric(8,3).

