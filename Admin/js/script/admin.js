let ci = document.getElementById("DNIAdmin"),
    nombre = document.getElementById("NameAdmin"),
    direccion = document.getElementById("LastNameAdmin"),
    telefono = document.getElementById("phoneAdmin"),
    email = document.getElementById("emailAdmin"),
    user = document.getElementById("UserNameAdmin"),
    pass = document.getElementById("passwordAdmin"),
    btn = document.getElementById("btn-addAdmin");



    btn.addEventListener("click", function ()
    {
        var data = {Ci:ci.value,Nombre:nombre.value,Direccion:direccion.value,Telefono:telefono.value,Email:email.value,Username:user.value,Password:pass.value};
        
        const apiLogin = fetch("http://localhost/tiendaComputadoras/Controller/UsuarioController.php?op=registerAdmin", {
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
                alert("Administrador agregado");
                location.reload();
            }
            else{
                alert("Administrador no agregado");
            }
         });    
    });