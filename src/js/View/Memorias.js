
let memorias = document.getElementById("memorias");


const render = (n, p, i) =>
{
    return `<div class="shadow"><div class="card"><img src="http://localhost/tiendaComputadoras/src/images/${i}" width="150px" height="150px" alt=""><br/><p> ${n}</p><p>Precio : ${p}$</p></div></div>`;
}


var data = {Tipo: 2};
        
        const apiLogin = fetch("http://localhost/tiendaComputadoras/Controller/ProductoController.php?op=getAllTipo", {
           method: 'POST', 
           body: JSON.stringify(data), // data can be `string` or {object}!
           headers:{
             'Content-Type': 'application/json'
           }
         }).then(res => res.json())
         .then(response => {
            response.forEach(element => {
                const {Nombre, Precio, ImagenProducto} = element;
                memorias.innerHTML = memorias.innerHTML + render(Nombre, Precio, ImagenProducto);
            });
            
         });  