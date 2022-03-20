import itertools

s = 'БОРИС'

data = list(itertools.product(s, repeat=6))

res = 0
for d in data:
    if (d.count('Б') == 1 and
       d.count('Р') == 1 and
       d.count('С') <= 1):
       res = res + 1

print (res)
