#########################
##### Métodos Exatos ####
# www.metodosexatos.com #
#########################

# Autor: André Santos | andre@metodosexatos.com.br
# 03/03/2019

# citation()

# To cite R in publications use:

# R Core Team (2018). R: A language and environment for statistical
# computing. R Foundation for Statistical Computing, Vienna,
# Austria. URL https://www.R-project.org/.

#####################################################################

# Operações lógicas:

# Ctrl + L # Limpa seu console

# Desenvolvimento de objetos:
K <- 25
L <- 45
M <- 625

vetor_1 <- c(4, 3, 2, 5)
vetor_2 <- c(5, 3)

k <- "BigData"
m <- "Bigdata"

# scripts para testar algumas operações lógicas (retornar: falso ou Verdadeiro)

!K       # Operação de negação
L > M    # Operação de maior
L < M    # Operação de menor
k == m   # Operação de igualdade
k != m   # Operação de diferença

################################################################################

# Operador contém
#- vetores:

v1 <- c(1, 2, 3, 4)
v2 <- c(4, 4, 5, 6)

#- script para o operador contém

v1 %in% v2 # quantos elementos de v1 existem em v2
v2 %in% v1 # quantos elementos de v2 existem em v1

# Operador E (& - &&)

z <- c(1, 2, 3, 4, 5, 6)

z > 2
z < 5

(z > 2) && (z < 5)

# Operador OU (| - ||)

(z > 2) | (z < 5)

(z > 2) || (z < 5)

a <- 1
b <- 2

if((a==7) || (b<=2)) {print("amostra da base foi selecionada com sucesso")}





















