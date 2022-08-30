let content = document.getElementById("content"),
    procesador = document.getElementById("procesador"),
    memorias = document.getElementById("memorias"),
    audifonos = document.getElementById("audifonos"),
    componentes = document.getElementById("componentes");
    

const Home_page = () =>
{

    procesador.innerHTML = null;
    memorias.innerHTML = null;
    audifonos.innerHTML = null;
    componentes.innerHTML = null;

    const render = (n, c) =>
    {
        return `<div class="shadow"><div class="card"><p>${n}, ${c}</p></div></div>`;
    }

    
    const apiProd = fetch("http://localhost/TiendaComputadoras/controller/productoController.php?op=getProdHome")
    apiProd.then(resp => (resp.json()
            .then(data => {
                data.forEach(element => {
                    const {Nombre, Caracteristicas} = element;
                    procesador.innerHTML = procesador.innerHTML + render(Nombre, Caracteristicas);
                });
            })
        ));
    
    const apiMemorias = fetch("http://localhost/TiendaComputadoras/controller/productoController.php?op=getProdHome")
    apiMemorias.then(resp => (resp.json()
            .then(data => {
                data.forEach(element => {
                    const {Nombre, Caracteristicas} = element;
                    memorias.innerHTML = memorias.innerHTML + render(Nombre, Caracteristicas);
                });
            })
        ));

    const apiAudifonos = fetch("http://localhost/TiendaComputadoras/controller/productoController.php?op=getProdHome")
    apiAudifonos.then(resp => (resp.json()
            .then(data => {
                data.forEach(element => {
                    const {Nombre, Caracteristicas} = element;
                    audifonos.innerHTML = audifonos.innerHTML + render(Nombre, Caracteristicas);
                });
            })
        ));

    const apiComponentes = fetch("http://localhost/TiendaComputadoras/controller/productoController.php?op=getProdHome")
    apiComponentes.then(resp => (resp.json()
            .then(data => {
                data.forEach(element => {
                    const {Nombre, Caracteristicas} = element;
                    componentes.innerHTML = componentes.innerHTML + render(Nombre, Caracteristicas);
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
