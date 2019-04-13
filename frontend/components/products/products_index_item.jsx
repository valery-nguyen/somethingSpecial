import React from 'react';
import { Link } from 'react-router-dom';

const ProductsIndexItem = ({ product }) => {
  const productExtension = product.title.toLowerCase().split(' ').join('-');
  const imagesArr = Object.values(product.image_urls);
  return <li className="products-index-item">
    <Link to={`/api/products/${productExtension}`}>
      <img src={imagesArr[0].image_url} alt={product.title} />
      <span>{product.title}</span>
    </Link>
    <span>${product.price}</span>
  </li>
};

export default ProductsIndexItem;