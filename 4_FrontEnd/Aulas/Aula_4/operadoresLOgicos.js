// AND = &&
// OR  = ||
// NOT = !

const a = 10;
const b = 50;


if(a > b || b > a){
    console.log("Entrei no IF");
}

// &&
const temp = 20;
if(temp > 18 && temp < 25){
    console.log("A temperatura está boa para trabalhar!");
}else{
    console.log("A temperatura não é a ideal para trabalhar hoje!");
}

// !
const isRaining = true;
if(!isRaining){
    console.log("Não está chovendo");
}else{
    console.log("Está chovendo firme!");
}

// Ternario
const idade = 18;

let verificaIdade = idade >= 18 ? "Maior de idade" : "Menor de idade"; //Aqui é um if Ternario.
console.log(verificaIdade);


//switch case
let cor = "roxo";
switch(cor){
    case "vermelho":
        console.log("A cor é vermelho");
    break;
    
    case "roxo":
        console.log("A cor é roxo");
    break;

    default:
        console.log("Cor desconhecida");
    break;
}