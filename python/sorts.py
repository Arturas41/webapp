def bubbleSort(data_to_sort):
    for i in range(len(data_to_sort) - 1, 0, -1):
        for j in range(i):
            if data_to_sort[j] > data_to_sort[j + 1]:
                temp = data_to_sort[j]
                data_to_sort[j] = data_to_sort[j + 1]
                data_to_sort[j + 1] = temp
 
        print(f'Iteration: {abs(i - len(data_to_sort))}', data_to_sort)
 
 
list_to_sort = [90, 50, 10, 20, 70, 60, 40, 30, 80]
print('Original List: ', list_to_sort)
bubbleSort(list_to_sort)
print('Sorted List: ', list_to_sort)


def mergesort(data_to_sort):
    if len(data_to_sort) > 1:
        mid = len(data_to_sort) // 2
        leftarray = data_to_sort[:mid]
        rightarray = data_to_sort[mid:]
 
        mergesort(leftarray)
        mergesort(rightarray)
 
        i, j, k = 0, 0, 0
 
        while i < len(leftarray) and j < len(rightarray):
            if leftarray[i] < rightarray[j]:
                data_to_sort[k] = leftarray[i]
                i += 1
            else:
                data_to_sort[k] = rightarray[j]
                j += 1
            k += 1
 
        while i < len(leftarray):
            data_to_sort[k] = leftarray[i]
            i += 1
            k += 1
 
        while j < len(rightarray):
            data_to_sort[k] = rightarray[j]
            j += 1
            k += 1
 
 
list_to_sort = [90, 50, 10, 20, 70, 60, 40, 30, 80]
print('Original List: ', list_to_sort)
mergesort(list_to_sort)
print('Sorted List: ', list_to_sort)

def quickSort(data_to_sort, first, last):
    if first < last:
        pivotindex = partition(data_to_sort, first, last)
        quickSort(data_to_sort, first, pivotindex - 1)
        quickSort(data_to_sort, pivotindex + 1, last)
 
 
def partition(values, first, last):
    pivotvalue = values[first]
    lower = first + 1
    upper = last
    done = False
    while not done:
        while lower <= upper and values[lower] <= pivotvalue:
            lower += 1
        while values[upper] >= pivotvalue and upper >= lower:
            upper -= 1
        if upper < lower:
            done = True
        else:
            temp = values[lower]
            values[lower] = values[upper]
            values[upper] = temp
    temp = values[first]
    values[first] = values[upper]
    values[upper] = temp
    return upper
 
 
list_to_sort = [90, 50, 10, 20, 70, 60, 40, 30, 80]
print('Original List: ', list_to_sort)
quickSort(list_to_sort, 0, len(list_to_sort) - 1)
print('Sorted List: ', list_to_sort)