dictionary = {'level': '1', 'points': 10}

print(dictionary['level'])
print(dictionary['points'])

player_0 = {'level': 'novice'}
player_level = player_0.get('level')
player_points = player_0.get('points', 0)
print(player_level)
print(player_points)

# Start with an empty list.
profiles = []
# Make a new profile, and add them to the list.
new_profile = {
    'last': 'Diaz',
    'first': 'Guillermo',
    'profilename': 'gDiaz',
}
profiles.append(new_profile)
# Make another new profile, and add them as well.
new_profile = {
    'last': 'Rezende',
    'first': 'Pedro',
    'profilename': 'pRezende',
}
profiles.append(new_profile)
# Show all information about each profile.
for profile_dict in profiles:
    for k, v in profile_dict.items():
        print(f"{k}: {v}")
print("\n")

profiles = {
    'smcloughlin': {
        'first': 'Sean',
        'last': 'McLoughlin',
        'gender': 'male',
    },
    'prezende': {
        'first': 'Pedro',
        'last': 'Rezende',
        'gender': 'male',
    },
}
for profilename, profile_dict in profiles.items():
    print("\nUsername: " + profilename)
    full_name = profile_dict['first'] + " "
    full_name += profile_dict['last']
    gender = profile_dict['gender']
    print(f"\tFull name: {full_name.title()}")
    print(f"\tgender: {gender.title()}")

fav_games = {
    'George': 'Crash Bandicoot',
    'Alex': 'Super Smash Bros',
    'Sarah': 'Legend Of Zelda',
    'Allison': 'Pong',
}

for name, game in fav_games.items():
    print(f"{name}: {game}")

for name in fav_games.keys():
    print(name)

for name in sorted(fav_games.keys(), reverse=True):
    print(f"{name}: {fav_games[name]}")

num_responses = len(fav_games)
print(num_responses)

	
cubes = {x: x ** 3 for x in range(5)}

for name, game in cubes.items():
    print(f"{name}: {game}")

veggies = ['pepper', 'broccoli', 'spinach', 'potato']
fruits = ['apple', 'orange', 'peach', 'plum']
combos = {key: key_2 for key, key_2 in zip(veggies, fruits)}

for name, game in combos.items():
    print(f"{name}: {game}")
