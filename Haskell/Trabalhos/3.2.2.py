def ffilter(f, l):
    if l == []:
        return []
    
    if f(l[0]):
        return [l[0]] + ffilter(f, l[1:])
    
    return ffilter(f, l[1:])


print(ffilter(lambda x: x % 2 == 0, [1, 2, 3, 4, 5, 6]))