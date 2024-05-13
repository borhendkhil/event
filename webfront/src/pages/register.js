import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import "./register.css"

const Register = () => {
    const [username, setUsername] = useState('');
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [confirmPassword, setConfirmPassword] = useState('');
    const [phoneNumber, setPhoneNumber] = useState('');
    const [accountCategory, setAccountCategory] = useState('');
    const [businessCategory, setBusinessCategory] = useState('');

    const handleSubmit = (e) => {
        e.preventDefault();
        // Add your registration logic here
        const userData = {
            "name": username,
            "email": email,
            "password": password,     
            "role": businessCategory,   
            "phone": "",
            "userRole": accountCategory,

        };
        // Send the data to the backend using the specified URI
        fetch('http://localhost:8080/user/create', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(userData)
        })
        .then(response => response.json())
        .then(data => {
            // Handle the response from the backend
            console.log(data);
        })
        .catch(error => {
            // Handle any errors
            console.error(error);
        });
    };

    const handleAccountCategoryChange = (e) => {
        setAccountCategory(e.target.value);
        if (e.target.value === 'Business') {
            setBusinessCategory('');
        }
    };

    return (
        <div className='content'>
            <div className='rform'>
                <h2>Register</h2>
                <form onSubmit={handleSubmit}>
                    <label>
                        Username:
                        <input
                            type="text"
                            value={username}
                            onChange={(e) => setUsername(e.target.value)}
                        />
                    </label>
                    <br />
                    <label>
                        Email:
                        <input
                            type="email"
                            value={email}
                            onChange={(e) => setEmail(e.target.value)}
                        />
                    </label>
                    <br />
                    <label>
                        Password:
                        <input
                            type="password"
                            value={password}
                            onChange={(e) => setPassword(e.target.value)}
                        />
                    </label>
                    <br />
                    <label>
                        Confirm Password:
                        <input
                            type="password"
                            value={confirmPassword}
                            onChange={(e) => setConfirmPassword(e.target.value)}
                        />
                    </label>
                    <br />
                    <label>
                        Phone Number:
                        <input
                            type="tel"
                            value={phoneNumber}
                            onChange={(e) => setPhoneNumber(e.target.value)}
                        />
                    </label>
                    <br />
                    <label>
                        Account Category:
                        <select
                            value={accountCategory}
                            onChange={handleAccountCategoryChange}
                        >
                           
                            <option value="Client">Client</option>
                            <option value="Seller">Business</option>
                        </select>
                    </label>
                    <br />
                    {accountCategory === 'Seller' && (
                        <label>
                            Business Category:
                            <select
                                value={businessCategory}
                                onChange={(e) => setBusinessCategory(e.target.value)}
                            >
                                <option value="">Seller</option>
                                <option value="Photographer">Photographer</option>
                                <option value="WeddingHall">Wedding Hall</option>
                                <option value="MakeupArtist">Makeup Artist</option>
                            </select>
                        </label>
                    )}
                    <br />
                    <button type="submit">Register</button>
                </form>
                <p>Already have an account? <Link to="/login" className="login">Login</Link></p>
            </div>
        </div>
    );
};

export default Register;