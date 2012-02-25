class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.string :content
      t.string :position
      t.time :prep_time
      t.integer :recipe_id
      t.timestamps
    end
    
    add_index :instructions, :recipe_id
  end
end
