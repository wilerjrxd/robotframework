*** Settings ***
Documentation  Product related actions
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  Go  # css=#nav-search > form > div.nav-right > div > input
    Wait Until Page Contains  results for "Ferrari 458"

Select Product from Search Results
    Click Link  xpath=/html/body/div[1]/div[1]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div[2]/div[3]/div/div[1]/h2/a
    Wait Until Page Contains  Back to results

Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart

Begin Checkout
    Click Link  id=hlb-ptc-btn-native
    Page Should Contain Element  continue
    Element Text Should Be  continue  Continue