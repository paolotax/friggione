class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :summary
      t.string :yield
      t.string :duration
      t.string :author
      t.string :photo
      t.string :video_url  
      t.date   :published_at
      t.time   :cooking_time
      t.time   :prep_time
      t.string :slug
      
      t.timestamps
    end
  end
end
