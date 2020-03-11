class Food < ApplicationRecord
  belongs_to :section
  has_many :orders
end
