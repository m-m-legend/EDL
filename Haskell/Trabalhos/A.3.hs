indices :: [a] -> [(Int,a)]
indices l = foldr (\elem acumul -> (length(l)-length(acumul)-1, elem) : acumul) [] l 

main = print (indices ['c','d'])
