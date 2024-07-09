json.extract! product, :id, :name, :price, :stock, :discount, :created_at, :updated_at
json.url product_url(product, format: :json)
