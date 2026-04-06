algoritmo "2° Controle de Notas de Alunos"
var
alunos: vetor [0..7] de caractere
mediaAluno: vetor [0..7] de real
indice, indiceNotas: inteiro
nota, soma, mediaTurma : real

inicio
indice <- 0
indiceNotas <- 0
nota <- 0
soma <- 0
mediaTurma <- 0

para indice de 0 ate 7 faca
     escreva("Digite o nome do", indice+1, "° aluno(a): ")
     leia(alunos[indice])
     
     para indiceNotas de 0 ate 1 faca
          escreval("Digite a ", indiceNotas+1, "ª nota deste aluno(a): ")
          leia(nota)
          
          soma <- soma + nota
     fimpara
     
     mediaAluno[indice] <- soma / (indiceNotas+1)
     mediaTurma <- mediaTurma + mediaAluno[indice]
     indiceNotas <- 0
     nota <- 0
     soma <- 0
     escreval("----------------------------")
fimpara

mediaTurma <- mediaTurma / 8

procedimento avaliarAlunos ()
inicio
      para indice de 0 ate 7 faca
           se mediaAluno[indice] >= mediaTurma entao
              escreval("O(A) aluno(a) ", alunos[indice], " ficou acima da média geral!")
           senao
              escreval("O(A) aluno(a) ", alunos[indice], " ficou abaixo da média geral.")
           fimse
      fimpara
fimprocedimento

avaliarAlunos ()

fimalgoritmo