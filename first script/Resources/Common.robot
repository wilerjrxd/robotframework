*** Settings ***
Documentation  Generic actions
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  firefox

End Web Test
    Sleep  3s
    Close Browser