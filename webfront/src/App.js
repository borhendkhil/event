
import Navbar from './components/navbar';
import { BrowserRouter as Router, Routes, Route, Link } from 'react-router-dom';
import ProviderDash from './pages/providerdash';
import ClientDash from './pages/clientdash';
import AdminDash from './pages/admindash';
import Register from './pages/register';
import React, { useState } from 'react';
import Providerproducts from './pages/providerproducts';

import './App.css';
import Login from './pages/login';

function App() {
  const [isSignedIn, setIsSignedIn] = useState(true);
  const [userName, setUserName] = useState('adam');
  const [role, setRole] = useState('provider');
  

  return (
    <div className="App">
  

      <Router>
        <Routes>
          {role === 'provider' && (
            <>
            <Route path="/" element={<ProviderDash />} />
            <Route path="/products" element={<Providerproducts />} />
            </>
          
          )}
          {role === 'client' && (
            <Route path="/" element={<ClientDash />} />
          )}
          {role === 'admin' && (
            <Route path="/" element={<AdminDash />} />
          )}

          <Route path='/login' element={<Login/>} />
          <Route path='/register' element={<Register/>} />
          
        </Routes>
      </Router>
    </div>
  );
  
}

export default App;
