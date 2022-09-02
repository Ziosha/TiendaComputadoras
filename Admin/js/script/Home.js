let admin = document.getElementById("administradores"),
    cliente = document.getElementById("clientes"),
    proveedor = document.getElementById("proveedores"),
    categoria = document.getElementById("categorias"),
    producto = document.getElementById("productos"),
    venta = document.getElementById("ventas");


 const countAdmin = fetch("http://localhost/tiendaComputadoras/Controller/ProductoController.php?op=countAdmin")
 countAdmin.then(resp => (resp.json()
            .then(data => {
                admin.innerHTML = data[0].cantidad;
            })
        ));

 const countClient = fetch("http://localhost/tiendaComputadoras/Controller/ProductoController.php?op=countCliente")
 countClient.then(resp => (resp.json()
            .then(data => {
                cliente.innerHTML = data[0].cantidad;
            })
        ));

const countProv = fetch("http://localhost/tiendaComputadoras/Controller/ProductoController.php?op=countProveedor")
countProv.then(resp => (resp.json()
            .then(data => {
                proveedor.innerHTML = data[0].cantidad;
            })
        ));

const countCat = fetch("http://localhost/tiendaComputadoras/Controller/ProductoController.php?op=countCategoria")
countCat.then(resp => (resp.json()
            .then(data => {
                categoria.innerHTML = data[0].cantidad;
            })
        ));

const countProd = fetch("http://localhost/tiendaComputadoras/Controller/ProductoController.php?op=countProducto")
countProd.then(resp => (resp.json()
            .then(data => {
                producto.innerHTML = data[0].cantidad;
            })
        ));

const countVenta = fetch("http://localhost/tiendaComputadoras/Controller/ProductoController.php?op=countVenta")
countVenta.then(resp => (resp.json()
            .then(data => {
                venta.innerHTML = data[0].cantidad;
            })
        ));