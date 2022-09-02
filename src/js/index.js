var config = {
    apiKey: "AIzaSyAm2T8QMi7l_crmKeDUUvkV4oXuvzgciZQ",
    authDomain: "loginperifericos.firebaseapp.com",
    projectId: "loginperifericos",
    storageBucket: "loginperifericos.appspot.com",
    messagingSenderId: "944195108984",
    appId: "1:944195108984:web:6500527cffa767773fad8d",
    measurementId: "G-BQ1RN8DR02"
};
firebase.initializeApp(config);
 


var auth = firebase.auth();
document.getElementById('btlingre').addEventListener('click', function () {
    var provider = new firebase.auth.GoogleAuthProvider();
    auth.signInWithPopup(provider)
    .then(function (result) {



        var data = {Correo: result.user.providerData[0].uid};

        const apiLogin = fetch("http://localhost/tiendaComputadoras/Controller/UsuarioController.php?op=accesosocial", {
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
                alert("Bienvenido");
                window.open('http://localhost/tiendaComputadoras/index.html','_self');
            }
            else{
                $('#lblerror').hide();
                $('#lblmensaje').hide();
                $('#lblregistro').show();
            }
        });  
    }).catch(function (error) {
        console.log(error);
    });
});


function init(){

}

$(document).ready(function() {
    $('#lblmensaje').hide();
    $('#lblerror').hide();
    $('#lblregistro').hide();
});

$(document).on("click", "#btningresar", function () {
    var correo =  $('#txtcorreo').val();
    var pass =  $('#txtpass').val();
    if (correo=='' || pass==''){
        $('#lblmensaje').show();
        $('#lblerror').hide();
        $('#lblregistro').hide();
    }else{

        var data = {Correo: correo, Pass: pass};

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
                alert("Bienvenido");
                window.open('http://localhost/tiendaComputadoras/index.html','_self');
            }
            else{
                $('#lblerror').show();
                $('#lblmensaje').hide();
            }
        });    
    }
 });

