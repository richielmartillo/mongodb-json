const resultado = document.getElementById("resultado");
const tituloResultado = document.getElementById("tituloResultado");

function formatarLista(valor) {
    if (Array.isArray(valor)) {
        return valor.join(", ");
    }

    return valor || "Não informado";
}

async function carregarEstudantes() {
    try {
        const resposta = await fetch("estudantes.json");
        const estudantes = await resposta.json();

        tituloResultado.textContent = "Lista de estudantes";
        resultado.className = "grid";
        resultado.innerHTML = "";

        estudantes.forEach((estudante) => {
            const statusClasse =
                estudante.status === "Aprovado"
                    ? "status-aprovado"
                    : "status-desaprovado";

            resultado.innerHTML += `
        <article class="card">
          <h3>${estudante.nome}</h3>
          <p><strong>Nota:</strong> ${estudante.nota}</p>
          <p><strong>Nível:</strong> ${formatarLista(estudante.nivel)}</p>
          <p><strong>Curso:</strong> ${formatarLista(estudante.curso)}</p>
          ${estudante.dataMatricula
                    ? `<p><strong>Data de matrícula:</strong> ${estudante.dataMatricula}</p>`
                    : ""
                }
          <p><strong>Status:</strong> <span class="${statusClasse}">${estudante.status}</span></p>
          <p><strong>Desempenho:</strong> ${estudante.desempenho}</p>
        </article>
      `;
        });
    } catch (erro) {
        mostrarErro("Não foi possível carregar o arquivo estudantes.json.");
    }
}

async function carregarProfessores() {
    try {
        const resposta = await fetch("professores.json");
        const professores = await resposta.json();

        tituloResultado.textContent = "Lista de professores";
        resultado.className = "grid";
        resultado.innerHTML = "";

        professores.forEach((professor) => {
            resultado.innerHTML += `
        <article class="card">
          <h3>${professor.nome}</h3>
          ${professor.apelido ? `<p><strong>Apelido:</strong> ${professor.apelido}</p>` : ""}
          ${professor.funcao ? `<p><strong>Função:</strong> ${professor.funcao}</p>` : ""}
          <p><strong>Origem:</strong> ${professor.origem}</p>
          <p><strong>Curso:</strong> ${formatarLista(professor.curso)}</p>
          <p><strong>Especialidade:</strong> ${professor.especialidade}</p>
          <p><strong>Metodologia:</strong> ${professor.metodologia}</p>
        </article>
      `;
        });
    } catch (erro) {
        mostrarErro("Não foi possível carregar o arquivo professores.json.");
    }
}

function mostrarConsultas() {
    tituloResultado.textContent = "Consultas MongoDB";

    resultado.className = "";
    resultado.innerHTML = `
    <pre class="codigo">
// Buscar todos os estudantes mostrando apenas o nome
db.estudantes.find({}, { nome: 1, _id: 0 })

// Buscar estudantes em ordem alfabética
db.estudantes.find({}, { nome: 1, _id: 0 }).sort({ nome: 1 })

// Buscar estudante pelo nome
db.estudantes.find(
  { nome: /rich/i },
  { nome: 1, nota: 1, nivel: 1, curso: 1, _id: 0 }
)

// Buscar estudantes do curso QA com nota 9
db.estudantes.find(
  {
    $and: [
      { curso: "QA" },
      { nota: { $eq: 9 } }
    ]
  },
  { nome: 1, curso: 1, nota: 1, _id: 0 }
)

// Buscar professores
db.professores.find({}, { nome: 1, curso: 1, _id: 0 })
    </pre>
  `;
}

function limparResultado() {
    tituloResultado.textContent = "Resultado";
    resultado.className = "grid";
    resultado.innerHTML = "";
}

function mostrarErro(mensagem) {
    tituloResultado.textContent = "Erro";
    resultado.className = "";
    resultado.innerHTML = `<p class="codigo">${mensagem}</p>`;
}