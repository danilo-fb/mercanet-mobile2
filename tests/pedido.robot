***Settings***

Resource    ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${TIPOPED}        xpath=//android.widget.TextView[contains(@text, '01 - Venda Normal')]
${CONDPAGTO}      xpath=//android.widget.TextView[contains(@text, '175 - À VISTA - 0 dias')]
${FORMAPAGTO}     xpath=//android.widget.TextView[contains(@text, '3 - Duplicata')] 
${PESQITENS}      xpath=//android.widget.LinearLayout[@content-desc="PesquisaItens"]
${BTNCONFIRMAR}   xpath=//android.widget.TextView[@content-desc="Confirmar"]
${BTNCONFIRMAR2}   xpath=//android.widget.Button[@content-desc="Confirmar"]
${QTD}            xpath=//android.widget.LinearLayout[1]/android.widget.EditText   
#${teste}          id=android:id/button2 
***Test Cases***
Deve gravar um pedido

    ##Principal 
    Login        
    Go to Sales
    #capa do pedido
    Click Text  Tipo de Pedido
    Wait Until Page Contains Element    ${TIPOPED} 
    Click Element                       ${TIPOPED} 
    Click Text  Condição de Pagamento
    Wait Until Page Contains Element    ${CONDPAGTO}  
    Click Element                       ${CONDPAGTO}  

    Swipe By Percent                     77.31      68.43    71.57   53.12
    Wait Until Page Contains Element    ${FORMAPAGTO}  
   
    Click Element                        ${PESQITENS}
    

     Wait Until Page Contains Element   xpath=//android.widget.TextView[contains(@text, 'Exibindo 0 iten(s)')] 
     Click Element                      xpath=//android.widget.TextView[contains(@text, 'Exibindo 0 iten(s)')] 

    Wait Until Page Contains Element    xpath=//android.widget.TextView[contains(@text, 'Famílias')] 
    Click Element                       xpath=//android.widget.TextView[contains(@text, 'Famílias')] 

     Wait Until Page Contains Element    xpath=//android.widget.TextView[contains(@text, 'BLACK')]      
     Click Element                       xpath=//android.widget.TextView[contains(@text, 'BLACK')] 

    Click Element                        ${BTNCONFIRMAR2}
    Wait Until Page Contains Element     xpath=//android.widget.TextView[contains(@text, '8841.70 - AD DISPLAY MODULO ARTDECO')] 
    Click Element                        xpath=//android.widget.TextView[contains(@text, '8841.70 - AD DISPLAY MODULO ARTDECO')] 
                    
    #Wait Until Page Contains             Quantidade    8s

     Wait Until Page Contains Element     ${QTD}    10s

     Input Text                           ${QTD}     2

    Click Element                        ${BTNCONFIRMAR2}

    Wait Until Page Contains Element     xpath=//android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.ImageView

    Click Element                       xpath=//android.widget.LinearLayout[@content-desc="Entrega"]/android.widget.TextView

     Wait Until Page Contains Element  xpath=//android.widget.TextView[contains(@text, 'Endereço Alternativo')] 
     Click Element                     xpath=//android.widget.TextView[contains(@text, 'Endereço Alternativo')]  


      Wait Until Page Contains Element  xpath=//android.widget.TextView[contains(@text, 'Endereço do Cliente')] 
     Click Element                     xpath=//android.widget.TextView[contains(@text, 'Endereço do Cliente')]    

     Wait Until Page Contains Element         xpath=//android.widget.Button[@content-desc="Confirma"]
     
     Click Element                      xpath=//android.widget.Button[@content-desc="Confirma"]         
    
     Wait Until Page Contains Element    xpath=//android.widget.LinearLayout/android.widget.Button[1]  10s
     Click Element                      xpath=//android.widget.LinearLayout/android.widget.Button[1]
    
    Wait Until Page Contains        Sucesso     10s



