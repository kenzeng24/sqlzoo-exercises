/* 
Author: Ken Zeng 
Date: September 5 2021 

A collection of questions from "More JOIN" section from sqlzoo 
https://sqlzoo.net/wiki/More_JOIN_operations

teacher: |id|dept|name|phone|mobile|
dept: |id|name| 
*/ 

/* 
1. List the teachers who have NULL for their department.
*/

SELECT name 
FROM teacher 
WHERE dept IS NULL


/* 
2. Example 
*/

SELECT teacher.name, dept.name
FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id)

/* 
3. Use a different JOIN so that all teachers are listed.
*/        

SELECT teacher.name, dept.name
 FROM teacher LEFT JOIN dept
           ON (teacher.dept=dept.id)

/* 
4. Use a different JOIN so that all departments are listed.
*/ 

SELECT teacher.name, dept.name
 FROM teacher RIGHT JOIN dept
           ON (teacher.dept=dept.id)

/* 
5. Use COALESCE to print the mobile number. 
Use the number '07986 444 2266' if there is no number given. Show teacher name and mobile number or '07986 444 2266'
*/ 


