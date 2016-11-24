*** Settings ***
 Library          Selenium2Library

 *** Variables ***
 ${HOST}              http://localhost:7272
 ${VALID_USERNAME}    demo
 ${VALID_PASSWORD}    mode
 ${WELCOME_TITLE}     Welcome Page
 ${ERROR_PAGE}        Error Page

 *** Keywords ***
 Open Browser To Login Page
     Open Browser    ${HOST}

 Input Username
     [Arguments]    ${username}
     Input Text    username_field    ${username}

 Input Password
     [Arguments]    ${password}
     Input Text    password_field    ${password}

 Log In
     Click Button    LOGIN

 Welcome Page Should Be Open
     Title Should Be    ${WELCOME_TITLE}

 Error Page Should Be Open
     Title Should Be    ${ERROR_PAGE}