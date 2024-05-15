import React, { useState } from 'react';
import './provider.css';

const AddProduct = () => {
    const [product, setProduct] = useState({
        name: '',
        description: '',
        price: ''
    });

    const handleChange = (e) => {
        const { name, value } = e.target;
        setProduct({
            ...product,
            [name]: value
        });
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        console.log('Product added:', product);
        setProduct({ name: '', description: '', price: '' });
    };

    return (
        <div className="Pcontent">
            <h2>Add Product</h2>
            <form onSubmit={handleSubmit}>
                <label>
                    Name:
                    <input
                        type="text"
                        name="name"
                        value={product.name}
                        onChange={handleChange}
                    />
                </label>
                <label>
                    Description:
                    <textarea
                        name="description"
                        value={product.description}
                        onChange={handleChange}
                    />
                </label>
                <label>
                    Price:
                    <input
                        type="number"
                        name="price"
                        value={product.price}
                        onChange={handleChange}
                    />
                </label>
                <button type="submit">Add Product</button>
            </form>
        </div>
    );
};

export default AddProduct;
