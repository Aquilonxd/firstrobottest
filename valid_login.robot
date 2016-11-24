 *** Settings ***
 Library    Selenium2Library
 Test Setup    Open Browser To Login Page
 Test Teardown    Close Browser

 *** Variables ***
 ${HOST}              localhost:7272    
 ${VALID_USERNAME}    demo
 ${VALID_PASSWORD}    mode
 ${WELCOME_TITLE}     Welcome Page

 *** Test Cases ***
 Valid Login
    Open Browser To Login Page
    Input Username    ${VALID_USERNAME}
    Input Password    ${VALID_PASSWORD}
    Log In
    Welcome Page Should Be Open
    [Setup]    Open Browser To Login Page
    [Teardown]    Close Browser    

 *** Keywords ***
 Open Browser To Login Page
    Open Browser    ${HOST}    chrome

 Input Username
    [Arguments]    ${username}
    Input Text    username_field    ${VALID_USERNAME}

 Input Password
    [Arguments]    ${password}
    Input Text    password_field    ${VALID_PASSWORD}

 Log In
    Click Button    LOGIN

 Welcome Page Should Be Open
    Title Should Be    ${WELCOME_TITLE}