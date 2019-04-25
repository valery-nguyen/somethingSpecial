@reviews.each do |review|
  json.set! review.id do
    json.extract! review, :id, :product_id, :user_id, :rating, :headline, :comment, :created_at
    json.extract! review.user, :fname, :lname
  end
end