#F(n) = 2 при n < 3;
#F(n) = F(n − 2) + F(n − 1) – n, если n > 2 и при этом n чётно;
#F(n) = F(n − 1) − F(n − 2) + 2 × n,

sl = {}

def f(n):
    global sl
    if n in sl:
        return sl[n]
        
    if n < 3:
        ans = 2
    elif n % 2 == 0:
        ans = f(n-2) + f(n-1) - n
    else:
        ans = f(n-1) - f(n-2) + 2 * n
    
    sl[n] = ans
    return ans

print(f(32))

# print(f(64))
