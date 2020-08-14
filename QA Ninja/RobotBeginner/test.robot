*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas-vindas
     ${result}=         welcome    Marcelo
#     Log To Console     ${result}
     Should be Equal    ${result}   Olá, Marcelo. Bem-vindo ao curso básico de Robot Framework!