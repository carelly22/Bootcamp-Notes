# Queries with Aggregates

SQL supports the use of aggregate expressions of functions that allow you
to summarize information about a group of rows of data. 

```sql 
/*SELECT query with aggregate functions over all rows*/

SELECT AGG_FUNC(column_or_expression) AS aggregate_description
FROM mytable
WHERE constraint_expression;
```

Without specific grouping, each aggregate function is going to run on the entire set of result rows and return a single value. 

You should give your aggregate functions an alias so that the results are easier to read and process.

## Common Aggregate Functions

| Function | Description |
| ------ | ------ |
| COUNT(*), COUNT(column) | A common function used to count the number of rows in the group if no column name is specified. Otherwise, count the number of rows in the group with non-NULL values in the specified column. |
| MIN(column) | Finds the smallest numerical value in the specified column for all rows in the group. |
| MAX(column) | Finds the largest numerical value in the specified column for all rows in the group. |
| AVG(column) | Finds the average numerical vaue in the soecified column for all rows in the group. |
| SUM(column) | Finds the sum of all numerical values in the specified column for the rows in the group. |

## Grouped Aggregate Functions

In addition to aggregating across all the rows, you can instead apply the aggregate functions to individual groups of data within that group. 

This then creates as many results as there are unique groups defined as by the GROUP BY clause:

```sql
/*SELECT query with aggregate functions over groups*/

SELECT AGG_FUNC(column_or_expression) AS aggregate_description
FROM mytable
WHERE constraint_expression
GROUP BY column;
```

The GROUP BY clause works by grouping rows that have the same value in the column specified.

Exercise:

```sql
SELECT MAX(Years_employed) AS Longest_time_employed
FROM employees;

SELECT Role, AVG(Years_employed) AS Average_num_years_employed
FROM employees
GROUP BY Role;

SELECT Building, SUM(Years_employed) 
FROM employees
GROUP BY Building;
```