{Proc2. Описать процедуру PowerA234(A, B, C, D), вычисляющую вторую, третью и четвертую степень числа A и возвращающую эти степени соответственно в переменных B, C и D (A — входной, B, C, D — выходные параметры; все параметры являются вещественными).
С помощью этой процедуры найти вторую, третью и четвертую степень пяти данных чисел.}
program project3;
procedure  PowerA234(A: Real; var B,C,D :Real);
begin
  B:=A*A;
  C:=B*A;
  D:=C*A;
end;
var
  z,z2,z3,z4: Real;
  i:Integer;
begin
 for i:=1 to 5 do
  begin
   Readln(z);
   PowerA234(z,z2,z3,z4);
   Writeln(z2);
   Writeln(z3);
   Writeln(z4);
  end;
end.

