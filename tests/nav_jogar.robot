*** Settings ***
Documentation            Test cases do navbar na parte do Jogar 

Resource        ../resources/main.resource
Resource        ../resources/pages/navbar.resource


Test Setup       Start Test
Test Teardown    Finish Test


*** Test Cases ***

Deve escolher um jogo através do menu Jogar
    Go to Home
    Acess to game         Dominó                
    Confirm page game     Dominó

#Caso de teste dinâmico,
#para acessar a página de qualquer outro jogo da lista,
#basta alterar o valor da keyword acesso to game
#e confirm page game para o nome do jogo a sua escolha.