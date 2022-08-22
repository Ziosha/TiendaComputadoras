import {Content} from './Content.js';

let content = document.getElementById("content");
let btn1 = document.getElementById("btnHome1");
let btn2 = document.getElementById("btnAudifonos1")


btn1.addEventListener("click", function ()
{
    content.innerHTML = `<h1>Pagina 1</h1>`;
});


btn2.addEventListener("click", function ()
{
    content.innerHTML = `<h1>Pagina 2</h1>`;
});