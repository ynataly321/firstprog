program Fibonacci;
function Fibonacci (number : integer ) :integer;

begin
   if number = 1 then
      Fibonacci := 0
  else if  number = 2 then
      Fibonacci := 1
   else
      Fibonacci:=Fibonacci(number-1) + Fibonacci (number-2);

end;


var
   n : integer;
begin
   writeln('vvedite N chisla');

   read (n);
   writeln (Fibonacci (n));
end.
