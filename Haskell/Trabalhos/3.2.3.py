def fmap(f, l):
    for i in range(len(l)):
        l[i] = f(l[i])


l = [1, 2, 3, 4]
fmap(lambda x: x * 2, l)
print(l) 
# [2,4,6,8]