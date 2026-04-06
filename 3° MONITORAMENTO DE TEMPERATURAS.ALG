algoritmo "3° Monitoramento de Temperaturas"
var
temperaturas: vetor [0..6] de real
indice: inteiro
menor, maior, soma, media: real

inicio
soma <- 0

escreva("Digite a temperatura do 1° dia: ")
leia(temperaturas[0])
maior <- temperaturas[0]
menor <- temperaturas[0]
soma <- temperaturas[0]

para indice de 1 ate 6 faca
      escreva("Digite a temperatura do ", indice+1, "° dia: ")
      leia(temperaturas[indice])

      soma <- soma + temperaturas[indice]


      se temperaturas[indice] > maior entao
         maior <- temperaturas[indice]
      fimse

      se temperaturas[indice] < menor entao
         menor <- temperaturas[indice]
      fimse
fimpara

procedimento analisaTemperaturas ()
inicio
   media <- soma / 7
   escreval("------------------------------------------")
   escreval("Menor temperatura registrada: ", menor)
   escreval("Maior temperatura registrada: ", maior)
   escreval("Média semanal: ", media)

   se (media >= 20) e (media <= 30) entao
      escreval("A média semanal foi uma temperatura agradável!")
   senao
      escreval("A média semanal ficou fora da faixa agradável.")
   fimse
fimprocedimento

analisaTemperaturas()

fimalgoritmo