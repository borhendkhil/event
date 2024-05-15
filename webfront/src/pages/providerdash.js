import React from "react";
import Navbar from "../components/navbar";
import "./provider.css";

function ProviderDash (){
    const bookings = [
        { id: 1, description: 'Wedding at Sunset Venue', date: '2024-06-01' },
        { id: 2, description: 'Festival at Riverside Park', date: '2024-07-15' }
    ];

    return (
        <>
        <Navbar/>
        <div className="content">
            <h2>Confirmed Bookings</h2>
            <ul>
                {bookings.map(booking => (
                    <li key={booking.id}>
                        <strong>{booking.description}</strong><br />
                        <span>{booking.date}</span>
                    </li>
                ))}
            </ul>
        </div>
        </>
    );
};
export default ProviderDash;