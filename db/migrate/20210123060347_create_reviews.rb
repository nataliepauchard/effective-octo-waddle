class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :tagline
      t.text :content
      t.integer :rating
      t.integer :recipe_id
      t.integer :user_id

      t.timestamps
    end
  end
end
