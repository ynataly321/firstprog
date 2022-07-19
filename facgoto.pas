program Factorial;
function Factorial(number : longint ) :longint;

label
   point;
var
   multiplication :  integer;
begin
   multiplication:=1;
   point:
   if number = 1 then
      Factorial :=multiplication
   else
   begin
      multiplication:=multiplication* number;
      number := number - 1;
      goto point;
      writeln (Factorial);
   end;
end;

var
   n : longint;
begin
   writeln('vvedite chislo');
   read (n);
   writeln (Factorial(n));
end.
