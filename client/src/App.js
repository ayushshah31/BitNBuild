import { BrowserRouter, Routes, Route } from "react-router-dom"
import About from './pages/About/About';
import Login from './pages/Authentication/Login';
import Register from './pages/Authentication/Register';
import Landing from './pages/Landing/Landing';
import VideoRoom from './pages/Consult/VideoRoom'

function App() {
  return (
    <BrowserRouter>
      <Routes>
       <Route path="/" element={<Landing />} />
       <Route path="/login" element={<Login />} />
       <Route path="/register" element={<Register />} />
       <Route path="/room" element={<VideoRoom />} />
       <Route path="/consult" element={<VideoRoom />} />
       <Route path="/book-lab-test" element={<VideoRoom />} />
       <Route path="/find-medicine" element={<VideoRoom />} />
       <Route path="/take-survey" element={<VideoRoom />} />
       <Route path="/buy-products" element={<VideoRoom />} />
       <Route path="/articles" element={<VideoRoom />} />
     </Routes>
   </BrowserRouter>
  )
}

export default App;
