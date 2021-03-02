dec = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

ten = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

other = ['hundred', 'and', 'thousand']

num =0
for i in range(1,1001):
    d = i % 10
    t = i%100//10
    h = i%1000//100
    th = i%10000//1000

    if th > 0:
        num += len(dec[th-1]+other[2])

    if h > 0:
        num += len(dec[h-1]+other[0])
        if t != 0 or d != 0:
            num += len(other[1])

    if t > 0:
        if  t == 1:
            if d ==0:
                num += len(dec[9])
            else:
                num += len(dec[d+9])
        else:
            num += len(ten[t-2])

    if d > 0 and t != 1:
        num += len(dec[d-1])

print(num)
