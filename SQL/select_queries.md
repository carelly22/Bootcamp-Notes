# SELECT queries 101

In order to retrieve information from a SQL database, we need to write SELECT statements or queries. A query is a statement which declares what data we are looking for, where to find it in the database, and optionally, how to transform it before it is returned. 

You can think of a SQL table as a type of entity and each row as a specific instance of that type. The columns represent the common properties shared by all instances of that entity. 

The most basic query we can write would be one that selects for a couple columns (properties) of the table with all the rows (instances).

```sql
/* SELECT query for specific columns */
SELECT column, another_column, ...
FROM my_table;
```

This query produces a 2-dimensional set of rows and columns (basically a copy of the table but only with the columns that we requested).

If you want to retrieve all of the columns of data from a table, you use * which is shorthand in place of listing all of the columns individually:

```sql
/* SELECT query for all columns */
SELECT * 
FROM my_table;
```

This is a useful query because it's a simple way to inspect a table by dumping all of the data at once.

Practice Exercise:

```sql
SELECT title FROM movies;

SELECT director FROM movies;

SELECT title, director FROM movies;

SELECT title, year FROM movies;

SELECT * FROM movies;
```