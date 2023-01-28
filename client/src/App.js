import { BrowserRouter, Routes, Route } from "react-router-dom"
import About from './pages/About/About';
import Login from './pages/Authentication/Login';
import Register from './pages/Authentication/Register';
import Landing from './pages/Landing/Landing';
import VideoRoom from './pages/Consult/VideoRoom'
import DoctorCard from "./pages/Consult/DoctorCard";

function App() {
  return (
    <BrowserRouter>
      <Routes>
       <Route path="/" element={<Landing />} />
       <Route path="/login" element={<Login />} />
       <Route path="/register" element={<Register />} />
       <Route path="/about" element={<About/>} />
       <Route path="/room" element={<VideoRoom />} />
       <Route path="/consult" element={<DoctorCard />} />
     </Routes>
   </BrowserRouter>
  )
}

export default App;
