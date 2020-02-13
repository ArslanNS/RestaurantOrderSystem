json.extract! food, :id, :name, :description, :allergens, :calories, :price, :imgURL, :isActive, :created_at, :updated_at
json.url food_url(food, format: :json)
