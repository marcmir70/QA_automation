***Settings***
Library     SeleniumLibrary 

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