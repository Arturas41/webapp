import statistics
import math
 
grades = [80, 85, 77, 97, 100, 75, 88, 90, 93]
 
meangrades = statistics.mean(grades)
print(f'The mean of all the grades is {meangrades}')

mediangrades = statistics.median(grades)
print(f'The median of all the grades is {mediangrades}')


grades = [75, 80, 85, 77, 97, 100, 75, 88, 75, 90, 93, 77]


modegrades = statistics.mode(grades)
print(f'The mode of all the grades is {modegrades}')

grades = [75, 80, 85, 77, 97, 100, 75, 88, 75, 90, 93, 77]
variancegrades = statistics.variance(grades)
 
print(f'The grades have a variance of {variancegrades}')

grades = [90, 90, 90, 90, 90, 90]
variancegrades = statistics.variance(grades)
 
print(f'The grades have a variance of {variancegrades}')

grades = [90, 90, 90, 90, 90, 90, 100]
variancegrades = statistics.variance(grades)
print(f'The grades have a variance of {variancegrades}')

grades = [80, 82, 100, 77, 89, 94, 98, 50]
variancegrades = statistics.variance(grades)
print(f'The grades have a variance of {variancegrades}')

grades = [89, 91, 95, 92, 93, 94, 98, 90]
stdevgrades = statistics.stdev(grades)
 
print(f'The grades have a standard deviation of {stdevgrades}')

grades = [30, 80, 100, 45, 15, 94, 64, 90]
stdevgrades = statistics.stdev(grades)
 
print(f'The grades have a standard deviation of {stdevgrades}')

grades = [30, 80, 100, 45, 15, 94, 64, 90]
stdevgrades = math.sqrt(statistics.variance(grades))
 
print(f'The grades have a standard deviation of {stdevgrades}') 











