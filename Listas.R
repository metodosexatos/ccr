#############################
####### Métodos Exatos ######
### www.metodosexatos.com ###
#############################

# Autor: André Santos | andre@metodosexatos.com.br
# 09/03/2019

# citation()

# To cite R in publications use:

# R Core Team (2018). R: A language and environment for
# statistical computing. R Foundation for Statistical
# Computing, Vienna, Austria. URL https://www.R-project.org/.

####################################################################

# Listas

#- Exemplo: Criar uma lista com os parâmetros:
#  - Plataforma: Métodos Exatos
#  - Nome do Curso: Computação Científica com R
#  - Ano: 2019
#  - Aula: Listas

minha_lista <- list("Métodos Exatos", "Computação Científica com R", 2019, "Listas")
minha_lista

minha_lista2 <- list(Plataforma = "Métodos Exatos",
                     Nome_do_Curso = "Computação Científica com R",
                     Ano = 2019,
                     Aula = "Listas")
minha_lista2

# Acessando elementos em uma lista

minha_lista[[2]]              # Usar esse comando quando não tivermos os nomes dos rótulos na lista

minha_lista2$Nome_do_Curso    # Indicado quando sabemos os nomes/rótulos de cada um dos elementos.

# Adicionando elementos em uma lista

#- Atividade:

#-- Em minha_lista2 inclua as respectivas pessoas e suas idades
#   - Nomes: Paula, Marcos, Felipe, Juliana, Diego;
#   - Idades: 29, 35, 41, 22, 36.

# Adicionando os elementos Alunos e suas Idades:
minha_lista2$Alunos <- c("Paula", "Marcos", "Felipe", "Juliana", "Diego")
minha_lista2$Idades <- c(29, 35, 41, 22, 36)
minha_lista2

# Conhecendo a sua lista

str(minha_lista2)
summary(minha_lista2$Idades)

###############
#---Desafio---#
###############

#- Considerando a tabela "abaixo "Lista de alunos":
#  1. Crie uma lista chamada "lista_pessoas";
#  2. Crie um objeto com o imc de cada pessoa;
#  3. Inclua o objeto imc na lista com o nome IMC;
#  4. Quais são as classes dos objetos da lista?
#  5. Determine a quantidade de alunos na lista.
#  6. Quem é o último aluno da lista?
#  7. Qual é o maior IMC?
#  8. Quantos alunos estão abaixo do peso normal, sugerido pela OMS (imc:18,5 e 24,99)?
#  9. Quantos alunos estão com IMC acima da média do grupo?

#-- Lista de alunos

# Alunos   Pesos(Kg)   Alturas(m)
# Arthur      52          1,54
# Andrey      65          1,76
# Felipe      70          1,65
# Carlos      58          1,60
# Marcio      48          1,68

# 1. Etapas para criar a lista_pessoas:

nome <- c("Arthur", "Andrey", "Felipe", "Carlos", "Marcio")
kg <- c(52, 65, 70, 58, 48)
metros <- c(1.54, 1.76, 1.65, 1.60, 1.68)

lista_pessoas <- list(Alunos=nome, Pesos=kg, Alturas=metros)
lista_pessoas

# 2. Etapas para criar um objeto com IMC de cada aluno:
#    Equação: IMC = Peso/(altura**2)

imc_arthur <- kg[1]/(metros[1]**2)
imc_andrey <- kg[2]/(metros[2]**2)
imc_felipe <- kg[3]/(metros[3]**2)
imc_carlos <- kg[4]/(metros[4]**2)
imc_marcio <- kg[5]/(metros[5]**2)

IMC <- c(imc_arthur, imc_andrey, imc_felipe, imc_carlos, imc_marcio)
IMC

# 3. Inclusão do IMC na lista_pessoas:

lista_pessoas$IMC <- IMC
lista_pessoas

# 4. Classes dos objetos na lista_pessoas:

str(lista_pessoas)

# 5. Quantidade de alunos na lista:

total_alunos <- length(lista_pessoas$Alunos)
total_alunos

# 6. Último aluno da lista:

lista_pessoas$Alunos[total_alunos]

# 7. Maior IMC:

max(lista_pessoas$IMC)

# 8. Total de alunos que estão abaixo do peso normal (OMS: "< 18,5"):

sum(lista_pessoas$IMC < 18.5)

# 9. Total de alunos acima da média do grupo:

sum(lista_pessoas$IMC > median(lista_pessoas$IMC))