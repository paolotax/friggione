class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string  :content
      t.string  :um
      t.string  :value
      t.integer :position
      t.integer :recipe_id
      t.timestamps
    end
    
    add_index :ingredients, :recipe_id
  end
end
