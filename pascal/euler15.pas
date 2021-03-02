program lattice;
var a,b,paths : int64;

function fact(x:int64):int64;
var f,i : int64;
begin
   f := 1;
   for i := 1 to x do
      begin
         f := f * i;
      end;
      fact := f;
end;

begin
      writeln('give a: ');
      readln(a);

      writeln('give b: ');
      readln(b);

   { for some reason pascal can't handle this big number }   

   paths := fact(a+b) div (fact(a) * fact(b)); 
   writeln('number of possible paths: ',paths);
end.
