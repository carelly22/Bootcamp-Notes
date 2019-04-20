# Queries with constraints

In order to filter certain results from being returned, we need to use a WHERE clause in our queries. The clause is applied to each row of data by checking specific column values to determine whetehr it should be included in the results or not.

Definition of a WHERE clause:

```sql
SELECT column, another_column, ...
FROM my_table
WHERE condition 
    AND/OR another condition
    AND/OR ...;
```

More complex clauses can be constructed by joining numerous AND or OR logical keywords (eg. num_wheels >= 4 AND doors <= 2). Below are useful operators for numerical data:

| Operator | Condition | SQL Example |
| :--------: | :--------: | :--------: |
| =, !=, <, <=, >, >= | Standard numerial operators | col_name != 4 |
| BETWEEN ... AND .. | Number is within range of two values (inclusive) | col_name BETWEEN 1.5 AND 10.5 |
| NOT BETWEEN ... AND ... | Number is not within range of two values (inclusive) | col_name NOT BETWEEN 1 AND 10 |
| IN (...) | Number exists in a list | col_name IN (2,4,6) |
| NOT IN (...) | Number does not exist in a list | col_name NOT IN (1,3,5) |

Writing clauses to constrain the set of rows:
* Makes the results more manageable to understand 
* Allows the query to run faster due to the reduction in unnecessary data being returned 

Exercise : 

```sql
SELECT * 
FROM movies
WHERE id == 6;

SELECT * 
FROM movies 
WHERE year BETWEEN 2000 AND 2010;

SELECT * 
FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;

SELECT * 
FROM movies
WHERE id BETWEEN 1 AND 5;
```

When writing WHERE clauses with columns containing text data, SQL supports a number of useful operators to do things like case-insensitive string comparison and wildcard pattern matching. A few common text-data specific operators are shown below:


| Operator | Condition | Example |
| :-----: | :-----: | :-----: |
| = | Case sensitive exact string comparison (notice the single equals) | col_name = "abc" |
| != or <> | Case sensitive exact string inequality comparison | col_name != "abcd" |
| LIKE | Case insensitive exact string comparison | col_name LIKE "ABC" | 
| NOT LIKE | Case insensitive exact string inequality comparison | col_name NOT LIKE "ABCD" | 
| % | Used anywhere in a string to match a sequence of zero or more characters (only with LIKE or NOT LIKE) | col_name LIKE "%AT" (matches "AT", "ATTIC", "CAT", or even "BATS") |
| _ | Used anywhere in a string to match a single character (only with lIKE or NOT LIKE) | col_name LIKE "AN_" (matches "AND", but not "AN") |
| IN (...) | String exists in a list | col_name IN ("A", "B", "C") |
| NOT IN (...) | String does not exist in a list | col_name NOT IN ("D", "E", "F") | 

Note that all strings must be quote so that the query parser can distinguish works in the string from SQL keywords 

Exercises:

```sql
SELECT * 
FROM movies 
WHERE title LIKE "Toy Story%";

SELECT * 
FROM movies 
WHERE director = "John Lasseter";

SELECT * 
FROM movies 
WHERE director != "John Lasseter";

SELECT * 
FROM movies 
WHERE title LIKE "Wall-_";
```