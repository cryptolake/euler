uses math;
var
i,j,d : int64;

function divisors(n : int64 ):int64;
var i,j,t : int64;
begin
   j := 0;
   t := round(sqrt(n));
   for i := 1 to t+1 do
   begin
      if n mod i = 0 then j := j + 2;
   end;
   divisors := j;
end;


begin

   i := 1;
   j := 1;

   while d < 500 do
    begin
       j := j + 1;
       i := i + j;
       d := divisors(i);
       writeln(i,' ',d);
    end;
   writeln(i);
end.
