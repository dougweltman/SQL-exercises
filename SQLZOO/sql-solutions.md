# Below are solutions to the exercises on SQL Zoo

## Chapters:
1. [SELECT basics](#select-basics)
2. [SELECT from WORLD](#select-from-world)
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
  WHERE name = 'Germany'
```
2. 
```sql
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');
```
3.
```sql
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000
```
