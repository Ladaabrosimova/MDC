'''Задание 4. If15. Даны три числа. Найти сумму двух наибольших из них. Абросимова Лада 24ИС'''
a, b, c = int(input())
if a <= c and a <= b:
    print (c + b)
elif c <= a and c <= b:
    print (a + b)
else:
    print (c + a)
