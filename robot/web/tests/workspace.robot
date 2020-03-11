*** Settings ***
Resource    base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

Página inicial rhsoft
    Go To           http://tomcat.tdxrh.ws:8080/rhsoft/rhsoft.html?schema=trf_qa
    
    # espera até aparecer o input para inserir o usuário
    Wait Until Page Contains Element        css:input[id='userItem']                ${timeout}