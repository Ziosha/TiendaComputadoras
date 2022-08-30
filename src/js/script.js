
import {Home_page} from './View/Home.js';

let btnHomeNav = document.getElementById("btnHomeNav");


//render pages 
btnHomeNav.addEventListener("click", function ()
{
    Home_page();
});

Home_page();


