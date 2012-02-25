class Recipe < ActiveRecord::Base

  has_many :ingredients,  dependent: :destroy
  has_many :instructions, dependent: :destroy
  
  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |a| a[:content].blank? },  :allow_destroy => true
  accepts_nested_attributes_for :instructions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  
  mount_uploader :photo, PhotoUploader
end
