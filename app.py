class bank:
    def __init__(self):
        self.balance = 0
        
    def deposit(self, amount):
        if amount > 0:
            self.balance += amount
            return f"Deposited: ${amount}. New balance: ${self.balance}"
        else:
            return "Deposit amount must be positive."
        
    def withdraw(self, amount):
        if 0 < amount <= self.balance:
            self.balance -= amount
            return f"Withdrew: ${amount}. New balance: ${self.balance}"
        elif amount > self.balance:
            return "Insufficient funds."
        else:
            return "Withdrawal amount must be positive."
    
    def get_balance(self):
        return f"Current balance: ${self.balance}"

    def main(self):
        print("Welcome to the Bank!")
        while True:
            action = input("Choose an action: deposit, withdraw, balance, exit: ").strip().lower()
            if action == "deposit":
                amount = float(input("Enter amount to deposit: "))
                print(self.deposit(amount))
            elif action == "withdraw":
                amount = float(input("Enter amount to withdraw: "))
                print(self.withdraw(amount))
            elif action == "balance":
                print(self.get_balance())
            elif action == "exit":
                print("Thank you for banking with us!")
                break
            else:
                print("Invalid action. Please try again.")
        
if __name__ == "__main__":
    my_bank = bank()
    my_bank.main()