//Instâncias das variáveis
const btn = document.getElementById("btn");
const title = document.getElementById("title");

//chamda função de click conectando ao botão de id btn
btn.addEventListener("click", ()=>{
    title.textContent = "JavaScript!"; //muda o texto
    title.style.color = "red";         //muda a cor
});