import { BrowserRouter, Routes, Route } from "react-router-dom";
import Login from './pages/Authentication/Login';
import Register from './pages/Authentication/Register';
import Landing from './pages/Landing/Landing';
import VideoRoom from './pages/Consult/VideoRoom'
import DoctorCard from "./pages/Consult/DoctorCard";
import Consult from './pages/Consult/Consult';
import BookLabTest from './pages/BookLabTest/BookLabTest';
import FindMedicine from './pages/FindMedicine/FindMedicine';
import TakeSurvey from './pages/TakeSurvey/TakeSurvey';
import BuyProducts from './pages/BuyProducts/BuyProducts';
import Articles from './pages/Articles/Articles';

function App() {
  return (
    <BrowserRouter>
      <Routes>
       <Route path="/" element={<Landing />} />
       <Route path="/login" element={<Login />} />
       <Route path="/register" element={<Register />} />
       <Route path="/room" element={<VideoRoom />} />
       <Route path="/doctors" element={<DoctorCard />} />
       <Route path="/consult" element={<Consult />} />
       <Route path="/book-lab-test" element={<BookLabTest />} />
       <Route path="/find-medicine" element={<FindMedicine />} />
       <Route path="/take-survey" element={<TakeSurvey />} />
       <Route path="/buy-products" element={<BuyProducts />} />
       <Route path="/articles" element={<Articles />} />
     </Routes>
   </BrowserRouter>
  )
}

export default App;
