data Lista a = No a (Lista a) | Vazio deriving (Show)

fold :: (a -> b -> b) -> b -> Lista a -> b
fold f base lista = case lista of
    Vazio -> base
    No a resto -> f a (fold f base resto)

listaTeste :: Lista Int
listaTeste = No 1 (No 2 (No 3 Vazio))

soma :: Int -> Int -> Int
soma x acc = x + acc

main :: IO()
main = print (fold soma 0 listaTeste) -- (1 + (2 + (3 + 0)) = 6