with open('24-203.txt') as f:
    data = f.readline()
    
#print(data)
n = len(data)
cnt = 0
for s in range(n):
    A = B = C = False
    for e in range(s, n):
        if data[e] == 'A': A = True
        if data[e] == 'B': B = True
        if data[e] == 'C': C = True
        if A and B and C: break
    if A and B and C:
       cnt += n - e + 1
print(cnt)

'''
012345678901234
BDEABECAFBDACBD
      e
B DEA BEC AFB DAC BD
BDE ABE CAF BDA CBD
'''
