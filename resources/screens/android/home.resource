*** Settings ***
Documentation            Elements and actions of home screen

Library       AppiumLibrary

*** Keywords ***
Go to account
    Click Element    xpath=//*[@content-desc[contains(., 'Conta')]]