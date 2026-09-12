import Data.List (sortBy)

data Peca = Peca
    { nome :: String
    , estoque :: Int
    , demandaMensal :: Int
    } deriving Show

pecas =
    [ Peca "Sensor Ultrassonico" 18 30
    , Peca "Motor DC"             7 40
    , Peca "ESP32"               12 25
    , Peca "Driver de Motor"      4 18
    , Peca "Roda de Borracha"    20 15
    ]

prioridade :: Peca -> Double
prioridade p =
    fromIntegral (demandaMensal p) / fromIntegral (estoque p)

comparaPrioridade :: Peca -> Peca -> Ordering
comparaPrioridade p1 p2 =
    compare (prioridade p2) (prioridade p1)

main = print (sortBy comparaPrioridade pecas)