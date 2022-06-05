*** Settings ***

Documentation     Essa suite teste o site da Amazon
Resource          amazon_resources.robot
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador   


*** Test Cases ***

Caso de teste 01 - Acesso ao menu "Eletronicos"
    [Documentation]   Esse teste verifica o menu eletronicos no site da Amazon
    ...               e verifica a categoria de computadores
    [Tags]            acesso_menu
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se aparece a categoria "Computadores e Informática"

Caso de teste 02 - Pesquisar por um produto"
    [Documentation]    Esse teste verifica o produto no site da Amazon
    [Tags]             busca_produto
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando