*** Settings ***
Documentation            Base archive where we have some configs

Library     AppiumLibrary

Resource       env.resource

Resource       screens/${PLATFORM}/home.resource

*** Keywords ***
Start session

    Run Keyword If      '${PLATFORM}' == 'android'
    ...       Open Application    http://localhost:4723
    ...       automationName=uiautomator2
    ...       platformName=Android
    ...       deviceName=Emulator
    ...       udid=emulator-5554
    ...       autoGrantPermissions=true
    ...       app=${EXECDIR}/apps/nubank.apk

    Run Keyword If      '${PLATFORM}' == 'ios'
    ...       Open Application    http://localhost:4723
    ...       automationName=XCUITest
    ...       platformName=iOS
    ...       deviceName=iPhone 15
    ...       udid=9A325A21-3580-4254-8C2A-EB2C37CEBCF3
    ...       autoAcceptedAlerts=true
    ...       app=${EXECDIR}/apps/nubank.app
    ...       platformVersion=17.4
    ...       bundleId=com.nubank
    
Finish session
    Capture Page Screenshot
    Close Application