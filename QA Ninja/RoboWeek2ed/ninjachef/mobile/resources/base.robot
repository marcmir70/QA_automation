***Settings***
Documentation       base para abrir uma sessão com o appium server

Library     AppiumLibrary

***Keywords***
# Hooks
Open Session
    Open Application        https://localhost:4723/wd/hub
    ...     automationName=UiAutomator2
    ...     platformName=Android
    ...     deviceName=Emulator
    ...     app=${EXECDIR}/app/ninjachef.apk
    ...     udid=emulator-5554
    ...     adbExecTimeout=60000

Close Session
    Close Application