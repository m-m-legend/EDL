l = [1,2,3,6,7,8,9]

mapf :: (a->b) -> [a] -> [b]
mapf f l = foldr (\elem acumul -> (f elem) : acumul) [] l
-- foldr :: (a -> b -> b) -> b -> [a] -> b

filterf :: (a->Bool) -> [a] -> [a]
filterf f l = foldr (\elem acumul -> if (f elem) then elem : acumul else acumul) [] l

dobra x = x*2
maiorQueCinco x = x>5


main = print (filterf maiorQueCinco l, mapf dobra l)