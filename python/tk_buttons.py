from tkinter import *
from tkinter import ttk
 
root = Tk()
 
 
def callback():
    print('The Button Was Clicked!')
 
 
button = ttk.Button(root, text='Click Here!', command=callback)
button.pack(padx=100, pady=50)

for i in range(5):
    button.invoke()
 
button.state(['disabled'])
button_state = button.instate(['disabled'])
print(button_state)
button_state = button.instate(['!disabled'])
print(button_state)

root.mainloop()