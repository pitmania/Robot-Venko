*** Settings ***
Documentation    Test suites para o site da Venko
Resource         resources.robot
Test Setup       Abrir navegador
#Test Teardown    Fechar navegador


*** Test Cases ***   

Test Case 01 - Acessar o menu "home"
    [Documentation]  Verifies if the home button and if it shows everything in it

    [Tags]    menu
    Dado que acesso o menu da venkonetworks.com
    Quando clico no menu "Home"
    Então a página deve apresentar as informações dessa página

Test Case 02 - Acessar o menu "Produtos"   
    [Documentation]  Verifies if the products are showing

    [Tags]    menu
    Dado que acesso o menu da venkonetworks.com
    Quando clico no menu "Produtos"
    Então a página deve apresentar as opções de produtos
Test Case 03 - Acessar o menu "Produtos" e selecionar "XGS-PON"
    Dado que acesso o menu da venkonetworks.com
    Quando clico no menu "Produtos"
    E seleciono "XGS-PON"
    Então a página do produto XGS-PON é mostrada 

#Test Case 04 - Baixar folder do XGS-PON
#    [Documentation]    Downloads folder with the product's info
#    
#    [Tags]    folder
#    Dado que acesso o menu Produtos
#    E seleciono "XGS-PON"
#    Quando clico em "Baixe Nosso Folder de XGS-PON e Saiba Mais"
#    E preencho o formulário
#    Então o arquivo é baixado no computador

Test Case 05 - Acessar o menu "Produtos" e selecionar "SD-WAN"
    Dado que acesso o menu da venkonetworks.com
    Quando clico no menu "Produtos"
    E seleciono "SD-WAN"
    Então a página do produto SD-WAN é mostrada  

Test Case 06 - Acessar o menu "Produtos" e selecionar "Network Appliance"
    Dado que acesso o menu da venkonetworks.com
    Quando clico no menu "Produtos"
    E seleciono "Network Appliance"
    Então a página do produto Network Appliance é mostrada      

Test Case 07 - Acessar o menu "Serviços"   
    [Documentation]  Verifies if the services are showing

    [Tags]    menu    services
    Dado que acesso o menu da venkonetworks.com
    Quando clico no menu "Serviços"
    Então a página deve apresentar as opções de serviços

Test Case 08 - Acessar o menu "Serviços" e selecionar "P&D"
    [Documentation]  Verifies if the services are showing

    [Tags]    menu    services
    Dado que acesso o menu da venkonetworks.com
    Quando clico no menu "Serviços"
    E seleciono "P&D"
    Então a página do serviço P&D é mostrada   

Test Case 09 - Acessar o menu "Venkonnect"   
    [Documentation]  Verifies if the option venkonnect is clicked and showed

    [Tags]    menu    venkonnect
    Dado que acesso o menu da venkonetworks.com
    Quando clico no menu "Venkonnect"
    Então a página deve apresentar a página "Venkonnect"   

Test Case 07 - Acessar o menu "Suporte"   
    [Documentation]  Verifies if the support is clicked and showed

    [Tags]    menu    suporte
    Dado que acesso o menu da venkonetworks.com
    Quando clico no menu "Suporte"
    Então a página deve apresentar a página "Suporte"    

Test Case 07 - Acessar o menu "Empresa"   
    [Documentation]  Verifies if "Empresa" is clicked and showed

    [Tags]    menu    empresa
    Dado que acesso o menu da venkonetworks.com
    Quando clico no menu "Empresa"
    Então a página deve apresentar a página "Empresa"     