data Arvore a = No a (Arvore a) (Arvore a) | Vazio deriving (Show)

mapA :: (a->b) -> Arvore a -> Arvore b
mapA f t = case t of
    Vazio -> Vazio
    (No a ae ad) -> No (f a) (mapA f ae) (mapA f ad)

t :: Arvore Int
t = No 5 (No 6 (No 7 Vazio Vazio) Vazio) (No 8 Vazio Vazio)

quadrado :: Int -> Int
quadrado num = num*num

main :: IO()
main = print (mapA quadrado t)