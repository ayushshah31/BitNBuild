import React from 'react';
import './VideoRoom.css';
import Navbar from '../../components/Navbar';
import Footer from '../../components/Footer';

const Room = () => {
  return (
    <div className='whereby'>
      <Navbar/>
      <iframe
        height="500"
        width="1000"
        title="Consultation"
        src="https://whereby.com/health-at-home"
        allow="camera; microphone; fullscreen; speaker"
      ></iframe>
      <Footer />
    </div>
  )
}

export default Room;