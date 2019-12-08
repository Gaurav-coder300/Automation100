*** Settings ***
Library     Selenium2Library
Library     Collections    

*** Variables ***
${Browser}  Chrome
${URL}  Https://thetestingworld.com/testings



    

*** Test Cases ***
TC01
    Open Browser    https://facebook.com    chrome    
  @{list1}  Create List    hello  22  23.2  world
  ${Length}  Get Length    ${list1}
  Log To Console    ${Length}     
   ${third}=  Get From List    ${list1}    3    
  
    : For     ${i}    IN    @{list1}
    \  Log To Console     ${i}
    \    
    Element Should Contain    xpath://*[text()='Create an account']    lele    
    
   
*** Keywords ***

Enter Username and Password
    [Arguments]  ${username}  ${password}  ${email} 
    Input Text    xpath   ${username}
    Input Text    xpath    ${password}   
    Input Text    xpath    ${email}  
    
