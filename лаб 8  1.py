'''Даны два целых числа A и В. Выведите все числа от A до B включительно, в порядке возрастания, если A < B, или в порядке убывания в противном случае.(Абросимова 24ИС) '''
a, b =int(input())
c = b + 1
d = b - 1
if a < b:
    for i in range (a, c):
        print (i)
else:
    
    for i in range (a, d, -1):
        print (i)
