*** Variables ***


${Logo_CarteiraGlobal}           xpath=//div//main[@class='l-app ']//div[@class='c-header']//img[contains(@alt,'Logo do Carteira Global')]
${menu}
${Info_Conheca}                  xpath=//div//div[@class='wrapper-autocomplete'][contains(.,'Conheça')][1]
${Info_Compare}                  xpath=//div//div[@class='wrapper-autocomplete'][contains(.,'Compare')][1]
${Info_Controle}                 xpath=//div//div[@class='wrapper-autocomplete'][contains(.,'Controle')][1]
${Info_Conquiste}                xpath=//div//div[@class='wrapper-autocomplete'][contains(.,'Conquiste')][1]
${Tab_RankFundos}                xpath=//table[contains(@class,'w-full table-ranking')]
${NomeFundo}
${Select_Fundo}                  xpath=//div[@class='w-full'][contains(.,'BB AÇÕES BB SEGURIDADE')]|//*//input[contains(@type,'checkbox')][1]
${Btn_Proxima}                   xpath=//div[1]/div[1]/div[4]/div[1]/img[contains(@alt,'icone de navegação')]
${Btn_MenuHeader}                xpath=//button[@class='c-button c-button-link'][contains(.,'${menu}')]
${Btn_Entrar}                    xpath=//main[1]/div[1]/div[3]/div[1]/button[@class='c-button c-button-outline'][contains(.,'Entrar')]
${Btn_CriarConta}                xpath=//div//main[@class='l-app ']//div[@class='c-header']//button[contains(.,'Criar conta')][1]
${Btn_Comparar}                  xpath=//button[@class='c-button c-button-primary'][contains(.,'Comparar')]
${Btn_RankComp}                  xpath=//button[@class='c-button c-button-primary'][contains(.,'Ranking completo')]
${Experimente}
${Btn_Experimente}               xpath=//span[contains(.,'${Experimente}')]               
${Btn_ExperimenteConheca}        xpath=//span[contains(.,'Conheça')]
${Btn_ExperimenteCompare}        xpath=//span[contains(.,'compare')]
${Btn_ExperimenteControle}       xpath=//span[contains(.,'Controle')]
${Btn_ExperimenteConquiste}      xpath=//span[contains(.,'Conquiste')]
${Btn_AcessarConheca}            xpath=//button[contains(.,'Acessar Conheça')]
${Btn_AcessarControle}           xpath=//button[contains(.,'Acessar Controle')]
${Btn_AcessarCompare}            xpath=//button[contains(.,'Acessar Compare')]
${Btn_AcessarConquiste}          xpath=//button[contains(.,'Acessar Conquiste')]
${Img_PerfilAtivos}              xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fconheca%2F1.0a49ecf2ed444e966804409272caa39c.png&w=3840&q=75'])[2]
${Img_Trading}                   xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fconheca%2F2.031f9a4aa71bc6df2a7905ec84fd02f7.png&w=3840&q=75'])[2]
${Img_EventosCorp}               xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fconheca%2F3.91e3d6b319a6adfc10c167d78259937f.png&w=3840&q=75'])[2]
${Img_Contabilidade}             xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fconheca%2F4.4a9b4b2e2acbafe3f866ebed8d48588f.png&w=3840&q=75'])[2]
${Img_ProtFundFII}               xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fconheca%2F5.36a0f33d76e584f294979fc821b0374c.png&w=3840&q=75'])[2]
${Img_LaminaFundos}              xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fconheca%2F6.5b6ab4ec86ccd0d435bfacffb813bb74.png&w=3840&q=75'])[2]
${Img_ComparaInvestimentos}      xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fcompare%2F1.10c9ea6b9e9fa357ba32841086929d56.png&w=3840&q=75'])[2]
${Img_MatrizCorrelacao}          xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fcompare%2F2.827e02d4ce40013cc933c6d36a1e3e52.png&w=3840&q=75'])[2]
${Img_ComparaRendaFixa}          xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fcompare%2F3.f41e72ee1952c661fccf5e0a9f6ae8d3.png&w=3840&q=75'])[2]
${Img_Resumo}                    xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fcontrole%2F1.b7d1056c7e35e3e043466a34b3298da8.png&w=3840&q=75'])[2]
${Img_Posição}                   xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fcontrole%2F2.6c3862fb559aaa7f459a4f93c3492d13.png&w=3840&q=75'])[2]
${Img_Evolução}                  xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fcontrole%2F3.dacf856b798ca2958418a59f4996eec5.png&w=3840&q=75'])[2]
${Img_Performance}               xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fcontrole%2F4.d2acef71e9f4585c851f2fbb0107ceb3.png&w=3840&q=75'])[2]
${Img_Financeiro}                xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fcontrole%2F5.4cca3e365fc841f49e3891dd9e40c181.png&w=3840&q=75'])[2]
${Img_Rico}                      xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fcontrole%2F6.f6e8af401b4b710b97af2c2b667697bb.png&w=3840&q=75'])[2]
${Img_SimuladorCarteiras}        xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fconquiste%2F1.5dc0c39ee89d42135c9b5ba7a7a2a80a.png&w=3840&q=75'])[2]
${Img_EstudoInvestimento}        xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fconquiste%2F2.460612d5fbf76eebf88561a408477ad2.png&w=3840&q=75'])[2]
${Img_ComparadorCarteiras}       xpath=(//img[@src='/_next/image?url=%2F_next%2Fstatic%2Fimage%2Fassets%2Fimages%2Fmodulos%2Fconquiste%2F3.3812d54503e9ebb78f7e87c40efe7c57.png&w=3840&q=75'])[2]

