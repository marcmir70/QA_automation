***Settings***
Documentation       Receber pedidos
...     Sendo um cozinheiro que possui produtos no dashboard
...     Quero receber pedidos de preparo dos meus produtos
...     Para que eu possa enviá-los aos meus clientes

Resource        ../resources/base.robot

Library         RequestsLibrary

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

    &{headers}=       Create Dictionary     Content-Type=application/json
    &{payload}=       Create Dictionary     email=${email_cozinheiro}

# próximas 3 linhas baseadas em https://github.com/MarketSquare/robotframework-requests#readme
    Create Session    api         http://ninjachef-api-qaninja-io.umbler.net
    ${resp}=          Post Request   api        /sessions   data=${payload}     headers=${headers}
    Status Should Be  200            ${resp}

#    Log To Console      ${resp.text} # token do pedido
    Log To Console      ${resp.json()['_id']}   # token do eduguedes - do PostMan em Headers pro Login

E "${email_cliente}" é o email do meu cliente
    Set Test Variable       ${email_cliente}

E que "${produto}" está cadastrado no meu dashboard
    Set Test Variable       ${produto}
