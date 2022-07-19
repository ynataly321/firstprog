program Char;


function Char (oldstring : string ): string;
var
   i,j,k           : integer;
   newstring       : string;
   symbol_contains : boolean = false;

begin

    for i:=1 to Length(oldstring) do
    begin
        if oldstring[i] = ' ' then
        begin
            Delete (oldstring, i, 1);
        end;
    end;

    newstring := '';
    for i:=1 to Length(oldstring) do
    begin
        symbol_contains := false;
        for j:=i+1 to Length (oldstring) do
        begin
            if oldstring[i]= oldstring[j] then
            begin
                for k:= 1 to Length(newstring) do
                begin
                    if oldstring[i] = newstring [k] then
                    begin
                        symbol_contains := true;
                        break;
                    end;
                end;
                if not symbol_contains then
                begin
                   newstring := newstring + oldstring[i];
                end;
                break;
            end;
        end;
    end;

    Char := newstring;

end;

var
   oldstring : string;
begin
   writeln('vvedite text');
   readln (oldstring);
   writeln (Char (oldstring));
end.
