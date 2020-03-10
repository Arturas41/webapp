meat = 'Bacon'
print('Bacon has ' + str(len(meat)) + ' characters')

tickers = ['lk', 'msft', 'bynd', 'crc']
print('There are ' + str(len(tickers)) + ' tickers in the list')

for i in range(0, len(tickers)):
    print(len(tickers[i]))

team_members = range(25)
print(team_members)
print(len(team_members))
print(list(team_members))

for player in list(team_members):
    print('Player ' + str(player))

team_a = []
team_b = []
for player in team_members:
    if player % 2 == 0:
        team_a.append(list(team_members).pop(player))
    else:
        team_b.append(list(team_members).pop(player))
 
for player in team_a:
    print('Player ' + str(player) + ' is on team A')
 
for player in team_b:
    print('Player ' + str(player) + ' is on team B')

print(max(-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5))
print(min(-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5))

jeans = 40
sweater = 50
shoes = 100

print(min(jeans, sweater, shoes))
print(max(jeans, sweater, shoes))

print(min('Kohls', 'Target'))
print(min('Bed Bath Beyond', 'Best Buy', 'Zpplebees'))

frappuccino = 4.72
print(round(frappuccino))

blueberrypie = 3.14159265359
print(round(blueberrypie, 4))

intnum = -7
print('Absolute value of -7 is:', abs(intnum))
 
floatnum = -2.75
print('Absolute value of -2.75 is:', abs(floatnum))
 
plantroot = -2.5
print(abs(plantroot))

print(pow(2,10))

randomnums = [12, -54, 32, 15, -7, 44]
sortednums = sorted(randomnums)
print(sortednums)

reversednums = sorted(randomnums, reverse=True)
print(reversednums)

stores = ['Kohls', 'Target', 'Best Buy', 'Walmart', 'Costco']
print(sorted(stores))
print(sorted(stores, reverse=True))

stock_prices = {'Apple': 318.38, 'Google': 1487.64, 'Microsoft': 165.27, 'Cisco': 49.06}
for key in sorted(stock_prices.keys()):
    print(key, stock_prices[key])

for key, value in sorted(stock_prices.items(), key=lambda item: item[1]):
    print(key, value)
for key, value in sorted(stock_prices.items(), key=lambda item: item[1], reverse=True):
    print(key, value)

shirts = [('Blue', 'XL', 25), ('Red', 'L', 15), ('Green', 'S', 10), ('Yellow', 'M', 20)]

print(sorted(shirts, key=lambda item: item[0]))
print(sorted(shirts, key=lambda item: item[1]))
print(sorted(shirts, key=lambda item: item[2]))

r = range(0, 20)
print(type(r))
print(type(7))
print(type('Z'))
print(type('A simple string'))

class Car:
    def __init__(self, make, model, color):
        self.make = make
        self.model = model
        self.color = color
 
 
class Truck(Car):
    def fourwheeldrive(self):
        print('four wheel drive engaged')
car = Car('Honda', 'Civic', 'Blue')
print(type(car))

tesla = Car('Tesla', 'Model 3', 'White')
print(type(tesla))

truck = Truck('Toyota', 'Tacoma', 'Red')
print(type(truck))

print(type(car) == type(truck))
print(type(car) == type(tesla))

print(isinstance(car, Car))
print(isinstance(truck, Car))

