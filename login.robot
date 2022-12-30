*** Settings ***
Documentation    Basic Search Functionality
Resource    ${RESOURCES}/login_keywords.robot
Resource    ${RESOURCES}/test_data.robot

*** Variables ***
${RESOURCES}  ./resources
${URL}  https://www.saucedemo.com/

*** Test Cases ***
Verify succesful login
    [Documentation]    This test case verifies logging for ${USER1.name}
    [Tags]    Login

    Open Website
    Input Login     ${USER1.name}
    Input Password  ${USER1.password}
    Login
    Product Title Element Is Visible
    Product Title Is Shown


Verify unsuccesful login
    [Documentation]    This test case verifies logging for ${USER2.name}
    [Tags]    Login

    Open Website
    Input Login     ${USER2.name}
    Input Password  ${USER2.password}
    Login
    Login Error Message Is Shown
    Login Error Button Is Shown