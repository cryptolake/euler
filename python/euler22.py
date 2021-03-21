f = open('./names.txt',"r")
names = list(eval(f.read()))
names.sort()
# w = 0
# for j in range(0,len(f[937])):
#     w +=  ord(f[937][j].lower()) - 96 
# print(w)
# print(938 * w)

def sum_of_name(f):
    s = 0
    for i,name in enumerate(f):
        w = 0
        for j in range(0,len(name)):
            w +=  ord(name[j]) - 64 
        s += w * ( i+1 )
    return s

print(sum_of_name(names))
