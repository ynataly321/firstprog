program a;
procedure CountWords (var words : int64);
var
   c		     : char = ' ' ;
   success	     : boolean = false;
   {number_of_letters : int64;}
   
   
begin
   words := 0;
   while (not success) do
   begin
      {number_of_letters := 0;}
      while ((c = ' ') or (c = #10)) do
      begin
         if (c = ' ') then
         begin
            read(c);
         end
         else if (c = #10) then
         begin
            success := true;
            break;
         end;
      end;

      
      while ((c <> ' ') and (c <> #10 )) do
      begin
         if (c = 'A') then
         begin
            read (c);
            while ((c <> 'z') and (c <> ' ') and (c <> #10)) do
            begin
               read (c);
               continue;
            end;
            if ((c = ' ') or (c = #10)) then
            begin
               break;
            end
            else if (c = 'z') then
            begin
               read (c);
               if (c = ' ') then
               begin
                  words := words + 1;
                  break;
               end
               else if (c = #10) then
               begin
                  words := words + 1;
                  success := true;
               end
               else
               begin
                  continue;
               end
            end;
         end
         else if (c <> 'A') then
         begin
            read (c);
            continue;
         end
      end;
   end;
end;
   
var
   words_A_z		    : int64 = 0;

begin

   while true do
   begin   
      writeln ('Vvedite slova');
      CountWords (words_A_z);
      write ('Slov A-z: ');
      writeln (words_A_z);
   end;
end.
