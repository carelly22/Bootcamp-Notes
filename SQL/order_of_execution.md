# Order of execution of a Query

How do all of the parts of a query fit together in the context of a complete query? 

```sql
Complete SELECT query

SELECT DISTINCT column, AGG_FUNC(column_or_expression), ...
FROM mytable
    JOIN another_table
    ON mytable.column = another_table.column
    WHERE constraint_expression
    GROUP BY column
    HAVING constraint_expression
    ORDER_BY column ASC/DESC
    LIMIT count OFFSET COUNT;
```

Each query begins with:
* Finding the data we need in a database
* Filtering that data down into somethign that can be processed and understood as 
quickly as possible

Each part of the query is executed sequentially, so it's important to understand 
the order of execution so that you know what results are accessible where.

## Breakdown of Query order execution

* FROM and JOINs
The FROM clause and subsequent JOINs are first executed to determine the total 
working set of data that is being queried.

* WHERE
Once you have the total working set of data, the first-pass WHERE constraints 
are applied to the individual ros, and rows that do not satisfy the constraints 
are discarded.

**Note:** Aliases in the SELECT part of the query are not accessible in most 
databases since they may include expressions dependent on parts of the query that 
have not yet been executed.

* GROUP BY
The remaining rows after the WHERE constraints are applied, are then grouped 
based on common values in the column specified in the GROUP BY clause. Because of 
this grouping, there will only be as many rows as there are unique values in that 
column. 

Implicitly, this means that you should *only* need to use this when you have 
aggregate functions in your query.

* HAVING
If the query has a GROUP BY clause, then the constraints in the HAVING clause are 
then applied to the grouped rows. Grouped rows that don't satisfy this 
constraint are discarded.

Like the WHERE clause, aliases are also not accessible from this step in most 
databases.

* SELECT
Any expressions in the SELECT part of the query are finally computed.

* DISTINCT
Of the remaining rows, rows with duplicate values in the column marked as DISTINCT 
will be discarded.

* ORDER BY 
If an order is specified by the ORDER BY clause, the rows are then sorted by 
the specified data in either ascending or descending order. 

Since all the expressions in the SELECT part of the query have been computed, you can 
reference aliases in this clause. 

* LIMIT/OFFSET
Finally, the rows that fall outside of the range specified by the LIMIT and 
OFFSET are discarded, leaving the final set of rows to be returned by the query. 

```sql
SELECT Director, COUNT(Title) AS Number_of_movies_directed
FROM movies
    INNER JOIN Boxoffice
    ON Id = Movie_Id
    GROUP BY Director;

SELECT Director, SUM(Domestic_sales + International_sales) AS Total_sales 
FROM movies
    INNER JOIN Boxoffice
    ON Id = Movie_Id
    GROUP BY Director;
```