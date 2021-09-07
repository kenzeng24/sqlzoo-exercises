/*
1.
*/

SELECT SUM(population)
FROM world

/*
1.
*/

SELECT continent 
FROM world 
GROUP BY continent 

/*
1.
*/

SELECT SUM(gdp) 
FROM world 
WHERE continent = 'Africa' 

/*
1.
*/

SELECT COUNT(name) 
FROM world 
WHERE area >= 1000000

/*
1.
*/

SELECT SUM(population) 
FROM world 
WHERE name in ('Estonia', 'Latvia', 'Lithuania'); 

/*
1.
*/

SELECT continent, COUNT(name) 
FROM world 
GROUP BY continent

/*
1.
*/

SELECT continent, COUNT(name) 
FROM world 
WHERE population >= 10000000
GROUP BY continent

/*
8.
*/

SELECT continent
FROM world 
GROUP BY continent
HAVING SUM(population) >= 100000000

