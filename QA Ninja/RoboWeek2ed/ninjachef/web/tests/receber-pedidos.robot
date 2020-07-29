***Settings***
Documentation       Receber pedidos
...     Sendo um cozinheiro que possui produtos no dashboard
...     Quero receber pedidos de preparo dos meus produtos
...     Para que eu possa enviá-los aos meus clientes

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Receber novo pedido
# dois atores: cozinheiro (em 1ª pessoa) e o cliente (em 3ª pessoa)
    Dado que "eduguedes@gmail.com" é minha conta de cozinheiro
    E "fernando@bol.com.br" é o email do meu cliente
    E que "Carne de Jaca Louca" está cadastrado no meu dashboard
    QUando o cliente solicita o preparo desse prato
    Então devo receber uma notificação de pedido desse produto
    E posso aceitar ou rejeitar esse pedido

***Keywords***
Dado que "${email_cozinheiro}" é minha conta de cozinheiro
    Set Test Variable       ${email_cozinheiro}

E "${email_cliente}" é o email do meu cliente
    Set Test Variable       ${email_cliente}

E que "${produto}" está cadastrado no meu dashboard
    Set Test Variable       ${produto}
