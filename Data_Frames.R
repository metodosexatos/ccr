#############################
####### M�todos Exatos ######
### www.metodosexatos.com ###
#############################

# Autor: Andr� Santos | andre@metodosexatos.com.br
# 05/03/2019

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

# Data frames

produto <- c( "A", "B", "C", "D", "E") # Vetor produtos
preco <- c(6, 17, 3, 5, 9) # Vetor pre�o

tabela_produto_preco <- data.frame(produto, preco) # cria uma tabela com duas colunas (produtos e pre�os dos produtos)
tabela_produto_preco                               # exibe os valores da tabela no console

# Indexa��o de um data frame
# Atividade 1
#- Acesse a quantidade de unidades que o cliente Y comprou do produto C.

#             Cliente X    Cliente Y
# Produto A      250          300
# Produto B    1.250          456
# Produto C      785        1.366
# Produto D       45          898


produto <- c("A", "B", "C", "D")     # cria o vetor com o nome dos produtos
cliente_x <- c(250, 1250, 785, 45)   # cria o vetor com as unidades compradas pelo cliente X
cliente_y <- c(300, 456, 1366, 898)  # cria o vetor com as unidades compradas pelo cliente Y

tabela <- data.frame(produto, cliente_x, cliente_y)  # cria uma tabela com os nomes dos produtos e quantidades compradas por cliente
tabela                                               # exibe a tabela na tela
tabela[3, 3]                                         # seleciona uma c�lula dentro da tabela

# Acessando uma coluna de um data frame
# Atividade
# (a) Veja quais foram as compras do cliente Y;
# (b) Veja quantos produtos o cliente Y comprou;

#             Cliente X    Cliente Y    Cliente Z
# Produto A      250          300          101
# Produto B    1.250          456          210
# Produto C      785        1.366        1.700
# Produto D       45          898          800
# Produto E       37           13        4.500


produto <- c("A", "B", "C", "D", "E")
cliente_x <- c(250, 1250, 785, 45, 37)    # cria o vetor com os dados do cliente X
cliente_y <- c(300, 456, 1366, 898, 13)   # cria o vetor com os dados do cliente Y
cliente_z <- c(101, 210, 1700, 800, 4500) # cria o vetor com os dados do cliente Z

tabela2 <- data.frame(produto, cliente_x, cliente_y, cliente_z) # cria uma tabela com os dados dos clientes
tabela2                                                         # exibe os dados da tabela

tabela2$cliente_y      # acessamos uma coluna espec�fica utilizando o "$"

sum(tabela2$cliente_y) # somamos dados de uma coluna espec�fica, utilizando "sum()"

# Criando uma nova coluna em um data frame

cliente_W <- c(50, 100, 200, 300, 400)    # cria um vetor com dados do cliente W

tabela2$Maria <- c(5, 200, 500, 600, 40)  # adiciona uma coluna com os dados do cliente Maria
tabela2$Andre <- cliente_W                # adiciona uma coluna com os dados do cliente W e coloca o nome da coluna de Andre
tabela2                                   # exibe os resultados da tabela

##############################################################################

# Inspe��o do data frame

base_iris <- iris     # atribuindo um nome para a base iris

str(base_iris)        # analisando a estrutura da base de dados
head(base_iris)       # analisando as primeiras linhas (observa��es)
head(base_iris, 10)   # analisando as 10 primeiras linhas (observa��es)
tail(base_iris)       # analisando as �ltimas linhas (observa��es)
tail(base_iris, 12)   # analisando as 12 �ltimas linhas (observa��es)
summary(base_iris)    # resumo estat�stico da base de dados
names(base_iris)      # nomes das colunas

# Atividade:

# Parte 1:
#  Criar um data frame com nome, g�nero, regi�o e idade:
#   1. Quantas observa��es tem a tabela?
#   2. Quantas vari�veis tem a tabela?
#   3. Quais as m�dias das idades?
#   4. Quais s�o as classes das colunas?
#   5. Fa�a um resumo estat�stico da tabela.

# Parte 2:
#  Crie um segundo data frame com nome, carro, ano do carro:
#   6. Concatene com a tabela anterior.

# Solu��o Parte 1:

Nome <- c("Paulo", "Ana", "Pedro", "Viviane", "Ricardo", "Diego",
          "Marcos", "Renata", "Vitor", "Bruno", "Juliana", "Adriana",
          "Juliana", "Beatriz", "Vanessa", "Ingrid", "Mariana")

Genero <- c("M", "F", "M", "F", "M", "M", "M", "F", "M", "M", "F",
            "F", "F", "F", "F", "M", "F")

Regiao <- c("R2", "R3", "R3", "R2", "R3", "R5", "R2", "R5", "R5", "R1",
            "R1", "R1", "R2", "R1", "R1", "R3", "R3")

Idade <- c(36, 32, 30, 32, 31, 29, 35, 33, 25, 27, 27, 19, 31, 22, 36,
           34, 33)

tabela_demo <- data.frame(Nome, Genero, Regiao, Idade)
head(tabela_demo)

nrow(tabela_demo) # total de linhas (observa��es)
ncol(tabela_demo) # total de colunas (vari�veis)

mean(tabela_demo$Idade) # A m�dia das idades

str(tabela_demo) # A estrutura da tabela

summary(tabela_demo) # resumo estat�stico da base

# Solu��o Parte 2:
Carro <- c("Camaro", "Mustang", "Corvette", "Ferrari", "Porsche", "Mercedez",
           "Volvo", "Land Rover", "Audi", "Jaguar", "Fusca", "Porsche",
           "Mercedez", "Volvo", "Land Rover", "Fusca", "Fusca")

Ano <- c(2017, 2019, 2015, 2010, 2009, 2007, 2015, 2015, 2018, 2000, 2019,
         2000, 1999, 2015, 2017, 2018, 2019)

tabela_auto <- data.frame(Nome, Carro, Ano) # constru��o da tabela
head(tabela_auto)

tabela3 <- cbind(tabela_demo, tabela_auto[,c(2,3)]) # agrupando as tabelas pelas colunas
head(tabela3)
