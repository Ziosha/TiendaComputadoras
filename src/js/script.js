import {Content} from './Content.js';

let content = document.getElementById("content");
let btn1 = document.getElementById("bt1");


btn1.addEventListener("click", function circleArea()
{
    content.innerHTML = Content();
});
