# Задача №2
# Написать программу, которая выводит сама себя
import sys
Lection_3_task_2 = sys.argv[0]
# далее открываем файл на чтение (опция 'r')
f = open(Lection_3_task_2, 'r') # в файле теперь file descriptor
for line in f: # для каждой строки в файле
	print(line)
f.close() # закрытие файла