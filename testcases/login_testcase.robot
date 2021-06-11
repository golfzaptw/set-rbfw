*** Settings ***
Resource            ${CURDIR}/../resources/import.robot

Test Setup         keywords.Open browser and go to login page
Test Teardown      SeleniumLibrary.Close All Browsers

*** Test Cases ***
Login failed - Password incorrect
    Input username, password and click login    ${USERNAME_INCORRECT}    ${PASSWORD_INCORRECT}
    Verify login unsuccess
    Click close modal

