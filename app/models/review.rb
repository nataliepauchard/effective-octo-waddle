class Review < ApplicationRecord
  belongs_to :recipe, :optional => true
  belongs_to :user, :optional => true
  # doesn't make sense to have  :optional => true here, a review MUST belong to a recipe and a user, it can't exist without refering to a recipe / being owned by a user
end
