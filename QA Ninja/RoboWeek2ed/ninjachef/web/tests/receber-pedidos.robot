***Settings***
Documentation       Receber pedidos
...     Sendo um cozinheiro que possui produtos no dashboard
...     Quero receber pedidos de preparo dos meus produtos
...     Para que eu possa enviá-los aos meus clientes

Resource        ../resources/base.robot

Library         RequestsLibrary
Library         OperatingSystem

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Receber novo pedido
# dois atores: cozinheiro (em 1ª pessoa) e o cliente (em 3ª pessoa)
    Dado que "eduguedes@gmail.com" é minha conta de cozinheiro
    E "fernando@bol.com.br" é o email do meu cliente
    E que "Carne de Jaca Louca" está cadastrado no meu dashboard
    Quando o cliente solicita o preparo desse prato
    Então devo receber uma notificação de pedido desse produto
    E posso aceitar ou rejeitar esse pedido

***Keywords***
# 1º step: login do cozinheiro na API
Dado que "${email_cozinheiro}" é minha conta de cozinheiro
    Set Test Variable       ${email_cozinheiro}

    &{headers}=       Create Dictionary     Content-Type=application/json
    &{payload}=       Create Dictionary     email=${email_cozinheiro}

# próximas 3 linhas baseadas em https://github.com/MarketSquare/robotframework-requests#readme
    Create Session    api         http://ninjachef-api-qaninja-io.umbler.net
    ${resp}=          Post Request   api        /sessions   data=${payload}     headers=${headers}
    Status Should Be  200            ${resp}

#    Log To Console      ${resp.text} # token do pedido
##    Log To Console      ${resp.json()['_id']}   # token do eduguedes - do PostMan em Headers pro Login
    ${token_cozinheiro}     Convert To String   ${resp.json()['_id']}
    Set Test Variable       ${token_cozinheiro}

# 2º step: Login do cliente final na API
E "${email_cliente}" é o email do meu cliente
    Set Test Variable       ${email_cliente}

    # estrutura copiada da keyword "Dado que "${email_cozinheiro}" é minha conta de cozinheiro"
    &{headers}=       Create Dictionary     Content-Type=application/json
    &{payload}=       Create Dictionary     email=${email_cliente}

    Create Session    api            http://ninjachef-api-qaninja-io.umbler.net
    ${resp}=          Post Request   api        /sessions   data=${payload}     headers=${headers}
    Status Should Be  200            ${resp}

    ${token_cliente}        Convert To String       ${resp.json()['_id']}
    Set Test Variable       ${token_cliente}

# 3º step: Garante produto cadastrado
E que "${produto}" está cadastrado no meu dashboard
    Set Test Variable       ${produto}

    &{payload}=     Create Dictionary   name=${produto}     plate=Tipo      price=20.00
    ${image_file}=  Get Binary File     ${EXECDIR}/resources/images/Pizza-Refeição.jpg
    &{files}=       Create Dictionary   thumbnail=${image_file}

    &{headers}=     Create Dictionary   user_id=${token_cozinheiro}

    Create Session    api            http://ninjachef-api-qaninja-io.umbler.net
    ${resp}=          Post Request   api        /products   files=${files}      data=${payload}     headers=${headers}
    Status Should Be  200            ${resp}

    ${produto_id}           Convert To String       ${resp.json()['_id']}
    Set Test Variable       ${produto_id}

    # e ainda logando via Selenium
    Go To       ${base_url}

    Input Text      ${CAMPO_EMAIL}    ${email_cozinheiro}
    Click Element   ${BOTAO_ENTRAR}
#    Sleep           5

    Wait Until Page Contains Element        ${DIV_DASH}

# 4º step: simula validação do pedido pelo cliente [ antes de fazer o pedido devo estar logado 
#                         no dashboard como cozinheiro porque a mensagem aparece em tempo real]
Quando o cliente solicita o preparo desse prato
    # estrutura copiada da keyword "Dado que "${email_cozinheiro}" é minha conta de cozinheiro"
    &{headers}=       Create Dictionary     Content-Type=application/json   user_id=${token_cliente}
    &{payload}=       Create Dictionary     payload=Dinheiro

    Create Session    api            http://ninjachef-api-qaninja-io.umbler.net
    ${resp}=          Post Request   api        /products/${produto_id}/orders   data=${payload}     headers=${headers}
    Status Should Be  200            ${resp}

    ${token_cozinheiro}     Convert To String   ${resp.json()['_id']}
    Set Test Variable       ${token_cozinheiro}

    # Temporário
    Sleep       5
