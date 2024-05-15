import React, { useState } from 'react';
import "./login.css";
import { Link } from 'react-router-dom';

function Login() {
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');

    const handleEmailChange = (e) => {
        setEmail(e.target.value);
    };

    const handlePasswordChange = (e) => {
        setPassword(e.target.value);
    };

    const handleSubmit = async (e) => {
        e.preventDefault();


        console.log('Email:', email);
        console.log('Password', password);
        const response = await fetch('http://localhost:8080/user/login', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ 
                "email": email, 
                "password": password
            })
        });

        const data = await response.json();
        console.log('Response:', data);
    };

    return (
        <div className='content'>
            <div className='form'>
                <h2>Login</h2>
                <form onSubmit={handleSubmit}>
                    <div>
                        <label htmlFor="email">Email:</label>
                        <input
                            type="email"
                            id="email"
                            value={email}
                            onChange={handleEmailChange}
                        />
                    </div>
                    <div>
                        <label htmlFor="password">Password:</label>
                        <input
                            type="password"
                            id="password"
                            value={password}
                            onChange={handlePasswordChange}
                        />
                    </div>
                    <button type="submit">Login</button>
                </form>
                <p>Don't have an account? <Link to="/register" className='signup'>Sign up</Link></p>
            </div>
        </div>
    );
}

export default Login;