json.array!(@reviews) do |review|
  json.extract! review, :id, :title, :comment, :rating
  json.url review_url(review, format: :json)
end
