program Factorial;
function Factorial(number : longint ) :longint;

begin

   if number = 1 then
      Factorial :=1
   else
   begin
      Factorial:= number*Factorial ( number - 1 );
      writeln (Factorial);
   end;
end;

function a (b :integer ):integer;
begin
   a:= b+5;
end;
function b (c :integer ):integer;
begin
   b:= c*a(c-1);
end;
var
   n : longint;
begin
   writeln('vvedite chislo');
   read (n);
   writeln (Factorial(n));
end.
