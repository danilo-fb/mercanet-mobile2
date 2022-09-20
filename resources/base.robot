***Settings***

Library     AppiumLibrary

Resource    helpers.robot
***Keywords***
Open Session

    Open Application        http://127.0.0.1:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Emulator
    ...                 app=C:\\qaninja\\mercanet-mobile\\app\\mercanet.apk  #EXECDIR CAMINHO ONDE FICA O DIRETÓRIO DA APLICAÇÃO
    ...                      appActivity="com.mercanet.android.application.activities.BasesDisponiveisActivity"
     ...                       appPackage="com.mercanet.android"
    

Close Session

    Capture Page Screenshot
    Close Application