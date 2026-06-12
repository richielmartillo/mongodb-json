# Projeto MongoDB JSON - Módulo 24

Projeto desenvolvido para a entrega do exercício do Módulo 24 da EBAC.

O objetivo do projeto é simular uma base de dados acadêmica utilizando arquivos JSON, consultas inspiradas em MongoDB/NoSQL, uma interface visual criada com HTML, CSS e JavaScript, testes automatizados com Cypress e um complemento com consultas SQL utilizando SQLite no DBeaver.

## Descrição do projeto

O projeto apresenta uma base acadêmica fictícia com estudantes e professores.

A primeira parte da entrega foi desenvolvida com foco em MongoDB/NoSQL, utilizando arquivos JSON para representar os dados e consultas com filtros, arrays, Regex, ordenação e contagem de registros.

Após a primeira versão, o projeto também foi complementado com uma versão SQL utilizando SQLite no DBeaver, contendo tabelas de estudantes e professores, inserção dos dados e consultas SQL equivalentes às consultas feitas no MongoDB.

## Funcionalidades

* Listagem de estudantes
* Listagem de professores
* Consultas por curso
* Consultas usando arrays
* Consultas usando Regex
* Consultas com filtros de notas
* Consultas com filtros de status
* Ordenação de resultados
* Contagem de estudantes por curso
* Interface visual para exibir os dados
* Testes automatizados com Cypress
* Complemento SQL com SQLite
* Consultas SQL equivalentes às consultas MongoDB

## Tecnologias utilizadas

* HTML
* CSS
* JavaScript
* JSON
* MongoDB
* SQL
* SQLite
* DBeaver
* Cypress
* Node.js
* http-server
* Git
* GitHub

## Estrutura do projeto

```text
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
├── entrega-consultas-sql/
│   ├── consultas_sql_modulo24.sql
│   └── modulo24_sqlite.db
│
├── mongoDB/
│   ├── estudantes.json
│   └── professores.json
│
├── index.html
├── script.js
├── style.css
├── package.json
├── package-lock.json
├── cypress.config.js
├── .gitignore
└── README.md
```

## Como executar o projeto

Instale as dependências:

```bash
npm install
```

Inicie o servidor local:

```bash
npm start
```

Depois acesse no navegador:

```text
http://localhost:5500
```

## Como executar os testes Cypress

Para abrir o Cypress:

```bash
npm run cy:open
```

Para executar os testes no terminal:

```bash
npm run cy:run
```

## Sobre a entrega MongoDB/NoSQL

A pasta `entrega-consultas-mongodb` contém o arquivo `consultas.js`, onde estão as consultas desenvolvidas para o exercício do Módulo 24.

As consultas MongoDB foram feitas com foco em:

* seleção de estudantes por curso;
* seleção de professores por curso;
* uso de Regex;
* filtros com arrays;
* filtros por nota;
* filtros por status;
* ordenação alfabética;
* busca por nome;
* contagem de estudantes por curso;
* organização dos resultados.

Os dados utilizados nas consultas MongoDB estão na pasta `mongoDB`, nos arquivos:

* `estudantes.json`
* `professores.json`

## Complemento SQL com SQLite

Além das consultas MongoDB/NoSQL, o projeto também foi complementado com uma versão SQL utilizando SQLite no DBeaver.

A parte SQL está organizada na pasta:

```text
entrega-consultas-sql
```

Arquivos principais:

* `modulo24_sqlite.db`: banco de dados SQLite contendo as tabelas `estudantes` e `professores`;
* `consultas_sql_modulo24.sql`: script SQL contendo a criação das tabelas, inserção dos dados e consultas SQL equivalentes às consultas realizadas no MongoDB.

## Estrutura do banco SQL

No banco SQLite foram criadas duas tabelas principais:

* `estudantes`
* `professores`

A tabela `estudantes` contém informações como:

* nome;
* nota;
* nível;
* curso;
* data de matrícula;
* status;
* desempenho.

A tabela `professores` contém informações como:

* nome;
* apelido;
* origem;
* função;
* curso;
* especialidade;
* metodologia.

## Consultas SQL desenvolvidas

As consultas SQL foram feitas com base nas mesmas ideias aplicadas nas consultas MongoDB/NoSQL.

Foram desenvolvidas consultas para:

* listar todos os estudantes;
* listar todos os professores;
* ordenar estudantes por nome;
* exibir apenas o nome dos estudantes;
* filtrar estudantes por curso;
* filtrar estudantes por nota;
* filtrar estudantes com nota entre 9 e 10;
* buscar estudantes pelo nome;
* selecionar estudantes que fazem mais de um curso;
* selecionar estudantes que fazem C++ e Cibersegurança;
* selecionar professores por curso;
* selecionar professores que lecionam QA, Unity ou C#;
* selecionar professores de Desenvolvimento de Jogos;
* listar estudantes do curso de Banco de Dados;
* contar estudantes por curso.

Como no MongoDB os cursos foram armazenados como arrays e no SQLite os cursos foram armazenados como texto, algumas consultas SQL utilizam `LIKE` para buscar cursos dentro do campo `curso`.

## Observação sobre MongoDB e SQL

No MongoDB, os dados foram trabalhados em formato de documentos JSON, permitindo o uso de arrays e consultas com operadores como `$in`, `$all`, `$gte`, `$lte`, `$regex`, `$exists`, `$size` e `aggregate`.

No SQL com SQLite, os dados foram organizados em tabelas. Para manter a equivalência com a estrutura dos arquivos JSON, os cursos foram armazenados em formato de texto separado por vírgulas, permitindo consultas com `LIKE`, `ORDER BY`, `BETWEEN`, `COUNT` e `UNION ALL`.

Dessa forma, o projeto demonstra uma comparação prática entre consultas NoSQL e consultas SQL.

## Testes automatizados

O projeto também possui testes automatizados com Cypress, utilizados para validar a interface e os principais comportamentos da aplicação.

Os testes verificam ações como:

* carregar estudantes;
* carregar professores;
* executar consultas;
* limpar resultados;
* validar elementos exibidos na tela.

## Autor

Richard Marlon Balestrim
