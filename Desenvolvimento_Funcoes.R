#############################
####### M�todos Exatos ######
### www.metodosexatos.com ###
#############################

# Autor: Andr� Santos | andre@metodosexatos.com.br
# 18/03/2019

# citation()

# To cite R in publications use:

# R Core Team (2018). R: A language and environment for
# statistical computing. R Foundation for Statistical
# Computing, Vienna, Austria. URL https://www.R-project.org/.

###################################################################

#--------------------- Diret�rios e Arquivos ---------------------#

# getwd() # Qual o diret�rio que o script est� apontando
# list.files() # Quais arquivos est�o contidos no diret�rio
# setwd("C:/Users/andre/OneDrive/Documentos/PROJETOS/Metodos Exatos/Cursos/Curso6_Bioestatistica_com_R_Trilha/6.02_Curso_Computacao_com_R/Scripts_R_Curso_Computacao_com_R/bases_r_curso")

# Leitura de uma base externa
# leitura_csv2 <- read.csv2(file = "exemplo.csv")

# Exporta��o de um arquivo no formato csv2 (formato brasileiro):
# write.csv2(frame_carros, "exemplo.csv")

# Leitura de arquivo externo usando pacotes

# if (!require(package)) install.packages("xlsx")
# library(xlsx)

# read.xlsx("exemplo.xlsx", sheetName = "nome_planilha")

# Salvar uma arquivo no formato xlsx
# write.xlsx(nome_dataframe, "exemplo.xlsx")

#---------------------------------------------------------------#

# Desenvolvimento de Fun��es

# Exemplo 1: Construa uma fun��o que retornar� a m�dia de dois n�meros:

media <- function(a,b) {
  m <- (a+b)/2
  return(m)
}

media(100,0)

#------------------- Atividade: Matem�tica Financeira (in�cio) -------------------------#

# Determinar o montante
#- Uma pessoa aplica R$18.000,00 � taxa de 1,5% ao m�s durante 8 meses. Determine o valor
#  acumulado ao final deste per�odo.
#  F�rmula do Montante: M = C*(1+tx*n)

montante <- function(c, tx, n){
  m <- c*(1+(tx/100)*n)
  return(m)
}

montante(18000, 1.5, 8)

# Fazer a fun��o retornar mais de um resultado:
#- Tome duas vari�veis "a e "b", crie uma fun��o que retorna a adicao, a subtra��o, a
#  multiplica��o e a divis�o entre esses dois n�meros.

oper_fundamentais <- function(a,b){
  adicao <- a+b
  subtracao <- a-b
  multiplicacao <- a*b
  divisao <- a/b
  return(list(adicao=adicao, subtracao=subtracao, multiplicacao=multiplicacao,
              divisao=divisao))
}
oper_fundamentais(12,3)

#********** Fun��o which() **************#

# Exemplo: Considere o vetor v=[24, 26, 30, 37, 45, 72]:
#- a) Analise se os elementos s�o m�ltiplos de 6 (os �ndices dos n�s)
#- b) Exiba quais os elementos s�o m�ltiplos de 6 (os n�meros)

v <- c(24, 26, 30, 37, 45, 72)

which( v %% 6 == 0)

for (i in 1:length(v)) {
  if(v[i] %% 6 == 0){
    print(v[i])
  }
}

# Atividade
#- Determine quem � a pessoa mais velha

# Nomes     G�nero  Idade   Cidade
# Marcia      F      35       SP
# Claudia     F      45       RJ
# Oscar       M      18       MA
# Icaro       M      33       IL
# Maria       F      46       RE


nomes <- c("marcia", "claudia", "oscar", "icaro", "maria")
genero <- c("f", "f", "m", "m", "f")
idade <- c(35, 45, 18, 33, 46)
cidade <- c("sp", "rj", "ma", "il", "re")

pessoas <- data.frame(nomes, genero, idade, cidade)
pessoas <- pessoas[,c(1,3)]
pessoas

maior_idade <- max(pessoas[,"idade"])
maior_idade

pessoa_mais_velha <- pessoas[which(pessoas$idade == maior_idade),]
pessoa_mais_velha

#************ Fam�lia Apply ************#

# Fun��o apply()
#- Exemplo: Calcule a m�dia de cada coluna na matriz D":

#       Col1  col2  col3  col4
# row1  07    09     11    25
# row2  45    32     03    71
# row3  04    05     58    32
# row4  21    23     20    19

D <- matrix(c(07, 09, 11, 25, 45, 32, 03, 71, 04, 05, 58, 32, 21, 23, 20, 19),
            nrow = 4, ncol = 4, byrow = TRUE,
            dimnames = list(c("row1", "row2", "row3", "row4"),
                            c("col1", "col2", "col3", "col4")))
D

media_colunas <- apply(D, 2, mean)
media_colunas

media_linhas <- apply(D, 1, mean)
media_linhas

# Fun��o lapply()
#- Exemplo: Considere o vetor v=[1, 2, 3, 4, 5, 6, 7, 8, 9], desenvolva um c�digo,
#           que fa�a cada elemento ser elevado ao quadrado.

v <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
v

v_list <- lapply(v, function(v) v**2)

v_unlist <- unlist(lapply(v, function(v) v**2))

str(v_list)
str(v_unlist)

# Fun��o Sapply
#- Exemplo: Considere o vetor v=[1, 2, 3, 4, 5, 6, 7, 8, 9], desenvolva um c�digo,
#           que fa�a cada elemento ser elevado ao cubo.

v <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
v

sapply(v, function(v) v**3)



