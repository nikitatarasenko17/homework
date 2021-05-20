# 1. Через for и list comprehensions:
# - Применяем удаление буквы 'a'
a = 'The history of Spain dates back to the Antiquity when the pre-Roman peoples of the Mediterranean coast of the Iberian \
Peninsula made contact with the Greeks and Phoenicians and the first writing systems known as Paleohispanic scripts \
were developed. In 1516, Habsburg Spain unified a number of disparate predecessor kingdoms; its modern form of a \
constitutional monarchy was introduced in 1813, and the current democratic constitution dates to 1978'
s = list(a)
s_1 = [i for i in s if 'a' != i] 
str_1 = ''.join(s_1)

# Удалить ту же букву через replace
str_2 = a.replace('a', '')

# Срез последней строки (найти индекс фразы из последней строки и использовать срез)
l = a.index('constitution dates')
str_3 = a[:l] + 'конституция датируется 1978 годом.'

# Разбиение по строкам весь абзац
lst = a.split()
for i in lst:
    print(i)
print('\n')

print(str_1 + '\n')
print(str_2 + '\n')
print(str_3)
# * каждый пункт пишем в отдельную переменную и выводим в конце работы программы    