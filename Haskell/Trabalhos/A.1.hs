f v (soma,exp) = (soma',exp') where
            soma' = soma + (v*10**exp)
            exp' = exp + 1

lista_to_num l = fst(foldr f (0, 0) l)

main = print (lista_to_num [0,8,9,7,8])