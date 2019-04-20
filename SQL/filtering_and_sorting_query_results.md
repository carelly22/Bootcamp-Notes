# Filtering and sorting Query results

## Removing duplicate entries 

While data in a database may be unique, the results of any particular query might not be. In such cases, you can discard rows that have a duplicate column value by using the DISTINCT keyword. 

```sql
/* SELECT  query with unqiue results */

SELECT DISTINCT column, another_column, ...
FROM mytable 
WHERE condition(s);
```

**Note:** DISTINCT blindly removes duplicate rows.

## Ordering results 

We can sort our query results by a given column in ascending or descending order by using the ORDER BY clause:

```sql
/* SELECT query with ordered results */

SELECT column, another_column, ...
FROM mytable
WHERE condition(s)
ORDER BY column ASC/DESC;
```

ORDER BY sorts each row alpha-numerically based on the specified column's value. 

## Limiting results to a subset 

You can use the LIMIT and OFFSET clauses with the ORDER BY clause - this is a useful optimization to indicate to the database the subset of results that you care about. 

The LIMIT clause will reduce the numbers of rows to return and the optional OFFSET clause will specify where to begin counting the number rows from:

```sql
/* SELECT query with limited rows */

SELECT column, another_column, ...
FROM mytable 
WHERE condition(s)
ORDER BY column ASC/DESC
LIMIT num_limit OFFSET num_offset;
```

Exercises:

```sql
SELECT DISTINCT director 
FROM movies; 

SELECT title
FROM movies
ORDER BY year DESC
LIMIT 4;

SELECT title 
FROM movies
ORDER BY title ASC
LIMIT 5;

SELECT title 
FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;
``