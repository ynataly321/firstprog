program a;
procedure CountWords (var even : int64; var odd : int64);
var
   c		     : char = ' ' ;
   success	     : boolean = false;
   number_of_letters : int64;
   
   
begin
   even := 0;
   odd := 0;
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
	    if (number_of_letters mod 2 = 0) then
	    begin
	       even := even + 1;
	    end
	    else 
	    begin
	       odd := odd + 1;
	    end;   
	    read(c);
	    break;
	 end
         else if (c = #10) then
	 begin
	    if (number_of_letters mod 2 = 0) then
	    begin
	       even := even + 1;
	    end
	    else 
	    begin
	       odd := odd + 1;
	    end; 
	    
	    success := true;
	    break;
	 end;
      end;
   end;
end;
   
var
   even_numbers		    : int64 = 0;
   odd_numbers		    : int64 = 0;
   
begin

   while true do
   begin   
      writeln ('Vvedite slova');
      CountWords (even_numbers, odd_numbers);
      write ('Chetnih slov ');
      write (even_numbers);
      write (' nechetnih slov ');
      writeln (odd_numbers);
   end;   
end.
