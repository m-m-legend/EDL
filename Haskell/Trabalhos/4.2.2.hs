data Arvore a = No a (Arvore a) (Arvore a) | Vazio deriving (Show)

t :: Arvore Bool
t = No True (No False Vazio Vazio) (No True (No False Vazio Vazio) Vazio)

l :: Arvore [Int]
l = No [10] (No [1,2,5] Vazio (No [2,3,4] Vazio Vazio)) (No [4,5,6] (No [1,2,9] Vazio Vazio) Vazio)

main::IO()
main = print (l)