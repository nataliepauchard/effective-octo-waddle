class Review < ApplicationRecord
  belongs_to :recipe, :optional => true
  belongs_to :user, :optional => true
  # optional because for a second it needs to be created without belonging to a recipe or a user
end
