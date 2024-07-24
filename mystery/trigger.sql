DROP TRIGGER check_solution;
CREATE TRIGGER check_solution AFTER INSERT ON solution
    WHEN new.user==1
    BEGIN
        DELETE FROM solution;
        INSERT INTO solution VALUES (0,
        CASE WHEN hex(new.value)=='4A6572656D7920426F77657273' THEN 'Congrats, you found the murderer! But wait, there''s more... If you think you''re up for a challenge, try querying the interview transcript of the murderer to find the real villain behind this crime. If you feel especially confident in your SQL skills, try to complete this final step with no more than 2 queries. Use this same INSERT statement with your new suspect to check your answer.'
             WHEN hex(new.value)=='4D6972616E6461205072696573746C79' THEN 'Congrats, you found the brains behind the murder! Everyone in SQL City hails you as the greatest SQL detective of all time. Time to break out the champagne!'
             ELSE 'That''s not the right person. Try again!'
        END
        );
    END;