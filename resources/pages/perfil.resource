*** Settings ***
Documentation        Navbar Page

Library              Browser


Resource    dash.resource

*** Keywords ***

Go to perfil
    Acess to perfil
    Wait For Elements State    xpath=//img[contains(@class,'avatar avatar-l')]

Acess to perfil
    Go to Home
    Click        xpath=//li[contains(@class,'nav-item--profile')]
    Click        xpath=//a[contains(text(),'Ver meu Perfil')]

Validate perfil page
    Wait For Elements State        xpath=//img[contains(@class,'avatar avatar-l')]

Acess to Amigos
    Click                          xpath=//a[@ga-event-action='Menu - Amigos']
    Wait For Elements State        xpath=//span[contains(text(),'Convites Recebidos')]

Acess to Convites
    Click                          xpath=//a[@ga-event-action='Menu - Convites']
    Wait For Elements State        xpath=//h2[contains(text(),'Convites Recebidos')]

Acess to Pedidos de Amizade
    Click                           xpath=//a[@ga-event-action='Menu - Pedidos de Amizade']
    Wait For Elements State         xpath=//h2[contains(text(),'Pedidos de Amizade')]

Acess to Ranking
    Click                           xpath=//a[@ga-event-action='Menu - Ranking']
    Wait For Elements State         xpath=//h2[contains(text(),'Ranking de outros jogos')]


               