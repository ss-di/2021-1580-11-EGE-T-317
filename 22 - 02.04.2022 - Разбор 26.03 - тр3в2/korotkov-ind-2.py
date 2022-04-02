

def f(x):
    A = [6, 12, 18]
    P = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
    Q = [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]
    return (not (x in P) or (x in A)) or ((x in A) or not (x in Q))

for x in range(50):
    if not f(x):
        print(x)
