*** Settings ***
Documentation   A test suite with tests for different sorting cases
...
...             This test follows the example using keywords from
...             the SeleniumLibrary
Library         SeleniumLibrary

*** Test Cases ***
Sort product name (A to Z)
    #open browser
    Open Browser    https://www.saucedemo.com/  chrome
    #set window size
    Maximize Browser Window
    #check in login page
    Page Should Contain Element     login-button
    #type username
    Input Text      user-name   standard_user
    #type password
    Input Password      password    secret_sauce
    #click login button
    Click Button    login-button
    #select A to Z in sort
    Select From List By Value    xpath:/html/body/div/div/div/div[1]/div[2]/div[2]/span/select      az
    #check that A to Z is really selected in drop down box
    Element Attribute Value Should Be    xpath:/html/body/div/div/div/div[1]/div[2]/div[2]/span/select   value   az
    #check if truly sorted
    Element Attribute Value Should Be    xpath:/html/body/div/div/div/div[2]/div/div/div/div[1]/div[1]/a/img    src    https://www.saucedemo.com/static/media/sauce-backpack-1200x1500.34e7aa42.jpg
    #close browser
    [Teardown]      Close Browser

Sort product name (Z to A)
    #open browser
    Open Browser    https://www.saucedemo.com/  chrome
    #set window size
    Maximize Browser Window
    #check in login page
    Page Should Contain Element     login-button
    #type username
    Input Text      user-name   standard_user
    #type password
    Input Password      password    secret_sauce
    #click login button
    Click Button    login-button
    #select Z to A in sort
    Select From List By Value    xpath:/html/body/div/div/div/div[1]/div[2]/div[2]/span/select      za
    #check that Z to A is really selected in drop down box
    Element Attribute Value Should Be    xpath:/html/body/div/div/div/div[1]/div[2]/div[2]/span/select   value   za
    #check if truly sorted
    Element Attribute Value Should Be    xpath:/html/body/div/div/div/div[2]/div/div/div/div[1]/div[1]/a/img    src    https://www.saucedemo.com/static/media/red-tatt-1200x1500.e32b4ef9.jpg
    #close browser
    [Teardown]      Close Browser

Sort product price (low to high)
    #open browser
    Open Browser    https://www.saucedemo.com/  chrome
    #set window size
    Maximize Browser Window
    #check in login page
    Page Should Contain Element     login-button
    #type username
    Input Text      user-name   standard_user
    #type password
    Input Password      password    secret_sauce
    #click login button
    Click Button    login-button
    #select low to high in sort
    Select From List By Value    xpath:/html/body/div/div/div/div[1]/div[2]/div[2]/span/select      lohi
    #check that low to high is really selected in drop down box
    Element Attribute Value Should Be    xpath:/html/body/div/div/div/div[1]/div[2]/div[2]/span/select   value   lohi
    #check if truly sorted
    Element Attribute Value Should Be    xpath:/html/body/div/div/div/div[2]/div/div/div/div[1]/div[1]/a/img    src    https://www.saucedemo.com/static/media/red-onesie-1200x1500.1b15e1fa.jpg
    #close browser
    [Teardown]      Close Browser

Sort product price (high to low)
    #open browser
    Open Browser    https://www.saucedemo.com/  chrome
    #set window size
    Maximize Browser Window
    #check in login page
    Page Should Contain Element     login-button
    #type username
    Input Text      user-name   standard_user
    #type password
    Input Password      password    secret_sauce
    #click login button
    Click Button    login-button
    #select high to low in sort
    Select From List By Value    xpath:/html/body/div/div/div/div[1]/div[2]/div[2]/span/select      hilo
    #check that high to low is really selected in drop down box
    Element Attribute Value Should Be    xpath:/html/body/div/div/div/div[1]/div[2]/div[2]/span/select   value   hilo
    #check if truly sorted
    Element Attribute Value Should Be    xpath:/html/body/div/div/div/div[2]/div/div/div/div[1]/div[1]/a/img    src    https://www.saucedemo.com/static/media/sauce-pullover-1200x1500.439fc934.jpg
    #close browser
    [Teardown]      Close Browser



