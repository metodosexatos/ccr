#############################
####### Métodos Exatos ######
### www.metodosexatos.com ###
#############################

# Autor: André Santos | andre@metodosexatos.com.br
# 17/03/2019

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

# Estruturas de condição e repetição

# Estrutura de repetição while

# Exemplo 1: Tome a=10. Faça uma estrutura imprimir o valor de a e que seja iterado
# em uma unidada enquanto a<=20:

a <- 10
a <- a + 1 # iterando uma unidade ao valor 10
a <- a + 1 # iterando uma unidade ao valor 11
a <- a + 1 # iterando uma unidade ao valor 12
a <- a + 1 # iterando uma unidade ao valor 13
a <- a + 1 # iterando uma unidade ao valor 14
a <- a + 1 # iterando uma unidade ao valor 15
a <- a + 1 # iterando uma unidade ao valor 16
a <- a + 1 # iterando uma unidade ao valor 17
a <- a + 1 # iterando uma unidade ao valor 18
a <- a + 1 # iterando uma unidade ao valor 19
a          # exibindo a = 20

# Solução com a estrutura while:

a <- 10             # valor inicial
while(a <= 20) {    # condição: executar a função enquanto "a <= 20"
  print(a)          # Enquanto a condição for respeitada continuar imprimindo na tela
  a <- a+1          # Continuar iterando 1 unidade enquanto a condição existir
}

# Exemplo 2: Criar uma coluna calculada que represente o dobro dos preços originais

# Produto    Preço      Novo preço
#    A       R$5,00         NA
#    B       R$15,00        NA
#    C       R$4,00         NA
#    D       R$6,00         NA
#    E       R$8,00         NA

produto <- c("A", "B", "C", "D", "E")
produto
preco <- c(5, 15, 4, 6, 8)
preco

n_A <- preco[1]*2
n_B <- preco[2]*2
n_C <- preco[3]*2
n_D <- preco[4]*2
n_E <- preco[5]*2

novo_preco <- c(n_A, n_B, n_C, n_D, n_E)
novo_preco

tabela_atualizada <- data.frame(produto, preco, novo_preco)
tabela_atualizada

# Solução com a estrutura while

produto <- c("A", "B", "C", "D", "E")
produto
preco <- c(5, 15, 4, 6, 8)
preco
novo_preco <- NA
novo_preco

tabela_atualizada <- data.frame(produto, preco, novo_preco)
tabela_atualizada
str(tabela_atualizada)

#- Estrutura while:

produtos <- 1 # inicio

while(produtos <= 5) {
  tabela_atualizada[produtos, "novo_preco"] <- 2*tabela_atualizada[produtos, "preco"]
  print(tabela_atualizada)
  produtos <- produtos + 1
}

# Estrutura for

# Exemplo3: Refazer o exemplo 2 utilizando a estrutura for

# Etapas para desenvolvimento da tabela:
produto <- c("A", "B", "C", "D", "E")
produto
preco <- c(5, 15, 4, 6, 8)
preco
novo_preco <- NA
novo_preco

tabela_atualizada <- data.frame(produto, preco, novo_preco)
tabela_atualizada

#- Estrutura for:
for(i in 1:5) {
  tabela_atualizada[i, "novo_preco"] <- 2*tabela_atualizada[i, "preco"]
  print(tabela_atualizada)
}

#---------------------------- Atividade (início) --------------------------------#

# Eum uma escola um aluno é aprovado se obtiver um rendimento maior ou igual a 70%.
# Esse rendimento é medido pela média aritmética de três provas p1, p2, p3, respec-
# tivamente. Caso o aluno tenha média menor que 7 e maior ou igual a 5 ele estár em
# recuperação, caso seja inferior a 5este aluno é reprovado. Classifique o status
# de cada aluno.

# Alunos       P1  P2  P3
#  Ana         2   9   10
#  Alex        3   5    6
#  Carlos     10   9    8
#  Carolina    5   5    8
#  Diego       7   7    8
#  Juliana     8   5   10
#  Marcos      5   4    8
#  Natalia     2   4    5
#  Osvaldo     4   2    9
#  Yuri       10   1    2
#  Wellington  8   8    9

# Desenvolvimento dos vetores (fase 1)

alunos <- c("Ana", "Alex", "Carlos", "Carolina", "Diego", "Juliana", "Marcos",
            "Natalia","Osvaldo", "Yuri", "Wellington")
alunos
p1 <- c(2, 3, 10, 5, 7, 8, 5, 2, 4, 10, 8)
p1
p2 <- c(9, 5, 9, 5, 7, 5, 4, 4, 2, 1, 8)
p2
p3 <- c(10, 6, 8, 8, 8, 10, 8, 5, 9, 2, 9)
p3

# Tabela

tabela <- data.frame(alunos, p1, p2, p3)
tabela

# Desenvolvimento dos vetores média e status (fase 2)

tabela$media <- round((tabela$p1 + tabela$p2 + tabela$p3)/3, 2)
tabela

tabela$status <- NA
tabela

for (i in 1:nrow(tabela)){
  if(tabela[i,"media"] >= 7){
    tabela[i,"status"] <- "Aprovado"
  } else if(tabela[i,"media"] < 7 & tabela[i,"media"] >= 5){
    tabela[i,"status"] <- "Recuperação"
  } else{
    tabela[i,"status"] <- "Reprovado"
    print(tabela)
  }
}

#--------------------------- Atividade (término) --------------------------------#










