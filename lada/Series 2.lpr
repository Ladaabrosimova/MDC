{Series2. Даны десять вещественных чисел. Найти их произведение.}
program project2;
var
  a,b:Real;
  i:Integer;
begin
  b:=1;
  for i:=1 to 10 do
begin
  Readln(a);
  b:=b*a;
end;
  Writeln(b);
end.


