#F(n) = 2 при n < 3;
#F(n) = F(n − 2) + F(n − 1) – n, если n > 2 и при этом n чётно;
#F(n) = F(n − 1) − F(n − 2) + 2 × n,


def f(n):
    if n < 3:
        return 2
    if n % 2 == 0:
        return f(n-2) + f(n-1) - n
    return f(n-1) - f(n-2) + 2 * n

print(f(32))

# print(f(64))
