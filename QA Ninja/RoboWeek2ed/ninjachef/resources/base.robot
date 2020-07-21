***Settings***
Documentation   Aqui temos a estrutura de base do projeto, o Selenium é importado aqui

Library     SeleniumLibrary

Resource    elements.robot      # importa mapa de elementos
Resource    kws.robot
Resource    helpers.robot

***Variables***
${base_url}     http://ninjachef-qaninja-io.umbler.net/

***Keywords***
## Hooks
Open Session
    Open Browser    about:blank     chrome

Close Session
    Capture Page Screenshot     #20200721 Screenshot Capture
    Close Browser