program thirteen;
procedure PrintChars (ch : char ; count : integer );
var
   i : integer;
begin
   for i:= 1 to count do
      write (ch)
end;

var
   height, quantity,j,k,l,m,n : integer;
begin
   repeat
      writeln ('Vvedite visotu almaza - nechetnoe i bolshe 0');
      read (height);
      writeln ('Vvedite chislo almazov - bolshe 0');
      read (quantity);
   until ((height mod 2 = 1) and (height > 0)) and (quantity > 0);

   PrintChars (' ', height div 2);
   write ('*');
   if quantity > 1 then
      for j:= 1 to (quantity-1) do
         begin
            PrintChars (' ', height);
            write ('*');
         end;
   writeln ('');

   for k := 1 to (height div 2) do
      begin
         PrintChars (' ', height div 2 - k);
         write ('*');
         PrintChars (' ', 1 + 2*(k-1));
         write ('*');
         if quantity > 1 then
            for l:= 1 to quantity -1 do {kolich bashen}
               begin
                  PrintChars (' ', height-(2*k));
                  write ('*');
                  PrintChars (' ', 1+ 2*(k-1));
                  write ('*');
               end;
         writeln ('');
      end;
   for m := 1 to ((height div 2)-1) do
      begin
         PrintChars(' ', m);
         write ('*');
         PrintChars (' ', height - (m+1)*2);
         write ('*');
         if quantity > 1 then
            for n:= 1 to quantity - 1 do
               begin
                  PrintChars (' ', 1 + m * 2);
                  write ('*');
                  PrintChars (' ', height - (2 *(m+1)));
                  write ('*');
               end;
         writeln ('');
      end;
   PrintChars (' ', height div 2);
   write ('*');
   if quantity > 1 then
      for j:= 1 to (quantity-1) do
         begin
            PrintChars (' ', height);
            write ('*');
         end;
   writeln ('');
end.
