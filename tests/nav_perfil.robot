*** Settings ***
Documentation            Test cases do navbar na parte Meu Perfil

Resource        ../resources/main.resource
Resource        ../resources/pages/navbar.resource
Resource        ../resources/pages/perfil.resource


Test Setup       Start Test
Test Teardown    Finish Test

*** Test Cases ***

Deve acessar Perfil
    Go to perfil
    
Deve acessar Amigos
    Go to perfil
    Acess to Amigos

Deve acessar Convites
    Go to perfil
    Acess to Convites

Deve acessar Pedidos de Amizade
    Go to perfil
    Acess to Pedidos de Amizade

Deve cessar Ranking
    Go to perfil
    Acess to Ranking




    