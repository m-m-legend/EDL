data Lista a = No a (Lista a) | Vazio deriving (Show)

l :: Lista Int
l = No 10 (No 1 (No 5 Vazio))

t :: Lista (Lista Int)
t = No (No 10 Vazio)
         (No (No 1 Vazio) 
            (No (No 5 Vazio) Vazio))

main:: IO()
main = print (t)

