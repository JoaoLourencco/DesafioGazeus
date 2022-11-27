*** Settings ***
Documentation                Login Page

Library                      Browser


*** Keywords ***
Go To Home Page
    New Page                    https://www.jogatina.com/
    Wait For Elements State     xpath=//h1[contains(text(),'Jogue Online com Seus Amigos no Jogatina! Divirta-se com Buraco, Truco, Tranca, Poker e muito mais.')]

Go To Login
    Go To Home Page
    Click                       xpath=//a[contains(text(),'Entrar')]
       

Submit Credentials
    [Arguments]        ${email}    ${password}
    
    Fill Text         css=input[placeholder=E-mail]       ${email}
    Fill Text         css=input[placeholder=Senha]        ${password}
    Click             css=input[value=Entrar]


Email Alert Required
    Get Element         id=email-login-error
    

Password Alert Required
    Get Element         id=senha-login-error
    

invalid email alert
    [Arguments]                    ${expected_message}

    ${invalid_email}
    ...        Set Variable
    ...        xpath=//label[contains(text(),"${expected_message}")]
    Wait For Elements State        ${invalid_email} 
                    


invalid email or password alert
    [Arguments]                     ${expected_message}

    ${credential_invalid}
    ...        Set Variable    
    ...        xpath=//span[contains(text(),"${expected_message}")]
    Wait For Elements State        ${credential_invalid}
    Wait For Elements State        xpath=//h3[contains(text(),'Para continuar, acesse sua conta ou faça um cadastro rápido no Jogatina.com')]


    





    
