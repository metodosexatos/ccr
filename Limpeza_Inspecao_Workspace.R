#########################
##### M�todos Exatos ####
# www.metodosexatos.com #
#########################

# Autor: Andr� Santos | andre@metodosexatos.com.br
# 04/03/2019

# citation()

# To cite R in publications use:

# R Core Team (5018). R: A language and environment for statistical
# computing. R Foundation for Statistical Computing, Vienna,
# Austria. URL https://www.R-project.org/.

#####################################################################

# Limpeza e inspe��o do ambiente R

#- Comandos para inspecionar o ambiente R:

ls() # listar os objetos atuais no ambiente do R
getwd() # ver o diret�rio atual
# selecionar o diret�rio de trabalho:
setwd("C:/Users/andre/OneDrive/Documentos/PROJETOS/Metodos Exatos/Cursos/Curso6_Bioestatistica_com_R_Trilha/6.02_Curso_Computacao_com_R/Scripts_R_Curso_Computacao_com_R")
list.files(getwd())

#- Comandos limpar o ambiente de trabalho

# Crtl + l # limpa o Console do R
rm(var1, var2) # remover os objetos selecionados
rm(list = ls()) # remove todos os objetos

# Tipos de ajuda no R

help(mean)          # Ajuda sobre uma fun��o espec�fica
?mean               # Ajuda sobre uma fun��o espec�fica
example(mean)       # Demonstra como utilizar a fun��o
demo(graphics)      # Demonstra��o de gr�ficos no R
demo()              # Retorna uma lista de demonstra��es dispon�veis
apropos("mea")      # Retorna uma lista de op��es com a palavra
help.search("mean") # Pesquisa manuais do R no sistema
help.start()        # Fornece referencias de materiais na web



