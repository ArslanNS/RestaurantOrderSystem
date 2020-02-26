class Food < ApplicationRecord
  belongs_to :section
  acts_as_taggable_on :allergies
  $allergies= ['corn', 'soy', 'milk', 'gluten']
end
