/* 
Author: Ken Zeng 
Date: September 8 2021 

A collection of questions from "self JOIN" section from sqlzoo 
https://sqlzoo.net/wiki/Self_join

stops: |id|name|
route: |num|company|pos|stop|
*/ 

/* 
1. How many stops are in the database.
*/ 

SELECT COUNT(*) FROM stops

/* 
2. Find the id value for the stop 'Craiglockhart'
*/ 

SELECT id 
FROM stops 
WHERe name = 'Craiglockhart'

/*
3. Give the id and the name for the stops on the '4' 'LRT' service.
*/ 

SELECT id, name 
FROM stops 
JOIN route ON (id = stop)
WHERE num = '4' AND company = 'LRT'

/* 
4. 
*/ 


