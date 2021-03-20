
f = open('./triangle').readlines()
lines=[]
paths = []
for line in f:
    l=line.rstrip("\n").split(" ")
    for i in range(0,len(l)):
        l[i] = int(l[i])
    lines.append(l)


def calculateTria(tria):
    for i in reversed(range(0,len(tria)-1)):
        for j in range(0,len(tria[i])):
            tria[i][j] += max(tria[i+1][j],tria[i+1][j+1])
    return tria[0][0]
            

print(calculateTria(lines))
