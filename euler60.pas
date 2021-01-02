type
	tos = array [1..5] of int64;
var
	t : tos;
	i: integer;
	x: int64;

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
function primeconcat(t : tos):boolean;
var i,j,l : integer;
	k : int64;
	k1 : int64;
	s,x,x1,x2 : string;
	d : boolean;

begin
	l := length(t);
	d := true;
	for i := 1 to l do
		begin
			str(t[i],s);
			if i = l then
				j :=1
			else
				j := i+1 ;
			while j <> i do
			begin
				str(t[j],x);
				x1 := s + x;
				x2 := x + s;
				{ writeln(x1,' ',x2); }
				val(x1,k);
				val(x2,k1);
				if not isprime(k) then
				begin
					writeln(k,' is not prime');
					d := false;
				end;
				if not isprime(k1)  then
				begin
					writeln(k1,' is not prime');
					d := false;
				end;
				j := j + 1;
				if j > l then j := 1;
			end;
		end;
		primeconcat := d;
end;

procedure fivprim(var t : tos);
var
i,j : int64;
begin

end;


begin
	x := 0;
	{ for i := 1 to length(t) do }
	{ 	begin }
	{ 		writeln('type the element n ',i); }
	{ 		readln(t[i]); }
	{ 	end; }
	lim := 20000;
	i := 3;
	x := 0;
	while (i < lim) do
	begin
		if isprime(i) then x := x + i;
		i := i + 2;
	end;

	if primeconcat(t) then
		begin
			for i := 1 to length(t) do
				begin
					x := x + t[i];
				end;
			writeln('sum is : ',x);
		end;
end.
