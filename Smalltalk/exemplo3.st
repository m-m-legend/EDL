| numeros soma |

"Cria um Array literal com os valores iniciais"
numeros := #(1 2 3 4 5 6 7 8).

"Inicializa o acumulador"
soma := 0.

"Itera sobre cada elemento da coleção"
numeros do: [:cada |

    "Verifica se o número é par"
    (cada even)
        ifTrue: [

            "Se for par, calcula o quadrado e acumula"
            soma := soma + (cada * cada)
        ]
].

"Exibe o resultado final no Transcript"
Transcript show: soma; cr.