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



    let table = document.getElementById("render");

const render = (f,c,) => {
    return `<div class="mdl-list__item mdl-list__item--two-line">
    <span class="mdl-list__item-primary-content">
      <i class="zmdi zmdi-truck mdl-list__item-avatar"></i>
      <span>Nombre: ${f}</span>
      <span class="mdl-list__item-sub-title">NIT:${c}</span>
    </span>
    <a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
  </div>
  <li class="full-width divider-menu-h"></li>`
}

 const countAdmin = fetch("http://localhost/tiendaComputadoras/Controller/ProveedorController.php?op=getAll")
 countAdmin.then(resp => (resp.json()
            .then(data => {
                data.forEach(element => {
                    const{Nombre, Nit} = element
                table.innerHTML = table.innerHTML + render(Nombre, Nit);
                });
            })
        ));