with open('24-203.txt') as f:
    data = f.readline()
    
#print(data)
n = len(data)
cnt = 0
for s in range(n):
    for e in range(s+3, n+1):
        ps = data[s:e]
        if 'A' in ps and 'B' in ps and 'C' in ps:
            cnt += 1

print(cnt)

'''
BDE ABE CAF BDA CBD
B DEA BEC AFB DAC BD
BDE ABE CAF BDA CBD
'''
