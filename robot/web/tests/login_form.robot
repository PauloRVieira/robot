*** Settings ***
Resource    base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases ***
Login com sucesso
    Go To           http://tomcat.tdxrh.ws:8080/rhsoft/rhsoft.html?schema=trf_qa
    
    # espera até aparecer o input para inserir o usuário
    Wait Until Page Contains Element        css:input[id='userItem']                ${timeout}
    
    # insere usuário e senha
    Input Text                              css:input[id='userItem']                ${user}
    Input Text                              css:input[id='passItem']                ${pwsd}
    Click Element                           css:button[id='btlogin']

    # espera até aparecer a seleção de unidade organizacional
    Wait Until Page Contains Element        css:span[class='slick-column-name']     ${timeout}
    
    Click Element                           css:button[id='login']

    Wait Until Page Contains                ${user}                                 ${timeout}
    
    Page Should Contain                     ${user}