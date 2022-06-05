*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${URL}                    https://www.amazon.com.br
${MENU_ELETRONICOS}    

*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome

Fechar o navegador
    Close Browser    

Acessar a home page do site Amazon.com.br
    Go To   url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}