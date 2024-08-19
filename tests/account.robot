*** Settings ***
Documentation           Account tests

Resource        ../resources/base.resource

Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
validate that is possible make a deposit using PIX
    
    Go to account
    Wait Until Page Contains     Depositar    10
    Click Element                xpath=//android.widget.HorizontalScrollView/android.widget.Button[1]
    Wait Until Page Contains     Pix    10
