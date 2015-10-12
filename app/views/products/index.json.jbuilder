json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :image_urld
  json.url product_url(product, format: :json)
end
