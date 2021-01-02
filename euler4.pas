program euler4;
var i,j : integer;
d,b : longint;

function palind(num:longint):boolean;
var i,j,st: longint;
d: boolean;
ch: string;
begin
	str(num,ch);
	st := length(ch);
	d := false;
	i :=  1;
	j := st;
	while (i <= st) and (j >= 1) and (ch[i] = ch[j]) do
		begin
			i := i + 1;
			j := j - 1;
		end;
	if i = st+1 then d := true;
	palind := d;
end;
begin
	d:=0;
	b:=0;
	for i:= 100 to 999 do
		begin
			for j:= 100 to 999 do
				begin
					if palind(j*i) then 
						begin
							d := i*j;
							if d > b then
								begin
									writeln(j*i);
									b := d;
								end;
							
						end;
				end;
		end;
end.
