type
	nums = array  [1..20] of int64;
var i : int64;
	nmb : nums;

{ function isprime(num:int64):boolean; }
{ var i: int64; }
{ d: boolean; }
{ begin }
{ 	d:= true; }
{ 	for i := num-1 downto 2 do }
{ 	begin }
{ 		if num mod i = 0 then }
{ 		begin }
{ 			d := false; }
{ 		end; }
{ 	end; }
{ 	isprime := d; }
{ end; }

function dev(num :int64):boolean;
var i:integer;
begin
	dev := true;
	i := 1;
	while (num mod i = 0) and (i <= 20) do
		begin
			i :=  i + 1;
		end;
	if i < 20 then dev := false
end;


function alleq(nmb:nums):boolean;
var i: integer;
begin
	i := 1;
	alleq := false; 
	while ( nmb[i] = nmb[i+1] ) and ( i < 20 ) do 
	begin
		{ writeln(nmb[i]); }
		i := i+1;
	end;
	if i = 20 then alleq := true;
end;

function lcm(nm:nums):int64;
var i : integer;
begin
	i := 1;
	while  not alleq(nm) do
		begin
			nm[i] := nm[i] + nmb[i];
			i := i+1;
			if i = 20 then i := 1;
		end;
	lcm := nm[1];
end;

begin
	i := 2520;
	{ for i:=1 to 20 do }
	{ 	begin }
	{ 		nmb[i] := i; }
	{ 		writeln(nmb[i]); }
	{ 	end; }
		{ lcm(nmb); }
		{ writeln(nmb[1]); }
	while not dev(i) do 
	begin
		i := i + 2520;
	end;
	writeln(i);
end.
