let content = document.getElementById("content");
let procesador = document.getElementById("procesador");

const Home_page = () =>
{
    content.innerHTML = null;

    const render = (n, c) =>
    {
        return `<div class="shadow"><div class="card"><p>${n}, ${c}</p></div></div>`;
    }

    
    const apiProd = fetch("http://localhost/yoshi-tecno/controller/productoController.php?op=getProdHome")
    apiProd.then(resp => (resp.json()
            .then(data => {
                data.forEach(element => {
                    const {Nombre, Caracteristicas} = element;
                    procesador.innerHTML = procesador.innerHTML + render(Nombre, Caracteristicas);
                });
            })
        ));
        
       return content.innerHTML =  `
       <div class="banner">
       <header>
       <h1 class="Name">Bienvenidos a Yoshi-Tecno</h1>
       </header>
   </div>
        `;
     
}

export {Home_page};
