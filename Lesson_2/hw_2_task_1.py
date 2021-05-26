# Задача №1
# Набрать все примеры посимвольно и заставить их работать, разобраться в их работе

# Оператор условия if
print ("Give it to me!")
number = int(input())

if (number >= 100):
    print ("Thanks, man!) \n")
elif ((number > 10) and (number < 100)):
    print ("OK :( \n")
else:
    print ("WHAAAAT????")

if (number > 1000):
    print ("!!!!WOOOOWWWW!!! \n") 

# Операторы сравнения и приоритеты операций
x = 5
y = 10
z = 15
if ((x < y) and (y <= z)):
    print("OK \n")
else:
    print("Bad \n")

l1 = [1, 2, 3]
l2 = [1, 2, 3]
if l1 == l2:
    print("Yes")
else:
    print("No")
if l1 is l2:
    print("Yes!")
else:
    print("No!")
if l1 is not l2:
    print("Yes!!!")
else:
    print("No!!!")

# Альтернативный синтаксис if, замена тернарному оператору
test = True
result = 'Test is True' if test else 'Test is False' # result = 'Test is True'
print(result)

test = True
print ('ttt' if test else 'fff') # выведет ttt

# Еще одна альтернатива тернарному оператору
test = True
result_2 = test and 'Test is True' or 'Test is False'
print(result_2)