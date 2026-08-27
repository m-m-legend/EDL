l = [10,20,30,10]

f v (resultados,pos,soma) =
    if pos' == 2
    then ((soma'`div`2) : resultados,0,0)
    else (resultados, pos', soma')
    where
        soma' = soma + v
        pos' = pos + 1

med_bim :: [Int] -> [Int]
med_bim l = (\(resultados,_,_) -> resultados)(foldr f ([],0,0) l)

main = print (med_bim l)