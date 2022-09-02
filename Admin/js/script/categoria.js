let nombre = document.getElementById("NameCategory"),
    btn = document.getElementById("btn-addCategory");



    btn.addEventListener("click", function ()
    {
        var data = {Nombre: nombre.value};
        
        const apiLogin = fetch("http://localhost/tiendaComputadoras/Controller/CategoriaController.php?op=registerCategoria", {
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
                alert("categoria agregado");
                location.reload();
            }
            else{
                alert("categoria no agregado");
            }
         });    
    });