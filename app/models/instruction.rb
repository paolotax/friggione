class Instruction < ActiveRecord::Base
  belongs_to :recipe

  mount_uploader :photo, PhotoUploader
  
end
