with open('E:/A-Level/Лекции/text_5_3.txt', 'r') as file:
    int_number = file.read()
    s = int_number.split()
    print(dict(map(lambda x  : (x , list(s).count(x)) , s)))

