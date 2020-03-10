from tkinter import *
from tkinter import ttk
import random
 
 
class ButtonsDemo:
 
    def __init__(self, master):
        self.label = ttk.Label(master, text='Tkinter Root')
        self.label.grid(row=0, column=0, columnspan=2)
 
        ttk.Button(master, text='Even',
                   command=self.even).grid(row=1, column=0)
 
        ttk.Button(master, text='Odd',
                   command=self.odd).grid(row=1, column=1)
 
    def even(self):
        random_even = random.randrange(0, 20, 2)
        self.label.config(text=random_even)
 
    def odd(self):
        random_odd = random.randrange(1, 20, 2)
        self.label.config(text=random_odd)
 
 
def main():
    root = Tk()
    app = ButtonsDemo(root)
    root.mainloop()
 
 
if __name__ == '__main__': main()

root = Tk()
 
label = ttk.Label(root, text='The Main Tkinter Window')
label.pack()
label.config(text='This is a demo of how to configure some options on a tk widget!')
label.config(wraplength=500)
label.config(justify=CENTER)
label.config(foreground='darkgray', background='white')
label.config(font=('Open-Sans', 20, 'bold'))
 
root.mainloop()