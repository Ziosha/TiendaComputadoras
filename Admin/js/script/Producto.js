let tipo = document.getElementById("proTipo"),
    proveedor = document.getElementById("proPro"),
    nombre = document.getElementById("proName"),
    caracteristica = document.getElementById("proCaracteristica"),
    precio = document.getElementById("PriceProduct"),
    stock = document.getElementById("stocktProduct"),
    btn = document.getElementById("btn-addProduct");



    btn.addEventListener("click", function ()
    {
        var data = {IdTipo : tipo.value, IdProveedor: proveedor.value, Nombre: nombre.value, Caracteristicas : caracteristica.value, Precio: precio.value, Stock: stock.value};
        
        const apiLogin = fetch("http://localhost/tiendaComputadoras/Controller/ProductoController.php?op=registerProducto", {
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
                alert("Producto agregado");
                location.reload();
            }
            else{
                alert("Producto no agregado");
            }
         });    
    });