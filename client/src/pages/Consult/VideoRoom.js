import React from 'react';
import './VideoRoom.css';
import Navbar from '../landing/Navbar';
import Footer from '../landing/Footer';

const Room = () => {
  return (
    <div className='whereby'>
      <Navbar/>
      <iframe
        width="1000"
        height="500"
        src="https://whereby.com/health-at-home"
        allow="camera; microphone; fullscreen; speaker"
      ></iframe>
      <Footer />
    </div>
  )
}

export default Room
