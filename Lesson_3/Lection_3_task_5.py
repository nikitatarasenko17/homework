# Банкомат выдает сумм мелкими, но не больше 10 штук каждой мелкой купюры
a = int(input("Введите сумму, кратную 10: "))
money = [10, 20, 50, 100, 200, 500, 1000]
if not (a % 10):
    for i in range(0, len(money)):
        s = money[i]
        t = 0
        while a - s >= 0 and t < 10:
            a -= s
            print(s)
            t+=1  
else:
    print("Вы ввели недопустимую сумму!")             