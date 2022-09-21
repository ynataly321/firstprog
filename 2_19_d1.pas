program a;
procedure CountWords (var words : int64);
var
   c		     : char = ' ' ;
   success	     : boolean = false;

begin
   words := 0;
   while (not success) do
   begin
      while (c = ' ') do
      begin
         read(c);
         if (c = 'A') then
         begin
             while ((c <> ' ') and (c <> #10)) do
             begin
                read(c);
                if (c = 'z') then
                begin
                    read (c);
                    if (c = ' ') then
                    begin
                       words := words + 1;
                       continue;
                    end
                    else if (c = #10) then
                    begin
                        words := words + 1;
                        continue;
                    end
                    else
                    begin
                        continue;
                    end
                end
                else if (c = ' ') or (c = #10) then
                begin
                    continue;
                end
                else
                begin
                    continue;
                end;
             end
         end
         else if (c = ' ') then
         begin
             break;
         end
         else if (c = #10) then
         begin
            success := true;
            continue;
         end
         else
         begin
             repeat
             begin
                read (c)
             end
             until (c = ' ') or (c = #10);
             continue;
         end
      end;
      if (c = #10) then
      begin
          success := true;
          continue;
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
