# Задача №3
# Переделать вторую задачу так, чтобы результат писался в другой файл.
with open("otus.txt", "w") as file:
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
            # elif not t % a:
               s.append("F")
            elif not t % b:
               s.append("B")  
            else:
               s.append(int(t)) 
         file.write(str(s) + '\n')
                  
            
         
    