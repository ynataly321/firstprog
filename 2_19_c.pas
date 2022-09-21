program a;
procedure CountWords (var seven : int64; var two : int64);
var
   c		     : char = ' ' ;
   success	     : boolean = false;
   number_of_letters : int64;
   
   
begin
   seven := 0;
   two := 0;
   while (not success) do
   begin
      number_of_letters := 0;
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
         number_of_letters := number_of_letters + 1;
         read (c);
         if (c = ' ') then
         begin
            if (number_of_letters > 7) then
            begin
               seven := seven + 1;
            end
            else if (number_of_letters <= 2) then
            begin
               two := two + 1;
            end;
            read(c);
            break;
         end
         else if (c = #10) then
         begin
            if (number_of_letters > 7) then
            begin
               seven := seven + 1;
            end
            else if (number_of_letters <= 2) then
            begin
               two := two + 1;
            end;
	    
            success := true;
            break;
         end;
      end;
   end;
end;
   
var
   seven_numbers		    : int64 = 0;
   two_numbers		    : int64 = 0;
   
begin

   while true do
   begin   
      writeln ('Vvedite slova');
      CountWords (seven_numbers, two_numbers);
      write ('Bolshe 7 bukv: ');
      write (seven_numbers);
      write ('; ne bolee 2 bukv: ');
      writeln (two_numbers);
   end;   
end.
