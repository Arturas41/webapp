import array
from collections import deque
 
one_dimensional = array.array('i', [3, 6, 9, 12, 15])
for i in range(0, len(one_dimensional)):
    print(one_dimensional[i])

for i in range(0, len(one_dimensional), 2):
    print(one_dimensional[i])

print(one_dimensional[4])

class Stack:
    def __init__(self):
        self.stack = []
 
    def __bool__(self):
        return bool(self.stack)
 
    def __str__(self):
        return str(self.stack)
 
    def push(self, data):
        self.stack.append(data)
 
    def pop(self):
        if self.stack:
            return self.stack.pop()
        else:
            raise IndexError('Stack is empty')
 
    def size(self):
        return len(self.stack)
 
 
stack = Stack()
for i in range(5):
    stack.push(i)
 
print('Initial stack: ' + str(stack))
print('pop(): ' + str(stack.pop()))
print('After pop(), the stack is now: ' + str(stack))
stack.push(7)
print('After push(7), the stack is now: ' + str(stack))
print('The size is: ' + str(stack.size()))


queue = deque()

queue.append('Monday')
queue.append('Tuesday')
queue.append('Wednesday')
queue.append('Thursday')
queue.append('Friday')

print(queue)

popped = queue.popleft()
print(popped)
print(queue)

hashone = dict({'firstkey': 1, 'secondkey': 2, 'thirdkey': 'three'})
print(hashone)

for key, value in hashone.items():
    print('key: ', key, ' value: ', value)