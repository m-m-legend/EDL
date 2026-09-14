data Lista a = No a (Lista a) | Vazio deriving (Show)

filterl :: (a->Bool) -> Lista a -> Lista a
filterl f l = case l of
    Vazio -> Vazio
    No a Vazio -> if f (a) then No a Vazio else Vazio
    No a (resto) -> if f (a) then No a (filterl f resto) else filterl f resto

l :: Lista Int
l = No 10 (No 1 (No 5 Vazio))

maiorQue1 :: Int -> Bool
maiorQue1 n = n>1

main::IO()
main = print (filterl maiorQue1 l)

