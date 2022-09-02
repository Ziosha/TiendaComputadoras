let table = document.getElementById("render");

const render = (f,c,to) => {
    return `<tr>
    <td class="mdl-data-table__cell--non-numeric">${f}</td>
    <td>${c}</td>
    <td>Credito</td>
    <td>${to}$</td>
    <td><button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect"><i class="zmdi zmdi-more"></i></button></td>
</tr>`
}

 const countAdmin = fetch("http://localhost/tiendaComputadoras/Controller/VentaController.php?op=getAll")
 countAdmin.then(resp => (resp.json()
            .then(data => {
                data.forEach(element => {
                    const{CreationDate, Nombre, Precio} = element
                table.innerHTML = table.innerHTML + render(CreationDate, Nombre, Precio);
                });
            })
        ));