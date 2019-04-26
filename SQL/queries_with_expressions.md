# Queries with Expressions

You can use expressions to write more complex logic on column values in a query. These expressions can use mathematical and string functions along with basic arithmetic to transform values when the query is executed:

```sql
/*Example query with expressions*/

SELECT particle_speed / 2.0 AS half_particle_speed
FROM physics_data
WHERE ABS(particle_position) * 10.0 / 500;
```

Expressions can save time and post-processing of the result data, but can make the query a bit harder to read. When expressions are using in the SELECT part of the query, they should be given a descriptive alias using the AS keyword:

```sql
/*SELECT query with expression aliases*/

SELECT col_expression AS expr_description, ...
FROM my_table;
```

Regular columns and tables can also have aliases to make them easier to reference in the output and as a part of simplfying more complex queries:

```sql
/*Example qeury with both column and table name aliases*/

SELECT column AS better_column_name, ...
FROM a_long_widgets_table_name AS mywidgets
INNER JOIN widget_sales
    ON mywidgets.id = widget_sales.widget_id;
```

Exercises: 

```sql
SELECT Title, (Domestic_sales + International_sales) / 1000000.0 AS Combined_Sales
FROM movies
INNER JOIN Boxoffice
    ON Id = Movie_Id;

SELECT Title, Rating * 10.0 AS Percent_rating
FROM movies
INNER JOIN Boxoffice
    ON Id = Movie_Id;

SELECT Title, Year
FROM movies
WHERE Year % 2 = 0;
```