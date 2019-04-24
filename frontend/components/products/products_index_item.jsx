import React from 'react';
import { Link } from 'react-router-dom';

const ProductsIndexItem = ({ product, isWish, addWish, deleteWish, currentUser }) => {
  const productExtension = product.title.toLowerCase().split(' ').join('-');
  const imagesArr = Object.values(product.image_urls);
  return <li className="products-index-item">
    <i 
      id="products-index-item-like" 
      onClick=
      {(!currentUser) ? openLoginPanel : ((isWish) ? deleteWish : addWish)}>
        {(isWish) ? `♥️` : `♡`}
    </i>
    <Link to={`/product/${productExtension}`}>
      <img src={imagesArr[0].image_url} alt={product.title}></img>
      <h2>{product.title}</h2>
    </Link>
    <span>${product.price}</span>
  </li>
};

const openLoginPanel = () => {
  const modalEl = document.getElementsByClassName("modal-screen")[0];
  const modalForm = document.getElementsByClassName("modal-form")[0];
  const body = document.getElementById("root");
  modalEl.classList.remove("is-open");
  modalForm.classList.remove("is-open");
  body.classList.add("noscroll");
};

export default ProductsIndexItem;