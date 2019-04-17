@products.each do |product|
  json.set! product.id do
    json.extract! product, :id, :title
  end
end