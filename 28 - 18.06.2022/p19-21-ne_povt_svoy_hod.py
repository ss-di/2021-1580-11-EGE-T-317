def hod(a, mh, h=0, p=-1, pp=-1):
    if a >= 21:
        if h % 2 == 1:
            return 1
        else:
            return 2
    h += 1
    if h > mh:
        return 3

    res = []
    
    if pp != 1: res.append(hod(a+1, mh, h, 1, p))
    if pp != 2: res.append(hod(a+2, mh, h, 2, p))
    if pp != 3: res.append(hod(a*2, mh, h, 3, p))
    '''
    res.append(hod(a+1, mh, h, 1, p))
    res.append(hod(a+2, mh, h, 2, p))
    res.append(hod(a*2, mh, h, 3, p))
    '''
    if h % 2 == 1:
        if 1 in res:
            return 1
        elif 3 in res:
            return 3
        else:
            return 2
    else:
        if 2 in res:
            return 2
        elif 3 in res:
            return 3
        else:
            return 1

print('', end='\t')
for mh in range(1, 10):
    print(mh, end='\t')
print()

for a in range(1, 21):
    print(a, end='\t')
    for mh in range(1, 10):
        print(hod(a, mh), end='\t')
    print()
