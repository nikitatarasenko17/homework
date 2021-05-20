with open('E:/A-Level/Лекции/text_5_3.txt', 'r') as file:
    int_number = file.read()
    listToStr = ''.join(map(str, int_number))
    t = list(listToStr)
    print(dict(map(lambda x  : (x , list(t).count(x)) , t)))

