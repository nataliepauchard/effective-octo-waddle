class Recipe < ApplicationRecord
  # belongs_to :user, :optional => true
  has_many :reviews
  # unsure whether  :optional => true should happen here - recipes don't need reviews, but they will have them eventually.
end
