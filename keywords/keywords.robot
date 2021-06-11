*** Keywords ***
Open browser and go to login page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Click accept cookie

Input username
    [Arguments]    ${username}
    SeleniumLibrary.Wait Until Element Is Visible    ${dict_locator}[inp_username]
    SeleniumLibrary.Input Text    ${dict_locator}[inp_username]    ${username}

Input password
    [Arguments]    ${password}
    SeleniumLibrary.Wait Until Element Is Visible    ${dict_locator}[inp_password]
    SeleniumLibrary.Input Password    ${dict_locator}[inp_password]    ${password}

Click button login
    SeleniumLibrary.Click Button    ${dict_locator}[btn_submit]

Click accept cookie
    SeleniumLibrary.Click Button    ${dict_locator}[btn_accept_cookie]

Verify login unsuccess
    SeleniumLibrary.Wait Until Page Contains    ${dict_message}[email_or_password_incorrect]

Click close modal
    SeleniumLibrary.Click Button    ${dict_locator}[btn_close_modal]

Input username, password and click login
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input password    ${password}
    Click button login
