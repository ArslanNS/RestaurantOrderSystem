json.extract! food, :id, :name, :description, :calories, :price, :active, :created_at, :updated_at
json.url food_url(food, format: :json)
