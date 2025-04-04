// Confirmação de presença
async function confirmarPresenca() {
    let nome = document.getElementById("nome").value;
    let email = document.getElementById("acompanhante").value;

    let dados = { nome: nome, acompanhante: acompanhante };

    try {
        const resposta = await fetch("http://localhost:8080/api/convidados", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(dados)
        });

        if (resposta.ok) {
            alert("Presença confirmada com sucesso!");
            document.getElementById("formulario").reset();
        } else {
            alert("Erro ao confirmar presença.");
        }
    } catch (error) {
        console.error("Erro:", error);
    }
}

// Listar convidados em formato de tabela
async function listarConvidados() {
    try {
        const resposta = await fetch("http://localhost:8080/api/convidados");
        const convidados = await resposta.json();

        let tabela = document.getElementById("lista-convidados");
        tabela.innerHTML = ""; // Limpa a tabela antes de carregar os dados

        convidados.forEach(convidado => {
            let linha = document.createElement("tr");

            let colunaNome = document.createElement("td");
            colunaNome.textContent = convidado.nome;

            let colunaEmail = document.createElement("td");
            colunaEmail.textContent = (convidado.email && convidado.email.trim() !== "") 
                ? convidado.email 
                : "Nenhum";

            linha.appendChild(colunaNome);
            linha.appendChild(colunaEmail);
            tabela.appendChild(linha);
        });
    } catch (error) {
        console.error("Erro ao buscar convidados:", error);
        document.getElementById("lista-convidados").innerHTML = "<tr><td colspan='2'>Erro ao carregar convidados.</td></tr>";
    }
}






