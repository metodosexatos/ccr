#############################
####### Métodos Exatos ######
### www.metodosexatos.com ###
#############################

# Autor: André Santos | andre@metodosexatos.com.br
# 13/03/2019

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

#- Estrutura de condição if:

# Função para exibir na tela a frase "fico em casa" quando "a" for igual a "chover".
a <- c("chover")

if(a == "chover") {
  cat("fico em casa")
}

# Função exibe na tela "fico em casa" se a chance de chover for 70% ou mais.

chance <- 80

if(chance >= 70) {
  cat("fico em casa")
}

# Função exibe na tela "fico em casa" toda vez que a amostra aleatório for maior
# ou igual a 70%.

chance1 <- sample(1:100, 1, replace = TRUE)
chance1

if(chance1 >= 70) {
  cat("fico em casa")
}

#-------------------------- Atividade if (inicio) --------------------------------#

# 1.Determinar se uma pessoa vai ficar em casa:
# 1.1. Desenvolver a "tabela_de_pontos" (variável; peso; nota; pontuação):
# 1.1.1. Desenvolver o vetor "variavel";
# 1.1.2. Desenvolver o vetor "peso";
# 1.1.3. Desenvolver o vetor "nota";
# 1.1.4. Desenvolver o vetor "pontuacao";
# 1.2. Encontrar a pontuação geral "resultado";
# 1.3. Exibir mensagem "Você deve ficar em casa, pois vai chover" se resultado for >= 70%.
# 1.4. Exportar a tabela_de_pontos como csv2.

# Variável    Escala(E)   Peso(P)  Nota(N)    Pontuação    Descrição
#  cafe        0 ou 1       0,05    f(E)         P*N       Bolhas concentradas no centro indicam chuva, pois a pressão atmosférica elevada puxa as bolhas para os cantos e pressão alta é sinal que não irá chover.
#  passaros    0 ou 1       0,05    f(E)         P*N       Pássaros que normalmente voam em alta altitude voando em altitudes baixas, pode ser sinal de que uma tempestade está a caminho.
#  lua         0 ou 1       0,05    f(E)         P*N       Halo (anel) em torno da lua, ocorre quando a luz da lua reflete em nuvens muito altas, caracterizadas por ar quente e umidade, dois compostos básicos para ocorrência de chuvas.
#  grilos      0 ou 1       0,10    f(E)         P*N       Muitos grilos cantando aceleradamente é sinal de chuva a caminho. Quando o canto dos grilos se torna mais acelerado é sinal que a temperatura está em queda.
#  vacas       0 ou 1       0,05    f(E)         P*N       Os gados sentem a queda de pressão e procuram deitar em lugares abrigados da chuva.
#  cigarras    0 ou 1       0,10    f(E)         P*N       Após uma algazzarra se as cigarras pararem brutamente pode significar chuva, pois o barulho vem das suas asas e elas não podem movimentar as asas quando a umidade está muito alta.
#  arco-iris   0 ou 1       0,30    f(E)         P*N       O Arco-íris aparece minutos antes ou depois da chuva. O arco-íris se forma quando as luzes do sol refletem em gotículas de água no céu e por isso são um bom indicador de alta umidade e de que a chuva está por perto.
#  nuvens      0 ou 1       0,20    f(E)         P*N       Nuvens em formato de torre, ou seja, que se estendam verticalmente da baixa até as altas altitudes. Esse tipo de nuvem é chamado de Cumulonimbus e normalmente indica tempestades a caminho.
#  umidade     0 ou 1       0,05    f(E)         P*N       Pode-se notar a umidade de uma maneira simples. Algumas plantas enrolam suas folhas em caso de alta umidade. Outra forma é você observar o estado de cabelos encaracolados, se o cabelo ficar frisado, é sinal de que a umidade está alta. Este método é bastante antigo, o primeiro instrumento de medição da umidade do ar foi feito a partir de um fio de cabelo tensionado.
#  sentidos    0 ou 1       0,05    f(E)         P*N       Sentir na pele o aumento da umidade e através do olfato o "cheiro da chuva", que é na verdade o cheiro de ozônio, gás que desce para as baixas altitudes durante períodos de baixa pressão e que tem aroma levemente adocicado.

# 1.1.1. Desenvolver o vetor "variavel":
variavel <- c("cafe", "passaros", "lua", "grilos", "vacas", "cigarras", "arco-iris",
              "nuvens", "umidade", "sentidos")
variavel

# 1.1.2. Desenvolver o vetor "peso":
peso <- c(0.05, 0.05, 0.05, 0.10, 0.05, 0.10, 0.30, 0.20, 0.05, 0.05)
peso

# 1.1.3. Desenvolver o vetor "nota":
n_cafe <- sample(0:1, 1, replace = TRUE)
n_passaros <- sample(0:1, 1, replace = TRUE)
n_lua <- sample(0:1, 1, replace = TRUE)
n_grilos <- sample(0:1, 1, replace = TRUE)
n_vacas <- sample(0:1, 1, replace = TRUE)
n_cigarras <- sample(0:1, 1, replace = TRUE)
n_arcoiris <- sample(0:1, 1, replace = TRUE)
n_nuvens <- sample(0:1, 1, replace = TRUE)
n_umidade <- sample(0:1, 1, replace = TRUE)
n_sentidos <- sample(0:1, 1, replace = TRUE)

nota <- c(n_cafe, n_passaros, n_lua, n_grilos, n_vacas, n_cigarras, n_arcoiris,
          n_nuvens, n_umidade, n_sentidos)
nota

# 1.1.4. Desenvolver o vetor "pontuacao":
p_cafe <- peso[1]*n_cafe
p_passaros <- peso[2]*n_passaros
p_lua <- peso[3]*n_lua
p_grilos <- peso[4]*n_grilos
p_vacas <- peso[5]*n_vacas
p_cigarras <- peso[6]*n_cigarras
p_arcoiris <- peso[7]*n_arcoiris
p_nuvens <- peso[8]*n_nuvens
p_umidade <- peso[9]*n_umidade
p_sentidos <- peso[10]*n_sentidos

pontuacao <- c(p_cafe, p_passaros, p_lua, p_grilos, p_vacas, p_cigarras, p_arcoiris,
          p_nuvens, p_umidade, p_sentidos)
pontuacao

# 1.1. Desenvolver a "tabela_de_pontos":
tabela_de_pontos <- data.frame(variavel, peso, nota, pontuacao)
tabela_de_pontos

# 1.2. Encontrar a pontuação geral "resultado":
resultado <- sum(tabela_de_pontos[,"pontuacao"])*100
resultado

# 1.3. Exibir mensagem "Você deve ficar em casa, pois vai chover" se resultado for >= 70%.
if(resultado >= 70) {
  cat("Você deve ficar em casa, pois vai chover")
}

# 1.4. Exportar a tabela_de_pontos como csv2:
write.csv2(tabela_de_pontos, "ficar_em_casa.csv")

#-------------------------- Atividade if (termino) -------------------------------#

#- Estrutura de condição if e else:

#-- Exercício 1:
#   Tome a=31 e b=30. Desenvolva um script para analisar qual dos dois é o maior.
#   Exibir na tela: "a é maior que b" ou "b é maior que a"

a <- 31
b <- 30

if (a > b) {
  cat("a é maior que b")
} else {
  cat("b é maior que a")
}

if (a < b) {
  cat("b é maior que a")
} else {
  cat("a é maior que b")
}


#-- Exercício 2:
#   Tome valores aleatorios para x e y. Desenvolva um script para analisar qual dos dois é o maior.
#   Exibir na tela: "a é maior que b" ou "b é maior que a"


x <- sample(1:9999, 1)
y <- sample(1:9999, 1)

if (x > y) {
  cat("x é maior que y")
} else {
  cat("y é maior que x")
}


#--------------- Adaptação da Atividade if para "if e else" (inicio) --------------------#

# 1.Determinar se uma pessoa vai ficar em casa:
# 1.1. Desenvolver a "tabela_de_pontos" (variável; peso; nota; pontuação):
# 1.1.1. Desenvolver o vetor "variavel";
# 1.1.2. Desenvolver o vetor "peso";
# 1.1.3. Desenvolver o vetor "nota";
# 1.1.4. Desenvolver o vetor "pontuacao";
# 1.2. Encontrar a pontuação geral "resultado";
# 1.3. Exibir mensagem "Você deve ir de carro" se o resultado for >= 70%, caso ontrário,
#      "você deve ir de moto".
# 1.4. Exportar a tabela_de_pontos como csv2 se o resultado for >= 70%.

# Variável    Escala(E)   Peso(P)  Nota(N)    Pontuação    Descrição
#  cafe        0 ou 1       0,05    f(E)         P*N       Bolhas concentradas no centro indicam chuva, pois a pressão atmosférica elevada puxa as bolhas para os cantos e pressão alta é sinal que não irá chover.
#  passaros    0 ou 1       0,05    f(E)         P*N       Pássaros que normalmente voam em alta altitude voando em altitudes baixas, pode ser sinal de que uma tempestade está a caminho.
#  lua         0 ou 1       0,05    f(E)         P*N       Halo (anel) em torno da lua, ocorre quando a luz da lua reflete em nuvens muito altas, caracterizadas por ar quente e umidade, dois compostos básicos para ocorrência de chuvas.
#  grilos      0 ou 1       0,10    f(E)         P*N       Muitos grilos cantando aceleradamente é sinal de chuva a caminho. Quando o canto dos grilos se torna mais acelerado é sinal que a temperatura está em queda.
#  vacas       0 ou 1       0,05    f(E)         P*N       Os gados sentem a queda de pressão e procuram deitar em lugares abrigados da chuva.
#  cigarras    0 ou 1       0,10    f(E)         P*N       Após uma algazzarra se as cigarras pararem brutamente pode significar chuva, pois o barulho vem das suas asas e elas não podem movimentar as asas quando a umidade está muito alta.
#  arco-iris   0 ou 1       0,30    f(E)         P*N       O Arco-íris aparece minutos antes ou depois da chuva. O arco-íris se forma quando as luzes do sol refletem em gotículas de água no céu e por isso são um bom indicador de alta umidade e de que a chuva está por perto.
#  nuvens      0 ou 1       0,20    f(E)         P*N       Nuvens em formato de torre, ou seja, que se estendam verticalmente da baixa até as altas altitudes. Esse tipo de nuvem é chamado de Cumulonimbus e normalmente indica tempestades a caminho.
#  umidade     0 ou 1       0,05    f(E)         P*N       Pode-se notar a umidade de uma maneira simples. Algumas plantas enrolam suas folhas em caso de alta umidade. Outra forma é você observar o estado de cabelos encaracolados, se o cabelo ficar frisado, é sinal de que a umidade está alta. Este método é bastante antigo, o primeiro instrumento de medição da umidade do ar foi feito a partir de um fio de cabelo tensionado.
#  sentidos    0 ou 1       0,05    f(E)         P*N       Sentir na pele o aumento da umidade e através do olfato o "cheiro da chuva", que é na verdade o cheiro de ozônio, gás que desce para as baixas altitudes durante períodos de baixa pressão e que tem aroma levemente adocicado.

# 1.1.1. Desenvolver o vetor "variavel":
variavel <- c("cafe", "passaros", "lua", "grilos", "vacas", "cigarras", "arco-iris",
              "nuvens", "umidade", "sentidos")
variavel

# 1.1.2. Desenvolver o vetor "peso":
peso <- c(0.05, 0.05, 0.05, 0.10, 0.05, 0.10, 0.30, 0.20, 0.05, 0.05)
peso

# 1.1.3. Desenvolver o vetor "nota":
n_cafe <- sample(0:1, 1, replace = TRUE)
n_passaros <- sample(0:1, 1, replace = TRUE)
n_lua <- sample(0:1, 1, replace = TRUE)
n_grilos <- sample(0:1, 1, replace = TRUE)
n_vacas <- sample(0:1, 1, replace = TRUE)
n_cigarras <- sample(0:1, 1, replace = TRUE)
n_arcoiris <- sample(0:1, 1, replace = TRUE)
n_nuvens <- sample(0:1, 1, replace = TRUE)
n_umidade <- sample(0:1, 1, replace = TRUE)
n_sentidos <- sample(0:1, 1, replace = TRUE)

nota <- c(n_cafe, n_passaros, n_lua, n_grilos, n_vacas, n_cigarras, n_arcoiris,
          n_nuvens, n_umidade, n_sentidos)
nota

# 1.1.4. Desenvolver o vetor "pontuacao":
p_cafe <- peso[1]*n_cafe
p_passaros <- peso[2]*n_passaros
p_lua <- peso[3]*n_lua
p_grilos <- peso[4]*n_grilos
p_vacas <- peso[5]*n_vacas
p_cigarras <- peso[6]*n_cigarras
p_arcoiris <- peso[7]*n_arcoiris
p_nuvens <- peso[8]*n_nuvens
p_umidade <- peso[9]*n_umidade
p_sentidos <- peso[10]*n_sentidos

pontuacao <- c(p_cafe, p_passaros, p_lua, p_grilos, p_vacas, p_cigarras, p_arcoiris,
               p_nuvens, p_umidade, p_sentidos)
pontuacao

# 1.1. Desenvolver a "tabela_de_pontos":
tabela_de_pontos <- data.frame(variavel, peso, nota, pontuacao)
tabela_de_pontos

# 1.2. Encontrar a pontuação geral "resultado":
resultado <- sum(tabela_de_pontos[,"pontuacao"])*100
resultado

# 1.3. Exibir mensagem "Você deve ficar em casa, pois vai chover" se resultado for >= 70%.
if(resultado >= 70) {
  cat("Você deve ir de carro")
  # 1.4. Exportar a tabela_de_pontos como csv2:
  write.csv2(tabela_de_pontos, "ficar_em_casa.csv")
} else {
  cat("Você deve ir de moto")
}

#--------------- Adaptação da Atividade if para "if e else" (termino) --------------------#


#- Estrutura de condição ifelse:

#-- Exercício:
#   Tome a=31 e b=30. Desenvolva um script para analisar qual dos dois é o maior.
#   Exibir na tela: "a é maior" ou "b é maior"

#**** Com if e else ******#
#                         #
#   if (a > b) {          #
#     cat("a é maior")    #
#   } else {              #
#     cat("b é maior")    #
#   }                     #
#                         #
#*************************#

a <- 31
b <- 30

ifelse(a > b, "a é maior", "b é maior")