procedure ReadNumber (var success: boolean; var result: int64; osnova: integer);
var
   c   : char = ' ';
   pos : integer;
 begin
   result := 0;
   pos := 0;

   while (c = ' ') or (c = #10) do
   begin
      read (c);
      pos := pos + 1
   end;


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
var
   c       : char ;
   success : boolean = false;
begin
   while (not success) do
   begin
        osnovanie := 0;
        c := ' ';
        while ((c = ' ') or (c = #10)) do
        begin
            read (c);
        end;

        while ((c <> ' ') and (c <> #10)) do
        begin
            if ((c < '0') or (c > '9')) then
            begin
                writeln ('Proverte osnovanie, Vvedite korrektno');
                readln;
                break;
            end
            else {if (c >= '0') and (c <= '9') then}
            begin
                osnovanie := osnovanie * 10 + ord(c) - ord('0');
                read (c);
                if ((c = ' ') or (c = #10)) then
                begin
                    if ((osnovanie < 2) or (osnovanie > 36)) then
                    begin
                       writeln ('Proverte osnovanie, vvedite korrektno');
                          if (c = ' ') then
                          begin
                             readln;
                          end;
                       break;
                    end
                    else
                    begin
                       success := true;
                    end;
                end
            end;
        end;
    end;
end;

var
   read_number              : int64;
   number_read_successfully : boolean;
   radix                    : integer ;
begin
    repeat
       writeln ('Vvedite osnovanie: 2-36');
       read (radix);
    until ((radix >= 2) and (radix <= 36));
    repeat
       write('Please, type the number:');
       ReadNumber(number_read_successfully, read_number, radix);
    until number_read_successfully;
    writeln (read_number);
end.

{begin
   repeat
      writeln ('Vvedite osnovanie: 2-36');
      ReadOsn (radix);
      write('Please, type the number:');
      ReadNumber(number_read_successfully, read_number, radix);

   until number_read_successfully;
   writeln (read_number);
end.}
