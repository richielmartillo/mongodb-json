# Projeto MongoDB JSON - Módulo 24

Projeto desenvolvido para a entrega do exercício do módulo 24 da EBAC.

O objetivo do projeto é simular uma base de dados acadêmica utilizando arquivos JSON, consultas inspiradas em MongoDB e uma interface visual criada com HTML, CSS e JavaScript.

## Funcionalidades

- Listagem de estudantes
- Listagem de professores
- Consultas por curso
- Consultas usando arrays
- Consultas usando Regex
- Consultas com filtros de notas e status
- Interface visual para exibir os dados
- Testes automatizados com Cypress

## Tecnologias utilizadas

- HTML
- CSS
- JavaScript
- JSON
- MongoDB
- Cypress
- Node.js
- http-server

## Estrutura do projeto

modulo-24/
│
├── cypress/
│   ├── e2e/
│   ├── fixtures/
│   ├── support/
│   └── videos/
│
├── entrega-consultas-mongodb/
│   └── consultas.js
│
├── mongoDB/
│   ├── estudantes.json
│   └── professores.json
│
├── index.html
├── script.js
├── style.css
├── package.json
├── cypress.config.js
├── .gitignore
└── README.md

## Como executar o projeto

Instale as dependências:

npm install

Inicie o servidor local:

npm start

Depois acesse no navegador:

http://localhost:5500

## Como executar os testes Cypress

Para abrir o Cypress:

npm run cy:open

Para executar os testes no terminal:

npm run cy:run

## Sobre a entrega

A pasta `entrega-consultas-mongodb` contém o arquivo `consultas.js`, onde estão as consultas desenvolvidas para o exercício do módulo 24.

As consultas foram feitas com foco em:

- Seleção de estudantes por curso
- Seleção de professores por curso
- Uso de Regex
- Filtros com arrays
- Contagem de estudantes por curso
- Organização dos resultados

## Autor

Richard Marlon Balestrim
