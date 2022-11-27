*** Settings ***
Documentation            Test cases do navbar na parte Nossos jogos

Resource        ../resources/main.resource
Resource        ../resources/pages/navbar.resource


Test Setup       Start Test
Test Teardown    Finish Test

*** Test Cases ***

Deve acessar o item Nossos jogos
    Go to Home
    Acess to    Nossos jogos
    Confirm to all page games