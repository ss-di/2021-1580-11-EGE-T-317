fname = "107_27_0.txt" # 96
fname = "107_27_A.txt" # 159746 471228
#fname1 = "107_27_B.txt"

with open(fname) as f:
    data = f.readlines()

data = list(map(int, data))

#print(data)

n = data[0]
del data[0] # data = data[1:]


best = -1 # 10000000 * 1000 * 3 + 1 # 999999999999999999999999999999999999999999
for z in range(n):
#    if z % 1 == 0:
#        print(z, n, int(z/n*100))
    p = 0
    for i in range(n):
        p +=  min(abs(z - i),  n-abs(z - i)) * data[i] * 3
#    print(p)

    if best == -1 or p < best:
        best = p
        
print(best)
#print(1 * 7 + 0 * 19 + 1 * 8 + 2 * 20 + 3 * 5 + 2 * 13)


ss = []
for i in range(n):
    s = sum( min(abs(i-k), n-abs(i-k))*data[k]*3 for k in range(n))
    ss.append(s)
print(min(ss))
