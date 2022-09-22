***Settings***

Resource    ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${TIPOPED}        xpath=//android.widget.TextView[contains(@text, '01 - Venda Normal')]
${CONDPAGTO}      xpath=//android.widget.TextView[contains(@text, '175 - À VISTA - 0 dias')]
${FORMAPAGTO}     xpath=//android.widget.TextView[contains(@text, '3 - Duplicata')] 
${PESQITENS}      xpath=//android.widget.LinearLayout[@content-desc="PesquisaItens"]
${GOITENS}        xpath=//android.widget.TextView[contains(@text, 'Exibindo 0 iten(s)')] 
${GRUPOPROD}      xpath=//android.widget.TextView[contains(@text, 'Famílias')] 
${BTNCONFIRMAR}   xpath=//android.widget.TextView[@content-desc="Confirmar"]
${BTNCONFIRMAR2}   xpath=//android.widget.Button[@content-desc="Confirmar"]
${QTD}            xpath=//android.widget.LinearLayout[1]/android.widget.EditText   
${ABAENTREGA}     xpath=//android.widget.LinearLayout[@content-desc="Entrega"]/android.widget.TextView
${ENDALT}         xpath=//android.widget.TextView[contains(@text, 'Endereço Alternativo')]
${ENDCLI}          xpath=//android.widget.TextView[contains(@text, 'Endereço do Cliente')] 
${CONFPED}         xpath=//android.widget.Button[@content-desc="Confirma"]
${BTNFINPED}        xpath=//android.widget.LinearLayout/android.widget.Button[1]



#${teste}          id=android:id/button2 
***Test Cases***
Deve gravar um pedido

    ##Principal 
    Login     
    Go to Sales

    #Capa do pedido
    Click Text  Tipo de Pedido
    Wait Until Page Contains Element    ${TIPOPED} 
    Click Element                       ${TIPOPED} 
    Click Text  Condição de Pagamento
    Wait Until Page Contains Element    ${CONDPAGTO}  
    Click Element                       ${CONDPAGTO}  
    Swipe By Percent                    77.31      68.43    71.57   53.12
    Wait Until Page Contains Element    ${FORMAPAGTO}  
    Click Element                       ${PESQITENS} 
    
    Discard itens
    #Adiciona item
    Wait Until Page Contains Element    ${GOITENS} 
    Click Element                       ${GOITENS}  
    Wait Until Page Contains Element    ${GRUPOPROD}
    Click Element                       ${GRUPOPROD} 
    Wait Until Page Contains Element    xpath=//android.widget.TextView[contains(@text, 'BLACK')]      
    Click Element                       xpath=//android.widget.TextView[contains(@text, 'BLACK')] 

    Click Element                       ${BTNCONFIRMAR2}
    Wait Until Page Contains Element    xpath=//android.widget.TextView[contains(@text, '8841.70 - AD DISPLAY MODULO ARTDECO')] 
    Click Element                       xpath=//android.widget.TextView[contains(@text, '8841.70 - AD DISPLAY MODULO ARTDECO')] 
                    
    Wait Until Page Contains Element    ${QTD}    10s
    Input Text                          ${QTD}     2
    Click Element                       ${BTNCONFIRMAR2}

    Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.ImageView

    #Aba Entrega
    Click Element                       ${ABAENTREGA}

    Wait Until Page Contains Element    ${ENDALT} 
    Click Element                       ${ENDALT} 
    Wait Until Page Contains Element    ${ENDCLI} 
    Click Element                       ${ENDCLI}

    Wait Until Page Contains Element    ${CONFPED}            
    Click Element                       ${CONFPED}     
    
    Wait Until Page Contains Element    ${BTNFINPED}     10s
    Click Element                       ${BTNFINPED}    
    Sleep       4s

    
    



