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
    json.category @category_name
  end
end