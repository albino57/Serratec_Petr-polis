//Variaveis: var, let, const

//tem escopo global, todo o arquivo tem acesso a ela. pode ser redeclarada e reatribuida.
var nome = "Rafael";
console.log(nome);

nome = "Carina";
console.log(nome);

function printAge(){
    const age = 30;
    console.log(age);
}

function printPhone(){
    let phone = "12345";
    console.log(phone);
}

//console.log(phone);
//console.log(age);

printPhone();
printAge();