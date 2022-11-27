*** Settings ***
Documentation            Test cases de login

Resource       ../resources/main.resource


Test Setup       Start Test
Test Teardown    Finish Test


*** Test Cases ***

Deve logar com sucesso
    Go To Login
    Submit Credentials       testes.estudosjp@gmail.com    teste123
    User Logged in

Não deve logar sem email preenchido
    Go To Login
    Submit Credentials       ${EMPTY}    teste123
    Email Alert Required         

Não deve logar sem senha preenchida
    Go To Login
    Submit Credentials          testes.estudosjp@gmail.com      ${EMPTY}
    Password Alert Required        

Não deve logar sem email e senha preenchidos
    Go To Login
    Submit Credentials          ${EMPTY}     ${EMPTY}    
    Email Alert Required        
    Password Alert Required     

Não deve logar com email inválido
    Go To Login
    Submit Credentials     testes.estudos.gmail.com    teste 123
    invalid email alert    Forneça um e-mail válido.

Não deve logar com email não cadastrado
    Go To Login
    Submit Credentials                 joaopaulopexx@gmail.com   teste 123
    invalid email or password alert    Email ou senha incorretos. Por favor, tente novamente.    

Não deve logar com senha inválida
    Go To Login
    Submit Credentials                 testes.estudosjp@gmail.com    teste333
    invalid email or password alert    Email ou senha incorretos. Por favor, tente novamente.

#Recuperar senha
    #Go To Login
    #Wait For Elements State    //a[contains(@title,'Recuperar a sua senha')]
    #Click     //a[contains(@title,'Recuperar a sua senha')]
    


    


