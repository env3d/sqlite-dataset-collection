# Introduction

`app.py` is a very basic python command-line application that allows
the user to enter orders for an item.  It connects to the
don't panic database for all its data storage needs.

To run the app, use the following command in the terminal:

```
python app.py
```

What you will find, however, is that the app will prompt you for the admin
password.  Unfortunately, since you don't have the admin password, 
it seems like you cannot enter the app to enter orders. 

# 1.sql

In 1.sql, write a SQL command to update the admin password to "opps!".  

When you look at the users table, you will noticed that none of the passwords 
are normal words. That's because passwords are usually not stored “in the clear”—that is, as 
the plain characters that make up the password. Instead they’re “hashed,” or scrambled, 
to preserve privacy. Given this reality, you’ll need to ensure the password to which 
you change the administrative password is also hashed. Thankfully, you know that the 
passwords in the users table are already stored as MD5 hashes. You can generate quickly 
generate such hashes from plaintext at https://md5hashgenerator.com.

To check if you have successfully changed the admin password, issue the following command in the 
terminal:

```
python app.py opps!
```

# 2.sql

It turns out that databases usually have security measures to keep records of all
modifications done to sensitive tables such as `users`.  In this case, all 
actions are recorded in a table called `user_logs`.

In 2.sql, write a sequence of SQL statements to achieve the following:

  - Erase any logs of the above password change recorded by the database.
  - Add false data to throw others off your trail. In particular, to frame emily33, make it only appear—in the user_logs table—as if the admin account has had its password changed to emily33’s password.


# NOTES

  - If you need to reset the database at any time, you can run

    ```
    .read reset.sql
    ```

    to return the database to its original form.


  - Recall you can INSERT into a table the rows returned by a SELECT statement, so long as the number of columns 
    matches.
    
    You can create a subquery at any point in a SQL statement, not just as part of a WHERE clause. For instance, consider the following SQL query on a simplified user_logs table:

    ```
    INSERT INTO "user_logs" ("type", "password")
    SELECT 'update', (
        SELECT "password"
        FROM "users"
        WHERE "username" = 'carter'
    );
    ```

    The above query will insert a new row into the user_logs table. The column type will have the value “update” and the column password will have the current password of the user carter.

