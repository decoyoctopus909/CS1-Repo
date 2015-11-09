def hs(n):
    c = 0
    while (n != 1):
        print(n)
        c = c + 1
        if (n % 2 == 0):
            n = (n // 2)
        else:
            n = (3 * n + 1)
    print(1)
    print(c + 1)
