***Settings***
Documentation       Cadastro de clientes

Resource    ../resources/base.robot

Test Setup          Login Session
Test Teardown       Finish Session    

***Test Cases***
Novo cliente
    Dado que acesso o formulário de cadastro de clientes
    Quando faço a inclusão desse cliente:
    ...     Bon Jovi    00000001406     Rua dos Bugs, 1000      11999888777
    Então devo ver a notificação:   Cliente cadastrado com sucesso!