***Settings***
Documentation       Testes do Login no NinjaChef Mobile
# pode colocar história do usuário, descrição curta
# - como o projeto pedir!

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Acessar cardapio
    Dado que desejo comer "Carne Branca"    # motivação
    Quando submeto meu email "marcelomiranda70@gmmail.com"
    Então devo ver os pratos do tipo escolhido