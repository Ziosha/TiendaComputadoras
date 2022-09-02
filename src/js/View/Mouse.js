
let mouses = document.getElementById("mouse");

const sale = (x) =>
        {
          var data = {IdProducto: x, IdUsuario : 3, Cantidad : 1};
        
        const apiLogin = fetch("http://localhost/tiendaComputadoras/Controller/VentaController.php?op=registerVenta", {
           method: 'POST', 
           body: JSON.stringify(data), // data can be `string` or {object}!
           headers:{
             'Content-Type': 'application/json'
           }
         }).then(res => res.json())
         .catch(error => console.error('Error:', error))
         .then(response => {
            if(response == 0)
            {
                alert("Comprado");
                location.reload();
            }
            else{
                alert("Error al conprar");
            }
         });    
        }
const render = (n, p, i, id, s) =>
{
    
    return `<div class="shadow"><div class="card"><img class="images" src="http://localhost/tiendaComputadoras/src/images/${i}" width="150px" height="150px" alt=""><br/>
    <p> ${n}</p><p>Stock: ${s}   Precio : ${p}$</p><button class="boton" onclick="sale(${id})">Comprar</button></div></div>`;
}



var data = {Tipo: 8};
        
        const apiLogin = fetch("http://localhost/tiendaComputadoras/Controller/ProductoController.php?op=getAllTipo", {
           method: 'POST', 
           body: JSON.stringify(data), // data can be `string` or {object}!
           headers:{
             'Content-Type': 'application/json'
           }
         }).then(res => res.json())
         .then(response => {
            response.forEach(element => {
                const {Nombre, Precio, ImagenProducto, Id, Stock} = element;
                mouses.innerHTML = mouses.innerHTML + render(Nombre, Precio, ImagenProducto, Id, Stock);
            });
            
         });  