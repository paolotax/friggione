class Recipe < ActiveRecord::Base

  has_many :ingredients,  dependent: :destroy
  has_many :instructions, dependent: :destroy
  
  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |a| a[:content].blank? },  :allow_destroy => true
  accepts_nested_attributes_for :instructions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  
  mount_uploader :photo, PhotoUploader
  mount_uploader :video, VideoUploader
  
  extend FriendlyId
  friendly_id :title, use: :history

  def should_generate_new_friendly_id?
    new_record?
  end
  
end
