class Bill < ApplicationRecord
  belongs_to :table
  has_many :orders
end