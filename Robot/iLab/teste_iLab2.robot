***Settings***
Documentation       Desafio da Automação iLab
    
Library             SeleniumLibrary

***Keywords***
Dado que acesso o buscador
    Open Browser        https://www.google.com      chrome

Quando pesquiso por termo
    [Arguments]     ${text_search}

    Wait Until Element is Visible       css:input[type=text]      2
    Input Text                          css:input[type=text]      ${text_search}

# tentando xpath no lugar de Press Keys
## no Chrome a página do Google apresenta diferentes identificações 
## no browser acessado por automatização e no brwoser aberto pelo usuário
## com isso as cláusulas abaixo não funcionaram...
    Wait Until Element is Visible       xpath://*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]
    Click Element                       xpath://*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]
    # Press Keys                          css:input[type=text]      ENTER


Então devo encontrar referências relacionadas
    [Arguments]     ${result_1}      ${result_2}        ${result_3}
    Wait Until Page Contains        ${result_1}      2
    Wait Until Page Contains        ${result_2}      2
    Wait Until Page Contains        ${result_3}      2

    Close Browser

***Test Cases***
Teste iLab
    Dado que acesso o buscador
    Quando pesquiso por termo       iLab Quality
    Então devo encontrar referências relacionadas
    ...     iLAB: Home Page      iLAB | LinkedIn      Vagas Abertas | iLAB Quality