#############################
####### Métodos Exatos ######
### www.metodosexatos.com ###
#############################

# Autor: André Santos | andre@metodosexatos.com.br
# 18/03/2019

# citation()

# To cite R in publications use:

# R Core Team (2018). R: A language and environment for
# statistical computing. R Foundation for Statistical
# Computing, Vienna, Austria. URL https://www.R-project.org/.

###################################################################

#--------------------- Diretórios e Arquivos ---------------------#

# getwd() # Qual o diretório que o script está apontando
# list.files() # Quais arquivos estão contidos no diretório
# setwd("C:/Users/andre/OneDrive/Documentos/PROJETOS/Metodos Exatos/Cursos/Curso6_Bioestatistica_com_R_Trilha/6.02_Curso_Computacao_com_R/Scripts_R_Curso_Computacao_com_R/bases_r_curso")

# Leitura de uma base externa
# leitura_csv2 <- read.csv2(file = "exemplo.csv")

# Exportação de um arquivo no formato csv2 (formato brasileiro):
# write.csv2(frame_carros, "exemplo.csv")

# Leitura de arquivo externo usando pacotes

# if (!require(package)) install.packages("xlsx")
# library(xlsx)

# read.xlsx("exemplo.xlsx", sheetName = "nome_planilha")

# Salvar uma arquivo no formato xlsx
# write.xlsx(nome_dataframe, "exemplo.xlsx")

#---------------------------------------------------------------#

# Desenvolvimento de Funções

# Exemplo 1: Construa uma função que retornará a média de dois números:

media <- function(a,b) {
  m <- (a+b)/2
  return(m)
}

media(100,0)

#------------------- Atividade: Matemática Financeira (início) -------------------------#

# Determinar o montante
#- Uma pessoa aplica R$18.000,00 à taxa de 1,5% ao mês durante 8 meses. Determine o valor
#  acumulado ao final deste período.
#  Fórmula do Montante: M = C*(1+tx*n)

montante <- function(c, tx, n){
  m <- c*(1+(tx/100)*n)
  return(m)
}

montante(18000, 1.5, 8)

# Fazer a função retornar mais de um resultado:
#- Tome duas variáveis "a e "b", crie uma função que retorna a adicao, a subtração, a
#  multiplicação e a divisão entre esses dois números.

oper_fundamentais <- function(a,b){
  adicao <- a+b
  subtracao <- a-b
  multiplicacao <- a*b
  divisao <- a/b
  return(list(adicao=adicao, subtracao=subtracao, multiplicacao=multiplicacao,
              divisao=divisao))
}
oper_fundamentais(12,3)

#********** Função which() **************#

# Exemplo: Considere o vetor v=[24, 26, 30, 37, 45, 72]:
#- a) Analise se os elementos são múltiplos de 6 (os índices dos nºs)
#- b) Exiba quais os elementos são múltiplos de 6 (os números)

v <- c(24, 26, 30, 37, 45, 72)

which( v %% 6 == 0)

for (i in 1:length(v)) {
  if(v[i] %% 6 == 0){
    print(v[i])
  }
}

# Atividade
#- Determine quem é a pessoa mais velha

# Nomes     Gênero  Idade   Cidade
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

#************ Família Apply ************#

# Função apply()
#- Exemplo: Calcule a média de cada coluna na matriz D":

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

# Função lapply()
#- Exemplo: Considere o vetor v=[1, 2, 3, 4, 5, 6, 7, 8, 9], desenvolva um código,
#           que faça cada elemento ser elevado ao quadrado.

v <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
v

v_list <- lapply(v, function(v) v**2)

v_unlist <- unlist(lapply(v, function(v) v**2))

str(v_list)
str(v_unlist)

# Função Sapply
#- Exemplo: Considere o vetor v=[1, 2, 3, 4, 5, 6, 7, 8, 9], desenvolva um código,
#           que faça cada elemento ser elevado ao cubo.

v <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
v

sapply(v, function(v) v**3)



