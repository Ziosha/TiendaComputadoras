let ci = document.getElementById("DNIProvider"),
    nombre = document.getElementById("NameProvider"),
    telefono = document.getElementById("phoneProvider"),
    btn = document.getElementById("btn-addProvider");



    btn.addEventListener("click", function ()
    {
        var data = {Nombre:nombre.value,Telefono: telefono.value,Nit:ci.value};
        
        const apiLogin = fetch("http://localhost/tiendaComputadoras/Controller/ProveedorController.php?op=registerProveedor", {
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
                alert("proveedor agregado");
                location.reload();
            }
            else{
                alert("proveedor no agregado");
            }
         });    
    });