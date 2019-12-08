*** Settings ***
Library    SudsLibrary    


*** Test Cases ***
TC01
  Create Soap Client	http://ombre42.github.io/robotframework-sudslibrary/doc/SudsLibrary.html		
    ${dbl array}=	Create Wsdl Object	NumberToDollars	
    Log To Console    ${dbl array}               