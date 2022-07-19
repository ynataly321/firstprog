program PrintFibonachi;
function PrintFibonachi (n : longint; var a, b: integer ):longint;

begin
   if n > 0 then
   begin
      PrintFibonachi (n-1, b, a+b);
   end;
   if n = 0 then

end;

var
   a,b,c : integer;

begin
   a:=0;
   b:=1;

   c:=PrintFibonachi(5,a,b);
   writeln (c);
end.

{program PrintFactorial;
procedure PrintFactorial (a, n : longint );

begin
   if n < 100  then
   begin
      write (a, ' ');
      PrintFactorial(a*(n+1), n+1);
   end;
end;

begin
   PrintFactorial (1,1);
   writeln('');
end.
}
