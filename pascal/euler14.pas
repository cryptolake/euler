program collatz;

var
   i,j,d,g : int64;

function iseven(n : int64):boolean;
begin
   iseven := false;
   if n mod 2 = 0 then iseven := true;
end;

function collatz(n : int64):int64;
begin
   if iseven(n) then collatz := n div 2
   else
      collatz := n * 3 + 1;
end;

begin
   d := 0;
   g := 0;
   for i := 999999 downto 500000 do
   begin
      j := i;
      { write(j,' '); }
      while j <> 1 do
      begin
         j := collatz(j);
         d := d + 1;
         { write(j,' '); }
      end;
      if d > g then
      begin
         writeln(i,' ',d+1);
         g := d;
      end;
      d := 0;
   end;
end.
