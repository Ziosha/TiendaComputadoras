import {Content} from './Content.js';
import {Audifonos_page} from './View/Audifonos.js';
import {Componentes_page} from './View/Componentes.js';
import {Home_page} from './View/Home.js';
import {Mouse_page} from './View/Mouse.js';
import {Nosotros_page} from './View/Nosotros.js';

let content = document.getElementById("content"),
    btnHomeNav1 = document.getElementById("btnHomeNav"),
    btnAudifonosNav = document.getElementById("btnAudifonosNav"),
    btnMousesNav = document.getElementById("btnMousesNav"),
    btnComponentesNav = document.getElementById("btnComponentesNav"),
    btnNosotrosNav = document.getElementById("btnNosotrosNav");


//render pages 
btnHomeNav1.addEventListener("click", function ()
{
    content.innerHTML = Home_page();
});

btnAudifonosNav.addEventListener("click", function ()
{
    content.innerHTML = Audifonos_page();
});

btnMousesNav.addEventListener("click", function ()
{
    content.innerHTML = Mouse_page();
});

btnComponentesNav.addEventListener("click", function ()
{
    content.innerHTML = Componentes_page();
});

btnNosotrosNav.addEventListener("click", function ()
{
    content.innerHTML = Nosotros_page();
});