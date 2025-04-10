import { BrowserRouter, Route, Routes } from 'react-router-dom'
import HomePageLg from './HomePageLg'
import LandingPageMq from './LandingPageMq'

function App() {

  return (
    <>
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<LandingPageMq/>}/>
        <Route path='/home' element={<HomePageLg/>}/>
      </Routes>
    </BrowserRouter>
    </>
  )
}

export default App
