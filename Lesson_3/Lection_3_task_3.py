# Задача №3
# Написать программу, которая выводит сама себя задом наперед
import sys
Lection_3_task_3 = sys.argv[0]
# далее открываем файл на чтение (опция 'r')
f = open(Lection_3_task_3, 'r') # в файле теперь file descriptor
l = list(f)
l.reverse()
for line in l: # для каждой строки в файле
	print(line)
f.close() # закрытие файла