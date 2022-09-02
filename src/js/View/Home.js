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

    

    const render = (n, p, i, id, s) =>
    {
        
        return `<div class="shadow"><div class="card"><img class="images" src="http://localhost/tiendaComputadoras/src/images/${i}" width="150px" height="150px" alt=""><br/>
        <p> ${n}</p><p>Stock: ${s}   Precio : ${p}$</p><button class="boton" onclick="sale(${id})">Comprar</button></div></div>`;
    }

    
    const apiProd = fetch("http://localhost/TiendaComputadoras/controller/productoController.php?op=getProcesador")
    apiProd.then(resp => (resp.json()
            .then(data => {
                data.forEach(element => {
                    const {Nombre, Precio, ImagenProducto, Id, Stock} = element;
                    procesador.innerHTML = procesador.innerHTML + render(Nombre, Precio, ImagenProducto, Id, Stock);
                });
            })
        ));
    
    const apiMemorias = fetch("http://localhost/TiendaComputadoras/controller/productoController.php?op=getRam")
    apiMemorias.then(resp => (resp.json()
            .then(data => {
                data.forEach(element => {
                    const {Nombre, Precio, ImagenProducto, Id, Stock} = element;
                    memorias.innerHTML = memorias.innerHTML + render(Nombre, Precio, ImagenProducto, Id, Stock);
                });
            })
        ));

    const apiAudifonos = fetch("http://localhost/TiendaComputadoras/controller/productoController.php?op=getAudifono")
    apiAudifonos.then(resp => (resp.json()
            .then(data => {
                data.forEach(element => {
                    const {Nombre, Precio, ImagenProducto, Id, Stock} = element;
                    audifonos.innerHTML = audifonos.innerHTML + render(Nombre, Precio, ImagenProducto, Id, Stock);
                });
            })
        ));

    const apiComponentes = fetch("http://localhost/TiendaComputadoras/controller/productoController.php?op=getTeclado")
    apiComponentes.then(resp => (resp.json()
            .then(data => {
                data.forEach(element => {
                    const {Nombre, Precio, ImagenProducto, Id, Stock} = element;
                    componentes.innerHTML = componentes.innerHTML + render(Nombre, Precio, ImagenProducto, Id, Stock);
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
