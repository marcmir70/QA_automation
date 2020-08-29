***Keywords***
## Login
Acesso a página Login
    Go To       http://zepalheta-web:3000

Submeto minhas credenciais
    [Arguments]     ${email}    ${password}

    Login With      ${email}    ${password}

Devo ver a área logada
    # Wait Until Element Is Visible      //strong[text()='Sair']     5
    Wait Until Page Contains    Aluguéis    5

Devo ver toaster com mensagem
    [Arguments]     ${expected_message}

    Wait Until Element Contains     ${TOASTER_ERROR}    ${expected_message}

## Customers
Dado que acesso o formulário de cadastro de clientes
    Wait Until Element is Visible       ${NAV_CUSTOMERS}      5
    Click Element                       ${NAV_CUSTOMERS}
    Wait Until Element is Visible       ${CUSTOMERS_FORM}     5
    Click Element                       ${CUSTOMERS_FORM}

Quando faço a inclusão desse cliente:
    [Arguments]     ${name}     ${cpf}      ${address}      ${phone_number}

    Register New Customer     ${name}     ${cpf}      ${address}      ${phone_number}
    Sleep   5


Então devo ver a notificação:
    [Arguments]     ${expect_notice} 

    Wait Until Element Contains     ${TOASTER_SUCCESS}    ${expect_notice}    5
    Sleep   5
