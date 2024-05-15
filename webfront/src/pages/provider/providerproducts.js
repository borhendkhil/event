import React, { useState } from 'react';
import './provider.css';
import Navbar from '../../components/navbar';
import { Link } from 'react-router-dom';

const ProviderProducts = () => {
    const [products, setProducts] = useState([
        { id: 1, name: 'Wedding Venue', description: 'Beautiful wedding venue with a garden', price: '2000' },
        { id: 2, name: 'Makeup Services', description: 'Professional makeup services for weddings', price: '500' }
    ]);

    const handleDelete = (productId) => {
        setProducts(products.filter(product => product.id !== productId));
    };

    return (
        <>
         <Navbar />
        <div className="Pcontent">
           

            <h2>Your Products</h2>
            <ul>
                {products.map(product => (
                    <li key={product.id}>
                        <div>
                            <strong>{product.name}</strong><br />
                            <span>{product.description}</span><br />
                            <span>Price: ${product.price}</span>
                        </div>
                        <div>
                            <button onClick={() => handleDelete(product.id)}>Delete</button>
                            <button onClick={() => alert(`Edit product ${product.id}`)}>Edit</button>
                        </div>
                    </li>
                ))}
                <Link to="/addproduct">Add Product</Link>
            </ul>
        </div>
        </>
    );
};

export default ProviderProducts;
