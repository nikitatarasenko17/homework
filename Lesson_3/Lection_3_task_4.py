# Банкомат выдает сумму максимально возможными купюрами
a = int(input("Введите сумму: "))
money = [1000, 500, 200, 100, 50, 20, 10, 5, 2, 1]
for i in range(0, len(money)):
    s = money[i]
    while a - s >= 0:
        a -= s
        print(s)
         