*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
Tc1 Valid Login
    Append To Environment Variable    path   ${EXECDIR}\\driver
    Open Browser  url=https://opensource-demo.orangehrmlive.com/      browser=edge
    Input Text    id=txtUsername  Admin
    Input password   id=txtPassword   admin123
    Click Element    name=Submit
     ${url}   Get Location
     Log To Console  ${url}
     Click Element   id=welcome
     Sleep  5s
     Click Element  link=Logout
    Close Browser

    TC2 Add Emergency Contact
   Append To Environment Variable    path      ${EXECDIR}\\drivers
   Open Browser  url=https://opensource-demo.orangehrmlive.com/    browser=chrome
   Set Selenium Implicit Wait    30s
   Input Text    id=txtUsername    Admin
   Input Password  id=txtPassword      admin123
   Click Element  name=Submit
   Click Element    link=My Info
   Click Element    link=Emergency Contacts
   Click Element    id=btnAddContact
   Input Text    id=emgcontacts_name    raj
   Input Text    id=emgcontacts_relationship    Brother
   Input Text    id=emgcontacts_homePhone    9876543210
   Click Element    id=btnSaveEContact