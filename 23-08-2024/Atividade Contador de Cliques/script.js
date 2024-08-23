let contador = 0;

document.getElementById('input_botao').addEventListener('click', function (e) {
  e.preventDefault();

  contador ++;
  document.getElementById('resultado').innerText = contador;

})\