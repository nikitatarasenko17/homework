# Написать 2 функции. Первая функция будет принимать строку и приводить ее к нижнему регистру.
# Вторая функция будет принимать строку и проводить ее к верхнему регистру.
# После чего с помощью map применить ваши функции к списку строк. Отдельно каждую функцию к отдельному списку строк!
text = ['Мадрид - столица Испании', 'Вашингтон - столица США', 'Ереван - столица Армении']
def lower(x):
    return x.lower()

def upper(y):
    return y.upper()

print(list(map(lower, text)))
print(list(map(upper, text)))