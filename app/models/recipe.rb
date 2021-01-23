class Recipe < ApplicationRecord
  has_many :reviews
  # unsure whether  :optional => true should happen here - recipes don't need reviews, but they will have them eventually. 
end
