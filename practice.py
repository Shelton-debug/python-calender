users = []
def register_user(username, email, password):
    user = {
        'username': username,
        'email': email,
        'password': password
    }
    users.append(user)
    return user

def get_all_users():
    return users

def find_user_by_username(username):
    for user in users:
        if user['username'] == username:
            return user
    return None

def delete_user(username):
    global users
    users = [user for user in users if user['username'] != username]
    return users

def update_user(username, new_email=None, new_password=None):
    user = find_user_by_username(username)
    if user:
        if new_email:
            user['email'] = new_email
        if new_password:
            user['password'] = new_password
        return user
    return None

def login(username, password):
    user = find_user_by_username(username)
    if user and user['password'] == password:
        return True
    return False

def logout(username):
    user = find_user_by_username(username)
    if user:
        return True
    return False

while True:
    print("\nUser Management System")
    print("1. Register User")
    print("2. View All Users")
    print("3. Find User by Username")
    print("4. Update User")
    print("5. Delete User")
    print("6. Login")
    print("7. Logout")
    print("8. Exit")

    choice = input("Enter your choice: ")

    if choice == '1':
        username = input("Enter username: ")
        email = input("Enter email: ")
        password = input("Enter password: ")
        user = register_user(username, email, password)
        print(f"User registered: {user}")

    elif choice == '2':
        all_users = get_all_users()
        print(f"All users: {all_users}")

    elif choice == '3':
        username = input("Enter username to find: ")
        user = find_user_by_username(username)
        if user:
            print(f"User found: {user}")
        else:
            print("User not found.")

    elif choice == '4':
        username = input("Enter username to update: ")
        new_email = input("Enter new email (leave blank to keep current): ")
        new_password = input("Enter new password (leave blank to keep current): ")
        updated_user = update_user(username, new_email or None, new_password or None)
        if updated_user:
            print(f"User updated: {updated_user}")
        else:
            print("User not found.")

    elif choice == '5':
        username = input("Enter username to delete: ")
        users = delete_user(username)
        print(f"Remaining users: {users}")

    elif choice == '6':
        username = input("Enter username to login: ")
        password = input("Enter password: ")
        if login(username, password):
            print("Login successful.")
        else:
            print("Login failed.")

    elif choice == '7':
        username = input("Enter username to logout: ")
        if logout(username):
            print("Logout successful.")
        else:
            print("Logout failed.")

    elif choice == '8':
        print("Exiting the system.")
        break

    else:
        print("Invalid choice. Please try again.")