*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          http://tomcat.tdxrh.ws:8080/rhsoft/rhsoft.html?schema=trf_qa
${waiting}      css:div[class='ui-loader fa fa-spinner fa-pulse']
${loading}      css:div[class='pgbar']
${timeout}      3 min
${user}         RHSOFT_ADM
${pwsd}         SOFT

*** Keywords ***
Nova sessão
    Open Browser                    ${url}              headlesschrome

Encerra sessão
    Capture Page Screenshot
    Close Browser
