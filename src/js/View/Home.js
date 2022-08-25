let content = document.getElementById("content");

const Home_page = () =>
{
    content.innerHTML = null;
    
        
       return content.innerHTML =  `
        <div class="banner">
            <header>
                <h1 class="Name">Bienvenidos a Yoshi-Tecno</h1>
            </header>
        </div>  `;
     
}

export {Home_page};
