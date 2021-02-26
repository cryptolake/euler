var i,x,lim : int64;
function isprime(num:int64):boolean;
var i: int64;
   d: boolean;
begin
   d:= true;
   for i := 3 to round(sqrt(num)) do
   begin
      if num mod i = 0 then
      begin
         d := false;
      end;
   end;
   isprime := d;
end;

begin
   lim := 10000;
   i := 5;
   x := 0;
   while i < lim do
   begin
      if isprime(i) then x := x + i;
      i := i + 2;
   end;
   writeln(x);
end.

