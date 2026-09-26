data Lista a = NoL a (Lista a) | VazioL deriving (Show)
data Arvore a = NoA a (Arvore a) (Arvore a) | VazioA deriving (Show)

lista :: Arvore a -> Lista a
lista t = case t of
    VazioA -> VazioL
    (NoA a VazioA VazioA) -> NoL a VazioL
    (NoA a ae ad) -> concatL (concatL (lista ae) (NoL a VazioL)) (lista ad)

t :: Arvore Int
t = NoA 5 (NoA 6 (NoA 7 VazioA VazioA) VazioA) (NoA 8 VazioA (NoA 9 VazioA VazioA))

concatL :: Lista a -> Lista a -> Lista a
concatL l1 l2 = case l1 of
    VazioL -> l2
    NoL a resto -> NoL a (concatL resto l2)

main :: IO()
main = print (lista t)