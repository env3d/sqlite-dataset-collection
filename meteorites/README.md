# Introduction

As a data engineer at NASA, you often spend your time cleaning 
[meteorites](https://science.nasa.gov/solar-system/meteors-meteorites/facts/)—
or at least the data they create.

You’ve been given a CSV file of historical meteorite landings here on Earth, of which 
there are quite a few! Your job is to import the data into a SQLite database, cleaning 
it up along the way. After you’re done, the database will be used in analyses by some 
of your fellow engineers.

# Task

In import.sql, write a series of SQL (and SQLite) statements to import and clean the data from meteorites.csv into a table, meteorites, in a database called meteorites.db.

Within meteorites.db, the meteorites table should have the following columns:

Columns in the meteorites table:

  - `id`, which represents the unique ID of the meteorite.
  - `name`, which represents the given name of the meteorite.
  - `class`, which is the classification of the meteorite, according to the traditional classification scheme.
  - `mass`, which is the weight of the meteorite, in grams.
  - `discovery`, which is either “Fell” or “Found”. “Fell” indicates the meteorite was seen falling to Earth, whereas “Found” indicates the meteorite was found only after landing on Earth.
  - `year`, which is the year in which the the meteorite was discovered.
  - `lat`, which is the latitude at which the meteorite landed.
  - `long`, which is the longitude at which the meteorite landed.

Keep in mind that not all columns in the CSV should end up in the final table!

To consider the data in the `meteorites` table clean, you should ensure

  - Any empty values in `meteorites.csv` are represented by `NULL` in the `meteorites` table.
    - Keep in mind that the `mass`, `year`, `lat`, and `long` columns have empty values in the CSV.
  - All columns with decimal values (e.g., 70.4777) should be rounded to the nearest hundredths place (e.g., 70.4777 becomes 70.48).
    - Keep in mind that the `mass`, `lat`, and `long` columns have decimal values.
  - All meteorites with the nametype “Relict” are not included in the meteorites table.
  - The meteorites are sorted by year, oldest to newest, and then—if any two meteorites landed in the same year—by name, in alphabetical order.
  - You’ve updated the IDs of the meteorites from meteorites.csv, according to the order specified in #4.
  - The `id` of the meteorites should start at 1, beginning with the meteorite that landed in the oldest year and is the first in alphabetical order for that year.

# Hints

It can feel overwhelming to know where to start when cleaning such a big data file! Let’s break the problem down into smaller pieces.

## Begin by importing meteorites.csv into a temporary table

Start by getting all of the data from meteorites.csv into a temporary table, one called meteorites_temp. A temporary table is a helpful placeholder: you can use it to clean your data until it’s in a form that’s suitable for your final meteorites table.

Before you import a CSV into a SQLite database, it’s best to define the schema for the table into which that data will be imported. In import.sql, then, try the following:

```
CREATE TABLE "meteorites_temp" (
    -- TODO
);
```

We’ll leave the column names up to you.

Next, recall that .import is a SQLite statement that can import a CSV into a table of your choice. After your CREATE TABLE statement, write a .import statement to import the data from meteorites.csv into the meteorites_temp table.

Try creating meteorites.db by running the statements in import.sql.  You can do that using the following commands
in sqlite3

```
.read import.sql
```

## Write SQL statements to clean the imported data

With your data in a temporary table, continue writing SQL statements to clean the data. Consider how you might update the values of the mass column for instance:

```
UPDATE "meteorites_temp"
SET "mass" = ...
WHERE ...
```

You might need to write a few such statements, one (or more) for each column you’re trying to clean.

## Transfer the data from your temporary table into a meteorites table

Recall that you can `INSERT` values into a new table by SELECTing rows from another:

```
INSERT INTO "table0" ("column0", "column1")
SELECT "column0", "column1" FROM "table1";
```

When you do so, you can re-order your data using ORDER BY. And, so long as you’ve specified a primary key column in your new table, such a statement will auto-assign new IDs to the inserted rows if none is specified.

Once you’re done with the temporary table, it’s good practice to drop it!