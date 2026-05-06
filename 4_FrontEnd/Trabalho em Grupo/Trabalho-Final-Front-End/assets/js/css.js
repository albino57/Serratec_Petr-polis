
// Funções
function load_divArea(topico){

    const conteudo = {
        'primeiroCodigoCSS': `
            <div class="primeiroCodigoCSS_js">
                <h1> Aqui é o primeiro código </h1>
                <p> Quando falamos de CSS, precisamos garantir que ele vai estar minimamente pronto para uso. A forma mais elegante de fazer isso é usar
                    os códigos abaixo para fazer um 'reset' no código: </p>

                <br>

                <p> *{
                    margin: 0;
                    padding: 0;
                    box-sizing: border-box;
                    }
                </p>
            </div>`
            ,
            'fontes':`
                <div class="fontes_js">
                    <h1> F o n t e s </h1>
                    <p> Alguns códigos CSS de fontes são muito importante para manter um boa estilização: </p>
                    <br>

                    <br>

                    <p> color: é um código que dá cor a um fonte. Ex: 'color: white;'
                        <br><br>
                        font-size: é outro código bem bacana que aumenta/diminui o tamanho da fonte. Ex: 'font-size: 18px;'
                        <br><br>
                        font-family: aqui é outro bom código para o tipo de fonte. Ex: font-family: "Raleway", sans-serif;
                        <br><br>
                        
                </div>`
                ,
                'estilizacao':`
                    <div class="estilizacao_js">
                        <h1> Como Declarar Estilização </h1>

                        <p>Para estilizarmos o código por 'class' ou 'id', precisamos seguir a seguinte sintaxe de
                           . para class e @ para id. E para estilizar um tag não precisamos inserir . ou @.</p>

                        <br><br>

                        <p> .algumaCLASS serve para fazer uma chamada de CLASSE para estilizar.</p>

                        <br>

                        <p> @algumID serve para fazer uma chamada de ID para estilizar.</p>

                        <br>

                        <p> algumaTAG serve para fazer uma chamada de TAG para estilizar.</p>

                    </div>
                `
                ,
                'tamanhos':`
                    <div class="tamanhos_js">
                        <h1> Tamanhos e direções </h1>

                        <br>

                        <p> Em CSS precisamos informar geralmente o tamanho, largura e posições de onde nossas TAGs estilizadas ficaram.</p>

                        <br><br>

                        <p> height: e width: são propriedades que de altura e largura Ex: height: 5rem; width: 100%; </p>

                        <br>

                        <p> display: flex; serve para ativar o flexbox para organizar os elementos filhos dentro de um conteiner pai. </p>

                        <br>

                        <p> flex-direction: column; ou flex-direction: row; 
                            serve para dar direção/ organizar em coluna(column) ou row(linha). </p>

                        <br>

                        <p> justify-content: center; serve para centralizar horizontalmente os itens filhos ao longo do eixo principal</p>

                        <br>

                        <p> align-items: center; serve para centralizar verticalmente os itens filhos ao longo do eixo principal</p>
                    </div>
                `
    };

    const areaPrincipal = document.getElementById('id_div_area');

    if(conteudo[topico]){
        areaPrincipal.innerHTML = conteudo[topico];
    }
}