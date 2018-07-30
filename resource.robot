*** Settings ***
Documentation       A resource file for reusable keywords and variables

Library             Selenium2Library


*** Variables ***
${BROWSER}          Chrome
${MAIN PAGE URL}    https://atomcream.com/
${DELAY}            0

*** Keywords ***
Open Atom Cream main page
    Open Browser  ${MAIN PAGE URL}  ${BROWSER}
    Set Selenium Speed  ${DELAY}

Assert that page is loaded
    [Arguments]  ${expected result}
    Execute JavaScript  return document.readyState; ${expected result}





