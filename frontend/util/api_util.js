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