algoritmo "1° Controle de Estoque de Loja"
var
produto: vetor [0..4] de caractere
quantidade: vetor [0..4] de inteiro
indice: inteiro
inicio
indice <- 0

para indice de 0 ate 4 faca
   escreva("Digite qual é o produto que deseja? ")
   leia(produto[indice])
   
   escreva("Digite qual é a quantidade do produto? ")
   leia(quantidade[indice])
   escreval("------------------------------------------")
fimpara

procedimento verificarEstoque ()
inicio
      para indice de 0 ate 4 faca
           se quantidade[indice] < 10 entao
              escreval("O produto ", produto[indice], " precisa de reposição.")
           senao
              escreval("O produto ", produto[indice], " está ok!")
           fimse
      fimpara
fimprocedimento

verificarEstoque ()

fimalgoritmo