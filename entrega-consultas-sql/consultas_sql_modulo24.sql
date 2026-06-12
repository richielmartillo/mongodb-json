-- Criar tabela de estudantes
CREATE TABLE estudantes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    nota REAL,
    nivel TEXT,
    curso TEXT,
    data_matricula TEXT,
    status TEXT,
    desempenho TEXT
);

-- Criar tabela de professores
CREATE TABLE professores (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    apelido TEXT,
    origem TEXT,
    funcao TEXT,
    curso TEXT,
    especialidade TEXT,
    metodologia TEXT
);

-- Inserir dados dos professores
INSERT INTO professores 
(nome, apelido, origem, funcao, curso, especialidade, metodologia)
VALUES
(
    'Morpheus',
    NULL,
    'Matrix',
    NULL,
    'QA, Introdução à Programação',
    'Lógica, tecnologia e despertar digital',
    'Ensino baseado em desafios, escolha consciente e prática intensiva'
),
(
    'Emmett Brown',
    'Doc Brown',
    'De Volta para o Futuro',
    NULL,
    'Introdução à Programação, C#, Front-end',
    'Invenção, lógica e experimentação tecnológica',
    'Ensino baseado em experimentos, criatividade e resolução prática de problemas'
),
(
    'Josh Futturman',
    NULL,
    'Future Man',
    'Professor auxiliar',
    'Unity, C#, Desenvolvimento de Jogos',
    'Jogos digitais, lógica prática e desenvolvimento com engines',
    'Ensino descontraído, baseado em tentativa e erro, prática com jogos e desafios criativos'
);

-- Confirmar inserção dos professores
SELECT *
FROM professores;

-- Inserção de um estudante para testar a tabela estudantes
INSERT INTO estudantes
(nome, nota, nivel, curso, data_matricula, status, desempenho)
VALUES
(
    'Richard Balestrim',
    9,
    'QA em formação, Intermediário',
    'QA, Introdução à Programação',
    NULL,
    'Aprovado',
    'Bom desempenho em testes de software, com evolução constante em automação e organização dos projetos.'
);

-- Confirmar inserção inicial do estudante de teste
SELECT *
FROM estudantes;

-- Limpar a tabela de estudantes antes de inserir a lista completa
DELETE FROM estudantes;


-- Inserir lista completa de estudantes
INSERT INTO estudantes
(nome, nota, nivel, curso, data_matricula, status, desempenho)
VALUES
(
    'Richard Balestrim',
    9,
    'QA em formação, Intermediário',
    'QA, Introdução à Programação',
    NULL,
    'Aprovado',
    'Bom desempenho em testes de software, com evolução constante em automação e organização dos projetos.'
),
(
    'Sandokan',
    7,
    'Estratégico',
    'C, C++, Cibersegurança',
    NULL,
    'Aprovado',
    'Aluno estratégico e corajoso, mas precisa melhorar a disciplina nos estudos técnicos.'
),
(
    'Robinson Crusoe',
    8,
    'Autodidata',
    'Engenharia de Dados, JavaScript (Node.js), Python',
    NULL,
    'Aprovado',
    'Aluno independente, aprende bem sozinho e consegue resolver problemas com criatividade.'
),
(
    'Conde de Monte Cristo',
    10,
    'Estratégico',
    'Arquitetura de Nuvem, Engenharia de Confiabilidade',
    NULL,
    'Aprovado',
    'Excelente planejamento, alta capacidade analítica e ótimo desempenho em projetos complexos.'
),
(
    'Leonardo da Vinci',
    10,
    'Gênio',
    'Engenharia de Software, Inteligência Artificial, Design de Interfaces',
    '03-06-2026',
    'Aprovado',
    'Aluno extremamente criativo, com grande facilidade para conectar tecnologia, arte e inovação.'
),
(
    'Tomás de Aquino',
    7,
    'Avançado',
    'Lógica Computacional, Análise de Sistemas, Banco de Dados',
    NULL,
    'Aprovado',
    'Tem raciocínio lógico forte, mas apresenta dificuldade para se adaptar à prática moderna da programação.'
),
(
    'Arquimedes',
    8,
    'Gênio',
    'Algoritmos, Matemática Computacional, Engenharia de Software',
    NULL,
    'Aprovado',
    'Aluno genial em matemática, mas não se identificou muito com a metodologia da aula e perdeu rendimento.'
),
(
    'Ada Lovelace',
    10,
    'Avançado',
    'Programação, Algoritmos, Ciência da Computação',
    NULL,
    'Aprovado',
    'Excelente desempenho em programação e algoritmos, com grande visão lógica e capacidade de abstração.'
),
(
    'Hermione Granger',
    10,
    'Avançado',
    'Cibersegurança, Análise de Sistemas, Automação de Testes',
    NULL,
    'Aprovado',
    'Muito dedicada, organizada e detalhista, com ótimo desempenho em testes e análise de sistemas.'
),
(
    'Hipátia de Alexandria',
    10,
    'Avançado',
    'Ciência de Dados, Algoritmos, Matemática Computacional',
    NULL,
    'Aprovado',
    'Excelente raciocínio matemático e analítico, com ótimo desempenho em ciência de dados, algoritmos e lógica computacional.'
),
(
    'Daenerys Targaryen',
    8,
    'Líder',
    'Gestão de Projetos de TI, Cibersegurança, Análise de Sistemas',
    NULL,
    'Aprovado',
    'Boa liderança e visão estratégica, mas precisa melhorar a colaboração em equipe e o controle emocional.'
),
(
    'Alan Turing',
    10,
    'Gênio Computacional',
    'Ciência da Computação, Criptografia, Inteligência Artificial',
    NULL,
    'Aprovado',
    'Excelente raciocínio lógico e grande capacidade para resolver problemas complexos em computação e segurança da informação.'
),
(
    'Júlio César',
    8,
    'Líder Estratégico',
    'Gestão de Projetos de TI, Análise de Sistemas, Segurança da Informação',
    NULL,
    'Aprovado',
    'Boa liderança e visão estratégica, mas precisa melhorar a adaptação às ferramentas modernas de tecnologia.'
),
(
    'Aquiles',
    6,
    'Estratégico',
    'Segurança da Informação, Gestão de Riscos, Estratégia em TI',
    NULL,
    'Desaprovado',
    'Aluno determinado, mas não se adaptou bem às atividades de design e teve dificuldade para trabalhar com detalhes visuais.'
),
(
    'Espártaco',
    8,
    'Guerreiro Estratégico',
    'Gestão de Projetos de TI, Segurança da Informação, Análise de Sistemas',
    NULL,
    'Aprovado',
    'Boa liderança e capacidade de organização, com forte senso estratégico, mas precisa melhorar a adaptação às ferramentas digitais.'
),
(
    'Ragnar Lothbrok',
    8,
    'Líder Rebelde',
    'Segurança da Informação, Cibersegurança, Estratégia em TI',
    NULL,
    'Aprovado',
    'Aluno estratégico e corajoso, com bom desempenho em segurança e gestão de riscos, mas precisa melhorar a disciplina em ambientes mais técnicos.'
),
(
    'Sun Tzu',
    9,
    'Estrategista',
    'Segurança da Informação, Gestão de Riscos, Análise Estratégica',
    NULL,
    'Aprovado',
    'Excelente em estratégia, análise de riscos e tomada de decisão, com desempenho forte em segurança da informação.'
),
(
    'Genghis Khan',
    8,
    'Conquistador Estratégico',
    'Governança de TI, Arquitetura de Sistemas, Liderança em Tecnologia',
    NULL,
    'Aprovado',
    'Aluno estratégico e muito determinado, com boa visão de liderança e segurança, mas precisa melhorar a colaboração em ambientes organizados.'
),
(
    'Alexandre, o Grande',
    9,
    'Conquistador Estratégico',
    'Gestão de Projetos de TI, Transformação Digital, Análise de Sistemas',
    NULL,
    'Aprovado',
    'Aluno ambicioso e estratégico, com grande capacidade de liderança, mas precisa melhorar a paciência e a escuta da equipe.'
),
(
    'Ricardo Coração de Leão',
    5,
    'Iniciante',
    'Front-end, HTML, CSS',
    NULL,
    'Desaprovado',
    'Aluno com iniciativa, mas teve dificuldade para organizar os estudos e entregar os projetos no prazo.'
),
(
    'Joana d''Arc',
    8,
    'Determinada',
    'UX Design, Prototipagem, Design de Interfaces',
    NULL,
    'Aprovado',
    'Aluna determinada e comunicativa, com bom desempenho em experiência do usuário e criação de interfaces simples.'
),
(
    'Eleanor da Aquitânia',
    9,
    'Avançada',
    'UI Design, UX Research, Design Responsivo',
    NULL,
    'Aprovado',
    'Aluna organizada e criativa, com ótimo desempenho em design visual e experiência do usuário.'
),
(
    'Saladino',
    8,
    'Intermediário',
    'C#, Lógica de Programação, Desenvolvimento Desktop',
    NULL,
    'Aprovado',
    'Aluno disciplinado, com bom raciocínio lógico, mas ainda precisa praticar mais a sintaxe da linguagem C#.'
),
(
    'Marco Polo',
    8,
    'Explorador Digital',
    'Front-end, JavaScript Básico, Design Responsivo',
    NULL,
    'Aprovado',
    'Aluno curioso e observador, com facilidade para aprender novas ferramentas e criar páginas interativas.'
),
(
    'Sun Zungão',
    9,
    'Estrategista',
    'Segurança da Informação, Gestão de Riscos, Análise Estratégica',
    NULL,
    'Aprovado',
    'Excelente em estratégia, análise de riscos e tomada de decisão, com desempenho forte em segurança da informação.'
),
(
    'ricardo arjona',
    7,
    'Estratégico',
    'C, C++, cibersegurança',
    NULL,
    'Aprovado',
    'Aluno estratégico e corajoso, mas precisa melhorar a disciplina nos estudos técnicos.'
),
(
    'Alejandro Lerner',
    8,
    'Criativo Digital',
    'Front-end, JavaScript Básico, UX Design',
    NULL,
    'Aprovado',
    'Aluno criativo e sensível à experiência do usuário, com facilidade para criar interfaces visuais, mas ainda precisa praticar mais lógica de programação.'
),
(
    'Diego Torres',
    8,
    'Criativo Digital',
    'Front-end, JavaScript Básico, UX Design',
    NULL,
    'Aprovado',
    'Aluno criativo e comunicativo, com bom desempenho em criação de interfaces e experiência do usuário, mas ainda precisa praticar mais lógica de programação.'
),
(
    'Alejandro Dolina',
    9,
    'Pensador Criativo',
    'Lógica de Programação, UX Writing, Front-end',
    NULL,
    'Aprovado',
    'Aluno criativo e analítico, com facilidade para organizar ideias, construir narrativas digitais e aplicar lógica em projetos de programação.'
),
(
    'Ragnarok Lothbrok',
    8,
    'Líder Rebelde',
    'Segurança da Informação, Cibersegurança, Estratégia em TI',
    NULL,
    'Aprovado',
    'Aluno estratégico e corajoso, com bom desempenho em segurança e gestão de riscos, mas precisa melhorar a disciplina em ambientes mais técnicos.'
),
(
    'Bjorn Lothbrok',
    8,
    'Explorador Estratégico',
    'Front-end, JavaScript Básico, Design Responsivo',
    NULL,
    'Aprovado',
    'Aluno determinado e explorador, com facilidade para aprender novas ferramentas, mas precisa melhorar a organização do código e a atenção aos detalhes.'
),
(
    'Ubbe Ragnarsson Lothbrok',
    8,
    'Explorador Digital',
    'Front-end, UX Design, Design Responsivo',
    NULL,
    'Aprovado',
    'Aluno equilibrado e observador, com facilidade para entender a experiência do usuário e criar interfaces simples, mas ainda precisa praticar mais JavaScript.'
),
(
    'Ragnar Lodbrok',
    8,
    'Artista Digital',
    'Design Digital, CSS Avançado, Animações Web',
    NULL,
    'Aprovado',
    'Aluno com forte senso visual e criatividade, com bom desempenho em estilos, animações e criação de páginas com identidade própria.'
);

-- Confirmar inserção dos estudantes
SELECT *
FROM estudantes;


-- 1. Selecionar todos os estudantes, ordenando pelo nome em ordem alfabética.
SELECT *
FROM estudantes
ORDER BY nome ASC;


-- 2. Selecionar todos os estudantes, exibindo apenas o nome.
SELECT nome
FROM estudantes
ORDER BY nome ASC;


-- 3. Selecionar todos os estudantes do curso de QA.
SELECT *
FROM estudantes
WHERE curso LIKE '%QA%';


-- 4. Selecionar estudantes que fazem QA ou Introdução à Programação.
SELECT nome, curso, nota
FROM estudantes
WHERE curso LIKE '%QA%'
   OR curso LIKE '%Introdução à Programação%'
ORDER BY nome ASC;


-- 5. Selecionar todos os estudantes com nota maior ou igual a 7.
SELECT *
FROM estudantes
WHERE nota >= 7;


-- 6. Selecionar estudantes com nota entre 9 e 10.
SELECT nome, nota, curso
FROM estudantes
WHERE nota BETWEEN 9 AND 10
ORDER BY nota ASC;


-- 7. Selecionar estudantes com nota entre 9 e 10 que fazem o curso de Análise de Sistemas.
SELECT nome, nota, curso
FROM estudantes
WHERE nota BETWEEN 9 AND 10
  AND curso LIKE '%Análise de Sistemas%'
ORDER BY nota ASC;


-- 8. Selecionar todos os estudantes que possuem a palavra "Lothbrok" no nome.
SELECT *
FROM estudantes
WHERE nome LIKE '%Lothbrok%';


-- 9. Selecionar todos os estudantes que fazem mais de um curso.
SELECT nome, curso
FROM estudantes
WHERE curso LIKE '%,%';


-- 10. Selecionar estudantes que fazem C++ e Cibersegurança, com nota 7 ou maior.
SELECT nome, curso, nota
FROM estudantes
WHERE curso LIKE '%C++%'
  AND (
      curso LIKE '%Cibersegurança%'
      OR curso LIKE '%cibersegurança%'
  )
  AND nota >= 7
ORDER BY nota DESC;


-- 11. Selecionar todos os professores.
SELECT nome, curso, especialidade
FROM professores;


-- 12. Selecionar professores que lecionam cursos relacionados a QA.
SELECT nome, curso, especialidade
FROM professores
WHERE curso LIKE '%QA%';


-- 13. Selecionar professores que lecionam QA, Unity ou C#.
SELECT nome, curso, especialidade
FROM professores
WHERE curso LIKE '%QA%'
   OR curso LIKE '%Unity%'
   OR curso LIKE '%C#%';


-- 14. Selecionar todos os professores que lecionam mais de um curso.
SELECT *
FROM professores
WHERE curso LIKE '%,%';


-- 15. Selecionar professores que lecionam o curso Desenvolvimento de Jogos.
SELECT nome, curso, especialidade
FROM professores
WHERE curso LIKE '%Desenvolvimento de Jogos%';


-- 16. Listar apenas o nome e a nota dos estudantes do curso de Banco de Dados.
SELECT nome, nota
FROM estudantes
WHERE curso LIKE '%Banco de Dados%';


-- 17. Contar quantos estudantes existem por curso.
-- Como no SQL os cursos foram salvos como texto, esta consulta conta os cursos principais usando LIKE.
SELECT 'QA' AS curso, COUNT(*) AS totalEstudantes
FROM estudantes
WHERE curso LIKE '%QA%'

UNION ALL

SELECT 'Introdução à Programação', COUNT(*)
FROM estudantes
WHERE curso LIKE '%Introdução à Programação%'

UNION ALL

SELECT 'Cibersegurança', COUNT(*)
FROM estudantes
WHERE curso LIKE '%Cibersegurança%'
   OR curso LIKE '%cibersegurança%'

UNION ALL

SELECT 'Análise de Sistemas', COUNT(*)
FROM estudantes
WHERE curso LIKE '%Análise de Sistemas%'

UNION ALL

SELECT 'Front-end', COUNT(*)
FROM estudantes
WHERE curso LIKE '%Front-end%'

UNION ALL

SELECT 'Banco de Dados', COUNT(*)
FROM estudantes
WHERE curso LIKE '%Banco de Dados%'

UNION ALL

SELECT 'Engenharia de Software', COUNT(*)
FROM estudantes
WHERE curso LIKE '%Engenharia de Software%'

UNION ALL

SELECT 'Algoritmos', COUNT(*)
FROM estudantes
WHERE curso LIKE '%Algoritmos%'

ORDER BY totalEstudantes DESC;





