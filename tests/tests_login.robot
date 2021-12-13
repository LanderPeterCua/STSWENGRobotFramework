*** Settings ***
Documentation   A test suite with tests for different login cases
...
...             This test follows the example using keywords from
...             the SeleniumLibrary
Library         SeleniumLibrary

*** Test Cases ***
Successful User Log In
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
    #check if in correct page
    Element Attribute Value Should Be    xpath:/html/body/div/div/div/div[2]/div/div/div/div[1]/div[1]/a/img    src    https://www.saucedemo.com/static/media/sauce-backpack-1200x1500.34e7aa42.jpg
    #close browser
    [Teardown]      Close Browser

Unsuccessful user log in by a locked out user
    #open browser
    Open Browser    https://www.saucedemo.com/  chrome
    #set window size
    Maximize Browser Window
    #check in login page
    Page Should Contain Element     login-button
    #type username
    Input Text      user-name   locked_out_user
    #type password
    Input Password      password    secret_sauce
    #click login button
    Click Button    login-button
    #error message: "Epic sadface: Sorry, this user has been locked out."
    Element Text Should Be      xpath://*[@id="login_button_container"]/div/form/div[3]/h3     Epic sadface: Sorry, this user has been locked out.
    #close browser
    [Teardown]      Close Browser

Typed wrong password
    #open browser
    Open Browser    https://www.saucedemo.com/  chrome
    #set window size
    Maximize Browser Window
    #check in login page
    Page Should Contain Element     login-button
    #type username
    Input Text      user-name   standard_user
    #type password
    Input Password      password    password
    #click login button
    Click Button    login-button
    #error message: "Epic sadface: Username and password do not match any user in this service."
    Element Text Should Be      xpath://*[@id="login_button_container"]/div/form/div[3]/h3     Epic sadface: Username and password do not match any user in this service
    #close browser
    [Teardown]      Close Browser

Logged in as problem user and sees a broken inventory page
    #open browser
    Open Browser    https://www.saucedemo.com/  chrome
    #set window size
    Maximize Browser Window
    #check in login page
    Page Should Contain Element     login-button
    #type username
    Input Text      user-name   problem_user
    #type password
    Input Password      password    secret_sauce
    #click login button
    Click Button    login-button
    #check if in broken inventory page
    Element Attribute Value Should Be    xpath:/html/body/div/div/div/div[2]/div/div/div/div[1]/div[1]/a/img    src    https://www.saucedemo.com/static/media/sl-404.168b1cce.jpg
    #close browser
    [Teardown]      Close Browser



    