#############################
####### M�todos Exatos ######
### www.metodosexatos.com ###
#############################

# Autor: Andr� Santos | andre@metodosexatos.com.br
# 09/03/2019

# citation()

# To cite R in publications use:

# R Core Team (2018). R: A language and environment for
# statistical computing. R Foundation for Statistical
# Computing, Vienna, Austria. URL https://www.R-project.org/.

####################################################################

# Inspe��o e limpeza do ambiente de trabalho

getwd() # diret�rio atual
setwd("C:/Users/andre/OneDrive/Documentos/PROJETOS/Metodos Exatos/Cursos/Curso6_Bioestatistica_com_R_Trilha/Scripts_R_Bioestatistica")
rm(list = ls()) # remove todos os objetos do R
# Ctrl + l # limpar o console

####################################################################

# Estudo de Matrizes

#- Demonstra��o

#- Constru��o de uma matriz organizada pelas colunas:
A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), ncol = 3, nrow = 3)
A

#- Constru��o de uma matriz organizada pelas colunas:
A1 <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), ncol = 3, nrow = 3, byrow = FALSE)
A1

#- Constru��o de uma matriz organizada pelas linhas:
B <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), ncol = 3, nrow = 3, byrow = TRUE)
B

#- Constru��o de uma matriz organizada pelas linhas acrescentando os nomes das dimens�es:
C <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), ncol = 3, nrow = 3, byrow = TRUE,
            dimnames = list(c("row1", "row2", "row3"), c("col1", "col2", "col3")))
C

# Atividade: Desenvolver as seguintes matrizes:

#- Matriz A(3x3):     Matriz nula B(4x4):

#      0 7 0                0 0 0 0  
#      1 4 5                0 0 0 0
#      8 3 0                0 0 0 0
#                           0 0 0 0

#-- Matriz A:

A33 <- matrix(c(0, 7, 0 , 1, 4, 5, 8, 3, 0), ncol = 3, nrow = 3, byrow = TRUE)
A33

A33b <- matrix(c(0, 1, 8, 7, 4, 3, 0, 5, 0), ncol = 3, nrow = 3, byrow = FALSE)
A33b

A33c <- matrix(c(0, 1, 8, 7, 4, 3, 0, 5, 0), ncol = 3, nrow = 3)
A33c

A33d <- matrix(c(0, 1, 8, 7, 4, 3, 0, 5, 0), ncol = 3, nrow = 3,
               dimnames = list(c("row1", "row2","row3"), c("col1","col2","col3")))
A33d

#-- Matriz B:

B44 <- matrix(c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), ncol = 4, nrow = 4)
B44

B44rep <- matrix(c(rep(0, 16)), ncol = 4, nrow = 4)
B44rep

# Altera��o de valores em uma matriz:

#- Alterar a 1� linha:

B44[1,] <- c(5, 7, 6, 8)
B44

#- Alterar um valor espec�fico: segundo elemento da �ltima linha:

B44[4,2] <- -5
B44
