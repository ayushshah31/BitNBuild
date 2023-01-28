import { BrowserRouter, Routes, Route } from "react-router-dom";
import Login from './pages/Authentication/Login';
import Register from './pages/Authentication/Register';
import DoctorLogin from "./pages/Doctors/DoctorsLogin";
import Landing from './pages/Landing/Landing';
import VideoRoom from './pages/Consult/VideoRoom'
import DoctorCard from "./pages/Consult/DoctorCard";
import Consult from './pages/Consult/Consult';
import BookLabTest from './pages/BookLabTest/BookLabTest';
import FindMedicine from './pages/FindMedicine/FindMedicine';
import TakeSurvey from './pages/TakeSurvey/TakeSurvey';
import BuyProducts from './pages/BuyProducts/BuyProducts';
import Articles from './pages/Articles/Articles';
import AllDoctors from "./pages/Consult/AllDoctors";
import DoctorsSidebar from "./pages/Doctors/DoctorsSidebar";
import DoctorsCalendar from "./pages/Doctors/DoctorsCalendar";
import DoctorsLogs from "./pages/Doctors/DoctorsLogs";

function App() {
  return (
    <BrowserRouter>
      <Routes>
       <Route path="/" element={<Landing />} />
       <Route path="/patient/login" element={<Login />} />
       <Route path="/patient/register" element={<Register />} />
       <Route path="/doctor/login" element={<DoctorLogin />} />
       <Route path="/room" element={<VideoRoom />} />
       <Route path="/doctors" element={<AllDoctors />} />
       <Route path="/doctor" element={<DoctorCard />} />
       <Route path="/consult" element={<Consult />} />
       <Route path="/book-lab-test" element={<BookLabTest />} />
       <Route path="/find-medicine" element={<FindMedicine />} />
       <Route path="/take-survey" element={<TakeSurvey />} />
       <Route path="/buy-products" element={<BuyProducts />} />
       <Route path="/articles" element={<Articles />} />
       <Route path="/dashboard" element={<DoctorsSidebar />} />
       <Route path="/doctorcalendar" element={<DoctorsCalendar />} />
       <Route path="/doctorlogs" element={<DoctorsLogs />} />
     </Routes>
   </BrowserRouter>
  )
}

export default App;
