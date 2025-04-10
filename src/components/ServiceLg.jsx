import "./styles/style.css"


export default function ServiceLg() {
  return (
    <section class="servicios-favoritos">
    <h2 class="titulo-servicios">¡Los mejores cuidados para tu mascota! 🐾</h2>
    <p class="descripcion-servicios">Brindamos amor y bienestar con cada servicio. 💖</p>

    <div class="contenedor-servicios">
        <div class="servicio">
            <i class="bi bi-scissors"></i>
            <h3>Peluquería</h3>
            <p>Cortes, baños y spa para consentir a tu mascota.</p>
        </div>

        <div class="servicio">
            <i class="bi bi-shield-check"></i>
            <h3>Esterilización</h3>
            <p>Un procedimiento seguro para su bienestar y salud.</p>
        </div>

        <div class="servicio">
            <i class="bi bi-heart-pulse"></i>
            <h3>Consulta Veterinaria</h3>
            <p>Atención médica especializada para tu mejor amigo.</p>
        </div>
    </div>
</section>
  )
}

