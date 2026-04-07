algoritmo "4º Caixa Eletrônico Simples"
var
saldos, saque: vetor [0..9] de real
indice: inteiro
inicio
  indice <- 0
  saque[indice] <- 1

  para indice de 0 ate 9 faca
       escreval("------------------------------------------------")
       escreva("Digite o saldo do", indice+1 ,"° cliente: R$")
       leia(saldos[indice])
  fimpara

  procedimento processarSaque ()
  inicio
     para indice de 0 ate 9 faca
          saque[indice] <- 1
          enquanto saque[indice] <> 0 faca
               escreval("------------------------------------------------")
               escreval("Saldo disponivel do", indice+1, "° cliente : R$", saldos[indice]:4:2)
               escreva("Qual o valor do saque desejado do", indice+1, "° cliente? R$")
               leia(saque[indice])

               se (saque[indice] > saldos[indice]) ou (saque[indice] < 0) entao
                  escreval("Saque maior que o saldo ou negativo, NEGADO!")
               senao
                  saldos[indice] <- saldos[indice] - saque[indice]
                  escreval("Saldo disponivel atualizado: R$", saldos[indice]:4:2)
                  escreva("Digite 0 para sair ou outro número para continuar sacando: ")
                  leia(saque[indice])
               fimse
          fimenquanto
     fimpara
  fimprocedimento
  
  processarSaque()
fimalgoritmo