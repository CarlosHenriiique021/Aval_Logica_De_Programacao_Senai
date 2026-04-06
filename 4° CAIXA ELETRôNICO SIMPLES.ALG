algoritmo "4° Caixa Eletrônico Simples"
var
   saldos: vetor [0..9] de real
   indice: inteiro
   saque: real

inicio
para indice de 0 ate 9 faca
      escreva("Digite o saldo do cliente ", indice+1, ": ")
      leia(saldos[indice])
fimpara


para indice de 0 ate 9 faca
      escreval("--- Atendimento Cliente ", indice+1, " ---")
      saque <- -1

      enquanto saque <> 0 faca
         escreval("Saldo atual: ", saldos[indice])
         escreva("Quanto deseja sacar? (0 para sair): ")
         leia(saque)

         se (saque > saldos[indice]) ou (saque < 0) entao
            escreval("Saque inválido! Saldo insuficiente ou valor negativo.")
         senao
            se saque <> 0 entao
               saldos[indice] <- saldos[indice] - saque
               escreval("Saque realizado!")
            fimse
         fimse
      fimenquanto

fimpara

procedimento ProcessarSaque()
inicio
   escreval("Saldo final do cliente: ", saldos[indice])
   escreval("---------------------------------------")
fimprocedimento

ProcessarSaque()

fimalgoritmo