*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =  xpath=/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div[1]/form/div/div/div/h1

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element  ${SIGNIN_MAIN_HEADING}
    Element Text Should Be  ${SIGNIN_MAIN_HEADING}  Sign In

Login With Valid Credentials
    [Arguments]  ${username}  ${password}
    Wait Until Page Contains  Email
    Fill "Username" Field  ${username}
    Click "Continue" Button
    Wait Until Page Contains  Password
    Fill "Password" Field  ${password}
    Click "Sign-In" Button

Fill "Username" Field
    [Arguments]  ${username}

Fill "Password" Field
    [Arguments]  ${password}

Click "Continue" Button
    Click Button  Continue
    Log  Clicking "Continue" Button

Click "Sign In" Button
    Click Button  Sign-In
    Log  Clicking "Sign-In" button