filename = 'pythonfile.txt'
import json
import tempfile
import zipfile

with open(filename) as file_object:
    contents = file_object.read()
print(contents)

print(file_object.name)
print(file_object.mode)

filename = 'pythonfile.txt'
with open(filename) as file_object:
    for line in file_object:
        print(line.rstrip())


file_object = open('replace.txt', 'r')
print('File Contents\n' + file_object.read())
file_object.seek(0)
 
print('\nRevised Output')
for line in file_object:
    revised = line.replace('Spanish', 'Mexican')
    print(revised.rstrip())
file_object.close()

filename = 'pythonfile.txt'
with open(filename) as file_object:
    lines = file_object.readlines()
print(lines)
for line in lines:
    print(line.rstrip())

filename = 'anotherfile.txt'
with open(filename, 'w') as file_object:
    file_object.write('Writing data to a file!\n')
    file_object.write('another line\n')

with open(filename, 'a') as file_object:
    file_object.write('append')

numbers = [3, 6, 9, 12, 15, 18]
filename = 'numbers.json'
with open(filename, 'w') as file_object:
    json.dump(numbers, file_object)

filename = 'numbers.json'
with open(filename) as file_object:
    numbers = json.load(file_object)
print(numbers)

file_name = 'no_file'
try:
    with open(file_name) as file_object:
        numbers = json.load(file_object)
except FileNotFoundError:
    message = f'Unable to find file: {file_name}.'
    print(message)
else:
    print(numbers)

temp_file = tempfile.TemporaryFile()

temp_file.write(b'asdf')
temp_file.seek(0)

print(temp_file.read())

temp_file.close()

zip_object = zipfile.ZipFile('ZipFile.zip', 'w')

zip_object.write('anotherfile.txt')
zip_object.write('newfile.txt')

zip_object.close()


zip_object = zipfile.ZipFile('ZipFile.zip', 'r')
print(zip_object.namelist())

for meta in zip_object.infolist():
    print(meta)

info = zip_object.getinfo('newfile.txt')
print(info)

print(zip_object.read('newfile.txt').decode("utf-8"))


with zip_object.open('newfile.txt') as file_object:
    print(file_object.read().decode("utf-8"))