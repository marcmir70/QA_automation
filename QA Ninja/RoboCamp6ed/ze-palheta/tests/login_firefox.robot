***Settings***
Documentation       Login

Resource    ../resources/kws_firefox.robot

# BDD Comportamento (Gherkin: Dado, Quando, Então) 
# só é BDD ou ATDD se o desenvolvedor ler a especificação e desenvolver orientado a ela

***Test Cases***
Login do Administrador
    Acesso a página Login
    Submeto minhas credenciais  admin@zepalheta.com.br  pwd123
    Devo ver a área logada

Senha Incorreta
    [tags]  inv_login
    Acesso a página Login
    Submeto minhas credenciais  admin@zepalheta.com.br  pww112
    Devo ver um toaster com mensagem    Ocorreu um erro ao fazer login, cheque as credenciais.

Senha em branco
    [tags]  inv_login
    Acesso a página Login
    Submeto minhas credenciais  admin@zepalheta.com.br  ${EMPTY}
    Devo ver um toaster com mensagem    O campo senha é obrigatório
    
Email em branco
    [tags]  inv_login
    Acesso a página Login
    Submeto minhas credenciais    ${EMPTY}  pww112
    Devo ver um toaster com mensagem    O campo email é obrigatório!

Email e senha em branco
    [tags]  inv_login
    Acesso a página Login
    Submeto minhas credenciais    ${EMPTY}  ${EMPTY}
    Devo ver um toaster com mensagem    Os campos email e senha não foram preenchidos!
