*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =         id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =      Go
*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  ${TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}

Submit Search
    Click Button  ${TOPNAV_SEARCH_BUTTON}  #xpath=//*[@id="nav-search"]/form/div[2]/div/input