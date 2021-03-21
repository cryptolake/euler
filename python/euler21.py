# from math import sqrt,floor

def d(n):
    s = 0;
    for i in range(1,n):
        if n % i == 0:
            s += i
    return s

s = 0
for b in range(0,10000):
    a = d(b)
    if a != b and d(a) == b:
        s += a + b
print(s//2)


    
    

