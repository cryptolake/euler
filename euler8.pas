var f,g : text;
	s,p : ansistring;

procedure calc(s:ansistring; var g:text);
var
d,p : int64;
i : longint;
j : integer;
begin
	rewrite(g);
	for i := 1 to length(s) do
		begin
		d := 1;
			for j := 1 to 13 do
				begin
					val(s[i+j],p);
					d := d * p;
				end;
			writeln(g,d);
		end;
end;

function biggest(var g:text):int64;
var
d,p : int64;
begin
	d := 0;
	reset(g);
	while not eof(g) do
		begin
			readln(g,p);
			if p > d  then d := p;
		end;
	biggest := d;
end;

begin
	s := '';
	assign(g,'test');
	assign(f,'input2');
	reset(f);
	while not eof(f) do
		begin
			readln(f,p);
			s := concat(s,p);
		end;
	{ writeln(s); }
	calc(s,g);
	writeln(biggest(g));
	close(f);
	close(g);
end.

