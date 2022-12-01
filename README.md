
# Desafio Gazeus Games

Desafio de automação do site Jogatina.com da Gazeu Games, conforme proposto em seu
processo seletivo.

## Sobre o Desafio:
O objetivo do desafio é desenvolver testes automatizados no site Jogatina.com que contenham no mínimo três das interações listadas abaixo:








- Preenchimento de campos;
- Clique em botões; 
- Validação de textos; 
- Validação de imagens;
- Interação e/ou validação com elementos de formulários como caixas de seleção, botões de seleção e etc.
No projeto, cobrimos todas as interações propostas pelo desafio, e criamos uma suíte de testes para executarmos algumas das principais funcionalidades do site, tais como: Realizar login, editar perfil, acessar página dos jogos, gerenciarmos conta e etc...

A automação foi desenvolvida em Robot Framework, sua estrutura e código fontes
são compostas por keywords, que nada mais são do que funcões em python encapsuladas através de palavras chaves.


Abaixo veremos um passo a passo para instalarmos a ferramenta e suas dependecias, além dos comandos necessarios no terminal para executarmos a suíte de testes

## Preparando o ambiente de testes
Para executarmos os testes, precisaremos das seguintes instalações:

Python  
1-Download: https://www.python.org/downloads/  
2-Para Validarmos a instalação do Python, devemos abrir o CDM e digitarmos python --version ,  o resultado esperado é que o CMD informe a versão do python, confirmando assim sua instalação.

Visual Studio Code  
Download: https://code.visualstudio.com/download

Robot Framework  
1-No CMD, digite o comando: pip install robot framework.  
2-Para Validarmos a instalação do Robot, devemos abrir o CDM e digitarmos o comando: robot --version, o resultado esperado é que o CMD informe a versão do Robot, confirmando assim sua instalação.

NodeJS  
1-Download: https://nodejs.org/en/download/  
2-Para Validarmos a instalação do NodeJS, devemos abrir o CDM e digitarmos o comando: node --version, o resultado esperado é que o CMD informe a versão do NodeJS, confirmando assim sua instalação.

Instalar a Library Browser no Robot Framework  
1-No CDM digite o comando: pip install robotframework-browser  
2-No CDM digite o comando: rfbrowser init

Feito todas as instalações, estamos prontos para executar os testes.

## Comandos para rodar os testes:

- Executar toda a suíte de testes de uma vez:  
Com o projeto Aberto no Microsoft Visual Studio, Vá a Terminal > Novo terminal Digite o comando:  `robot .\tests\ ` deste modo, toda a suíte de testes será executada.  

- Executar apenas os casos de testes de um cenário especifico  
Com o projeto Aberto no Microsoft Visual Studio, Vá a Terminal > Novo terminal Digite o comando: `robot .\tests\login.robot ` deste modo todos testes do cenário escolhido serão executados.  

**Note que login.robot é o arquivo com o cenário de testes de login, caso queira testar outro cenário basta substituir login.robot por o nome do outro cenário.robot, exemplo : robot .\tests\gerenciarconta.robot**

Ao final da execução de cada caso de teste, o robot emite um log com as informações e o passo a passo de cada teste, alem de um screeshot com o resultado esperado:  
Basta clicar em *Log* na aba do terminal.  

Caso prefiram, segue um link com a execução da regressão completa:  
https://www.veed.io/view/8fffb9a6-5692-4eb2-ae09-434923c73fc2?panel=share

Qualquer dúvida, basta entrar em contato atraves de:  
 joaopaulo@gmail.com  
 61981373059
