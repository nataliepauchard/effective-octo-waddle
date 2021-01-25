class Review < ApplicationRecord
  belongs_to :recipe, :optional => true
  belongs_to :user, :optional => true
  # makes sense because for a second it needs to be created without belonging to a recipe or a user
end


# .order(:id)
# order.(:name)
# .order(:created_at)
