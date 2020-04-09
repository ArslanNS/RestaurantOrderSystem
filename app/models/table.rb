class Table < ApplicationRecord
  has_many :calls
  has_one :user
  has_many :orders
  has_one :bill
end
