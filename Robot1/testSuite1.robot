*** Setting ***
Library   SeleniumLibrary 

Suite Setup    Log    I am inside Test Suite SetUp
Suite Teardown    Log   I am outside Test Suite TearDown
Test Setup    Log    I am inside Test SetUp
Test Teardown    Log   I am outside Test TearDown

*** Test Cases ***
MyFirstTest
    Log  Hello World

FirstSeleniumTest
    Log  Test Started
    Open Browser    https://google.com  chrome 
    Set Browser Implicit Wait  5 
    Set Window Size    1380   960
    Input Text  name=q   Automation Step By Step
    Sleep   2
    Click Button    name=btnK    
    Sleep   2
    Close Browser   
    Log  Test Completed
    
LoginTest  
    Log  Test Started
    Open Browser  ${URL}  chrome
    Set Browser Implicit Wait  5 
    Set Window Size    1380   960  
    LoginKW
    Click Element   id=welcome
    Click Link     Logout  
    Close Browser 
    Log    Test Completed 
MyFourthTest
    Log   I am inside the 4th Test   
    
    
*** Variables ***
#   SCALAR  ${}
${URL} =   https://opensource-demo.orangehrmlive.com/
#   LIST  @{}
@{CREDENTIALS} =  Admin   admin123
#   DICTIONARY &{}
&{LOGINDATA} =   username=Admin   password=admin123
#   ENVIRONMENT
#   BUILT IN   
# ${CURDIR}, ${TEMPDIR} , ${EXECDIR}, ${\}, ${;}, ${\r\n} .. this is line spearator
  
*** Keywords ***
#KEYWORDS : USER DEFINED and LIBRARY (Open Browser, Close Browser etc)      
# Creating your own keyword 
LoginKW
    Input Text  id=txtUsername   @{CREDENTIALS}[0]
    Input Text  id=txtPassword   &{LOGINDATA}[password]
    Click Button    name=Submit  
  
       