with open('24-203.txt') as f:
    data = f.readline()
#data = 'BDEABECAFBDACBD'
#print(data)
n = len(data)
cnt = 0
for s in range(n):
    for e in range(s+3, n+1):
        ps = data[s:e]
#        print(ps)
#        input()
        if not('A' in ps and 'B' in ps and 'C' in ps):
            cnt += 1
        else:
            break

print(cnt)

'''
BDEABECAFBDACBD
   s e


B DEA BEC AFB DAC BD
BDE ABE CAF BDA CBD
'''
