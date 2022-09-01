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
        var user = result.user;
        console.log(user);
        console.log(result.user.providerData[0].displayName);
        console.log(result.user.providerData[0].uid);
        console.log(result.user.providerData[0].photoURL);

        $.post("../../controller/usuario.php?op=accesosocial",{correo:result.user.providerData[0].uid},function(data){
            if(data==0){
                $('#lblerror').hide();
                $('#lblmensaje').hide();
                $('#lblregistro').show();
            }else{
                window.open('../../index.php','_self');
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
        $.post("../../controller/usuario.php?op=acceso",{correo:correo,pass:pass},function(data){
            if(data==0){
                $('#lblerror').show();
                $('#lblmensaje').hide();
            }else{
                window.open('../../index.php','_self');
            }
        });
    }
 });

