
var d,i,j : int64;

begin
	for i := 1 to 1000 do
		begin
			for j := 1 to i-1 do
				begin
					d := j*j + i*i;
					if ( j + i + sqrt(d) = 1000 ) and (j < sqrt(d)) and (i < sqrt(d)) then
					begin
						writeln(i);
						writeln(j);
						writeln(sqrt(d):2:0);
						writeln(j*i*sqrt(d):2:0);
					end;

				end;
		end;
end.
