document.getElementById('btn-enviar')
.addEventListener('click', function(e) {
  e.preventDefault(); // Anula o comportamento padrão de submissão do formulário
  
  let nome = document.getElementById('input-nome').value;
  alert("O nome é: " + nome);

})



