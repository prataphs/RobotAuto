*** Settings ***
Documentation           This is a simple test with Robot Framework
Library                 Selenium2Library

*** Variables ***
${SERVER}               https://www.google.com/
${BROWSER}              chrome
${DELAY}                0
 
 
*** Keywords ***
Open Browser To Login Page
    Open Browser        ${SERVER}   ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}
 
 
*** Test Cases ***
Valid Login
    Open Browser To Login Page
    [Teardown]    Close Browser