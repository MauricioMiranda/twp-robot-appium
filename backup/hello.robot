*** Settings ***

Library        hello.py

# SemiCodeless

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${resultado}=            Hello Robot            Maurício Miranda
    Should Be Equal          ${resultado}           Olá, Maurício Miranda.

