let series = ["A casa de Davi", "The choosen", "The Walking Dead"];

    console.log(series[1]); //imprimi o valor na posição especifica.
    console.log("Serie boa" + series[1]);
    console.log(`Serie boa também ${series[1]}`);
    console.log(series);    //imprimi o array inteiro.
    console.log(series.length);

    //adicionando ao final do array
    series.push("A era do Gelo");
    console.log(series);

    //map cria um novo array a partir de um existente, aplicando as condições desejadas.
    let numeros = [1,2,3,4,5];
    let numerosDobrados = numeros.map((numeros)=>{
        return numeros * 2;
    });
    console.log(numerosDobrados);

    //filtragem cria um novo array a partir de um existente, aplicando as condições de filtragem desejadas.
    let maiorQue2 = numeros.filter(numeros => numeros > 2);
    console.log("filter", maiorQue2);

    //find acho um elemento dentro de um array
    let maiorQue3 = numeros.find(numeros => numeros > 3);
    console.log("find", maiorQue3);
    