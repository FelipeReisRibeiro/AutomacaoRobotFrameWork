*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem 
*** Variables ***
  
${BROWSER}                       Chrome
${OPTIONS}                       add_argument("--disable-dev-shm-usage"); add_argument("--no-sandbox"); add_experimental_option("excludeSwitches", ["enable-logging"]); add_argument("--ignore-certificate-errors"); add_argument("--disable-notifications"); add_argument("--disable-web-security"); add_argument("--window-size=1920,1080")   #; add_argument("--headless")
${URL_HOMEPAGE}                  https://www.carteiraglobal.com
*** Keywords ***

###Setup e Teardwn###
Abrir navegador

  ${prefs}   Create Dictionary    download.default_directory=${OUTPUTDIR}${/}documentos        #${OUTPUTDIR}/documentos
  Open Browser                    about:blank   ${BROWSER}      options=${OPTIONS}; add_experimental_option('prefs', ${prefs})
  Maximize Browser Window
  Set Selenium Timeout            30 seconds
  
Fechar navegador
  Close Browser

  #### Ações####

Dado que opto por acessar a Home Page do Carteira Global
  Go To    ${URL_HOMEPAGE}
  Wait Until Element Is Visible        xpath=//button[contains(.,'Aceitar')]   
  Set Focus To Element                 xpath=//button[contains(.,'Aceitar')]
  Wait Until Element Is Enabled        xpath=//button[contains(.,'Aceitar')]
  Sleep    3s
  Press Keys                           xpath=//button[contains(.,'Aceitar')]         ENTER       