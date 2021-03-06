#############################
####### M�todos Exatos ######
### www.metodosexatos.com ###
#############################

# Autor: Andr� Santos | andre@metodosexatos.com.br
# 28/03/2019

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

#- An�lise Gr�fica

getwd() # Qual o diret�rio que o script est� apontando
list.files() # Quais arquivos est�o contidos no diret�rio
setwd("C:/Users/andre/OneDrive/Documentos/PROJETOS/Metodos Exatos/Cursos/Curso6_Bioestatistica_com_R_Trilha/6.02_Curso_Computacao_com_R/Scripts_R_Curso_Computacao_com_R/bases_r_curso")

# Leitura de uma base externa
rend_escolar <- read.csv2(file = "Rendimento_Escolar_Brasil.csv")
str(rend_escolar)
summary(rend_escolar)
head(rend_escolar)

# Instala��o dos pacotes

if(!require(package)) install.packages("dplyr")
library(dplyr)

# Manipula��o da base

base <- rend_escolar %>%
  filter(resultado == "Aprovado")

hist(base$rendimento, main = "Indice de Aprovados", xlab = "Taxa",
     ylab = "Total de casos", xlim = c(0, 100), col = "blue")

#*************** Gr�ficos por Regi�o ****************************#

base_sul <- rend_escolar %>%
  filter(regiao == "Sul", resultado == "Aprovado")

hist(base_sul$rendimento, main = "Aprovados Regi�o Sul", xlab = "Taxa",
     ylab = "Total de casos", xlim = c(0, 100), col = "blue")

base_sudeste <- rend_escolar %>%
  filter(regiao == "Sudeste", resultado == "Aprovado")

hist(base_sudeste$rendimento, main = "Aprovados Regi�o Sudeste", xlab = "Taxa",
     ylab = "Total de casos", xlim = c(0, 100), col = "black", border = "yellow")


base_nordeste <- rend_escolar %>%
  filter(regiao == "Nordeste", resultado == "Aprovado")

hist(base_nordeste$rendimento, main = "Aprovados Regi�o Nordeste", xlab = "Taxa",
     ylab = "Total de casos", xlim = c(0, 100), col = "pink")


base_norte <- rend_escolar %>%
  filter(regiao == "Norte", resultado == "Aprovado")

hist(base_norte$rendimento, main = "Aprovados Regi�o Norte", xlab = "Taxa",
     ylab = "Total de casos", xlim = c(0, 100), col = "yellow")


base_co <- rend_escolar %>%
  filter(regiao == "Centro_Oeste", resultado == "Aprovado")

hist(base_co$rendimento, main = "Aprovados Regi�o Centro_Oeste", xlab = "Taxa",
     ylab = "Total de casos", xlim = c(0, 100), col = "purple")

#*****************************************************************************#

#- Bases para histogramas

base_sul1 <- rend_escolar %>%
  filter(regiao == "Sul", resultado == "Aprovado")

base_sudeste1 <- rend_escolar %>%
  filter(regiao == "Sudeste", resultado == "Aprovado")

base_nordeste1 <- rend_escolar %>%
  filter(regiao == "Nordeste", resultado == "Aprovado")

base_norte1 <- rend_escolar %>%
  filter(regiao == "Norte", resultado == "Aprovado")

base_co1 <- rend_escolar %>%
  filter(regiao == "Centro_Oeste", resultado == "Aprovado")

#- Histogramas

windows() # abri uma janela para exibir os gr�ficos
par(mfrow = c(2,3))

hist(base_sul1$rendimento, main = "Aprovados Regi�o Sul", xlab = "Taxa",
     ylab = "Total de casos", xlim = c(0, 100), col = "blue")

hist(base_sudeste1$rendimento, main = "Aprovados Regi�o Sudeste", xlab = "Taxa",
     ylab = "Total de casos", xlim = c(0, 100), col = "black", border = "yellow")

hist(base_nordeste1$rendimento, main = "Aprovados Regi�o Nordeste", xlab = "Taxa",
     ylab = "Total de casos", xlim = c(0, 100), col = "pink")

hist(base_norte1$rendimento, main = "Aprovados Regi�o Norte", xlab = "Taxa",
     ylab = "Total de casos", xlim = c(0, 100), col = "yellow")

hist(base_co1$rendimento, main = "Aprovados Regi�o Centro_Oeste", xlab = "Taxa",
     ylab = "Total de casos", xlim = c(0, 100), col = "purple")


#- Boxplot

#-- Atividade:
#   An�lise se h� presen�a de outliers no �ndice de reprova��o em cada
#   regi�o do Brasil, para a popula��o da zona rural.
#   O que mais consegue dizer pela an�lise gr�fica?

#- Bases para boxplot

base_sul2 <- rend_escolar %>%
  filter(regiao == "Sul", local == "Rural", resultado == "Reprovado")

base_sudeste2 <- rend_escolar %>%
  filter(regiao == "Sudeste", local == "Rural", resultado == "Reprovado")

base_nordeste2 <- rend_escolar %>%
  filter(regiao == "Nordeste", local == "Rural", resultado == "Reprovado")

base_norte2 <- rend_escolar %>%
  filter(regiao == "Norte", local == "Rural", resultado == "Reprovado")

base_co2 <- rend_escolar %>%
  filter(regiao == "Centro_Oeste", local == "Rural", resultado == "Reprovado")

#- Boxplots

windows() # abri uma janela para exibir os gr�ficos
par(mfrow = c(2,3))

boxplot(base_sul2$rendimento, main = "Reprovados Regi�o Sul", xlab = "Taxa",
     ylab = "Total de casos", col = "green", border = "blue")

boxplot(base_sudeste2$rendimento, main = "Reprovados Regi�o Sudeste", xlab = "Taxa",
     ylab = "Total de casos", col = "green", border = "blue")

boxplot(base_nordeste2$rendimento, main = "Reprovados Regi�o Nordeste", xlab = "Taxa",
     ylab = "Total de casos", col = "green", border = "blue")

boxplot(base_norte2$rendimento, main = "Reprovados Regi�o Norte", xlab = "Taxa",
     ylab = "Total de casos", col = "green", border = "blue")

boxplot(base_co2$rendimento, main = "Reprovados Regi�o Centro_Oeste", xlab = "Taxa",
     ylab = "Total de casos", col = "green", border = "blue")

#- Estudo da matriz de correla��o

PME <- read.csv2("Taxa_Desemprego_PME.csv")
head(PME)
str(PME)

base_cor <- PME[, c(5:12)]
head(base_cor)
str(base_cor)

#- Matriz de correla��o

round(cor(base_cor),2)

install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)

chart.Correlation(base_cor, histogram = TRUE, pch = 21)

# Diagrama de dispers�o

head(PME)
cbind(names(PME)) # identifica o �ndice de cada coluna

feminino_servico <- PME[, c(1,2,3,4,9,11)]
head(feminino_servico,12)
str(feminino_servico)
summary(feminino_servico)

if(!require(package)) install.packages("dplyr")
library(dplyr)

base_bh <- feminino_servico %>%
  filter(Cidade == "BH") %>%
  group_by(Ano) %>%
  summarise(meanservico = mean(SERVICOS), meanfeminino = mean(FEMININO))

head(base_bh, 30)
str(base_bh)

plot(base_bh$meanservico, base_bh$meanfeminino, main = "Belo Horizonte",
     xlab = "Servi�os", ylab = "Feminino", col = "blue", pch = 15,
     type = "b")

# Atividade:
#- Desenvolver gr�ficos de dispers�o para cada cidade, considerando as taxas
#  feminino e servi�os, com base no resultado m�dio por ano.

#- Bases por cidade:

base_bh <- feminino_servico %>%
  filter(Cidade == "BH") %>%
  group_by(Ano) %>%
  summarise(meanservico = mean(SERVICOS), meanfeminino = mean(FEMININO))

base_poa <- feminino_servico %>%
  filter(Cidade == "POA") %>%
  group_by(Ano) %>%
  summarise(meanservico = mean(SERVICOS), meanfeminino = mean(FEMININO))

base_re <- feminino_servico %>%
  filter(Cidade == "RE") %>%
  group_by(Ano) %>%
  summarise(meanservico = mean(SERVICOS), meanfeminino = mean(FEMININO))

base_rj <- feminino_servico %>%
  filter(Cidade == "RJ") %>%
  group_by(Ano) %>%
  summarise(meanservico = mean(SERVICOS), meanfeminino = mean(FEMININO))

base_sp <- feminino_servico %>%
  filter(Cidade == "SP") %>%
  group_by(Ano) %>%
  summarise(meanservico = mean(SERVICOS), meanfeminino = mean(FEMININO))

# Diagramas por cidade:

windows() # abri v�rios gr�ficos em uma mesma janela
par(mfrow = c(2,3))

plot(base_bh$meanservico, base_bh$meanfeminino, main = "Belo Horizonte",
     xlab = "Servi�os", ylab = "Feminino", col = "blue", pch = 15)

plot(base_poa$meanservico, base_poa$meanfeminino, main = "Porto Alegre",
     xlab = "Servi�os", ylab = "Feminino", col = "blue", pch = 15)

plot(base_re$meanservico, base_re$meanfeminino, main = "Recife",
     xlab = "Servi�os", ylab = "Feminino", col = "blue", pch = 15)

plot(base_rj$meanservico, base_rj$meanfeminino, main = "Rio de Janeiro",
     xlab = "Servi�os", ylab = "Feminino", col = "blue", pch = 15)

plot(base_sp$meanservico, base_sp$meanfeminino, main = "S�o Paulo",
     xlab = "Servi�os", ylab = "Feminino", col = "blue", pch = 15)


# Gr�fico de Setor

Fem <- 129
Mas <- 121

prop <- cbind(Fem, Mas)
prop

windows()

pie(prop, main = "Propor��o entre Homens e Mulheres",
    labels = c("51,6%", "48,4%"), col = c("blue", "orange"))

#- Legenda
legend(x = "topright", bty = "n", cex = 0.8,
       legend = c("Feminino", "Masculino"),
       fill = c("blue", "orange"))


#- Gr�fico de barras

PME <- read.csv2("Taxa_Desemprego_PME.csv")
head(PME)
str(PME)
summary(PME)

# Exemplo:
#- An�lise a varia��o de desemprego das mulheres por regi�o, para toda a PME

# install.packages("dplyr")
# library(dplyr)

base <- PME %>%
  group_by(Cidade) %>%
  summarise(meanfeminino = mean(FEMININO))
head(base)

windows()
barplot(base$meanfeminino, names = c("BH", "POA", "RE", "RJ", "SAL","SP"),
        col = gray.colors(6))

# Ajuste do eixo y

maximo <- max(base$meanfeminino) + max(base$meanfeminino)*0.1
barplot(base$meanfeminino, names = c("BH", "POA", "RE", "RJ", "SAL","SP"),
        col = gray.colors(6), ylim = c(0,maximo))

# Ajuste das barras por ordem de grandeza num�rica

base_desc <- PME %>%
  group_by(Cidade) %>%
  summarise(meanfeminino1 = mean(FEMININO)) %>%
  arrange(desc(meanfeminino1))

base_desc

maximo1 <- max(base_desc$meanfeminino1) + max(base_desc$meanfeminino1)*0.1

windows()
barplot(base_desc$meanfeminino1, names = c("BH", "POA", "RE", "RJ", "SAL","SP"),
        col = rainbow(6), ylim = c(0,maximo1))

# Organizando os nomes das categorias no gr�fico de forma autom�tica

x <- length(base_desc$Cidade)

windows()
barplot(base_desc$meanfeminino1, names = base_desc$Cidade,
        col = terrain.colors(x), ylim = c(0,maximo1))





