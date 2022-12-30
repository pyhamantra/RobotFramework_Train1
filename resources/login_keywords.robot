*** Settings ***
Resource    keywords.robot

*** Variables ***
${URL}  https://www.saucedemo.com/
${browser}  chrome

*** Keywords ***
Open Website
    open browser    ${URL}  ${browser}

Input Login
    [Arguments]     ${login}
    Input Text      id:user-name    ${login}

Input Password
    [Arguments]     ${password}
    Input Text      id:password     ${password}

Login
    Click Button    id:login-button

Product Title Element Is Visible
    element should be visible    class:title

Product Title Is Shown
    element text should be    class:title   PRODUCTS

Login Error Message Is Shown
    element should be visible    class:error-message-container

Login Error Button Is Shown
    element should be visible    class:error-button

