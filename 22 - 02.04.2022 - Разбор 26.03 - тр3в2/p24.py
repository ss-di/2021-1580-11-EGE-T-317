data = open("24.txt").readline()

print(data)

arr = data.split('A')

print(arr)

cnt = 0
for s in arr:
    if len(s) >= 8 and 'B' not in s:
        cnt += 1

print(cnt)
