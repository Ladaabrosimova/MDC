{Array2. Дано целое число N (> 0). Сформировать и вывести целочисленный массив размера N, содержащий степени двойки от первой до N-й: 2, 4, 8, 16, …}
program project4;
 var a: array[1..10] of integer;
   N, i: integer;
begin
  write('Введите N: ');
  readln(N); a[1] := 2;
  for i := 2 to N do
  a[i] := a[i - 1] * 2;
  for i := 1 to N do
  write(a[i],' ') end.
begin
end.

