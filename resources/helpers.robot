***Settings***
Documentation   Aqui teremos as KWs Helpers


***Variables***
${TXTSERVIDOR}      id=com.mercanet.android:id/configuracao_inicial_activity_txtServidor
${TXTUSER}          id=com.mercanet.android:id/configuracao_inicial_activity_txtUsuarioConexao 
${TXTPWD}           id=com.mercanet.android:id/configuracao_inicial_activity_txtSenhaConexao 
${BTNSINC}          id=com.mercanet.android:id/configuracao_inicial_activity_btnSincronizar                 
${CLICKCLI}         xpath=//android.widget.TextView[contains(@text, 'Carteira de Clientes')]
${GOCLI}            xpath=//android.widget.TextView[contains(@text, 'Clientes')] 
${LISTCLI}          id=com.mercanet.android:id/layout_list_clients  
${SLCCLI}           xpath=//android.widget.TextView[contains(@text, 'CECRIMA COMERCIAL LTDA')] 
${BARINFPED}        id=com.mercanet.android:id/pedido_activity_pagerTabStrip


***Keywords***

No Connect Server

    Wait Until Page Contains    Informe o endereço do servidor, usuário e a senha para realizar a sincronização.       
    
    Input Text                  ${TXTSERVIDOR}     http://localhost/main     
    Press Keycode               66                             
    Input Text                  ${TXTUSER}         danilo
    Press Keycode               66  
    Input Text                  ${TXTPWD}          123456
    Press Keycode               66      
    Click Element               ${BTNSINC}         
    
    Wait Until Element is Visible   id=android:id/message  


Connect Server

    Wait Until Page Contains    Informe o endereço do servidor, usuário e a senha para realizar a sincronização.       
    
    Input Text                  ${TXTSERVIDOR}     https://192.168.1.2/main     
    Press Keycode               66                             
    Input Text                  ${TXTUSER}         danilo
    Press Keycode               66  
    Input Text                  ${TXTPWD}          123456
    Press Keycode               66      
    Click Element               ${BTNSINC}               
    Wait Until Page Contains     Sincronização      5

Login 

    
    Press Keycode                   66      
    #Input Text                  
    Wait Until Page Contains Element    id=com.mercanet.android:id/login_txtSenha   10s   
    Input Text                   id=com.mercanet.android:id/login_txtSenha     123456  
    Press Keycode                   66
    Press Keycode                   66
    ${close}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//android.widget.Button[contains(@text, 'FECHAR')] 
    Run Keyword If    ${close}    Click Element   xpath=//android.widget.Button[contains(@text, 'FECHAR')] 

    #Click Button            id=com.mercanet.android:id/login_btnEntrar

    #Wait Until Element is Visible      class= android.widget.ImageButton  


    

Go to Sales
    Wait Until Element is Visible   class= android.widget.ImageButton    10s
    Click Element                   class= android.widget.ImageButton  
    Click Text                      Carteira de Clientes
    Click Element                   ${GOCLI} 
    Wait Until Element is Visible   ${CLICKCLI}   
    Click Element                   ${CLICKCLI} 
    Wait Until Element is Visible   ${LISTCLI} 
    Long Press                      ${SLCCLI}                      
    Click Text                      Emitir Pedido
    Wait Until Element is Visible   ${BARINFPED}   10

Discard itens
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   xpath=//android.widget.Button[contains(@text, 'DESCARTAR ITENS')] 
    Run Keyword If    ${present}    Click Element   xpath=//android.widget.Button[contains(@text, 'DESCARTAR ITENS')] 


  