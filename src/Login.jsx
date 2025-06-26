import './components/styles/Login.css'

export default function Login() {
    return (
        <div className="contentForm">
            <form>
                <div className="contTitle">
                    <h1>Logo</h1>
                </div>
                <div className="contSubtitle">
                    <h3>Bienvenido de nuevo</h3>
                    <p>Ingresa tus credenciales para acceder a tu cuenta</p>
                </div>
                <div className="contUser">
                    <input type="email" placeholder='Correo Electronico'/>
                </div>
                <div className="contUser" id='secundario'>
                    <input type="password" placeholder='Contraseña' />
                </div>
                <div className="questions">
                    <p>¿Ha olvidado su contraseña?</p>
                </div>
                <div className="check">
                    <input type="checkbox" />
                    <p>Guardar informacion de inicio de sesión</p>
                </div>
                <div className="contBtn">
                    <button type="submit">Enviar</button>
                </div>
            </form>
        </div>
    )
}
