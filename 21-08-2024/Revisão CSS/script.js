let nomes = [];

document.getElementById('btn-enviar')
.addEventListener('click', function(e) {
  e.preventDefault(); // Anula o comportamento padrão de submissão do formulário
  
  nomes.push(document.getElementById('input-nome').value);
  document.getElementById('input-nome').value = "";

  exibirLista();
});


function exibirLista() {
  let linhas = "";

  nomes.forEach((nome) => {
    linhas += `<li>${nome}</li>`
  });

  document.getElementById('lista').innerHTML = linhas;
}
