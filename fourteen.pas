program fourteen;
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
      writeln ('Vvedite visotu Z - nechetnoe i bolshe 5');
      read (height);
   until (height mod 2 = 1) and (height > 5);

   PrintChars ('*', height );
   writeln ('');
   for j := 1 to height div 2 -1 do
      begin
         PrintChars (' ', height - (j+1));
         write ('*');
         PrintChars (' ',j);
         writeln ('');
      end;
   PrintChars ('*',height);
   writeln ('');
   for k := 1 to height div 2 -1 do
      begin
         PrintChars (' ', height div 2 - k);
         write('*');
         PrintChars (' ', height div 2 + k);
         writeln ('');
      end;
   printChars ('*',height);
   writeln ('');


     end.
