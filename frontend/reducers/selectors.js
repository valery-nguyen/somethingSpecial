export const selectAllProducts = (state) => {
  return Object.values(state.entities.products);
}

export const selectProduct = (state, productTitle) => {
  Object.freeze(state);
  let result;
  const searchTitle = productTitle.split('-').join(' ');
  const products = state.entities.products;
  Object.keys(products).forEach( key => {
    if (products[key].title.toLowerCase() === searchTitle) {
      result = result || products[key];
    }
  });
  return result;
}

export const selectImages = (state, productTitle) => {
  Object.freeze(state);
  let result = [];
  const searchTitle = productTitle.split('-').join(' ');
  const products = state.entities.products;
  Object.keys(products).forEach(key => {
    if (products[key].title.toLowerCase() === searchTitle &&
      state.entities.products[key]['image_urls']) {
      result = Object.values(state.entities.products[key].image_urls);
    }
  });
  return result;
}

export const selectCartItems = (cartItems) => {
  return Object.values(cartItems);
}

export const selectCategoryProducts = (products, categoryName) => {
  let results = [];
  Object.keys(products).forEach(key => {
    if (products[key].category === categoryName) {
      results.push(products[key]);
    }
  });
  return results;
}


export const selectRelatedProducts = (state, productTitle) => {
  // The code below is simulating related products by choosing 6 random
  // products among all products in our mock database.
  Object.freeze(state);
  let allProducts = [];
  Object.values(state.entities.products).forEach(product => {
    if( product['image_urls'] ) allProducts.push(product);
  });

  allProducts.sort(() => { return 0.5 - Math.random() });
  let selectedProducts = [];
  let numProducts = 6;
  if (allProducts.length < 6) numProducts = allProducts.length;

  let i = 0;
  while (i < allProducts.length && numProducts > 0 && selectedProducts.length < numProducts) {
    if (allProducts[i].title !== productTitle) {
      selectedProducts.push(allProducts[i]);
    }
    i = i + 1;
  }
  return selectedProducts;
}