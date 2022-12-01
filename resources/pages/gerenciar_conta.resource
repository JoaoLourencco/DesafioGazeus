*** Settings ***
Documentation                Login Page

Library                      Browser
Library                      String



*** Keywords ***

Access manage account
    Click                         xpath=//a[@ga-event-action='Editar informações']
    Wait For Elements State       xpath=//h2[@class='titulo'][contains(text(),'Dados Cadastrais')]

Submit name and last name
    [Arguments]        ${name}    ${last_name}

    Click              xpath=//a[contains(@data-height,'530')]
    
    Fill Text         css=input[name=firstName]           ${name}
    Fill Text         css=input[name=lastName]            ${last_name}
    Click             css=input[type=submit]

Message error
    Get Element         xpath=//label[contains(text(),'Este campo é requerido.')]    

Error Notification
    Wait For Elements State    xpath=//div[@class='alerta alerta-erro']
    Get Element         xpath=//div[@class='alerta alerta-erro']


Fill in profile information
    Click                      xpath=//a[contains(@data-height,'490')]   
    Wait For Elements State    xpath=//h1[@class='md-card__title'][contains(text(),'Alteração de Perfil')]
    
    [Arguments]        ${Cidade}    ${Estado}   

    Fill Text        id=campo-new-city    ${Cidade}
    Fill Text        id=campo-new-state    ${Estado}
    
    Click            xpath=//input[@type='submit']
    
Change successfully
    Wait For Elements State    xpath=//span[contains(text(),'Perfil alterado com sucesso')]


    
    


    
       
    





