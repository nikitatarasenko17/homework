# Задача №1
# Каждый пишет сумму списка при помощи for и while
a = [1, 2, 3, 5, 8]
s = 0
for i in a:
    s += i
print(s)

a = [1, 2, 3, 5, 8]
s = 0
i = 0
while i < len(a):
    s += a[i]
    i += 1
print(s)