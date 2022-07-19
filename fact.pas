program Sum;
var
   level : integer = 0;


function S (x :integer ) : integer;
var
   i : integer;
begin
   S := x+1;
   for i:=0 to level do
      write ('    ');
   writeln ('S(', x, ')');
end;

function O (x :integer ) : integer;
var
   i : integer;
begin
   O := 0;
   for i:=0 to level do
      write ('    ');
   writeln ('O(', x, ')');
end;

function I33 (x,y,z :integer ) : integer;
var
   i : integer;
begin
   I33 := z;
   for i:=0 to level do
      write ('    ');
   writeln ('I33(', x,y,z, ')');
end;

function I11 (x :integer ) : integer;
var
   i : integer;
begin

   I11 := x;
   for i:=0 to level do
      write ('    ');
   writeln ('I11(', x, ')');
end;

function psi (x,y,z :integer ) : integer;
begin
   psi := S(I33(x,y,z))

end;


function Sum (x,y : integer ) :integer;
var
   i : integer;
begin
   for i:=0 to level do
      write ('    ');
   level := level+1;
   writeln ('Sum(', x,',',y, ')');
   if y = 0 then
      Sum := I11(x)
   else Sum := S(I33(x,y,Sum(x,y-1)));
   level:= level-1;
   { writeln ('Sum(', x,y, ')'); }
end;

function Proiz (x,y : integer ) : integer;
var
   i : integer;
begin
   for i:=0 to level do
      write ('    ');
   level := level+1;
   writeln ('Proiz(',x,',',y, ')');
   if y = 0 then
      Proiz := O(x)
   else Proiz := Sum(I11(x),I33(x,y,Proiz(x,y-1)));
   level := level-1;
end;

function Fact (x : integer ) :integer;
var
   i :  integer;
begin
   for i:=0 to level do
      write ('    ');
   level := level+1;
   writeln ('Fact(',x,')');
   if x = 0 then
      Fact := S(x)
   else Fact := Proiz (x,Fact(x-1));
   level := level-1;
end;


var
   x : integer;
begin
   writeln('vvedite x >=0');
   read (x);
   writeln (Fact (x));
end.
