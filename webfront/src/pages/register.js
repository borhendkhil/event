import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import "./register.css";

const Register = () => {
    const [formData, setFormData] = useState({
        username: '',
        email: '',
        password: '',
        confirmPassword: '',
        phoneNumber: '',
        accountCategory: '',
        businessCategory: ''
    });
    const [error, setError] = useState('');
    const [apiMessage, setApiMessage] = useState('');

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData({
            ...formData,
            [name]: value
        });

        if (name === 'accountCategory' && value !== 'Seller') {
            setFormData((prevData) => ({ ...prevData, businessCategory: '' }));
        }
    };

    const validateForm = () => {
        const { username, email, password, confirmPassword, phoneNumber, accountCategory, businessCategory } = formData;

        if (!username || !email || !password || !confirmPassword || !phoneNumber || !accountCategory) {
            return 'Please fill in all fields';
        }

        if (password !== confirmPassword) {
            return 'Passwords do not match';
        }

        if (accountCategory === 'Seller' && !businessCategory) {
            return 'Please select a business category';
        }

        return null;
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        setError('');
        setApiMessage('');
        
        const validationError = validateForm();
        if (validationError) {
            setError(validationError);
            return;
        }

        const { username, email, password, phoneNumber, accountCategory, businessCategory } = formData;

        const userData = {
            name: username,
            email: email,
            password: password,
            phone: phoneNumber,
            userRole: accountCategory,
            role: accountCategory === 'Seller' ? businessCategory : 'Client'
        };

        fetch('http://localhost:8080/user/create', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(userData)
        })
        .then(async (response) => {
            if (!response.ok) {
                const errorText = await response.text();
                throw new Error(errorText || 'Something went wrong');
            }
            return response.json().catch(() => ({})); // Ensure empty JSON object on parse error
        })
        .then(data => {
            setApiMessage(data.message || 'Registration successful!');
        })
        .catch(error => {
            setError(error.message || 'An error occurred. Please try again.');
            console.error(error);
        });
    };

    const { username, email, password, confirmPassword, phoneNumber, accountCategory, businessCategory } = formData;

    return (
        <div className="content">
            <div className="rform">
                <h2>Register</h2>
                {error && <p className="error">{error}</p>}
                {apiMessage && <p className="message">{apiMessage}</p>}
                <form onSubmit={handleSubmit}>
                    <label>
                        Username:
                        <input
                            type="text"
                            name="username"
                            value={username}
                            onChange={handleChange}
                        />
                    </label>
                    <br />
                    <label>
                        Email:
                        <input
                            type="email"
                            name="email"
                            value={email}
                            onChange={handleChange}
                        />
                    </label>
                    <br />
                    <label>
                        Password:
                        <input
                            type="password"
                            name="password"
                            value={password}
                            onChange={handleChange}
                        />
                    </label>
                    <br />
                    <label>
                        Confirm Password:
                        <input
                            type="password"
                            name="confirmPassword"
                            value={confirmPassword}
                            onChange={handleChange}
                        />
                    </label>
                    <br />
                    <label>
                        Phone Number:
                        <input
                            type="tel"
                            name="phoneNumber"
                            value={phoneNumber}
                            onChange={handleChange}
                        />
                    </label>
                    <br />
                    <label>
                        Account Category:
                        <select
                            name="accountCategory"
                            value={accountCategory}
                            onChange={handleChange}
                        >
                            <option value="">Select Category</option>
                            <option value="Client">Client</option>
                            <option value="Seller">Business</option>
                        </select>
                    </label>
                    <br />
                    {accountCategory === 'Seller' && (
                        <label>
                            Business Category:
                            <select
                                name="businessCategory"
                                value={businessCategory}
                                onChange={handleChange}
                            >
                                <option value="">Select Business Category</option>
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
