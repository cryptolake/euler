type 
	tos = array [1..20,1..20] of int64;
var
	f : text;
	t : tos;

procedure insertt(var f : text; var t : tos );
var
	i,j,d,c : int64;
	s,liner : string;
	begin
		d := 1;
		while not eof(f) do
			begin
				readln(f,liner);
				i := 1;
				j := 1;
				while i < length(liner) do
				begin
					s := copy(liner,i,2);
					val(s,c);
					t[d,j] := c;
					{ write(t[d,j],' '); }
					i := i + 3;
					j := j + 1;
				end;
				d := d + 1;
				{ writeln; }
			end;
	end;

function biggest(t: tos):int64;
var
	c,up,right,left,diag,down,d,diag2 : int64;
	i,j : integer;
	begin
		c := 0;
		for i := 1 to 20 do
			begin
				for j := 1  to 20 do
					begin
						right := 1;
						left := 1;
						diag := 1;
						diag2 := 1;
						down := 1;
						up := 1;
						if j in [1..17] then
						begin
							for d := 0 to 3 do right := right * t[i,j+d];
						end;

						if j in [4..20] then
						begin 
							for d := 0 to 3 do left := left * t[i,j-d];
						end;

						if i in [1..17] then
						begin 
							for d := 0 to 3 do down := down * t[i+d,j];
						end;

						if i in [4..20] then
						begin 
							for d := 0 to 3 do up := up * t[i-d,j];
						end;

						if (i <= 16) and (j <= 16) then
						begin
							for d := 0 to 3 do
							diag := diag * t[i+d,j+d];
						end;

						if (i <= 16) and (j >= 4) then
						begin
							for d := 0 to 3 do
							diag2 := diag2 * t[i+d,j-d];
							writeln(i,' ',j,' ',diag2);
						end;
						if c < right then c := right;
						if c < left then c := left;
						if c < diag then c := diag;
						if c < diag2 then c := diag2;
						if c < down then c := down;
						if c < up then c := up;
					end;
			end;
			biggest := c;
	end;


begin
	assign(f,'input');
	reset(f);
	insertt(f,t);
	writeln(biggest(t));
	close(f);
end.
