program fivteen;
procedure PrintChars (ch : char ; count : integer );
var
   i : integer;
begin
   for i:= 1 to count do
      write (ch)
end;

var
   height,quantity,a,j,k,l,m,n,o,p : integer;
begin
   repeat
      writeln ('Vvedite visotu Z - nechetnoe i bolshe 5');
      read (height);
      writeln ('Vvedite kolicestvo Z - bolshe 0');
      read (quantity);
   until ((height mod 2 = 1) and (height > 5) and (quantity >0));

   PrintChars ('*',height);
   writeln ('');

   for j := 1 to height div 2 -1 do
      begin
         PrintChars (' ', height - (j+1));
         writeln ('*');
      end;

      if quantity = 1 then
      begin
         PrintChars ('*',height);
         writeln ('');
         for p:= 1 to (height div 2 -1) do
            begin
               PrintChars (' ', height div 2 - p);
               writeln ('*');
            end;
         PrintChars ('*',height);
         writeln ('');
      end;

    if quantity > 1 then
       begin
          begin
             for a:= 1 to 2 do
                begin
                   PrintChars ('*', height);
                   write (' ');
                end;

             writeln ('');
          end;

          for k := 1 to height div 2 -1 do
            begin
               PrintChars (' ', height div 2 - k);
               write('*');
               if quantity > 1 then
                begin
                   PrintChars (' ',height - 2 +1 + height div 2 + 1);
                   writeln ('*');
                end;
            end;
          if quantity > 2 then
             for l:=1 to quantity - 2 do
                begin
                   PrintChars (' ', (height+1)*(l-1));
                   for m:=1 to 3 do
                     begin
                        PrintChars ('*', height);
                        write (' ');
                     end;
                   writeln ('');

                   for n:=1 to height div 2 -1 do
                   begin
                      PrintChars (' ', (height + 1)*l + (height div 2 -n));
                      write('*');
                      PrintChars (' ',height - 2 +1 + height div 2 + 1);
                      writeln ('*');
                   end;
                end;
          PrintChars (' ', (height + 1) * (quantity - 2));
          PrintChars ('*', height);
          write (' ');
          PrintChars ('*',height);
          writeln ('');
          for o:=1 to height div 2 - 1 do
          begin
             PrintChars (' ', (height + 1) * (quantity - 1) + height div 2 - o);
             writeln ('*');
          end;
          PrintChars (' ', (height + 1) * (quantity - 1));
          PrintChars ('*',height);
          writeln ('');
       end;
end.
