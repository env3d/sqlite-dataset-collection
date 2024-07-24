# Introduction

A crime has taken place and the detective needs your help. The detective gave 
you the crime scene report, but you somehow lost it. You vaguely remember that 
the crime was a ​murder​ that occurred sometime on ​Jan.15, 2018​ and that it took 
place in SQL City. Start by retrieving the corresponding crime scene report from 
the police department’s database.

Use the following command to download the sqlite database:

```
wget https://github.com/NUKnightLab/sql-mysteries/raw/master/sql-murder-mystery.db
```

# 1.sql

Use the `crime_scene_report` table to retrieve the description of the 
crime as reported in the introduction

# 2.sql

Write a query to retrieve the person id from the 2 witnesses

# 3.sql

Retrieve the interviews transcripts from the 2 witnesses

# 4.sql

Based on the interviews from 3.sql, find out all gym members from 
`get_fit_now_check_in` and `get_fit_now_members` that
matches the description (do not cross reference with `drivers_licence` yet)

# 5.sql

Cross reference the result of 4.sql with the `driver_licence` table
to locate the specific person the witnesses have identified as the murderer.
Retrieve the entire record from person.

If you insert the name of the murder into the `solution` table, you can 
see if you got it correct!  

To insert into the solution table, use the following sql command:

```
INSERT INTO solution VALUES (1, 'name of murderer');
SELECT value FROM solution;
```
