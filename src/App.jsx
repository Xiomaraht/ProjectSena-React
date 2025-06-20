import { BrowserRouter, Route, Routes } from 'react-router-dom'
import AdmiClinicoVetLg from './AdmiClinicoVetLg'
import LandingPageMq from './LandingPageMq'

function App() {

  return (
    <>
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<LandingPageMq/>}/>
        <Route path='/home' element={<AdmiClinicoVetLg/>}/>
      </Routes>
    </BrowserRouter>
    </>
  )
}

export default App
