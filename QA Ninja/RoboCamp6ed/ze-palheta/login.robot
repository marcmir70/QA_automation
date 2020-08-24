***Settings***
Documentation       Login

Resource    ../resources/kws.robot

# BDD Comportamento (Gherkin: Dado, Quando, Então) 
# só é BDD ou ATDD se o desenvolvedor ler a especificação e desenvolver orientado a ela

***Test Cases***
Login do Administrador
    Acesso a página Login
    Submeto minhas credenciais  admin@zepalheta.com.br  pwd123
    Devo ver a área logada

Senha Incorreta
    Acesso a página Login
    Submeto minhas credenciais  admin@zepalheta.com.br  pww112
    Devo ver um toaster com mensagem    Ocorreu um erro ao fazer login, cheque as credenciais.
    

