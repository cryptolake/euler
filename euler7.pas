var i,j : int64;
function isprime(num:int64):boolean;
var i: int64;
d: boolean;
begin
	d:= true;
	for i := num-1 downto 2 do
	begin
		if num mod i = 0 then
		begin
			d := false;
		end;
	end;
	isprime := d;
end;
begin
	i := 1;
	j := 0;
	while j < 10001 do 
	begin
		i := i + 1;
		if isprime(i) then 
		begin
		j := j + 1;
		writeln(i,' ',j);
		end;
	end;
end.
