*** Settings ***
Documentation            Arquivo principal do projeto

Library                 Browser



Resource               pages/login.resource
Resource               pages/dash.resource



*** Keywords ***

Start Test    
    New Browser    headless=False    browser=chromium

Finish Test
       
    Take Screenshot
    