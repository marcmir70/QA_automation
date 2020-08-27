***Settings***
Documentation       SAS_rede
# sulamerica.com.br >> https://portal.sulamericaseguros.com.br/home.htm

Library             SeleniumLibrary

***Keywords***
    Dado que sou um usuário anônimo
    Quando busco rede credenciada
      E não sou cliente
      E informo Plano 
        | Plano        |
        |--------------|
        | PME          |
        | Empresarial  |
        | Administrado |
        | Adesão       |
        | PME Ma
      E indico Acomodação
        | Plano:PME                   | Plano:Empresarial           | Plano:Administrado   | Plano:Adesão               | Plano:PME Mais              |
        | Acomodação                  | Acomodação                  | Acomodação           | Acomodação                 | Acomodação                  |
        |-----------------------------|-----------------------------|----------------------|----------------------------|-----------------------------|
        | Clássico Apartamento        | Clássico Apartamento        | Clássico Apartamento | Clássico Apartamento       | Clássico Apartamento        |
        | Clássico Enfermaria         | Clássico Enfermaria         | Clássico Enfermaria  | Clássico Enfermaria        | Clássico Enfermaria         |
        | Direto CAMP VCS Apartamento | Direto CAMP VCS Apartamento |                      |                            | Direto CAMP VCS Apartamento |
        | Direto CAMP VCS Enfermaria  | Direto CAMP VCS Enfermaria  |                      |                            | Direto CAMP VCS Enfermaria  |
        | Direto CWB STc Apartamento  | Direto CWB STc Apartamento  |                      | Direto CWB STc Apartamento | Direto CWB STc Apartamento  |
        | Direto CWB STc Enfermaria   | Direto CWB STc Enfermaria   |                      | Direto CWB STc Enfermaria  | Direto CWB STc Enfermaria   |
        | Direto JP NSn Apartamento   | Direto JP NSn Apartamento   |                      |                            | Direto JP NSn Apartamento   |
        | Direto JP NSn Enfermaria    | Direto JP NSn Enfermaria    |                      |                            | Direto JP NSn Enfermaria    |
        | Direto REC II Apartamento   | Direto REC II Apartamento   |                      | Direto REC II Apartamento  | Direto REC II Apartamento   |
        | Direto REC II Enfermaria    | Direto REC II Enfermaria    |                      | Direto REC II Enfermaria   | Direto REC II Enfermaria    |
        | Direto Rio II Apartamento   | Direto Rio II Apartamento   |                      | Direto Rio II Apartamento  | Direto Rio II Apartamento   |
        | Direto Rio II Enfermaria    | Direto Rio II Enfermaria    |                      | Direto Rio II Enfermaria   | Direto Rio II Enfermaria    |
        | Direto SP BCX Apartamento   | Direto SP BCX Apartamento   |                      | Direto SP BCX Apartamento  | Direto SP BCX Apartamento   |
        | Direto SP BCX Enfermaria    | Direto SP BCX Enfermaria    |                      | Direto SP BCX Enfermaria   | Direto SP BCX Enfermaria    |
        |                             | Direto SP II Apartamento    |                      | Direto SP II Apartamento   | Direto SP II Apartamento    |
        |                             | Direto SP II Enfermaria     |                      | Direto SP II Enfermaria    | Direto SP II Enfermaria     |
        | Especial 100                | Especial 100                | Especial 100         | Especial 100               | Especial 100                |
        | Exato Apartamento           | Exato Apartamento           | Exato Apartamento    | Exato Apartamento          | Exato Apartamento           |
        | Exato Enfermaria            | Exato Enfermaria            | Exato Enfermaria     | Exato Enfermaria           | Exato Enfermaria            |
        | Executivo                   | Executivo                   | Executivo            | Executivo                  | Executivo                   |
        | Prestige                    | Prestige                    | Prestige             |                            | Prestige                    |
        |                             |                             |                      | Ideal                      |                             |
        | Referência                  | Referência                  | Referência           | Referência                 | Referência                  |
        |                             |                             |                      | Vital 100 BA               |                             |
        |                             |                             |                      | Vital 100 DF               |                             |
        |                             |                             |                      | Vital 100 SP               |                             |
        |                             |                             |                      | Vital 200 SP               |                             |
    Então devo ver janela de consulta da rede

***Test Cases***