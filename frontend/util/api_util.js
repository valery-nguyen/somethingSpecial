export const fetchAllProducts = () => (
  $.ajax({
    method: 'GET',
    url: 'api/products'
  })
);

export const fetchProduct = (productTitle) => (
  $.ajax({
    method: 'GET',
    url: `api/products/${productTitle}`
  })
);

export const fetchCartItems = () => (
  $.ajax({
    method: 'GET',
    url: 'api/cart_items'
  })
);

export const createCartItem = (cart_item) => (
  $.ajax({
    method: 'POST',
    url: 'api/cart_items',
    data: { cart_item }
  })
);

export const fetchSearchIndex = () => (
  $.ajax({
    method: 'GET',
    url: 'api/searches'
  })
);

export const removeCartItem = (itemId) => (
  $.ajax({
    method: 'DELETE',
    url: `api/cart_items/${itemId}`
  })
);

export const modifyCartItem = (cart_item) => (
  $.ajax({
    method: 'PATCH',
    url: `api/cart_items/${cart_item.id}`,
    data: { cart_item }
  })
);


export const fetchSearchProducts = (search_query) => (
  $.ajax({
    method: 'GET',
    url: 'api/search_products',
    data: { search_query }
  })
);