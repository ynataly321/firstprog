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
{1Считываем символ, если это пробел, то считываем следующий.}
{2если это не пробел, то проверяем входит ли этот символ в неверный диапазон -}
{меньше 0 и больше 9, если входит - выводим сообщение о криворукости, завершаем считывание,}
{почистить строку, предложить ввести основание заново, алгоритм начинается сначала}
{3 если символ входит в правильный диапазон, то присваиваем этот символ в основание по формуле}
{считываем следующий символ}
{3,5 если это символ из неверного диапазона, не считая пробел, выводим сообщение, всё сначала}
{4 если это пробел, то прекращаем, считаем, что получили основание}
{конец алгоритма}
{}
{ ## tests   1 1; abcd 12;123;   a;  12 ;а м ;  1м ; }
{ }

var
   c       : char = ' ';
   success : boolean = false;
begin
   while (success = false) do
        while (c = ' ') do
        begin
            read (c);
        end;
        while (c <> ' ') do
        begin
            if (c < '0') or (c > '9') then
            begin
                writeln ('Proverte osnovanie, vvedite korrektno');
                readln;
                break;
            end
            else if (c >= '0') or (c <= '9') then
            begin
                osnovanie := osnovanie * 10 + ord(c) - ord('0');
                read (c);
                if (c < '0') or (c > '9') then
                begin
                    writeln ('Proverte osnovanie, vvedite korrektno');
                    readln;
                end
                else if (c = ' ') then
                begin
                    exit;
                end;
            end;

        end;
end;

var
   read_number              : int64;
   number_read_successfully : boolean;
   radix                    : integer =0 ;
begin
   repeat
      writeln ('Vvedite osnovanie: 2-36');
      ReadOsn (radix);
      write('Please, type the number:');
      ReadNumber(number_read_successfully, read_number, radix);

   until number_read_successfully;
   writeln (read_number);
end.
