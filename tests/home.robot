***Settings***

Resource    ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session


***Test Cases***
Deve acessar a tela Principal

    Login 
    Click Hamburguer
    Click Element                   id=com.mercanet.android:id/img_logo_drawer
    Wait Until Element is Visible    id=com.mercanet.android:id/menu_activity_image