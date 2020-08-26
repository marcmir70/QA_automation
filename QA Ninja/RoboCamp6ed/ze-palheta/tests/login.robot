***Settings***
Documentation       Login

Resource    ../resources/base.robot

#Gancho - executa keywords antes da execução de todos step de cada caso de teste
Test Setup          Start Session

#Gancho - executa keywords após execução de todos step de cada caso de teste
Test Teardown       Finish Session

***Test Cases***
Login do Administrador
    Acesso a página Login
    Submeto minhas credenciais      admin@zepalheta.com.br      pwd123
    Devo ver a área logada
