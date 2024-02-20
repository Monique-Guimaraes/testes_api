*** Settings ***
Library            RequestsLibrary

*** Variables ***

*** Test Cases ***

Primeiro GET no faker API
    Create Session    alias=testes_api    url=https://fakerapi.it/api/v1/
    ${RESPONSE}    GET On Session    alias=testes_api     url=addresses?_quantity=1

    Log To Console    ${RESPONSE}
    Log To Console    ${RESPONSE.text}

     ${RESPONSE}    GET On Session    alias=testes_api     url=books?_quantity=1

    Log To Console    ${RESPONSE}
    Log To Console    ${RESPONSE.text}

    ${return}    Session Exists    alias=testes_api 
    Log To Console    ${return}

    Delete All Sessions

    ${return}    Session Exists    alalias=testes_api 