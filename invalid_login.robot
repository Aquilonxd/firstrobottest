 *** Settings ***
 Library    Selenium2Library
 Test Setup    Open Browser To Login Page
 

 *** Variables ***
 ${HOST}              localhost:7272    
 ${WELCOME_TITLE}     Welcome Page
 ${ERROR_PAGE}        Error Page

 *** Test Cases ***
 Invalid Login
    Input Username    Urho
    Input Password    Gekkonen
    Log In
    Error Page Should Be Open
 *** Keywords ***
 Open Browser To Login Page
    Open Browser    ${HOST}    chrome

 Input Username
    [Arguments]    ${username}
    Input Text    username_field    ${username}

 Input Password
    [Arguments]    ${password}
    Input Text    password_field    ${password}

 Log In
    Click Button    LOGIN

Error Page Should Be Open
    Title Should Be    ${ERROR_PAGE}