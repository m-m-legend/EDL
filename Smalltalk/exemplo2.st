"Cria a variável no escopo local"
| numero |

"Atribui um valor a variável"
numero := 7.

"Checa se a variável é maior que 5 e mostra no console se sim ou não"
(numero > 5)
    ifTrue: [ Transcript show: 'Maior que 5'; cr ]
    ifFalse: [ Transcript show: 'Menor ou igual a 5'; cr ].