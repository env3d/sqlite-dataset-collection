-- modify log entry
update user_logs set new_password = (select password from users where username = 'emily33')
where type = 'update' and old_username = 'admin' and new_username = 'admin';
