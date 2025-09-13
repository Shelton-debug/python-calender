users = {
    'alice': {'pin': 1234, 'balance': 1000},
    'bob': {'pin': 5678, 'balance': 1500},
    'charlie': {'pin': 9012, 'balance': 2000}
}

def login():
    username = input("Enter your username: ")
    pin = int(input("Enter your PIN: "))
    
    if username in users and users[username]['pin'] == pin:
        print(f"Welcome, {username}!")
        return username
    else:
        print("Invalid username or PIN.")
        return None
    
def check_balance(username):
    balance = users[username]['balance']
    print(f"Your current balance is: ${balance}")
    
def deposit(username):
    amount = float(input("Enter amount to deposit: "))
    if amount > 0:
        users[username]['balance'] += amount
        print(f"Deposited ${amount}. New balance is ${users[username]['balance']}.")
    else:
        print("Deposit amount must be positive.")
        
def withdraw(username):
    amount = float(input("Enter amount to withdraw: "))
    if 0 < amount <= users[username]['balance']:
        users[username]['balance'] -= amount
        print(f"Withdrew ${amount}. New balance is ${users[username]['balance']}.")
    else:
        print("Invalid withdrawal amount.")
        
def main():
    print("Welcome to the ATM!")
    user = login()
    if user:
        while True:
            print("\nOptions:")
            print("1. Check Balance")
            print("2. Deposit")
            print("3. Withdraw")
            print("4. Exit")
            choice = input("Choose an option: ")
            
            if choice == '1':
                check_balance(user)
            elif choice == '2':
                deposit(user)
            elif choice == '3':
                withdraw(user)
            elif choice == '4':
                print("Thank you for using the ATM. Goodbye!")
                break
            else:
                print("Invalid option. Please try again.")

if __name__ == "__main__":
    main()