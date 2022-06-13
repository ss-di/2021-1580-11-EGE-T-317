#fname = "107_27_0.txt" # 96
fname = "107_27_A.txt" # 159746
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
    for i in range(z-(n//2), z+n//2):
        print
        p +=  abs(z-i) * data[i % n] * 3
#    print(p)

    if best == -1 or p < best:
        best = p
        
print(best)
#print(1 * 7 + 0 * 19 + 1 * 8 + 2 * 20 + 3 * 5 + 2 * 13)
