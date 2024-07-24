# Introduction

The year is 2001. You’ve been hired to help make the most of the Oakland Athletics baseball team’s dwindling player budget. Each year, teams like the “A’s” hire new baseball players. Unfortunately, you’re low on star players—and on funds. Though, with a bit of SQL and some luck, who says you can’t still create a team that defies expectations?

Given a database called moneyball.db—one that contains information on players, their performances, and their salaries—help the Oakland Athletics find the value in players others might miss.

# Questions

## 1.sql
You should start by getting a sense for how average player salaries have changed over time. In 1.sql, write a SQL query to find the average player salary by year.

Sort by year in descending order.
Round the salary to two decimal places and call the column “average salary”.
Your query should return a table with two columns, one for year and one for average salary.

## 2.sql
Your general manager (i.e., the person who makes decisions about player contracts) asks you whether the team should trade a current player for Cal Ripken Jr., a star player who’s likely nearing his retirement. In 2.sql, write a SQL query to find Cal Ripken Jr.’s salary history.

Sort by year in descending order.
Your query should return a table with two columns, one for year and one for salary.

## 3.sql
Your team is going to need a great home run hitter. Ken Griffey Jr., a long-time Silver Slugger and Gold Glove award winner, might be a good prospect. In 3.sql, write a SQL query to find Ken Griffey Jr.’s home run history.

Sort by year in descending order.
Note that there may be two players with the name “Ken Griffey.” This Ken Griffey was born in 1969.
Your query should return a table with two columns, one for year and one for home runs.

## 4.sql
You need to make a recommendation about which players the team should consider hiring. With the team’s dwindling budget, the general manager wants to know which players were paid the lowest salaries in 2001. In 4.sql, write a SQL query to find the 50 players paid the least in 2001.

Sort players by salary, lowest to highest.
If two players have the same salary, sort alphabetically by first name and then by last name.
If two players have the same first and last name, sort by player ID.
Your query should return three columns, one for players’ first names, one for their last names, and one for their salaries.

## 5.sql
It’s a bit of a slow day in the office.In 5.sql, write a SQL query to find all teams that Steve Parris played for.

Your query should return a table with a single column, one for the name of the teams.  Only return unique team names.

## 6.sql
Which teams might be the biggest competition for the A’s this year? In 6.sql, write a SQL query to return the top 5 teams, sorted by the total number of hits by players in 2001.

Call the column representing total hits by players in 2001 “total hits”.
Sort by total hits, highest to lowest.
Your query should return two columns, one for the teams’ names and one for their total hits in 2001.

## 7.sql
You need to make a recommendation about which player (or players) to avoid recruiting. In 7.sql, write a SQL query to find the name of the player who’s been paid the highest salary, of all time, in Major League Baseball.

Your query should return a table with two columns, one for the player’s first name and one for their last name.

## 8.sql
How much would the A’s need to pay to get the best home run hitter this past season? In 8.sql, write a SQL query to find the 2001 salary of the player who hit the most home runs in 2001.

Your query should return a table with one column, the salary of the player.

## 9.sql
What salaries are other teams paying? In 9.sql, write a SQL query to find the 5 lowest paying teams (by average salary) in 2001.

Round the average salary column to two decimal places and call it “average salary”.
Sort the teams by average salary, least to greatest.
Your query should return a table with two columns, one for the teams’ names and one for their average salary.

## 10.sql
The general manager has asked you for a report which details each player’s name, their salary for each year they’ve been playing, and their number of home runs for each year they’ve been playing. To be precise, the table should include:

All player’s first names
All player’s last names
All player’s salaries
All player’s home runs
The year in which the player was paid that salary and hit those home runs
In 10.sql, write a query to return just such a table.

Your query should return a table with five columns, per the above.
Order the results, first and foremost, by player’s IDs (least to greatest).
Order rows about the same player by year, in descending order.
Consider a corner case: suppose a player has multiple salaries or performances for a given year. Order them first by number of home runs, in descending order, followed by salary, in descending order.
Be careful to ensure that, for a single row, the salary’s year and the performance’s year match.

To help you visualize what the general manager would like, they gave you an example table:

```
+------------+-----------+--------+------+----+
| first_name | last_name | salary | year | HR |
+------------+-----------+--------+------+----+
| Don        | Aase      | 400000 | 1989 | 0  |
| Don        | Aase      | 675000 | 1988 | 0  |
| Don        | Aase      | 625000 | 1987 | 0  |
| Don        | Aase      | 600000 | 1986 | 0  |
| Jeff       | Abbott    | 300000 | 2001 | 0  |
| Jeff       | Abbott    | 255000 | 2000 | 3  |
| Jeff       | Abbott    | 255000 | 1999 | 2  |
+------------+-----------+--------+------+----+
```

If all goes well, you might also see two rows like this in your final table:

```
+-------------+---------------+----------+----+------+
| first_name  | last_name     | salary   | HR | year |
+-------------+---------------+----------+----+------+
| Todd        | Zeile         | 3700000  | 9  | 1995 |
| Todd        | Zeile         | 3700000  | 5  | 1995 |
+-------------+---------------+----------+----+------+
```

## 11.sql
You need a player that can get hits. Who might be the most underrated? In 11.sql, write a SQL query to find the 10 least expensive players per hit in 2001.

  - Your query should return a table with three columns, one for the players’ first names, one of their last names, and one called “dollars per hit”.

  - You can calculate the “dollars per hit” column by dividing a player’s 2001 salary by the number of hits they made in 2001. Recall you can use AS to rename a column.

  - Dividing a salary by 0 hits will result in a NULL value. Avoid the issue by filtering out players with 0 hits.

  - Sort the table by the “dollars per hit” column, least to most expensive. If two players have the same “dollars per hit”, order by first name, followed by last name, in alphabetical order.

  - As in 10.sql, ensure that the salary’s year and the performance’s year match.

  - You may assume, for simplicity, that a player will only have one salary and one performance in 2001.

## 12.sql
Hits are great, but so are RBIs! In 12.sql, write a SQL query to find the players among the 10 least expensive players per hit and among the 10 least expensive players per RBI in 2001.

  - Your query should return a table with two columns, one for the players’ first names and one of their last names.
  - You can calculate a player’s salary per RBI by dividing their 2001 salary by their number of RBIs in 2001.
  - You may assume, for simplicity, that a player will only have one salary and one performance in 2001.
  - Order your results by player ID, least to greatest (or alphabetically by last name, as both are the same in this case!).
  - Keep in mind the lessons you’ve learned in 10.sql and 11.sql!