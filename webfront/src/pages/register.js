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

    const handleSubmit = (e) => {
        e.preventDefault();
        // Add your registration logic here
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
                        onChange={(e) => setAccountCategory(e.target.value)}
                    >
                        <option value="">Select</option>
                        <option value="client">client</option>
                        <option value="Business">Business</option>
                    </select>
                </label>
                <br />
                <button type="submit">Register</button>
            </form>
            <p>Already have an account? <Link to="/login" className="login">Login</Link></p>
        </div>
        </div>
    );
};

export default Register;