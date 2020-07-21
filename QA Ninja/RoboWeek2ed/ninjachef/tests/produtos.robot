***Settings***
Documentation   Cadastro de produtos/pratos
...             Sendo um cozinheiro amador
...             Quero cadastrar meus melhores pratos
...             Para que eu possa cozinha-los para outras pessoas

Resource        ../resources/base.robot

Test Setup      Login Session   marcelomiranda70@gmail.com
Test Teardown   Close Session

***Variables***
&{frango}=      img=FrangoAoCurry.jpg   nome=Frango ao Curry   tipo=Carnes Brancas     preco=15.00


***Test Cases***
Novo prato
    Dado que "${frango}" é um dos meus pratos
    Quando faço o cadastro desse item
    Então devo ver este prato no meu dashboard