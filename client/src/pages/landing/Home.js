import React from 'react'
import './Home.css'
import { useNavigate } from "react-router-dom";

const Home = () => {
  let navigate = useNavigate()
    const getIn = () => {
        navigate('/test')
    }  

  return (
    <div className='customDiv customBody font-ourfont font-semibold'>
    <button onClick={getIn}>
        <span id="A1" className='customSpan'>H</span>
        <span id="A2" className='customSpan'>E</span>
        <span id="A3" className='customSpan'>A</span>
        <span id="A4" className='customSpan'>L</span>
        <span id="A5" className='customSpan'>T</span>
        <span id="A6" className='customSpan'>H &#160;</span>
        <span id="A7" className='customSpan'>A</span>
        <span id="A8" className='customSpan'>T&#160;</span>
        <span id="A9" className='customSpan'>H</span>
        <span id="A10" className='customSpan'>O</span>
        <span id="A11" className='customSpan'>M</span>
        <span id="A12" className='customSpan'>E</span>
        </button>
    </div>
  )
}

export default Home