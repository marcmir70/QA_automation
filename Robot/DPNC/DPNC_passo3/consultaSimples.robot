***Settings***
Documentation   Consulta Simples Nacional por Optantes

Library     SeleniumLibrary

***Test Cases***
Consulta Simples Nacional
    Dado que acesso a página principal
    Quando submeto o CNPJ "05358827000195"
    Então devo ser autenticado

***Keywords***
Dado que acesso a página principal
    Open Browser    http://www8.receita.fazenda.gov.br/SimplesNacional/aplicacoes.aspx?id=21    chrome

Quando submeto o CNPJ "${cnpj}"
    Input Text      TEXTBOX     ${cnpj}
    Click Element       CONSULTAR

Então devo ser autenticado
    Wait Page Until Contains Element    ELEMENT 
