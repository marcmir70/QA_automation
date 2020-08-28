***Settings***
Documentation       Cadastro de clientes

Resource    ../resources/base.robot

Test Setup          Login Session
Test Teardown       Finish Session    

***Test Cases***
Novo cliente
# cenário-chave de especificação bem construída
# - melhor escrever pensando no negócio e de forma colaborativa!
    Dado que acesso o formulário de cadastro de clientes
    Quando faço a inclusão desse cliente:
    ...     Bon Jovi    00000001406     Rua dos Bugs, 1000      11999888777
    # Então devo ver a notificação:   Cliente cadastrado com sucesso!

# note que não é feito da forma abaixo - que seria uma escrita tradicional de caso de teste!
    # Quando preencho o campo nome com    Bon Jov
    # E preencho o campo cpf com          00000001406
    # E preencho o campo endereço com     Rua dos Bugs, 1000
    # E preencho o campo telefone com     11999999999
    # E clico no botão Cadastrar

***Keywords***
Dado que acesso o formulário de cadastro de clientes
    # para que não busque os elementos ainda na página de login...
    # Sleep       2
    Wait Until Element is Visible       ${NAV_CUSTOMERS}      5
    Click Element                       ${NAV_CUSTOMERS}
    Wait Until Element is Visible       ${CUSTOMERS_FORM}     5
    Click Element                       ${CUSTOMERS_FORM}

    #temporário
    Sleep       5
Quando faço a inclusão desse cliente:
    [Arguments]     ${name}     ${cpf}      ${address}      ${phone_number}

    Register New Customer     ${name}     ${cpf}      ${address}      ${phone_number}
    Sleep       10
# Então devo ver a notificação:   Cliente cadastrado com sucesso!

