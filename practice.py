class shopping:
    def __init__(self):
        self.items = []

    def add_item(self, item, quantity, price):
        if item in [i[0] for i in self.items]:
            print(f"{item} is already in the cart.")
            
        else:
            self.items.append([item, quantity, price])
            print(f"Added {quantity} of {item} at ${price} each.")

    def view_cart(self):
        if not self.items:
            print("Your cart is empty.")
        else:
            print("Items in your cart:")
            for i in self.items:
                print(f"{i[0]} - Quantity: {i[1]}, Price: ${i[2]} each")
    
    def remove_item(self, item):
        for i in self.items:
            if i[0] == item:
                self.items.remove(i)
                print(f"Removed {item} from the cart.")
                return
        print(f"{item} not found in the cart.")
        
    def checkout(self):
        if not self.items:
            print("Your cart is empty.")
            return
        total = sum(i[1] * i[2] for i in self.items)
        print(f"Total amount due: ${total:.2f}")
        self.items.clear()
        print("Thank you for your purchase!")
        
cart = shopping()

while True:
    print("\nOptions: add, view, remove, checkout, exit")
    action = input("What would you like to do? ").strip().lower()
    if action == "add":
        item = input("Enter item name: ")
        quantity = int(input("Enter quantity: "))
        price = float(input("Enter price per item: "))
        cart.add_item(item, quantity, price)
    elif action == "view":
        cart.view_cart()
    elif action == "remove":
        item = input("Enter item name to remove: ")
        cart.remove_item(item)
    elif action == "checkout":
        cart.checkout()
    elif action == "exit":
        print("Exiting the shopping cart. Goodbye!")
        break
    else:
        print("Invalid option. Please try again.")