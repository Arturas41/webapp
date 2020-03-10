def greatest_common_denominator(num1, num2):
    while (num2 != 0):
        temp = num1
        num1 = num2
        num2 = temp % num2
 
    return num1
 
 
print(greatest_common_denominator(27, 75))
print(greatest_common_denominator(55, 20))