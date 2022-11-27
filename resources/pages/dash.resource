*** Settings ***
Documentation        Dashboard Page

Library              Browser

             
Resource    login.resource

*** Keywords ***

User Logged in
    ${image_avatar}
    ...            Set Variable    xpath=//img[@class='avatar']
    Get Element    ${image_avatar}

Go to Home
    Go To Login
    Submit Credentials    testes.estudosjp@gmail.com    teste123
    User Logged in