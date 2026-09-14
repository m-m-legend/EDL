data Arvore a = No a (Arvore a) (Arvore a) | Vazio deriving (Show)

folhas :: Arvore a -> Int
folhas Vazio = 0
folhas (No a Vazio Vazio) = 1
folhas (No a (ae) (ad)) = folhas ae + folhas ad

t :: Arvore Bool
t = No True (No False Vazio Vazio) (No True (No False Vazio Vazio) Vazio)

main::IO()
main = print (folhas(t)) -- 2