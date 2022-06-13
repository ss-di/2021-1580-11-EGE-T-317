#12345?7?8
#     i j

for i in range(10):
    for j in range(10):
        num = int('12345'+str(i)+'7'+str(j)+'8')
        if num % 23 == 0:
            print(num, num // 23)

print()
for num in range(123450708, 123459798+1):
    if num // 100 % 10 == 7 and num % 10 == 8:
        if num % 23 == 0:
            print(num, num // 23)
