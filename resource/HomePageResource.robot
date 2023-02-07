*** Settings ***
Library              SeleniumLibrary
Library              String
Resource             ../resource/elements.robot

#### Ações####
*** Keywords ***

Então o sistema apresenta a home page do Cateira Global - Conheça
    Wait Until Page Contains                 Conheça
    Wait Until Page Contains                 Acesse perfil, portfólios,

E opto por selecionar o fundo de investimento, "${Fundo}" no Ranking de fundo de investimento
    Wait Until Element Is Visible            ${Tab_RankFundos}
    Page Should Contain                      Ranking • Fundos de Investimento
    Scroll Element Into View                 xpath=//html[1]/body[1]/div[1]/div[2]/main[1]/div[2]/table[1]/tbody[1]/tr[contains(.,'${Fundo}')]/td[1]/input[1]
    Unselect Checkbox                        xpath=//html[1]/body[1]/div[1]/div[2]/main[1]/div[2]/table[1]/tbody[1]/tr[contains(.,'${Fundo}')]/td[1]/input[1]
    Wait Until Element Is Enabled            xpath=//html[1]/body[1]/div[1]/div[2]/main[1]/div[2]/table[1]/tbody[1]/tr[contains(.,'${Fundo}')]/td[1]/input[1]
    Sleep                                    2s
    Select Checkbox                          xpath=//html[1]/body[1]/div[1]/div[2]/main[1]/div[2]/table[1]/tbody[1]/tr[contains(.,'${Fundo}')]/td[1]/input[1]

E seleciono a opção Comparar
    Wait Until Element Is Visible            ${Btn_Comparar}
    Click Element                            ${Btn_Comparar}    action_chain=True
    
Então o sistema a pagina do carteira global com a comparação dos investimentos
    Wait Until Page Contains                 Comparador de Investimentos
    Sleep    3s
    Switch Window                            NEW
    Wait Until Page Contains                 Rentabilidade Comparada

E opto por clicar em entrar para realizar o acesso ao carteira global
    Wait Until Element Is Visible            ${Btn_Entrar}
    Click Element                            ${Btn_Entrar}

Então o sistema exibe a tela de login em app.carteiraglobal.com
    Title Should Be                          Carteira Global · Entrar    

Dado que opto podigitar meu email e senha de acesso e clico em entrar
    Wait Until Element Is Visible            xpath=//div//img[@class="mb-14"]
    Input Text                               id=user    userautomacaogit@gmail.com
    Input Text                               id=password    User@123
    Wait Until Element Is Visible            xpath=//div//button[@type="submit"]
    Click Button                             xpath=//div//button[@type="submit"]
    
Entao o sistema apresenta a tela de Controle no Carteira Global
    Wait Until Page Contains                 Conheça
    Title Should Be                          Carteira Global · Conheça

E opto por realizar uma busca pelo ativo "${Ativo}"
    Input Text                               xpath=//div[2]/div[1]/main[1]/div[1]/div[1]/form[1]/div[1]/input[contains(@placeholder,'Qual ativo você deseja conhecer?')]    ${Ativo}
    Wait Until Element Is Visible            xpath=//div[contains(.,'${Ativo}')]
    Press Keys                               NONE    TAB     TAB     ENTER

Então o sistema exibe a pagina do conheça com as informações do ativo buscado "${Ativo}"
    Sleep                                    5s    
    Switch Window                            NEW
    Wait Until Page Contains                 ${Ativo}

Dado que opto por navegar para proxima pagina
    Click Element                            ${Btn_Proxima}

Entao o sistema apresenta a home page do Cateira Global - ${Pagina}
    Wait Until Page Contains Element        xpath=//p[@class='subtitle-slide'][contains(.,'${Pagina}')][1]

E opto por selecionar ${Experimente} localizado em experimente
    Wait Until Element Is Visible            ${Btn_Experimente}
    Scroll Element Into View                 ${Btn_Experimente}
    Click Element                            xpath=//span[contains(.,'${Experimente}')] 

Entao o sistema exibe as opções do componente Conheça
    Wait Until Page Contains                 Perfil de Ativos           
    Scroll Element Into View                 ${Btn_AcessarConheca}

Dado que opto por selecionar "${OpcaoExperimente}"
    Wait Until Element Is Visible            xpath=//p[@class='title'][contains(.,'${OpcaoExperimente}')]
    Click Element                            xpath=//p[@class='title'][contains(.,'${OpcaoExperimente}')]
 


Então o sistema apresenta a view de Perfil de Ativos
    Wait Until Element Is Visible             ${Img_PerfilAtivos}

Então o sistema apresenta a view de Trading 
    Wait Until Element Is Visible             ${Img_Trading}

Então o sistema apresenta a view de Eventos Corporativos
    Wait Until Element Is Visible             ${Img_EventosCorp}

Então o sistema apresenta a view de Contabilidade
    Wait Until Element Is Visible             ${Img_Contabilidade}

Então o sistema apresenta a view de Portifólio de Fundos e FII's
    Wait Until Element Is Visible             ${Img_ProtFundFII}

Então o sistema apresenta a view de Lâmina de Fundos
    Wait Until Element Is Visible            ${Img_LaminaFundos}

Dado que opto por clicar no botão Acessar Conheça
    Wait Until Element Is Visible            ${Btn_AcessarConheca}
    Click Element                            ${Btn_AcessarConheca}

Então o sistema direciona para a pagina do Carteira Global - Conheça
    Sleep                                    3s
    Switch Window                            NEW
    Wait Until Element Is Visible            xpath=//a[@class='h-full flex items-center font-medium text-primary'][contains(.,'Conheça')]

Então o sistema exibe as opções do componente Compare
    Wait Until Page Contains                 Comparador de Investimentos         
    Scroll Element Into View                 ${Btn_AcessarCompare}

Então o sistema apresenta a view do Comparador de Investimentos
    Wait Until Element Is Visible            ${Img_ComparaInvestimentos}

Então o sistema apresenta a view de Matriz de Correlação
    Wait Until Element Is Visible            ${Img_MatrizCorrelacao}

Então o sistema apresenta a view do Comparador de Renda Fixa
    Wait Until Element Is Visible            ${Img_ComparaRendaFixa}

Dado que opto por clicar no botão Acessar Compare
    Click Element                            ${Btn_AcessarCompare}

Então o sistema direciona para a pagina do Carteira Global - Comparador de Investimentos
    Sleep                                    3s
    Switch Window                            NEW
    Wait Until Element Is Visible            xpath=//a[@class='h-full flex items-center text-step-description'][contains(.,'Compare')]


Então o sistema exibe as opções do componente Controle
    Wait Until Element Is Visible            ${Btn_AcessarControle}
    Scroll Element Into View                 ${Btn_AcessarControle}     
Então o sistema apresenta a view de Resumo
    Wait Until Element Is Visible            ${Img_Resumo}

Então o sistema apresenta a view de Posição
    Wait Until Element Is Visible            ${Img_Posição}

Então o sistema apresenta a view de Evolução
    Wait Until Element Is Visible            ${Img_Evolução}

Então o sistema apresenta a view de Performance
    Wait Until Element Is Visible            ${Img_Performance}

Então o sistema apresenta a view de Financeiro
    Wait Until Element Is Visible            ${Img_Financeiro}

Então o sistema apresenta a view de Risco
    Wait Until Element Is Visible            ${Img_Rico}

Dado que opto por selecionar o botão Acessar Controle
    Wait Until Element Is Visible            ${Btn_AcessarControle} 
    Click Element                            ${Btn_AcessarControle} 

Então o sistema direciona para a pagina de login do Carteira Global
    Sleep                                    3s
    Switch Window                            NEW
    Wait Until Element Is Visible            xpath=//img[contains(@class,'mb-14')]


Entao o sistema exibe as opções do componente Conquiste
    Wait Until Element Is Visible            ${Btn_AcessarConquiste}
    Scroll Element Into View                 ${Btn_AcessarConquiste}


Então o sistema apresenta a view de Simulador de cartteiras
    Wait Until Element Is Visible            ${Img_SimuladorCarteiras}


Então o sistema apresenta a view de Estudos de Investimento 
    Wait Until Element Is Visible            ${Img_EstudoInvestimento}

Então o sistema apresenta a view de Comparador de Carteiras
    Wait Until Element Is Visible            ${Img_ComparadorCarteiras}


Dado que opto por selecionar o botão Acessar Conquiste
    Wait Until Element Is Visible            ${Btn_AcessarConquiste}
    Click Element                            ${Btn_AcessarConquiste}

Dado que opto por selecionar a opção "${Componente}" localizada no menu superior 
    Wait Until Element Is Visible            xpath=//button[@class='c-button c-button-link'][contains(.,'${Componente}')]
    Click Element                            xpath=//button[@class='c-button c-button-link'][contains(.,'${Componente}')]
Então sistema apresenta o menu do Conheça
    Wait Until Element Is Visible            xpath=//html[1]/body[1]/div[1]/div[1]/main[1]/div[1]/ul[1]/li[1]/ul[1]
    

Dado que opto por selecionar a opção "${Opcao}"
    Wait Until Element Is Visible            xpath=//header[contains(.,'${Opcao}')]
    Click Element                            xpath=//header[contains(.,'${Opcao}')]
Então o sistema apresenta o conheça "${OpcaoCarteira}" - Carteira Global
    Sleep                                    3s
    Switch Window                            NEW
    Wait Until Element Is Visible            xpath=//span[@class='text-step-description'][contains(.,'${OpcaoCarteira}')]

Então o sistema apresenta o conheça, Fundos de Investimento - Carteira Global
    Sleep                                    3s
    Switch Window                            NEW
    Wait Until Element Is Visible            xpath=//a[@class='h-full flex items-center text-step-description'][contains(.,'Fundos de Investimento')]

Então sistema apresenta o menu do Compare
    Wait Until Element Is Visible            xpath=//html[1]/body[1]/div[1]/div[1]/main[1]/div[1]/ul[1]/li[2]/ul[1]
    
Então sistema apresenta o menu do Controle
    Wait Until Element Is Visible            xpath=//html[1]/body[1]/div[1]/div[1]/main[1]/div[1]/ul[1]/li[3]/ul[1]

Então sistema apresenta o menu do Conquiste
    Wait Until Element Is Visible            xpath=//html[1]/body[1]/div[1]/div[1]/main[1]/div[1]/ul[1]/li[4]/ul[1]

Então o sistema apresenta o "Comparador de Investimentos" - Carteira Global
    Sleep                                    3s
    Switch Window                            NEW
    Wait Until Element Is Visible            xpath=//a[@class='h-full flex items-center text-step-description'][contains(.,'Compare')]

Então o sistema apresenta a "Matriz de Correlação" - Carteira Global
    Sleep                                    3s
    Switch Window                            NEW
    Wait Until Element Is Visible            xpath=//span[@class='font-medium text-primary'][contains(.,'Matriz de Correlação')]

Então o sistema apresenta o "Simulador de Renda Fixa" - Carteira Global
    Sleep                                    3s
    Switch Window                            NEW
    Wait Until Element Is Visible            xpath=//span[@class='font-medium text-primary'][contains(.,'Comparador de Renda Fixa')]

Então o sistema apresenta a tela de login - Carteira Global
    Sleep                                    3s
    Switch Window                            NEW
    Wait Until Element Is Visible            xpath=//label[@for='user'][contains(.,'E-mail')]