from tkinter import *
import tkinter.font as font

root = Tk()
root.title("ATM System")
root.geometry("400x300")
root.configure(bg="lightblue")
root.resizable(False, False)
myFont = font.Font(family="Helvetica", size=12, weight="bold")
label = Label(root, text="Welcome to the ATM System", bg="lightblue", font=myFont)
label.pack(pady=20)
button1 = Button(root, text="Withdraw", font=myFont, width=15, height=2)
button1.pack(pady=10)
button2 = Button(root, text="Deposit", font=myFont, width=15, height=2)
button2.pack(pady=10)
button3 = Button(root, text="Check Balance", font=myFont, width=15,
                    height=2)
button3.pack(pady=10)
root.mainloop()
