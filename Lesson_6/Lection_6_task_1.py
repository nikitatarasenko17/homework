# Создать словарь оценок предполагаемых студентов (Ключ - ФИ студента, значение - список оценок студентов). 
# Найти самого успешного и самого отстающего по среднему баллу.
d = {"Ivan_Teterev": [10, 5, 3, 10], 
     "Yuriy_Samsonov": [12, 12, 7, 5], 
     "Andrey_Protasov": [4, 5, 9, 3],
     "Petr Andreev": [7, 5, 12, 12]}
t = {}
for key, value in d.items():
    s = 0
    for elem in value:
        s += elem
    t[key] = s / len(value)

max_value = max(t.values())
max_keys = [k for k, v in t.items() if v == max_value] 

min_value = min(t.values())
min_keys = [k for k, v in t.items() if v == min_value]

print("Студент(ы) с лучшим баллом: ", max_keys, ":", max_value)
print("Студент(ы) с худшим баллом: ", min_keys, ":", min_value)




