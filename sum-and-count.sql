/* 
Author: Ken Zeng 
Date: September 5 2021 

A collection of questions from "SUM and COUNT" section from sqlzoo 
https://sqlzoo.net/wiki/SUM_and_COUNT

table format: 
world: |name|continent|area|population|gdp|
*/ 

/*
1.Show the total population of the world. 
*/

SELECT SUM(population)
FROM world

/*
2. List all the continents - just once each.
*/

SELECT continent 
FROM world 
GROUP BY continent 

/*
4. How many countries have an area of at least 1000000
*/

SELECT SUM(gdp) 
FROM world 
WHERE continent = 'Africa' 

/*
5. What is the total population of ('Estonia', 'Latvia', 'Lithuania')
*/

SELECT COUNT(name) 
FROM world 
WHERE area >= 1000000

/*
6. For each continent show the continent and number of countries.
*/

SELECT SUM(population) 
FROM world 
WHERE name in ('Estonia', 'Latvia', 'Lithuania'); 

/*
7. For each continent show the continent and number of countries with populations of at least 10 million.
*/

SELECT continent, COUNT(name) 
FROM world 
GROUP BY continent

/*
8. List the continents that have a total population of at least 100 million.
*/

SELECT continent
FROM world 
GROUP BY continent
HAVING SUM(population) >= 100000000

