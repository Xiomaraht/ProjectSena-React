import "./styles/style.css"


export default function HeaderLg() {
  return (
    <header>
        <div class="logo"><a href="/">Logo</a></div>
        <nav class="naOne">
            <ul>
                <li><a href="/home">Home</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Products</a></li>
                <li><a href="#">Veterinarians</a></li>
            </ul>
        </nav>
        <div class="liProf">
            <i class="ri-shopping-cart-line"></i>
            <i class="ri-heart-line"></i>
            <i class="ri-user-line"></i>
            <div class="search-bar">
                <i class="ri-search-line"></i>
                <input type="text" placeholder="Buscar..."/>
            </div>
        </div>
    </header>
  )
}

