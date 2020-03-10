import sandwichmaker
from sandwichmaker import make_a_sandwich as make_sandwich

def names(names):
    for name in names:
        msg = f'Hello, {name}'
        print(msg)

names(['asdf','rnd_name'])

def hello_friends(names):
    while names:
        name = names.pop()
        message = f'Hello, {name}!'
        print(message)
 
 
original = ['Winnie', 'Mosely', 'Bella', 'Mugsy']
print(original)
hello_friends(original)
print(original)

def hello_friends(names):
    while names:
        name = names.pop()
        message = f'Hello, {name}!'
        print(message)
 
 
original = ['Winnie', 'Mosely', 'Bella', 'Mugsy']
copy = original[:]
print(original)
hello_friends(copy)
print(original)

def describe_car(make, model):
    print(f'The {make} {model} is a neat vehicle')
 
 
describe_car('Subaru', 'WRX')
describe_car('Tesla', 'Model 3')
describe_car('Tesla', 'Cybertruck')

def describe_car(make, model):
    print(f'The {make} {model} is a neat vehicle')
 
 
describe_car('Subaru', 'WRX')
describe_car(make='Tesla', model='Model 3')
describe_car(model='Corvette', make='Chevy')

def describe_car(make, model='WRX'):
    print(f'The {make} {model} is a neat vehicle')
 
 
describe_car('Subaru')

def describe_car(make, model=None):
    if model:
        print(f'The {make} {model} is a neat vehicle')
    else:
        print(f'The {make} is a neat vehicle')
 
 
describe_car('Subaru')
describe_car(model='Corvette', make='Chevy')

def make_a_sandwich(type, *veggies):
    print(f'\nMaking a {type} Sandwich.')
    print('It has these veggies:')
    for veggie in veggies:
        print(f'- {veggie}')
 
 
make_a_sandwich('Ham', 'Onions')
make_a_sandwich('Roast Beef', 'Lettuce', 'Tomato')
make_a_sandwich('Turkey', 'Lettuce', 'Tomato', 'Peppers')

def make_a_sandwich(type, **veggies):
    print(f'\nMaking a {type} Sandwich.')
    print('It has these veggies:')
    for veggie in veggies:
        print(f'- {veggies[veggie]}')
 
 
make_a_sandwich('Ham', one='Onions')
make_a_sandwich('Roast Beef', one='Onions', two='Peppers')
make_a_sandwich('Turkey', one='Olives', two='Spinach', three='Cucumbers')

def get_full_name(first, last):
    full_name = f'{first} {last}'
    return full_name.title()
 
 
comedian = get_full_name('ricky', 'gervais')
print(comedian)

def build_house(type, bedrooms):
    house = {'type': type, 'bedrooms': bedrooms}
    return house
 
 
house = build_house('Colonial', 3)
print(house)

def build_house(type, bedrooms, pool=None):
    house = {'type': type, 'bedrooms': bedrooms}
    if pool:
        house['pool'] = pool
    return house
 
 
house = build_house('Colonial', 3)
print(house)
 
house = build_house('Colonial', 2, 'No')
print(house)

import sandwichmaker
 
sandwichmaker.make_a_sandwich('Pastrami', 'Lettuce', 'Tomato')
sandwichmaker.make_a_sandwich('Corned Beef', 'Pickles', 'Jalapenos')

make_sandwich('Egg', 'Lettuce', 'Tomato')