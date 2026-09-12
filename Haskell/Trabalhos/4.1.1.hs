data Classe = Guerreiro String Int Float String |
              Sacerdote String Int Float Bool |
              Mago String Int Float String deriving (Show)

extrairNome :: Classe -> String
extrairNome (Guerreiro nome _ _ _) = nome
extrairNome (Sacerdote nome _ _ _) = nome
extrairNome (Mago nome _ _ _) = nome

g :: Classe
g = Guerreiro "Cristian" 40 1.87 "Espada"

m :: Classe
m = Mago "Marcos" 52 1.82 "Cajado de Fogo"

main :: IO()
main = print (extrairNome g, extrairNome m) 

