*** Settings ***
Documentation            Test cases de login

Resource        ../resources/main.resource
Resource        ../resources/pages/perfil.resource
Resource        ../resources/pages/gerenciar_conta.resource


Test Setup       Start Test
Test Teardown    Finish Test


*** Test Cases ***

Acessar o gerenciamento de conta
    Go to perfil
    Access manage account

Editar nome completo
    Go to perfil
    Access manage account
    Submit name and last name    João Paulo    Lourenço
    
Não deve permitir editar nome completo com o campo primeiro nome vazio
    Go to perfil
    Access manage account
    Submit name and last name    ${EMPTY}      Lourenço
    Message error

Não deve permitir editar nome completo com o campo sobrenome vazio
    Go to perfil
    Access manage account
    Submit name and last name    João Paulo      ${EMPTY} 
    Message error

Não deve permitir editar nome completo com o campo nome e sobrenome vazio
    Go to perfil
    Access manage account
    Submit name and last name    ${EMPTY}      ${EMPTY} 
    Message error

Não deve permitir editar nome completo com caracteres invalidos no campo nome e sobrenome
    Go to perfil
    Access manage account
    Submit name and last name    123#%*@--_      123#%*@--_ 
    Error Notification


Alterar dados do perfil
    Go to perfil
    Access manage account
    Fill in profile information    Luziania    Goiás
    Change successfully


#Bug no cenário abaixo.
Não deve permitir editar cidade e estado com caracteres inválidos
    Go to perfil
    Access manage account
    Fill in profile information       123@#.-!    61994582119
    Change successfully


    
    




    