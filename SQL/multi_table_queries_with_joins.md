# Multi-table queries with JOINS

Normalization is the process of breaking down data into pieces and storing it across multiple orthogonal tables.

## Database normalization

* Useful because it minimizes duplicate data in any single table 
* Allos for data in the database to grow independently of each other 
* As a trade-off, queries get slightly more complex since they have to be able to find data from different oarts of the database 
* Performance issues can arise when working with many large tables 

## Multi-table queries with JOINS

Tables that share information about a single entity need to have a *primary key* that identifies that entity uniquely across the database.

One common primary key type is an auto-incrementing integer (because they are space efficient), but it can also be a string, hashed value, so long as it is unique. 

JOIN : We can use the JOIN clause in a query and combine row data across two separate tables using this unique key. 

```sql
SELECT query with INNER JOIN on multiple tables

SELECT column, another_table_column, ...
FROM mytable 
INNER JOIN another_table
    ON mytable.is = another_table.id
WHERE condition(s)
ORDER BY column, ... ASC/DESC
LIMIT num_limit OFFSET num_offset;
```

The INNER JOIN is a process which matches row from the first table and the second table which have the same key (as defined by the ON constraint) to create a result row with the combined columns from both tables.

Exercises:

```sql
SELECT Title, Domestic_sales, International_sales 
FROM movies
INNER JOIN Boxoffice
    ON Id = Movie_id;

SELECT Title, Domestic_sales, International_sales 
FROM movies
INNER JOIN Boxoffice
    ON Id = Movie_id
WHERE International_sales > Domestic_sales;

SELECT Title, Rating
FROM movies
INNER JOIN Boxoffice
    ON Id = Movie_id
ORDER BY Rating DESC;
```