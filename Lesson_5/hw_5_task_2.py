# Задача №3
# У вас есть три числа, они вводятся из консоли. Первое число называется fizz, второе называется buzz. До третьего необходимо 
# досчитать от единицы. Считая, надо выводить число. Если число кратно fizz - надо выводить F вместо числа. Если число кратно buzz - 
# надо выводить B вместо числа. Если число кратно и fizz и buzz, надо выводить FB. И так - пока не будет достигнуто третье введенное 
# число.
def fizz_buzz(a, b, c):
    print(*map(lambda i: 'FB'*(not i % a and not (i % b)) +'F'*(not i % a) + 'B'*(not i % b) or i, range(1,c+1)),sep='\n')

fizz_buzz(2,5,18)