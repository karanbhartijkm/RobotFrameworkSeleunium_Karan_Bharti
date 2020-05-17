*** Settings ***
Library    SeleniumLibrary   

Suite Setup    Log    I am inside Test Suite Setup 
Suite Teardown    Log    I am inside Test Suite Teardown Setup
Test Setup    Log    I am inside Test Setup  
Test Teardown    Log    I am inside Test Teardown  

Default Tags    sanity       

*** Test Cases ***

MyFirstTestCase
    [Tags]    smoke
    Log    HELLO NINJA....
    
MySecondTestCase
    Log    I am inside 2nd Test
    Set Tags    regreesion1
    Remove Tags    regreesion1    
    
MyThirdTestCase
    Log    I am inside 3rd Test    
    
# FirstSeleniumTestCase
      # Open Browser    https:google.com    chrome
      # Set Browser Implicit Wait    5
      # Input Text    name=q    karan bharti 0716 linkedin
      # Press Keys    name=q    ENTER
      # # Click Button    name=btnK            
      # Sleep    2    
      # Close Browser
      # Log    Test Completed
      
# SampleLoginTest
    # [Documentation]    This is a sample login Test    
    # Open Browser    ${URL}        chrome
    # Maximize Browser Window
    # Set Screenshot Directory    G:\Automation_Screenshots\Beta\selenium-screenshot-2.png  
    # # Capture Page Screenshot    ${OUTPUTDIR}/selenium-screenshot-2.png        
    # LoginKW
    # Click Button    class=login-button
    # # Click Element    class=MuiSvgIcon-root
    # Set Browser Implicit Wait    5
    # # Click Element    class=MuiTouchRipple-root
    # Set Browser Implicit Wait    5
    # # Click Element    class=MuiTypography-root MuiListItemText-primary MuiTypography-body1 MuiTypography-displayBlock        
    # # Click Element    LinkText=Log Out
    # Close Browser
    # Log    Login Test Completed
    # Log    This test was executed by %{username} on %{os}                     
               
*** Variables ***
# SCALER VARIABLE
${URL}    https://beta.status.bluedd.com/ 
# LIST VARIABLE
@{CREDENTIALS}      hk_test    Status@19kk
# DICTIONARY VARIABLE
&{LOGINDATA}    username=hk_test    Password=Status@19kk

*** Keywords ***
LoginKW  
    Input Text    id=UserName        @{CREDENTIALS}[0]
    Input Password    name=Password    &{LOGINDATA}[Password]     
    Click Button    name=PrivacyConsent