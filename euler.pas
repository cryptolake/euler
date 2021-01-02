var num,num1: Real;
	f : text;
begin
	num := 0;
	num1 := 0;
	Assign(f, 'input.txt');
	reset(f);
	while not eof(f) do
	begin
		readln(f,num);
		num1 := num1+num;
	end;
	writeln(num1:0:0);
	close(f);
end.
