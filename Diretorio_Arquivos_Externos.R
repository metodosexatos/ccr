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

# Diretórios

getwd() # Qual o diretório que o script está apontando
list.files() # Quais arquivos estão contidos no diretório
setwd("C:/Users/andre/OneDrive/Documentos/PROJETOS/Metodos Exatos/Cursos/Curso6_Bioestatistica_com_R_Trilha/6.02_Curso_Computacao_com_R/Scripts_R_Curso_Computacao_com_R/bases_r_curso")


# Leitura de uma base externa

leitura_csv2 <- read.csv2(file = "dados_alunos.csv")
leitura_csv2

# Exportação de um arquivo no formato csv2 (formato brasileiro):

Carros <- c("GM", "Fiat", "VW", "Ford")
Anos <- c(2018, 2017, 2019, 2019)
UF <- c("SP", "RJ", "DF", "MG")

frame_carros <- data.frame(Carros, Anos, UF)
frame_carros

write.csv2(frame_carros, "carros.csv")

# Leitura de arquivo externo usando pacotes

install.packages("readxl")
library(readxl)

aba_carros <- read_excel("alunos_carros.xlsx", sheet = "carros")
aba_carros

# Salvar uma arquivo no formato xlsx

install.packages("xlsx")
library(xlsx)

write.xlsx(frame_carros, "carros2.xlsx")









