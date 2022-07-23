# CursoAppium_CadastrarPessoaEspresso
CursoAppium_CadastrarPessoaEspresso

Introduction
This is the automation project for Curso Appium

Tests >> Test flow for the execution.

README.md >> About the project and instructions of how to run it.

Scenarios to be tested

Scenario 1: testCadastrarPessoaValida

Dado que tenha um nome
Quando inserir um e-mail
E selecionar sexo
E selecionar Estado
Então verifica se e-mail já existe

Scenario 2: testCadastrarContaDuplicada

Dado que tenha um nome
Quando inserir um e-mail já existente
E selecionar sexo
E selecionar Estado
Então verifica se e-mail já existe

Scenario 3: testBotaoVoltar

Dado que tenha um nome
Quando inserir um e-mail já existente
E clicar no botão voltar

Scenario 4: testCadastrarEmailInvalido

Dado que tenha o campo nome vazio

Scenario 5: testCadastrarComEmailVazio

Dado que tenha um nome
Quando selecionar sexo
E selecionar Estado
E clicar no botão cadastrar
Então verifica o nome completo

Test Environment information
Application version:
Android Studio Chipmunk 2021.2.1 Patch 1

Information about device under test:
Emulated device from Android Studio.
Model: Google Pixel 5.
Android version: AVD_Pixel_5_API_30

IDE for test development:
CursoAppium_CadastrarPessoaEspresso
