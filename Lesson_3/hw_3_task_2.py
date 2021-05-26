# Задача №3
# Написать fizzbuzz для 20 троек чисел, которые записаны в файл. Читаете из файла первую строку, берете из нее числа, считаете для 
# них fizzbuzz, выводите
with open('chisla.py', 'r') as f:
   l = [_.split() for _ in f] 
   for i in range(len(l)):
      s = []
      a = int(l[i][0])
      b = int(l[i][1])
      c = int(l[i][2])
      for t in range(1, c+1):
         if not t % a  and not t % b:
            s.append("FB")
         elif not t % a:
            s.append("F")
         elif not t % b:
            s.append("B")  
         else:
            s.append(int(t)) 
      print(s)  
                  
            
         
    