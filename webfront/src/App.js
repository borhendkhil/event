
import Navbar from './components/navbar';
import { BrowserRouter as Router, Routes, Route, Link } from 'react-router-dom';
import ProviderDash from './pages/provider/providerdash';
import ClientDash from './pages/client/clientdash';
import AdminDash from './pages/admin/admindash';
import Register from './pages/login/register';
import React, { useState } from 'react';
import Providerproducts from './pages/provider/providerproducts';

import './App.css';
import Login from './pages/login/login';

function App() {

  const [role, setRole] = useState(localStorage.getItem('userRole') || 'provider');
  

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
