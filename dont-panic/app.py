import sqlite3
import hashlib
import sys

def create_connection():
    conn = sqlite3.connect('dont-panic.db')
    return conn

def login(password):
    conn = create_connection()

    # Create an MD5 hash of password
    md5hash = hashlib.md5()
    md5hash.update(password.encode('utf-8'))
    password_hash = md5hash.hexdigest()

    user = conn.execute(f"SELECT * FROM users WHERE username = 'admin' and password = '{password_hash}'").fetchall()    
    conn.close()

    # We return true if the number of rows returned is exact 1
    return len(user) == 1

def view_users():
    conn = create_connection()
    users = conn.execute("SELECT * FROM users;").fetchall()
    conn.close()
    return users

def view_items():
    conn = create_connection()
    items = conn.execute("SELECT * FROM items;").fetchall()    
    conn.close()
    return items

def view_order_of_user(username):
    conn = create_connection()
    
    orders = conn.execute(f"""
    SELECT users.username, items.name, orders.quantity FROM users 
    inner join orders on users.id = orders.user_id 
    inner join items on orders.item_id = items.id
    where users.username = '{username}';
    """).fetchall()

    conn.close()
    return orders

def buy_item(username, itemname, quantity):
    conn = create_connection()

    conn.execute(f"""
    INSERT INTO orders 
    (user_id, item_id, quantity)
    SELECT 
    (SELECT id FROM users WHERE username = '{username}'),
    (SELECT id FROM items WHERE name = '{itemname}'),
    {quantity};    
    """)
    conn.commit()

    conn.close()    

def main():

    if len(sys.argv) != 2:
        print("Must provide admin password on the command line to start app")
        return

    if not login(sys.argv[1]):
        print("Need to connect with the correct admin password")
        return


    while True:
        try:
            command = input("POS>> ")

            if command.strip().lower() == 'quit':
                break
            
            if command == 'users':
                users = view_users()
                for user in users:
                    print(user)

            if command.startswith('items'):                
                items = view_items()
                for item in items:
                    print(item)

            if command.startswith('orders'):
                username = command.split()[1]
                orders = view_order_of_user(username)
                for order in orders:
                    print(order)            

            if command.startswith('buy'):
                username = command.split()[1]
                itemname = ' '.join(command.split()[2:-1])
                quantity = int(command.split()[-1])
                buy_item(username, itemname, quantity)
            
        except Exception as e:
            print(e)
            continue

if __name__ == "__main__":
    main()
