***Settings***
Documentation       palavras-chave do projeto

***Keywords***
Dado que desejo comer "${prato}"    # apesar desta ordem, informamos email primeiro
    Set Test Variable   ${prato}

Quando submeto meu email "${email}"
    Wait Until Page Contains        Buscar Prato    10  # checkpoint para aguardar/validar elemento na tela
    Input Text      accessibility_id=emailInput     ${email}
    Input Text      accessibility_id=plateInput     ${prato}
    Click Text      Buscar Prato

Então devo ver a lista de pratos por tipo
    Wait Until Page Contains    Fome de ${prato}
    Sleep   5