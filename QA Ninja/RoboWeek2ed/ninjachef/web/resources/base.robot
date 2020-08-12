***Settings***
Documentation   Aqui temos a estrutura de base do projeto, o Selenium é importado aqui

Library     SeleniumLibrary
Library     RequestsLibrary
Library     OperatingSystem

Resource    elements.robot      # importa mapa de elementos
Resource    kws.robot
Resource    helpers.robot

***Variables***
${base_url}     http://ninjachef-qaninja-io.umbler.net/
${api_url}      http://ninjachef-api-qaninja-io.umbler.net
# em URL de api é bom não ter barra ( / ) ao final do caminho

***Keywords***
## Hooks
Open Session
    Open Browser    about:blank     chrome

Close Session
    Capture Page Screenshot     #20200721 Screenshot Capture
    Close Browser