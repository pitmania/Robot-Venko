*** Settings ***
Library    SeleniumLibrary
Library    Browser

*** Variables ***
${URL}                https://venkonetworks.com/
${Texto_Menu}         //h2[contains(.,'Produtos e Serviços')]

${Home}               //a[@class='nav-link'][contains(.,'Home (current)')]
${Produtos}           //a[@class='nav-link dropdown-toggle'][contains(.,'Produtos')]
${Serviços}           //a[@class='nav-link dropdown-toggle'][contains(.,'Serviços')]
${Venkonnect}         //a[@class='nav-link'][contains(.,'Venkonnect')]
${Suporte}            //a[@class='nav-link'][contains(.,'Suporte')]
${Empresa}            //a[@class='nav-link'][contains(.,'Empresa')]
${Contato}            //a[@class='nav-link dropdown-toggle'][contains(.,'Contato')]

${Opçoes_Produtos}    //div[contains(@class,'dropdown-menu show')]
${Opçoes_Serviços}    //div[@class='dropdown-menu show'][contains(.,'P&D Serviços Profissionais Consultoria')]    


*** Keywords ***

Abrir navegador
    Open Browser    browser=chrome 
    Maximize Browser Window  

Fechar navegador
    Close Browser


Dado que acesso o menu da venkonetworks.com
    Go To    url=${URL}

Quando clico no menu "Home"
    Click Element    locator=${Home}

Então a página deve apresentar as informações dessa página
    Wait Until Element Is Visible    locator=${Texto_Menu}

#Acessar o menu Produtos
Quando clico no menu "Produtos"
    Click Element    locator=${Produtos} 
          
Então a página deve apresentar as opções de produtos
    Wait Until Element Is Visible    locator=${Opçoes_Produtos}

#Acessar os produtos da aba Produtos

E seleciono "XGS-PON"
    Click Element    locator=//a[@class='dropdown-item'][contains(.,'XGS-PON')]

Então a página do produto XGS-PON é mostrada    
    Wait Until Element Is Visible    locator=//h3[contains(.,'XGS-PON')]

E seleciono "SD-WAN" 
   Click Element    locator=//a[@class='dropdown-item'][contains(.,'SD-WAN')]
Então a página do produto SD-WAN é mostrada
    Wait Until Element Is Visible    locator=//h3[contains(.,'SD-WAN')]

E seleciono "Network Appliance"
    Click Element    locator=//a[@class='dropdown-item'][contains(.,'Network Appliance')]
Então a página do produto Network Appliance é mostrada
    Wait Until Element Is Visible    locator=//h4[@class='tit-page'][contains(.,'Network Appliance')]

Dado que acesso o menu Produtos
    Go To    url=${URL}
    Click Element    locator=${Produtos}
Quando clico em "Baixe Nosso Folder de XGS-PON e Saiba Mais" 
    Click Element    locator=(//input[contains(@type,'submit')])[1]

E preencho o formulário
    Click Element    locator=//input[contains(@name,'nome')]
    
# Menu Serviços
Quando clico no menu "Serviços"
    Click Element    locator=${Serviços}   

Então a página deve apresentar as opções de serviços
    Wait Until Element Is Visible    locator=${Opçoes_Serviços}

E seleciono "P&D"
    Click Element    locator=//a[@class='dropdown-item'][contains(.,'P&D')]  

Então a página do serviço P&D é mostrada
    Wait Until Element Is Visible    locator=//h4[@class='tit-page'][contains(.,'P&D')]

#MENU VENKONNECT 
Quando clico no menu "Venkonnect"
    Click Element     locator=//a[@class='nav-link'][contains(.,'Venkonnect')]
Então a página deve apresentar a página "Venkonnect"  
    Wait Until Element Is Visible    locator=//div[@align='center'][contains(.,'Leia nosssas notícias')]

#MENU SUPORTE
Quando clico no menu "Suporte"
    Click Element     locator=//a[@class='nav-link'][contains(.,'Suporte')]
Então a página deve apresentar a página "Suporte" 
    Wait Until Element Is Visible    locator=//h3[contains(.,'Suporte')] 

#MENU EMPRESA
Quando clico no menu "Empresa"
    Click Element     locator=//a[@class='nav-link'][contains(.,'Empresa')]
Então a página deve apresentar a página "Empresa" 
    Wait Until Element Is Visible    locator=//h3[contains(.,'Empresa')]   