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
document.getElementById('btlregis').addEventListener('click', function () {
    var provider = new firebase.auth.GoogleAuthProvider();
    auth.signInWithPopup(provider)
    .then(function (result) {
        console.log(result.user.providerData[0].displayName);
        console.log(result.user.providerData[0].uid);
        console.log(result.user.providerData[0].photoURL);

        $.post("../../controller/usuario.php?op=registro",{nomUsu:result.user.providerData[0].displayName,pass:123456,correo:result.user.providerData[0].uid},function(data){
            if(data==0){
                Swal.fire({
                    icon: 'success',
                    title: 'Aceptado!',
                    text: 'Registro Correcto',
                    confirmButtonText: `Ok`,
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.open('../../index.php','_self');
                    }
                });
            }else{
                Swal.fire(
                    'Observacion!',
                    'Correo ya existe',
                    'question'
                );
            }
        });

    }).catch(function (error) {
        console.log(error);
    });
});


function init(){

}

$(document).ready(function() {

});

$(document).on("click", "#btnregistrar", function () {
    var nomUsu =  $('#nomUsu').val();
    var correo =  $('#correo').val();
    var pass =  $('#pass').val();
    var pass1 =  $('#pass1').val();

    if (nomUsu=='' || correo=='' || pass=='' || pass1==''){
        Swal.fire(
            'Error!',
            'Campos Vacios',
            'error'
        );
    }else{
        if (pass==pass1){
            $.post("../../controller/usuario.php?op=registro",{nomUsu:nomUsu,pass:pass,correo:correo},function(data){
                if(data==0){
                    Swal.fire({
                        icon: 'success',
                        title: 'Aceptado!',
                        text: 'Registro Correcto',
                        confirmButtonText: `Ok`,
                    }).then((result) => {
                        if (result.isConfirmed) {
                            window.open('../../index.php','_self');
                        }
                    });
                }else{
                    Swal.fire(
                        'Observacion!',
                        'Correo ya existe',
                        'question'
                    );
                }
            });
        }else{
            Swal.fire(
                'Error!',
                'Contraseñas Incorrectas',
                'error'
            );
        }
    }
});