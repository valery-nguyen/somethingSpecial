json.set! @product.id do
  json.extract! @product, :id, :title, :description, :price, :story_title, 
    :story_body, :maker_name, :maker_location, :maker_quote, :maker_description,
    :made_from, :measurements, :care, :notes, :item_id
  json.set! 'image_urls' do
      @product.product_images.each do |img|
        json.set! img.id do
          json.image_url asset_path(img.image_url)
        end
      end
    end
end

@related_products.each do |product|
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