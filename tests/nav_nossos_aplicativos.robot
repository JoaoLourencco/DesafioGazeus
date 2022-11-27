*** Settings ***
Documentation            Test cases do navbar na parte Nossos aplicativos

Resource        ../resources/main.resource
Resource        ../resources/pages/navbar.resource


Test Setup       Start Test
Test Teardown    Finish Test



*** Test Cases ***

Deve acessar o item Nossos aplicativos
    Go to Home
    Acess to     Nossos aplicativos
