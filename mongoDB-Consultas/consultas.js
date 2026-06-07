// 1. Selecione todos os estudantes, ordenando pelo nome em ordem alfabética.
db.estudantes.find().sort({ nome: 1 })

// 1. Seleciona todos os estudantes, exibindo apenas o nome e ocultando o _id.
db.estudantes.find(
  {},
  { _id: 0, nome: 1 }
).sort({ nome: 1 })

// 2. Selecione todos os estudantes do curso de QA.
db.estudantes.find({ curso: "QA" })

// 2. Seleciona estudantes que fazem QA ou Cibersegurança.
db.estudantes.find(
  { curso: { $in: ["QA", "Introdução à Programação"] } },
  { _id: 0, nome: 1, curso: 1, nota: 1 }
).sort({ nome: 1 })

// 3. Selecione todos os estudantes com nota maior ou igual a 7.
db.estudantes.find({ nota: { $gte: 7 } })

// 3. Seleciona estudantes com nota entre 9 e 10.
db.estudantes.find(
  { nota: { $gte: 7, $gte: 8 } },
  { _id: 0, nome: 1, nota: 1, curso: 1 }
).sort({ nota: 1 })

// 3. Seleciona estudantes com nota entre 9 e 10 que fazem o curso de Análise de Seistemas.
db.estudantes.find(
  {
    nota: { $gte: 9, $lte: 10 },
    curso: "Análise de Sistemas"
  },
  { _id: 0, nome: 1, nota: 1, curso: 1 }
).sort({ nota: 1 })

// 4. Selecione todos os estudantes que possuem a palavra "Lothbrok" no nome.
db.estudantes.find({ nome: /Lothbrok/i })

// 5. Selecione todos os estudantes que fazem mais de um curso.
db.estudantes.find({
  cursos: { $exists: true },
  $expr: { $gt: [{ $size: "$cursos" }, 1] }
})

// 6. Selecione todos os professores com cargo igual a Professor.
db.professores.find({ cargo: "Professor" })

// 7. Selecione todos os professores que lecionam o curso de QA.
db.professores.find({ cursos: "QA" })

// 8. Selecione todos os professores que lecionam mais de um curso.
db.professores.find({
  cursos: { $exists: true },
  $expr: { $gt: [{ $size: "$cursos" }, 1] }
})

// 9. Liste apenas o nome e a nota dos estudantes do curso de SQL.
db.estudantes.find(
  { curso: "Artista Digital" },
  { _id: 0, nome: 1, nota: 1 }
)

// 10. Conte quantos estudantes existem por curso.
db.estudantes.aggregate([
  {
    $group: {
      _id: "$curso",
      total: { $sum: 1 }
    }
  }
])