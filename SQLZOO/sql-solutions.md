# Below are solutions to the exercises on SQL Zoo

## Chapters:
1. [SELECT basics](#select-basics)
2. [SELECT from world](#select-from-world)
3. [SELECT from nobel](#select-from-nobel)
4. [SELECT within SELECT](#select-within-select)
5. [SUM and COUNT](#sum-and-count)
6. [JOIN](#join)
7. [More JOIN](#more-join)
8. [Using NULL)(#using-null)
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
7. 
```sql
Select name, population, area FROM world
WHERE area > 3000000 OR population > 250000000;
```
8.
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

## SELECT from nobel
Available [here](https://sqlzoo.net/wiki/SELECT_from_Nobel_Tutorial)

1. 
```sql
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;
```
2.
```sql
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature';
```

3. 
```sql
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';
```
4. 
```sql
SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr >= 2000;
```
5.
```sql
SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Literature' AND yr BETWEEN 1980 and 1989;
```
6.
```sql
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt','Woodrow Wilson','Jimmy Carter','Barack Obama');
 ```
7.
```sql
SELECT winner FROM nobel
WHERE winner LIKE 'John%';
```

8.
```sql
SELECT yr, subject, winner FROM nobel
WHERE (subject = 'Physics' AND yr = 1980) OR (subject = 'Chemistry' AND yr = 1984);
```

9.
```sql
SELECT yr, subject, winner FROM nobel
WHERE yr= 1980 AND subject NOT IN ('Chemistry', 'Medicine');
```

10.
```sql
SELECT yr, subject, winner FROM nobe
WHERE subject = 'Medicine' AND yr <1910 OR subject = 'Literature' AND yr >= 2004;
```

11.
```sql
SELECT * FROM nobel
WHERE winner = 'PETER GRÜNBERG';
```

12.
```sql
SELECT * FROM nobel
WHERE winner = 'EUGENE O''NEILL';
```

13.
```sql
SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'sir%'
ORDER BY yr desc, winner;
```

## SELECT within SELECT
Available [here](https://sqlzoo.net/wiki/SELECT_within_SELECT_Tutorial)

1. 
```sql
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia');
```

2.
```sql
SELECT name FROM world
WHERE gdp/population >
(SELECT gdp/population from world
WHERE name = 'United Kingdom')
AND continent = 'Europe'
```

3.
```sql
Select name, continent from world
where continent in
(select continent from world where name in ('Argentina', 'Australia'))
order by name
```

4.
```sql
select name, population from world
where population >
(Select population from world where name = 'Canada')
AND population <
(select population from world where name = 'Poland')
```

5.
```sql
SELECT name, CONCAT(
ROUND(100* population/(SELECT population FROM world WHERE name = 'Germany'), 0),
'%')
FROM world WHERE continent = 'europe'
```

6.
```sql
select name from world where gdp >
(select max(gdp) from world where continent = 'Europe')
```
