# Задача №2
# Придумать свои собственные примеры на альтернативные варианты if и активное использование булевой алгебры.
#   2.1 Даны три целых числа. Вывести наибольшее из них.
a = int(input("Введите первое число: "))
b = int(input("Введите второе число: "))
c = int(input("Введите третье число: "))
if  b < a > c:
    print("Наибольшее число: ", a)
elif a < b > c:
    print("Наибольшее число: ", b)
else:
    print("Наибольшее число: ", c)

#   2.2 Даны три целых числа. Необходимо определить, сколько среди них совпадают.
#        Программа должна вывести: 3 (если все числа совпадают), 2 (если два числа совпадают) или 0 (если все числа различны). 
number_1 = int(input("Введите первое число: "))
number_2 = int(input("Введите второе число: "))
number_3 = int(input("Введите третье число: "))
if number_1 == number_2 == number_3:
    print(3)
elif number_1 == number_2 or number_2 == number_3 or number_1 == number_3:
    print(2)
else:
    print(0)

#   2.3 Студент получил оценки по различным предметам. Определить получит ли он стипедию. Условие получение стипендии: средний балл должен
#       быть больше или равен 80 баллам.
q = int(input("Введите количество оценок: "))
s = 0
for i in range(1, q+1):
    s+= int(input("Введите " + str(int(i)) + "-й балл: "))
    r = s / q
if  80 <= r < 95:
    print("Поздравляем с получением стипендии!")
elif r >= 95:
    print("Поздравляем с получением повышенной стипендии!")
else:
    print("Удачи в следующем семестре")