# Below are solutions to the exercises on SQL Zoo

## Chapters:
1. [SELECT basics](#select-basics)
2. [SELECT from world](#select-from-world)
3. [SELECT from nobel](#select-from-nobel)
4. [SELECT in SELECT](#select-in-select)
5. [SUM and COUNT](#sum-and-count)
6. [JOIN](#join)
7. [More JOIN](#more-join)
8. [Using NULL){#using-null)
9. [Self JOIN](#self-join)

## SELECT basics
Available [here](https://sqlzoo.net/wiki/SELECT_basics)

1.
```sql
SELECT population FROM world
  WHERE name = 'Germany';
```
2. 
```sql
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');
```
3.
```sql
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;
```

## SELECT from world
Available [here](https://sqlzoo.net/wiki/SELECT_from_WORLD_Tutorial)

1.
```sql
SELECT name, continent, population FROM world;
```
2.
```sql
SELECT name
  FROM world
 WHERE population > 200000000;
```
3.
```sql
SELECT name, gdp/population
FROM world
WHERE population > 200000000;
```
4.
```sql
SELECT name, population/1000000
FROM world
WHERE continent = 'South America';
```
5.
```sql
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy');
```
6. 
```sql
Select name FROM world
WHERE name LIKE '%United%';
```
9. 
```sql
Select name, population, area FROM world
WHERE area > 3000000 OR population > 250000000;
```
11.
```sql
SELECT name, population, area
FROM world
WHERE (population > 250000000 AND NOT area > 3000000)
OR (area > 3000000 AND NOT population > 250000000);
```
9. 
```sql 
SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000,2) FROM world
WHERE continent = 'South America';
```
10.
```sql SELECT name, ROUND(gdp/population/1000,0)*1000
FROM world
WHERE gdp > 1000000000000;
```
11.
```sql
SELECT name, capital
  FROM world
 WHERE LEN(name) = LEN(CAPITAL);
```
12.
```sql
SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1) AND name <> capital;
```
13.
```sql
SELECT name
   FROM world
WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%'
  AND name NOT LIKE '% %';
``` 
