class Order < ApplicationRecord
  belongs_to :table
  belongs_to :food
  belongs_to :status
end
