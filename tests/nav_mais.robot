*** Settings ***
Documentation            Test cases do navbar na parte Mais 'Suporte, Acordo de utilização, Política de privacidade, Mapa do Site'

Resource        ../resources/main.resource
Resource        ../resources/pages/navbar.resource


Test Setup       Start Test
Test Teardown    Finish Test



*** Test Cases ***

Deve validar o acesso a página Suporte
    Go to Home
    Acess to     Mais
    Acess to support page
    Validate support page

Deve validar o acesso a página Acordo de utilização
    Go to Home
    Acess to    Mais
    Acess to user agreement page
    Validade user agreement page
    

Deve validar o acesso a página Política de privacidade
    Go to Home
    Acess to    Mais
    Acess to privacy policy
    Validate privacy policy page

Deve validar o acesso a página de Mapa do site
    Go to Home
    Acess to    Mais
    Acess to site map
    Validate acess site map page

    
    