-- Question 1:


SELECT 3.14 * 5 ^ 2;

-- Le résultat est une surface de 78,5 centimètres carrés.
-- Note : Vous n'avez pas besoin de parenthèses car les exposants et les racines ont la priorité 
-- sur la multiplication. Cependant, vous pouvez inclure des parenthèses pour plus de clarté. 
-- Cette instruction produit le même résultat :

SELECT 3.14 * (5 ^ 2);


-- Question 2:

SELECT county_name,
       state_name,
       births_2019 AS births,
       deaths_2019 AS DEATHS,
       births_2019::numeric / deaths_2019 AS birth_death_ratio
FROM us_counties_pop_est_2019
WHERE state_name = 'New York'
ORDER BY birth_death_ratio DESC;



-- Question 3:
-- La Californie avait une population médiane estimée à 187 029 habitants en 2019, soit presque le double de celle de New York 
-- (86 687 habitants). Voici deux solutions :

-- Premièrement, vous pouvez trouver la médiane pour chaque État, un par un :

SELECT percentile_cont(.5)
        WITHIN GROUP (ORDER BY pop_est_2019)
FROM us_counties_pop_est_2019
WHERE state_name = 'New York';

SELECT percentile_cont(.5)
        WITHIN GROUP (ORDER BY pop_est_2019)
FROM us_counties_pop_est_2019
WHERE state_name = 'California';
