document.getElementById('input-botao').addEventListener('click', function (e) {
  e.preventDefault();

  let valor = document.getElementById('input-moeda').value;

  document.getElementById('resultado').innerText = "$" + valor * 5;

})