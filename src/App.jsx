import { BrowserRouter, Route, Routes } from 'react-router-dom'
import AdmiClinicoVetLg from './AdmiClinicoVetLg'
import LandingPageMq from './LandingPageMq'
import Login from './Login'
import Products from './Products'

function App() {

  return (
    <>
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<LandingPageMq/>}/>
        <Route path='/home' element={<AdmiClinicoVetLg/>}/>
        <Route path='/login' element={<Login />}/>
        <Route path='/products' element={<Products />}/>
      </Routes>
    </BrowserRouter>
    </>
  )
}

export default App
