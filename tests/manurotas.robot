***Settings***

Resource    ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session


***Test Cases***
Deve acessar a tela de Manutenção de Rotas

    Login
    Wait Until Element is Visible   class= android.widget.ImageButton   timeout=10 
    Click Element   class= android.widget.ImageButton   
    Click Text      Manutenção de Rotas
     Wait Until Page Contains   Rotas DB