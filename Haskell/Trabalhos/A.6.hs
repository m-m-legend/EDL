l = [(10,10), (9,20), (-10,0)]

f :: Int -> (Int, Int) -> Int 
f acumul (valor, porcentagem) = valor' where
    valor' = acumul + valor + (((acumul+valor)*porcentagem)`div`100)

divida :: [(Int, Int)] -> Int
divida l = foldl f 0 l

main = print (divida l)