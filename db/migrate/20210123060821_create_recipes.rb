class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.text :name
      t.text :image
      t.text :ingredients
      t.text :method
      t.text :duration

      t.timestamps
    end
  end
end
