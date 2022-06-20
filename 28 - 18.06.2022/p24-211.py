with open('24-211.txt') as f:
    s = f.readline()
    
#print(s)
n = len(s)
ml = 0
l = 0
for i in range(0, n, 3):
    if s[i:i+4] in ['ABEC', 'BDAC', 'CAFB', 'CFBA']:
        l = l + 1
        ml = max(ml, l)
    else:
        l = 0
l = 0
for i in range(1, n, 3):
    if s[i:i+4] in ['ABEC', 'BDAC', 'CAFB', 'CFBA']:
        l = l + 1
        ml = max(ml, l)
    else:
        l = 0
l = 0
for i in range(2, n, 3):
    if s[i:i+4] in ['ABEC', 'BDAC', 'CAFB', 'CFBA']:
        l = l + 1
        ml = max(ml, l)
    else:
        l = 0
        
print(ml)

'''
BDE ABE CAF BDA CBD
B DEA BEC AFB DAC BD
BDE ABE CAF BDA CBD
'''
