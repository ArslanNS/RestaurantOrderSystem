class Table < ApplicationRecord
  has_many :calls
  has_one :user
end
