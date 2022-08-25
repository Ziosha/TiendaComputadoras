import {Content} from './Content.js';
import {Audifonos_page} from './View/Audifonos.js';
import {Componentes_page} from './View/Componentes.js';
import {Home_page} from './View/Home.js';
import {Mouse_page} from './View/Mouse.js';
import {Nosotros_page} from './View/Nosotros.js';

// let content = document.getElementById("content"),
    let btnHomeNav = document.getElementById("btnHomeNav"),
        btnAudifonosNav = document.getElementById("btnAudifonosNav");
//     btnMousesNav = document.getElementById("btnMousesNav"),
//     btnComponentesNav = document.getElementById("btnComponentesNav"),
//     btnNosotrosNav = document.getElementById("btnNosotrosNav");


//render pages 
btnHomeNav.addEventListener("click", function ()
{
    Home_page();
});

btnAudifonosNav.addEventListener("click", function ()
{
    Audifonos_page();
});

btnMousesNav.addEventListener("click", function ()
{
    Mouse_page();
});

btnComponentesNav.addEventListener("click", function ()
{
    Componentes_page();
});

btnNosotrosNav.addEventListener("click", function ()
{
    Nosotros_page();
});

Home_page();