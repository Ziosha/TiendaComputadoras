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

    let table = document.getElementById("render");

    const render = (f,c,) => {
        return `<div class="mdl-list__item mdl-list__item--two-line">
        <span class="mdl-list__item-primary-content">
          <i class="zmdi zmdi-account mdl-list__item-avatar"></i>
          <span>Nombre Administrador: ${f} name</span>
          <span class="mdl-list__item-sub-title">CI: ${c}</span>
        </span>
        <a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
      </div>`
    }
    
     const countAdmin = fetch("http://localhost/tiendaComputadoras/Controller/UsuarioController.php?op=getAdmin")
     countAdmin.then(resp => (resp.json()
                .then(data => {
                    data.forEach(element => {
                        const{Nombre, Ci} = element
                    table.innerHTML = table.innerHTML + render(Nombre, Ci);
                    });
                })
            ));