#(ДЕЛ(x, 3) → ¬ДЕЛ(x, 5)) \/ (x + A ≥ 90)

def f(x, a):
    return (x%3!=0 or x%5!=0) or (x+a >= 90)

for A in range(1, 100):
    for x in range(1, 10000):
        if not f(x, A):
            break
    else:
        print(A)
