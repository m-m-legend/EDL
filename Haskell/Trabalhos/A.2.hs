inverte :: [a] -> [a]
inverte = foldl (\y x -> x : y) []