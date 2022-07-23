**Settings**
Resource    ../resources/Cadastrar.robot
# Library to use "Generate Random String" method
Library  String 

Test Setup  Open Session
Test Teardown   Close Session

***Variables***
${Nome_duplicado}              Roberto Carlos
${Email_duplicado}             test@test.com.br

**Test Cases**
Cadastrar pessoa válida
    ${Name} =   Generate Random String  6
    ${Email} =   Catenate    ${Name}   @test.com
    Click CadastrarUsuário
    Input Name Query  ${Name}
    Input Email Query    ${Email}
    Click Identificação Query  Mulher
    Click Estado Query    Alagoas
    Click BotaoCadastrar

    # Solução do ASSERT para identificar um toast message
    Wait Until Page Contains    Cadastro realizado com sucesso

Cadastrar pessoa duplicada
    Click CadastrarUsuário
    Input Name Query  ${Nome_duplicado}
    Input Email Query    ${Email_duplicado}
    Click Identificação Query  Mulher
    Click Estado Query    Alagoas
    Click BotaoCadastrar
    Validar msg toaster "Email já cadastrado"

Cadastrar com Nome Vazio
    Click CadastrarUsuário
    Input Name Query      ${EMPTY}
    Input Email Query     ${Email_duplicado}
    Click Identificação Query  Mulher
    Click Estado Query    Alagoas
    Click BotaoCadastrar
    Validar msg erro campo vazio "Insira o nome completo"

Cadastrar com Email Vazio
    Click CadastrarUsuário
    Input Name Query      ${Nome_duplicado}
    Input Email Query     ${EMPTY}
    Click Identificação Query  Mulher
    Click Estado Query    Alagoas
    Click BotaoCadastrar
    Validar msg erro campo vazio "Insira um email válido"
