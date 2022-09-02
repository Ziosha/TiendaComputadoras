
let username = document.getElementById("userName"),
    pass = document.getElementById("pass"),
    btn = document.getElementById("login")

    

    


btn.addEventListener("click", function ()
{
    var data = {Correo: username.value, Pass: pass.value};

    const apiLogin = fetch("http://localhost/tiendaComputadoras/Controller/UsuarioController.php?op=accesoAdmin", {
       method: 'POST', 
       body: JSON.stringify(data), // data can be `string` or {object}!
       headers:{
         'Content-Type': 'application/json'
       }
     }).then(res => res.json())
     .catch(error => console.error('Error:', error))
     .then(response => {
        if(response == 1)
        {
            window.open('http://localhost/tiendaComputadoras/admin/home.html','_self');
        }
        else{
            alert("Login fallido");
        }
     });    
});