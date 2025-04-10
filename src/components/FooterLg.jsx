import "./styles/style.css"


export default function FooterLg() {
  return (
    <footer class="footer">
  <div class="footer-contenedor">
      <div class="footer-logo">
          <h2>LOGO</h2>
          <p>Cuidamos a tu mascota con amor y dedicación.</p>
      </div>

      <div class="footer-enlaces">
          <h3>Enlaces Rápidos</h3>
          <ul>
              <li><a href="#">Inicio</a></li>
              <li><a href="#">Servicios</a></li>
              <li><a href="#">Nosotros</a></li>
              <li><a href="#">Contacto</a></li>
          </ul>
      </div>

      <div class="footer-contacto">
          <h3>Contacto</h3>
          <p><i class="bi bi-telephone"></i> +57 123 456 7890</p>
          <p><i class="bi bi-envelope"></i> contacto@petcare.com</p>
          <p><i class="bi bi-geo-alt"></i> Bogotá, Colombia</p>
      </div>

      <div class="footer-redes">
          <h3>Síguenos</h3>
          <a href="#"><i class="bi bi-facebook"></i></a>
          <a href="#"><i class="bi bi-instagram"></i></a>
          <a href="#"><i class="bi bi-whatsapp"></i></a>
      </div>
  </div>

</footer>
  )
}

