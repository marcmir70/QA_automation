***Settings***
Documentation       Login Tentativa

Resource    ../resources/base_firefox.robot

#Gancho - executa keywords antes da execução de todos step de cada caso de teste
Test Setup          Start Session

#Gancho - executa keywords após execução de todos step de cada caso de teste
Test Teardown       Finish Session

Test Template       Tentativa de Login

***Keywords***
Tentativa de Login
    [Arguments]     ${input_email}      ${input_senha}      ${output_message}

    Acesso a página Login
    Submeto minhas credenciais          ${input_email}      ${input_senha}
    Devo ver toaster com mensagem       ${output_message}

***Test Cases***
Senha Incorreta             admin@zepalheta.com.br      pww112      Ocorreu um erro ao fazer login, cheque as credenciais.
Senha em branco             admin@zepalheta.com.br      ${EMPTY}    O campo senha é obrigatório
Email em branco             ${EMPTY}                    pww112      O campo email é obrigatório!
Email e senha em branco     ${EMPTY}                    ${EMPTY}    Os campos email e senha não foram preenchidos!
Login incorreto             admin&gmail.com             abc123      Ocorreu um erro ao fazer login, cheque as credenciais.
