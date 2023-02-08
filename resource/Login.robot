***Settings***
Documentation  login to djkala
Library     SeleniumLibrary
Resource     variables.robot

***Variables***
${url}  ${Schema}://${Domain}
${submit_Button}  xpath:/html/body/div[1]/div[1]/div[1]/header/div[2]/div/div/div[2]/a/div[2]
${submit_mobile_number}  xpath:/html/body/div[1]/main/div[2]/div[2]/form/button/div[2]
${UserId}  name:username
${vorud}  xpath:/html/body/div[1]/main/div[2]/div[2]/button[1]/div[2]
${passid}  xpath:/html/body/div[1]/main/div[2]/div[2]/form/label/div/div[1]/input
${accept}  xpath:/html/body/div[1]/main/div[2]/div[2]/button[3]/div[2]
${myuser}  xpath:/html/body/div[1]/div[1]/div[1]/header/div[2]/div/div/div[2]/div[1]/div[1]
${profileName}  xpath://span[contains(@class, "text-subtitle-strong")]


***Keywords***
Open Page
   Set Selenium Speed  ${SPEED}
   Set Selenium Timeout  ${Timeout}
   open Browser   ${url}  ${Browser}
login
   Wait Until Element Is Visible  ${submit_Button}
   Click Element  ${submit_Button}
   Wait Until Element Is Visible  ${submit_mobile_number}
   input text  ${UserId}  ${username}
   Click Element  ${submit_mobile_number}
   #Wait until Element is Visible  ${vorud}
   #Click Element  ${vorud}
   input text  ${passid}  ${password}
   Click Element  ${accept}
   wait until Element is Visible  ${myuser}
   Click Element  ${myuser}
   Element Text Should Be  ${profileName}  مژگان هاشمی
