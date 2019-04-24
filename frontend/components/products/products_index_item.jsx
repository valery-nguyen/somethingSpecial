import React from 'react';
import { Link } from 'react-router-dom';

const ProductsIndexItem = ({ product, isWish, addWish, deleteWish }) => {
  const productExtension = product.title.toLowerCase().split(' ').join('-');
  const imagesArr = Object.values(product.image_urls);
  return <li className="products-index-item">
    <i id="products-index-item-like" onClick={(isWish) ? deleteWish : addWish}>{(isWish) ? `♥️` : `♡`}</i>
    <Link to={`/product/${productExtension}`}>
      <img src={imagesArr[0].image_url} alt={product.title}></img>
      <h2>{product.title}</h2>
    </Link>
    <span>${product.price}</span>
  </li>
};

export default ProductsIndexItem;