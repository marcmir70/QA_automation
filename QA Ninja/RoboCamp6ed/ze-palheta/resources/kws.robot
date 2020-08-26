***Keywords***
Acesso a página Login
    Go To       http://zepalheta-web:3000

Submeto minhas credenciais
    [Arguments]     ${email}    ${password}

    Input Text      id:txtEmail                     ${email}
    Input Text      css:input[placeholder=Senha]    ${password}
    Click Element   xpath://button[text()='Entrar']

Devo ver a área logada
    # Wait Until Element Is Visible      //strong[text()='Sair']     5
    Wait Until Page Contains    Aluguéis    5

Devo ver toaster com mensagem
    [Arguments]     ${expected_message}

    Wait Until Element Contains    css:div[type=error] p    ${expected_message}
