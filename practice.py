
print('simple calculator')

def add(num1, num2):
    return num1 + num2

def subtract(num1, num2):
    
    return num1 - num2

def multiply(num1, num2):
    
    return num1 * num2

def divide(num1, num2):
    if num2 == 0:
        return 'Error: Division by zero is not allowed.'
    return num1 / num2

def exit_program():
    print('Exiting the program...')
    exit()


while True:
    
    print('1. Addition')
    print('2. Subtraction')
    print('3. Multiplication')
    print('4. Division')
    print('5. Exit')
    
    choice = input('Enter your choice (1-5): ')

    if choice == '1':
        num1 = float(input('Enter first number: '))
        num2 = float(input('Enter second number: '))

        print(f'Result: {add(num1, num2)}')
    elif choice == '2':
        num1 = float(input('Enter first number: '))
        num2 = float(input('Enter second number: '))

        print(f'Result: {subtract(num1, num2)}')
    elif choice == '3':
        num1 = float(input('Enter first number: '))
        num2 = float(input('Enter second number: '))

        print(f'Result: {multiply(num1, num2)}')
    elif choice == '4':
        num1 = float(input('Enter first number: '))
        num2 = float(input('Enter second number: '))

        print(f'Result: {divide(num1, num2)}')
    elif choice == '5':
        exit_program()
    else:
        print('Invalid choice. Please try again.')
