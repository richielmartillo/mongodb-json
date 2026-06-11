// 1. Selecione todos os estudantes, ordenando pelo nome em ordem alfabética.
db.estudantes.find().sort({ nome: 1 })


// 2. Seleciona todos os estudantes, exibindo apenas o nome e ocultando o _id.
db.estudantes.find(
  {},
  { _id: 0, nome: 1 }
).sort({ nome: 1 })


// 3. Selecione todos os estudantes do curso de QA.
db.estudantes.find({ curso: "QA" })


// 4. Seleciona estudantes que fazem QA ou Cibersegurança.
db.estudantes.find(
  { curso: { $in: ["QA", "Introdução à Programação"] } },
  { _id: 0, nome: 1, curso: 1, nota: 1 }
).sort({ nome: 1 })


// 5. Selecione todos os estudantes com nota maior ou igual a 7.
db.estudantes.find({ nota: { $gte: 7 } })


// 6. Seleciona estudantes com nota entre 9 e 10.
db.estudantes.find(
  { nota: { $gte: 7, $gte: 8 } },
  { _id: 0, nome: 1, nota: 1, curso: 1 }
).sort({ nota: 1 })


// 7. Seleciona estudantes com nota entre 9 e 10 que fazem o curso de Análise de Seistemas.
db.estudantes.find(
  {
    nota: { $gte: 9, $lte: 10 },
    curso: "Análise de Sistemas"
  },
  { _id: 0, nome: 1, nota: 1, curso: 1 }
).sort({ nota: 1 })


// 8. Selecione todos os estudantes que possuem a palavra "Lothbrok" no nome.
db.estudantes.find({ nome: /Lothbrok/i })


// 9. Selecione todos os estudantes que fazem mais de um curso.
db.estudantes.find(
  {
    curso: { $exists: true },
    $expr: { $gt: [{ $size: "$curso" }, 1] }
  },
  { _id: 0, nome: 1, curso: 1 }
)

// 10. Seleciona estudantes que fazem C++ e Cibersegurança, com nota 7 ou maior.
db.estudantes.find(
  {
    curso: { $all: [/^C\+\+$/i, /^Cibersegurança$/i] },
    nota: { $gte: 7 }
  },
  { _id: 0, nome: 1, curso: 1, nota: 1 }
).sort({ nota: -1 })


// 11. Seleciona todos os professores.
db.professores.find(
  {},
  { _id: 0, nome: 1, curso: 1, especialidade: 1 }
)

// 12. Seleciona professores que lecionam cursos relacionados a QA.
db.professores.find(
  { curso: /QA/i },
  { _id: 0, nome: 1, curso: 1, especialidade: 1 }
)


// 13. Seleciona professores que lecionam QA, Unity ou C#.
db.professores.find(
  {
    curso: { $in: [/^QA$/i, /^Unity$/i, /^C#$/i] }
  },
  { _id: 0, nome: 1, curso: 1, especialidade: 1 }
)


// 14. Selecione todos os professores que lecionam mais de um curso.
db.professores.find({
  cursos: { $exists: true },
  $expr: { $gt: [{ $size: "$cursos" }, 1] }
})


// 15. Seleciona professores que lecionam o curso Desenvolvimento de Jogos.
db.professores.find(
  { curso: "Desenvolvimento de Jogos" },
  { _id: 0, nome: 1, curso: 1, especialidade: 1 }
)


// 16. Lista apenas o nome e a nota dos estudantes do curso de Banco de Dados.
db.estudantes.find(
  { curso: "Banco de Dados" },
  { _id: 0, nome: 1, nota: 1 }
)

// 17. Conta quantos estudantes existem por curso, ordenado do maior para o menor.
db.estudantes.aggregate([
  {
    $unwind: "$curso"
  },
  {
    $group: {
      _id: "$curso",
      totalEstudantes: { $sum: 1 }
    }
  },
  {
    $project: {
      _id: 0,
      curso: "$_id",
      totalEstudantes: 1
    }
  },
  {
    $sort: { totalEstudantes: -1 }
  }
])