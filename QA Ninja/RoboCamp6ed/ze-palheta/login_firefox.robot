***Settings***
Documentation       Login

Library     SeleniumLibrary 

# BDD Comportamento (Gherkin: Dado, Quando, Então) 
# só é BDD ou ATDD se o desenvolvedor ler a especificação e desenvolver orientado a ela

***Test Cases***
Login do Administrador
    Acesso a página Login
    Submeto minhas credenciais  admin@zepalheta.com.br  pwd123
    Devo ver a área logada

***Keywords***
# robotframework.org / LIBRARIES - EXTERNAL - SeleniumLibrary / [github] keyword documentation
Acesso a página Login
    # Open Browser    http://zepalheta-web:3000      chrome
    Open Browser    http://zepalheta-web:3000      firefox

Submeto minhas credenciais
    [Arguments]     ${email}    ${password}

    Input Text      id:txtEmail                     ${email}
    Input Text      css:input[placeholder=Senha]    ${password}
    Click Element   xpath://button[text()='Entrar']
    Maximize Browser Window  

Devo ver a área logada
    # Wait Until Element Is Visible      //strong[text()='Sair']     5
    Wait Until Page Contains    Aluguéis    5
    Close Browser