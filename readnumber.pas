procedure ReadNumber (var success: boolean; var result: int64; osnova: integer);
var
   c   : char = ' ';
   pos : integer;
 begin
   result := 0;
   pos := 0;

   {repeat
      write (1);
      read(c);
      pos := pos + 1
   until (not ((c = ' ') or (c = '\n')));}

   while (c = ' ') or (c = #10) do
   begin
      read (c);
      pos := pos + 1
   end;
   { write (ord(c), ' ', ord('\n')); }


   while (c <> ' ') and (c<> #10 ) do
   begin
      if ((osnova <= 10) and (ord(c) >= ord('0')) and (ord(c) <= (ord('0') + osnova - 1))) then
      begin
         result := result * osnova + ord(c) - ord('0');
      end
      else if ((osnova > 10) and (((ord(c) >= ord('0')) and (ord(c) <= ord('9')))  or
      ((ord(c) >= ord('A')) and (ord(c) <= ord('A') + osnova - 10)) or
      ((ord(c) >= ord('a')) and (ord(c) <= ord('a') + osnova - 10)))) then
      begin
         if ((ord(c) >= ord('0')) and (ord(c) <= ord('9'))) then
            result := result * osnova + ord(c) - ord ('0')
         else if ((ord(c) >= ord('A')) and (ord(c) <= ord('A') + osnova - 10)) then
            result := result * osnova + ord(c) - ord ('A') + 10
         else if ((ord(c) >= ord('a')) and (ord(c) <= ord('a') + osnova - 10)) then
            result := result * osnova + ord(c) - ord ('a') + 10;
      end
      else
      begin
         writeln ('Unexpected ''' ,c, ''' in pos: ',pos);
         readln;
         success:= false;
         exit
      end;
      read(c);
      pos := pos+1;
   end;
   success := true;
 end;
procedure ReadOsn (var osnovanie :integer );

begin

  read (osnovanie);
   write (osnovanie);
   {  while ((osnovanie < 2) or (osnovanie >36)) or (osnovanie = ord(' ')) or (osnovanie = ord (#10) ) or  }
   {     ((osnovanie >= ord ('a')) and (osnovanie <= ord ('z'))  do  }
   { begin }
   {    writeln ('Proverte osnovanie, vvedite korrektno'); }
   {    read(osnovanie); }
   { end; }

end;

var
   read_number              : int64;
   number_read_successfully : boolean;
   radix                    : integer;
begin
   repeat
      writeln ('Vvedite osnovanie: 2-36');
      ReadOsn (radix);
      write('Please, type the number:');
      ReadNumber(number_read_successfully, read_number, radix);

   until number_read_successfully;
   writeln (read_number);
end.
