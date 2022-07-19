
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

function I13 (x,y,z :integer ) : integer;
var
   i : integer;
begin

   I13 := x;
   for i:=0 to level do
      write ('    ');
   writeln ('I13(', x, ',', y, ',', z,')');
end;

function I22 (y,z :integer ) : integer;
var
   i : integer;
begin

   I22 := z;
   for i:=0 to level do
      write ('    ');
   writeln ('I22(', y,',',z, ')');
end;


function I12 (y,z :integer ) : integer;
var
   i : integer;
begin

   I12 := y;
   for i:=0 to level do
      write ('    ');
   writeln ('I12(', y,',',z, ')');
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

function Proiz_psi (x,y,z : integer ) : integer;
var
   i : integer;
begin
   for i:=0 to level do
      write ('    ');
   level := level+1;
   writeln ('Proiz_psi(',x,',',y, ',', z,')');
   Proiz_psi := Sum(I13(x,y,z),I33(x,y,z));
   level := level-1;
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
   else Proiz := Proiz_psi(x,y-1,Proiz(x,y-1));
   level := level-1;
end;


function Facto_psi (y,z : integer ) : integer;
var
   i : integer;
begin
   for i:=0 to level do
      write ('    ');
   level := level+1;
   writeln ('Facto_psi (',y, ',', z, ')');
   Facto_psi := Proiz(S(I12(y,z)),I22(y,z));
   level := level-1;
end;

function Facto (y : integer ) : integer;
var
   i,a : integer;
begin
   for i:=0 to level do
      write ('    ');
   level := level+1;
   writeln ('Facto (',y, ')');
   a :=1;
   if y = 0 then
      Facto := a
   else Facto := Facto_psi(y-1,Facto(y-1));
   level := level-1;
end;

function Stepa_psi (x,y,z : integer ) : integer;
var
   i : integer;
begin
   for i:=0 to level do
      write ('    ');
   level := level+1;
   writeln ('Stepa_psi (',x,',',y, ',', z, ')');
   Stepa_psi := Proiz(I13(x,y,z),I33(x,y,z));
   level := level-1;
end;
function Stepa (x,y : integer ) : integer;
var
   i : integer;
begin
   for i:=0 to level do
      write ('    ');
   level := level+1;
   writeln ('Stepa (',x,',',y, ')');

   if y = 0 then
      Stepa := S(O(x))
   else Stepa := Stepa_psi(x,y-1,Stepa(x,y-1));
   level := level-1;
end;
var
   y,x : integer;
begin
   writeln ('vvedite x >=0');
   read (x);
   writeln('vvedite y >=0');
   read (y);

   writeln (Stepa (x,y));
end.
