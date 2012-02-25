class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.string :content
      t.string :position
      t.string :prep_time
      t.string :photo
      t.integer :recipe_id
      t.timestamps
    end
    
    add_index :instructions, :recipe_id
  end
end
