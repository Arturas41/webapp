def backwardsby2(num):
    if num <= 0:
        print('Zero!')
        return
    else:
        emojismiles = []
        for i in range(0, num):
            emojismiles += 'asdf'
        print(num, ' '.join(emojismiles))
        backwardsby2(num - 2)
 
 
backwardsby2(9)

def towerOfHanoi(numrings, from_pole, to_pole, aux_pole):
    if numrings == 1:
        print('Move ring 1 from', from_pole, 'pole to', to_pole, 'pole')
        return
    towerOfHanoi(numrings - 1, from_pole, aux_pole, to_pole)
    print('Move ring', numrings, 'from', from_pole, 'pole to', to_pole, 'pole')
    towerOfHanoi(numrings - 1, aux_pole, to_pole, from_pole)
 
 
numrings = 4
towerOfHanoi(numrings, 'Left', 'Right', 'Middle')


def power(num, topwr):
    if topwr == 0:
        return 1
    else:
        return num * power(num, topwr - 1)
 
 
print('{} to the power of {} is {}'.format(4, 7, power(4, 7)))
print('{} to the power of {} is {}'.format(2, 8, power(2, 8)))

def factorial(num):
    if (num == 0):
        return 1
    else:
        return num * factorial(num - 1)
 
 
print('{}! is {}'.format(4, factorial(4)))
print('{}! is {}'.format(2, factorial(2)))

def fibonacci(n):
    if n <= 1:
        return n
    else:
        return fibonacci(n - 1) + fibonacci(n - 2)
 
 
number = 10
 
print('Fibonacci sequence:')
for i in range(number):
    print(fibonacci(i))

def sumnums(n):
    if n == 1:
        return 1
    return n + sumnums(n - 1)
 
 
print(sumnums(3))
print(sumnums(6))
print(sumnums(9))

def reverse(string):
    if len(string) == 0:
        return string
    else:
        return reverse(string[1:]) + string[0]
 
 
reverseme = 'Desserts'
print(reverse(reverseme))
 
reverseme = 'Knits'
print(reverse(reverseme))
 
reverseme = 'Regal'
print(reverse(reverseme))
 
reverseme = 'Pupils'
print(reverse(reverseme))
 
reverseme = 'Smart'
print(reverse(reverseme))
 
reverseme = 'Pals'
print(reverse(reverseme))
 
reverseme = 'Straw'
print(reverse(reverseme))
 
reverseme = 'Time'
print(reverse(reverseme))
 
reverseme = 'Star'
print(reverse(reverseme))