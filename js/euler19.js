let month=[31,28,31,30,31,30,31,31,30,31,30,31]
let sum = 0
var sd = 3
let dom= ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
for (let i = 1901; i <= 2000; i++ ) {
	for (let j = 0; j <= month.length; j++) 
	{
		if (( i % 4 == 0 && i % 100 != 0 ) || i % 400 == 0){
			month[1] = 29;
		}
		else { month[1] = 28; }
		for (let d = 1; d <= month[j]; d++) {
			if (sd > 7) { sd = 1; }
			if (d == 1 && sd == 1) {
				sum += 1;
				console.log("year: ",i," month: ",j," day: ",d," ",dom[sd-1]);
			}
			sd += 1;


		}
	}
}
console.log(sum)
