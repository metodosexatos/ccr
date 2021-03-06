#############################
####### M�todos Exatos ######
### www.metodosexatos.com ###
#############################

# Autor: Andr� Santos | andre@metodosexatos.com.br
# 13/03/2019

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

# Estruturas de condi��o e repeti��o

#- Estrutura de condi��o if:

# Fun��o para exibir na tela a frase "fico em casa" quando "a" for igual a "chover".
a <- c("chover")

if(a == "chover") {
  cat("fico em casa")
}

# Fun��o exibe na tela "fico em casa" se a chance de chover for 70% ou mais.

chance <- 80

if(chance >= 70) {
  cat("fico em casa")
}

# Fun��o exibe na tela "fico em casa" toda vez que a amostra aleat�rio for maior
# ou igual a 70%.

chance1 <- sample(1:100, 1, replace = TRUE)
chance1

if(chance1 >= 70) {
  cat("fico em casa")
}

#-------------------------- Atividade if (inicio) --------------------------------#

# 1.Determinar se uma pessoa vai ficar em casa:
# 1.1. Desenvolver a "tabela_de_pontos" (vari�vel; peso; nota; pontua��o):
# 1.1.1. Desenvolver o vetor "variavel";
# 1.1.2. Desenvolver o vetor "peso";
# 1.1.3. Desenvolver o vetor "nota";
# 1.1.4. Desenvolver o vetor "pontuacao";
# 1.2. Encontrar a pontua��o geral "resultado";
# 1.3. Exibir mensagem "Voc� deve ficar em casa, pois vai chover" se resultado for >= 70%.
# 1.4. Exportar a tabela_de_pontos como csv2.

# Vari�vel    Escala(E)   Peso(P)  Nota(N)    Pontua��o    Descri��o
#  cafe        0 ou 1       0,05    f(E)         P*N       Bolhas concentradas no centro indicam chuva, pois a press�o atmosf�rica elevada puxa as bolhas para os cantos e press�o alta � sinal que n�o ir� chover.
#  passaros    0 ou 1       0,05    f(E)         P*N       P�ssaros que normalmente voam em alta altitude voando em altitudes baixas, pode ser sinal de que uma tempestade est� a caminho.
#  lua         0 ou 1       0,05    f(E)         P*N       Halo (anel) em torno da lua, ocorre quando a luz da lua reflete em nuvens muito altas, caracterizadas por ar quente e umidade, dois compostos b�sicos para ocorr�ncia de chuvas.
#  grilos      0 ou 1       0,10    f(E)         P*N       Muitos grilos cantando aceleradamente � sinal de chuva a caminho. Quando o canto dos grilos se torna mais acelerado � sinal que a temperatura est� em queda.
#  vacas       0 ou 1       0,05    f(E)         P*N       Os gados sentem a queda de press�o e procuram deitar em lugares abrigados da chuva.
#  cigarras    0 ou 1       0,10    f(E)         P*N       Ap�s uma algazzarra se as cigarras pararem brutamente pode significar chuva, pois o barulho vem das suas asas e elas n�o podem movimentar as asas quando a umidade est� muito alta.
#  arco-iris   0 ou 1       0,30    f(E)         P*N       O Arco-�ris aparece minutos antes ou depois da chuva. O arco-�ris se forma quando as luzes do sol refletem em got�culas de �gua no c�u e por isso s�o um bom indicador de alta umidade e de que a chuva est� por perto.
#  nuvens      0 ou 1       0,20    f(E)         P*N       Nuvens em formato de torre, ou seja, que se estendam verticalmente da baixa at� as altas altitudes. Esse tipo de nuvem � chamado de Cumulonimbus e normalmente indica tempestades a caminho.
#  umidade     0 ou 1       0,05    f(E)         P*N       Pode-se notar a umidade de uma maneira simples. Algumas plantas enrolam suas folhas em caso de alta umidade. Outra forma � voc� observar o estado de cabelos encaracolados, se o cabelo ficar frisado, � sinal de que a umidade est� alta. Este m�todo � bastante antigo, o primeiro instrumento de medi��o da umidade do ar foi feito a partir de um fio de cabelo tensionado.
#  sentidos    0 ou 1       0,05    f(E)         P*N       Sentir na pele o aumento da umidade e atrav�s do olfato o "cheiro da chuva", que � na verdade o cheiro de oz�nio, g�s que desce para as baixas altitudes durante per�odos de baixa press�o e que tem aroma levemente adocicado.

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

# 1.2. Encontrar a pontua��o geral "resultado":
resultado <- sum(tabela_de_pontos[,"pontuacao"])*100
resultado

# 1.3. Exibir mensagem "Voc� deve ficar em casa, pois vai chover" se resultado for >= 70%.
if(resultado >= 70) {
  cat("Voc� deve ficar em casa, pois vai chover")
}

# 1.4. Exportar a tabela_de_pontos como csv2:
write.csv2(tabela_de_pontos, "ficar_em_casa.csv")

#-------------------------- Atividade if (termino) -------------------------------#

#- Estrutura de condi��o if e else:

#-- Exerc�cio 1:
#   Tome a=31 e b=30. Desenvolva um script para analisar qual dos dois � o maior.
#   Exibir na tela: "a � maior que b" ou "b � maior que a"

a <- 31
b <- 30

if (a > b) {
  cat("a � maior que b")
} else {
  cat("b � maior que a")
}

if (a < b) {
  cat("b � maior que a")
} else {
  cat("a � maior que b")
}


#-- Exerc�cio 2:
#   Tome valores aleatorios para x e y. Desenvolva um script para analisar qual dos dois � o maior.
#   Exibir na tela: "a � maior que b" ou "b � maior que a"


x <- sample(1:9999, 1)
y <- sample(1:9999, 1)

if (x > y) {
  cat("x � maior que y")
} else {
  cat("y � maior que x")
}


#--------------- Adapta��o da Atividade if para "if e else" (inicio) --------------------#

# 1.Determinar se uma pessoa vai ficar em casa:
# 1.1. Desenvolver a "tabela_de_pontos" (vari�vel; peso; nota; pontua��o):
# 1.1.1. Desenvolver o vetor "variavel";
# 1.1.2. Desenvolver o vetor "peso";
# 1.1.3. Desenvolver o vetor "nota";
# 1.1.4. Desenvolver o vetor "pontuacao";
# 1.2. Encontrar a pontua��o geral "resultado";
# 1.3. Exibir mensagem "Voc� deve ir de carro" se o resultado for >= 70%, caso ontr�rio,
#      "voc� deve ir de moto".
# 1.4. Exportar a tabela_de_pontos como csv2 se o resultado for >= 70%.

# Vari�vel    Escala(E)   Peso(P)  Nota(N)    Pontua��o    Descri��o
#  cafe        0 ou 1       0,05    f(E)         P*N       Bolhas concentradas no centro indicam chuva, pois a press�o atmosf�rica elevada puxa as bolhas para os cantos e press�o alta � sinal que n�o ir� chover.
#  passaros    0 ou 1       0,05    f(E)         P*N       P�ssaros que normalmente voam em alta altitude voando em altitudes baixas, pode ser sinal de que uma tempestade est� a caminho.
#  lua         0 ou 1       0,05    f(E)         P*N       Halo (anel) em torno da lua, ocorre quando a luz da lua reflete em nuvens muito altas, caracterizadas por ar quente e umidade, dois compostos b�sicos para ocorr�ncia de chuvas.
#  grilos      0 ou 1       0,10    f(E)         P*N       Muitos grilos cantando aceleradamente � sinal de chuva a caminho. Quando o canto dos grilos se torna mais acelerado � sinal que a temperatura est� em queda.
#  vacas       0 ou 1       0,05    f(E)         P*N       Os gados sentem a queda de press�o e procuram deitar em lugares abrigados da chuva.
#  cigarras    0 ou 1       0,10    f(E)         P*N       Ap�s uma algazzarra se as cigarras pararem brutamente pode significar chuva, pois o barulho vem das suas asas e elas n�o podem movimentar as asas quando a umidade est� muito alta.
#  arco-iris   0 ou 1       0,30    f(E)         P*N       O Arco-�ris aparece minutos antes ou depois da chuva. O arco-�ris se forma quando as luzes do sol refletem em got�culas de �gua no c�u e por isso s�o um bom indicador de alta umidade e de que a chuva est� por perto.
#  nuvens      0 ou 1       0,20    f(E)         P*N       Nuvens em formato de torre, ou seja, que se estendam verticalmente da baixa at� as altas altitudes. Esse tipo de nuvem � chamado de Cumulonimbus e normalmente indica tempestades a caminho.
#  umidade     0 ou 1       0,05    f(E)         P*N       Pode-se notar a umidade de uma maneira simples. Algumas plantas enrolam suas folhas em caso de alta umidade. Outra forma � voc� observar o estado de cabelos encaracolados, se o cabelo ficar frisado, � sinal de que a umidade est� alta. Este m�todo � bastante antigo, o primeiro instrumento de medi��o da umidade do ar foi feito a partir de um fio de cabelo tensionado.
#  sentidos    0 ou 1       0,05    f(E)         P*N       Sentir na pele o aumento da umidade e atrav�s do olfato o "cheiro da chuva", que � na verdade o cheiro de oz�nio, g�s que desce para as baixas altitudes durante per�odos de baixa press�o e que tem aroma levemente adocicado.

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

# 1.2. Encontrar a pontua��o geral "resultado":
resultado <- sum(tabela_de_pontos[,"pontuacao"])*100
resultado

# 1.3. Exibir mensagem "Voc� deve ficar em casa, pois vai chover" se resultado for >= 70%.
if(resultado >= 70) {
  cat("Voc� deve ir de carro")
  # 1.4. Exportar a tabela_de_pontos como csv2:
  write.csv2(tabela_de_pontos, "ficar_em_casa.csv")
} else {
  cat("Voc� deve ir de moto")
}

#--------------- Adapta��o da Atividade if para "if e else" (termino) --------------------#


#- Estrutura de condi��o ifelse:

#-- Exerc�cio:
#   Tome a=31 e b=30. Desenvolva um script para analisar qual dos dois � o maior.
#   Exibir na tela: "a � maior" ou "b � maior"

#**** Com if e else ******#
#                         #
#   if (a > b) {          #
#     cat("a � maior")    #
#   } else {              #
#     cat("b � maior")    #
#   }                     #
#                         #
#*************************#

a <- 31
b <- 30

ifelse(a > b, "a � maior", "b � maior")