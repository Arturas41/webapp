foods = ['Eggs', 'Olives', 'Dairy', 'Meat', 'Chocolate']

def print_list(list):
    for item in list:
        print(item)

games = ['Pokemon Sword & Shield', 'Luigis Mansion', 'Killer Queen Black', 'Dragon Quest', 'Links Awakening']
first_three = games[:3]

last_three = games[-3:]

middle_three = games[1:4]

games.append('another_game')

games.insert(-1,'another_game')

del games[-1]

games.pop()

games.pop(0)

print_list(games)

lenght = len(games)

print(lenght)

copy_of_games = games[:]

print_list(copy_of_games)

squares = []
for x in range(1, 11):
    square = x**2
    squares.append(square)

print_list(squares)

languages = ['python', 'golang', 'javascript', 'sql', 'php']
upper_languages = []
for language in languages:
    upper_languages.append(language.upper())

print_list(upper_languages)

upper_languages.sort(reverse = True)

print(upper_languages)

measurements = (900, 500)

print_list(measurements)