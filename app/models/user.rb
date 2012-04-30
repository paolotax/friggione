class User < ActiveRecord::Base

  has_many :recipes
  
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.image = auth["info"]["image"]
    end
  end

  def update_with_omniauth(auth)
    self.update_attributes!( {:name => auth["info"]["name"], :image => auth["info"]["image"] })
  end

end
