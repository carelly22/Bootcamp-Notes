# Outer joins

Sometimes the INNER JOIN is not sufficient when analyzing data because the resulting table only contains data that belongs in both of the tables.

When data is entered in different stages, two tables can have asymmetric data. In order to ensure that the data we need is not left out of results, we use a LEFT JOIN, RIGHT JOIN, or FULL JOIN in these cases.

```sql
SELECT query with LEFT/RIGHT/FULL JOINs on multiple tables 

SELECT column, another_column, ...
FROM mytable
INNER/LEFT/RIGHT/FULL JOIN another_table 
    ON mytable.id = another_table.matching_id
WHERE condition(s)
ORDER BY column, ... ASC/DESC
LIMIT num_limit OFFSET num_offset;
```

When joining table A to table B:

* a LEFT JOIN simply includes rows from A regardless of whether there is a matching row found in B.

* a RIGHT JOIN includes rows from B regardless of whether a match is found in A. 

* a FULL JOIN keeps all rows from both tables, regardles of whether a matching row exists in another table.

**NOTE:** When using any of these new joins, you will likely have to write additional logic to deal with NULLs in the result and constraints.

Exercise: 

```sql
SELECT DISTINCT building 
FROM employees
LEFT JOIN Buildings
    ON Building = Building_name;

SELECT *
FROM Buildings; 

SELECT DISTINCT Building_name, Role FROM Buildings
LEFT JOIN Employees
ON Building_name = Building;
```