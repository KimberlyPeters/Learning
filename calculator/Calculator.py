from tkinter import *

# Create the main window
win = Tk()
win.title("Calculator")
win.geometry('515x365')
win.resizable(0, 0)

# Function to handle button click event
def btn_click(item):
    global expression
    expression = expression + str(item)
    input_text.set(expression)

# Function to clear the input field
def btn_clear():
    global expression
    expression = ""
    input_text.set("")

# Function for the equal button
def btn_equal():
    global expression
    result = str(eval(expression))
    input_text.set(result)
    expression = ""

# Initialize variables
expression = ""
input_text = StringVar()

# Input field frame
input_frame = Frame(win, width=312, height=50)
input_frame.pack(side=TOP)

input_field = Entry(input_frame, font=('arial', 18, 'bold'), width=45, justify=RIGHT, textvariable=input_text)
input_field.grid(row=0, column=0)
input_field.pack(ipady=10)

# Button frame
btns_frame = Frame(win, width=310, height=270)
btns_frame.pack()

# Clear button
clear = Button(btns_frame, text='C', width=38, height=3, command=lambda: btn_clear())
clear.grid(row=0, column=0, columnspan=3, padx=1, pady=1)

# Divide button
divide = Button(btns_frame, text='/', width=10, height=3, command=lambda: btn_click('/'))
divide.grid(row=0, column=3, padx=1, pady=1)

# Number buttons (second row)
seven = Button(btns_frame, text='7', width=10, height=3, command=lambda: btn_click(7))
seven.grid(row=1, column=0, padx=1, pady=1)

eight = Button(btns_frame, text='8', width=10, height=3, command=lambda: btn_click(8))
eight.grid(row=1, column=1, padx=1, pady=1)

nine = Button(btns_frame, text='9', width=10, height=3, command=lambda: btn_click(9))
nine.grid(row=1, column=2, padx=1, pady=1)

multiply = Button(btns_frame, text='*', width=10, height=3, command=lambda: btn_click('*'))
multiply.grid(row=1, column=3, padx=1, pady=1)

# Number buttons (third row)
four = Button(btns_frame, text='4', width=10, height=3, command=lambda: btn_click(4))
four.grid(row=2, column=0, padx=1, pady=1)

five = Button(btns_frame, text='5', width=10, height=3, command=lambda: btn_click(5))
five.grid(row=2, column=1, padx=1, pady=1)

six = Button(btns_frame, text='6', width=10, height=3, command=lambda: btn_click(6))
six.grid(row=2, column=2, padx=1, pady=1)

minus = Button(btns_frame, text='-', width=10, height=3, command=lambda: btn_click('-'))
minus.grid(row=2, column=3, padx=1, pady=1)

# Number buttons (fourth row)
one = Button(btns_frame, text='1', width=10, height=3, command=lambda: btn_click(1))
one.grid(row=3, column=0, padx=1, pady=1)

two = Button(btns_frame, text='2', width=10, height=3, command=lambda: btn_click(2))
two.grid(row=3, column=1, padx=1, pady=1)

three = Button(btns_frame, text='3', width=10, height=3, command=lambda: btn_click(3))
three.grid(row=3, column=2, padx=1, pady=1)

plus = Button(btns_frame, text='+', width=10, height=3, command=lambda: btn_click('+'))
plus.grid(row=3, column=3, padx=1, pady=1)

# Number buttons (fifth row)
zero = Button(btns_frame, text='0', width=24, height=3, command=lambda: btn_click(0))
zero.grid(row=4, column=0, columnspan=2, padx=1, pady=1)

decimal = Button(btns_frame, text='.', width=10, height=3, command=lambda: btn_click('.'))
decimal.grid(row=4, column=2, padx=1, pady=1)

equal = Button(btns_frame, text='=', width=10, height=3, command=lambda: btn_equal())
equal.grid(row=4, column=3, padx=1, pady=1)

# Start the main event loop
win.mainloop()
