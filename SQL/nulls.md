# NULLs

It is always good to reduce the possibility of NULL values in databases because they require special attention when constructing queries, constraints (certain functions behave differently with null values) and when processing the results.

We can have **data-type appropriate default values** as an alternative to NULLs. Examples are 0 for numerical data, empty strings for text-data, etc. If your database needs to store incomplete data, then NULL values can be appropriate if the default values will skew later analysis (for example taking averages of numerical data).

Sometimes it is not possible to avoid NULL values eg. when outer-joining two tables of asymmetric data. In these cases you can test a column for NULL values in a WHERE clause by using either the IS NULL or IS NOT NULL constraint. 

```sql
SELECT query with constraints on NULL values

SELECT column, another column, ...
FROM mytable
WHERE column IS/IS NOT NULL
AND/OR another condition
AND/OR ...;
```

```sql
SELECT Name, Role 
FROM employees
WHERE Building IS NULL;

SELECT Building_name 
FROM Buildings
LEFT JOIN Employees 
    ON Building_name = Building
WHERE Role IS NULL;
```

