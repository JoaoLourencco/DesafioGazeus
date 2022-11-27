*** Settings ***
Documentation        Navbar Page

Library              Browser



*** Keywords ***

Acess to game
    [Arguments]             ${expected_message}

    Click    xpath=//a[@class='header__nav-link'][contains(.,'Jogar')]

    ${game_name}
    
    ...        Set Variable    
    ...             xpath=//a[@class='header__subnav-link'][contains(.,'${expected_message}')]
    Click           xpath=//a[@class='header__subnav-link'][contains(.,'${expected_message}')]

    
Confirm page game
    [Arguments]           ${expected_message}

    ${game_name}
    ...                Set Variable
    ...                         xpath=//div[@class='logo'][contains(.,'${expected_message}')]
    Wait For Elements State     xpath=//div[@class='logo'][contains(.,'${expected_message}')]       
    
Acess to
    [Arguments]          ${expected_message}

    Click                            xpath=//a[@class='header__nav-link'][contains(text(),'${expected_message}')]
    
Confirm to all page games
    Wait For Elements State          xpath=//h1[contains(text(),'Nossos Jogos')]

Acess to support page
    Click                            xpath=//a[@class='header__subnav-link'][contains(text(),'Suporte')]

Validate support page
    New Page                         https://ajuda.jogatina.com/hc/pt-br
    Wait For Elements State          xpath=//h4[contains(text(),'Suporte ao usuário')]

Acess to user agreement page
    Click                            xpath=//a[@class='abrir-popup footer__nav-link'][contains(.,'Acordo de Utilização')]

Validade user agreement page
    New Page                        https://www.jogatina.com/site/terms   
    Wait For Elements State         xpath=//h1[contains(text(),'Acordo de Utilização')]

Acess to privacy policy
    Click                           xpath=//a[@class='header__subnav-link abrir-popup'][contains(.,'Política de privacidade')]                           
Validate privacy policy page
    New Page                        https://www.iubenda.com/privacy-policy/70989617
    Wait For Elements State         xpath=//h2[contains(text(),'Resumo da Política de privacidade')] 

Acess to site map
    Click                           xpath=//a[@class='header__subnav-link'][contains(.,'Mapa do site')]

Validate acess site map page
    Wait For Elements State         xpath=//h2[contains(text(),'Nossos Jogos')]
  
        
                     








        




    


    
