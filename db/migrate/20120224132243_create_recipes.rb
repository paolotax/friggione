class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text   :summary
      t.string :yield
      t.string :duration
      t.string :author
      t.string :photo
      t.string :video  
      t.date   :published_at
      t.string   :cooking_time
      t.string   :prep_time
      t.string :slug
      
      t.timestamps
    end
  end
end
