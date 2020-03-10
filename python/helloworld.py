from datetime import date
from datetime import datetime
import os
import shutil
import urllib.request
import json
import xml.dom.minidom

variable_int = 77
variable_str = 'seven'
print(str(variable_int) + variable_str)

asdf = "asdf"

def my_function():
    global asdf
    asdf = "asdf_local"
    local_var = "local_var"
    print(local_var)

my_function()
print(asdf)

def my_function2(pass_var,pass_var2):
    print(pass_var + ',' +pass_var2)

my_function2('asdf1','asdf2')

def return_function(number,x=2):
    return number*x

result = return_function(3)
print(result)

def variable_args(*args):
    result = 0
    for x in args:
        result = result + x
    return result

print(variable_args(2,2))

foo = 50
bar = 100

if foo < bar:
    string = "asdf123"
elif foo == bar:
    string = "asdf"
else:
    string = "123asdf"

print(string)

counter = 0

while(counter < 5):
    print(counter)
    counter = counter + 1

for counter in range(5,10):
    print(counter)

colors = ['red', 'blue']

for color in colors:
    print(color)

for counter in range(10,15):
    if(counter ==13): break
    print(counter)

for counter in range(0,10):
    if(counter % 2 == 0):continue
    print(counter)

for index, color in enumerate(colors):
    print(index,color)

class Car:

    def __init__(self, make, model, color):
        self.make = make
        self.model = model
        self.color = color

        def makemodel(self):
            return 'This is a {} {} {}'.format(self.make, self.model, self.color)

car1 = Car('car_make', 'car_model', 'car_color')

print(car1.make)
print(car1.model)
print(car1.color)

today = date.today()
print(today)
print(str(today.day))


print("Today's Weekday number is: ", today.weekday())
days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
print("In other words, today is  " + days[today.weekday()])

today = datetime.now()
print(today)

file = open("mytextfile", "w+")

for i in range(7):
    file.write("This is line %d\r\n" % (i + 1))
file.close()

file = open("mytextfile", "r")
if file.mode == 'r':  # check to make sure that the file was opened
    contents = file.read()
    print(contents)

file = open("mytextfile", "r")
if file.mode == 'r':
    filelines = file.readlines()
    for line in filelines:
        print(line)
file.close()

print(os.name)

webUrl = urllib.request.urlopen("https://www.bing.com")
 
print("result code: " + str(webUrl.getcode()))

data = webUrl.read()


urlData = "https://random.dog/woof.json"
 
webUrl = urllib.request.urlopen(urlData)
 
print("result code: " + str(webUrl.getcode()))
 
if (webUrl.getcode() == 200):
    data = webUrl.read()
    theJSON = json.loads(data)
    print(theJSON['fileSizeBytes'])
    print(theJSON['url'])
else:
    print("Received an error from server, cannot retrieve results " + str(webUrl.getcode()))


doc = xml.dom.minidom.parse("samplexml.xml")

print(doc.nodeName)
print(doc.firstChild.tagName)

options = doc.getElementsByTagName("option")
print("%d options:" % options.length)
for option in options:
    print(option.getAttribute("name"))


newOption = doc.createElement("option")
newOption.setAttribute("name", "Race Tires")
doc.firstChild.appendChild(newOption)

options = doc.getElementsByTagName("option")
print("%d options:" % options.length)
for option in options:
    print(option.getAttribute("name"))