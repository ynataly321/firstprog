program a;
procedure CountWords (var number : int64);
var
   c       : char = ' ' ;
   success : boolean = false;
begin
   number := 0;
   while (not success) do
   begin
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
         read (c);
	 if (c = ' ') then
	 begin
	    number := number + 1;
	    read(c);
	 end
         else if (c = #10) then
	 begin
	    number := number + 1;
	    success := true;
	    break;
	 end;
      end;
   end;
end;
   
var
   number_of_words          : int64;
   words_count_successfully : boolean = true;

begin

   while words_count_successfully do
   begin   
      writeln ('Vvedite slova');
      CountWords (number_of_words);
      write ('Kolichestvo ');
      writeln (number_of_words);
   end;   
end.
