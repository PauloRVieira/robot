*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          Welcome     Paulo
    #Log To Console      ${result}
    Should Be Equal     ${result}   Olá Paulo, bem vindo ao curso báscio de Robot Framework!
    