import React from 'react'
import { NavLink } from 'react-router-dom';

const Home =()=>{
  return (
    <div class="flex flex-col items-center mt-12">
      <p className="font-bold">Welcome To Hello Rails React World App</p>
      <NavLink to="/greeting" className="bg-purple-600 p-2 rounded text-slate-50 mt-4">Go for Greeting</NavLink>
    </div>
  )
}

export default Home