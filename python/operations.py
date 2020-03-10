import statistics

isSnowing = False
isFreezing = True

if isSnowing and isFreezing:
    print('Time to move south')

if isSnowing or isFreezing:
    print('It must be winter time')

if not isSnowing:
    print('The snow is falling')

scores = [112, 189, 329, 817, 772, 259]
averagescore = statistics.mean(scores)
print(averagescore)
for score in scores:
    isAverage = score < averagescore
    if not isAverage:
        print('The score of ' + str(score) + ' is above average')
    else:
        print('The score of ' + str(score) + ' is below average')

print(7 < 73)
print(73 < 7)
 
if 7 < 73:
    print('seven is less than seventy three')

puppy = 7
labrador = 35
 
if puppy < labrador:
    print('The puppy weighs less than the labrador')

mouse = 1
if mouse < puppy and mouse < labrador:
    print('The mouse weighs the least')