@products.each do |product|
  json.set! product.id do
    json.extract! product, :id, :title, :price
    json.set! 'image_urls' do
      product.product_images.each do |img|
        json.set! img.id do
          json.image_url asset_path(img.image_url)
        end
      end
    end
  end
end

@cart_items.each do |cart_item|
  json.set! cart_item.product_id do
    json.extract! cart_item, :quantity
  end
end