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

export const fetchCartItems = (cartItem) => (
  $.ajax({
    method: 'GET',
    url: 'api/cart_items'
  })
);

export const createCartItem = (cartItem) => (
  $.ajax({
    method: 'POST',
    url: 'api/cart_items',
    data: { cart_item: cartItem }
  })
);

export const fetchSearchIndex = () => (
  $.ajax({
    method: 'GET',
    url: 'api/searches'
  })
);