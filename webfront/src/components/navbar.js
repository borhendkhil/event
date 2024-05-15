import React, { useState } from 'react';
import logo from '../res/logo.png';
import './navbar.css';
import bell from '../res/bellIcon.png';
import { Link } from 'react-router-dom';



function Navbar() {
  const [isSignedIn, setIsSignedIn] = useState(true);
  const [userName, setUserName] = useState('adam');
  const [role, setRole] = useState('provider');
  return (
    <nav className="navbar">
      <Logo />
      <SearchBar />
      <div className='right'>
      {isSignedIn ? (
        <>
          
          {role === 'admin' && (
            <>
           
              <a>Dashboard</a>
              <a>Users</a>
              <a>Settings</a>
            </>
          )}
          {role === 'provider' && (
            <>
           
              <Link to="/">Dashboard</Link>
              <a>Requests</a>
              <Link to="/products">Products</Link>
            </>
          )}
          {role === 'client' && (
            <>
           
              <a>Dashboard</a>
              <a>Bookings</a>
              <a>Profile</a>
            </>
          )}
          <span className="navbar-user">{userName}</span>
          <NotificationIcon />
        </>
        
      ) : (
        <span className="navbar-about">About Us</span>
      )}</div>
      
    </nav>
  );
}

function Logo() {
  return <img src={logo} className="navbar-logo" alt="logo" />;
}

function SearchBar() {
  return <input type="search" className="navbar-search" placeholder="Search..." />;
}

function NotificationIcon() {
  return <img src={bell} className="navbar-notification" />;
}

export default Navbar;