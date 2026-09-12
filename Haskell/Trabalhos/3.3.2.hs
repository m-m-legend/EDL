data Pedido = Pedido
    { cliente  :: String
    , subtotal :: Double
    , vip      :: Bool
    } deriving Show

pedidos =
    [ Pedido "Ana"    180.0 True
    , Pedido "Bruno"   75.0 False
    , Pedido "Carlos" 320.0 True
    , Pedido "Diana"  120.0 False
    ]

valorComDesconto :: Pedido -> Double
valorComDesconto p =
    if vip p
        then subtotal p * 0.90
        else subtotal p

valorFinal :: Pedido -> Double
valorFinal p =
    let valor = valorComDesconto p
    in if valor >= 200
        then valor
        else valor + 25

resumoPedido :: Pedido -> String
resumoPedido p =
    cliente p ++ " - R$ " ++ show (valorFinal p)

maiorPedido :: Pedido -> Pedido -> Pedido
maiorPedido atual candidato =
    if valorFinal candidato > valorFinal atual
        then candidato
        else atual

adicionaVIP :: String -> Pedido -> String
adicionaVIP acumulado p =
    if vip p
        then acumulado ++ cliente p ++ ", "
        else acumulado

main = print (map valorFinal pedidos, map resumoPedido pedidos, filter vip pedidos, filter (\p -> valorComDesconto p >= 200) pedidos, foldl maiorPedido (head pedidos) (tail pedidos), foldl adicionaVIP "Clientes VIP: " pedidos)