program twelve;
procedure PrintChars (ch : char ; count : integer );
var
   i : integer;
begin
   for i:= 1 to count do
      write (ch)
end;

var
   height,j,k,l,m,n : integer;
begin
   repeat
      writeln ('Vvedite visotu almaza - nechetnoe i bolshe 0');
      read (height);
   until (height mod 2 = 1)  and (height > 0);


   for j:=1 to (height div 2)+1 do
      begin
         PrintChars (' ', (height div 2)+1-j);
         PrintChars ('*', (1+2*(j-1)));
         writeln('');
      end;
   for k:=1 to (height div 2 ) do
      begin
         PrintChars (' ', k);
         PrintChars ('*', (height - k*2));
         writeln('');
      end;

PrintChars ('*', height+2);
writeln('');

for l:=1 to (height div 2)+1 do
      begin
         PrintChars ('*', (((height div 2)+2)-l));
         PrintChars (' ', (1+2*(l-1))) ;
         PrintChars ('*', (((height div 2)+2)-l));
         writeln('');

      end;
for m:=1 to (height div 2 ) do
      begin
         PrintChars ('*', m+1);
         PrintChars (' ', ((height+2) - (m+1)*2));
         PrintChars ('*', m+1);
         writeln('');
      end;
PrintChars ('*', height+2);
writeln('');

end.
