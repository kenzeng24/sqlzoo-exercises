/* 
SELECT in SELECT from sqlzoo 
*/ 


/* 
1. List each country name where the population is larger than that of 'Russia'.
*/ 
SELECT name FROM world
WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

/* 
2. Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
*/ 

SELECT name
FROM world 
WHERE gdp / population > 
	(SELECT gdp / population 
	 FROM world 
	 WHERE name = 'United Kingdom') AND continent = 'Europe'; 

/* 
3. List each country name where the population is larger than that of 'Russia'.
*/ 

SELECT name, continent
FROM world 
WHERE continent in (select continent 
FROM world 
WHERE name =  'Argentina' OR name = 'Australia')
ORDER BY name;

/* 
4. Which country has a population that is more than Canada but less than Poland? 
Show the name and the population.
*/ 

select name,population
from world 
where population > (select population from world where name = 'Canada') and population < (select population from world where name = 'Poland')

/* 
5. Show the name and the population of each country in Europe. 
Show the population as a percentage of the population of Germany.
*/ 

select name, 
	   concat(cast(cast(population / (select population 
	   								  from world 
	   								  where name = 'Germany') * 100 as int) as varchar(4)),  '%') as percentage
from world 
where continent = 'Europe'; 

/* 
6. Which countries have a GDP greater than every country in Europe? 
[Give the name only.] (Some countries may have NULL gdp values)
*/ 

select name
from world 
where gdp > (select max(gdp)from world where continent = 'Europe') 

/* 
7. Find the largest country (by area) in each continent, show the continent, the name and the area:

*/

SELECT continent, name, area 
FROM world x
WHERE area >= 
    (SELECT max(area) FROM world y
        WHERE y.continent=x.continent
     GROUP BY continent)

SELECT continent, name, area 
FROM world x
 WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent)

/* 
8. List each continent and the name of the country that comes first alphabetically.
*/ 

select continent, min(name) as name
from world 
group by continent 


/* 
9. 
*/ 

SELECT name, continent, population
FROM world x 
WHERE 25000000 >= (
SELECT max(population)
FROM world y 
WHERE y.continent = x.continent
GROUP BY continent) 

/* 
10. Some countries have populations more than three times that of any of their neighbours (in the same continent). 
Give the countries and continents.
*/ 

SELECT name, continent
FROM world x 
WHERE population / 3  >= (
SELECT max(population)
FROM world y 
WHERE y.continent = x.continent AND y.name != x.name
GROUP BY continent) 










