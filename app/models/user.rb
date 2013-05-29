class User < ActiveRecord::Base
  rolify
  attr_accessible :role_ids, :as => :admin
  attr_accessible :provider, :uid, :name, :email
  validates_presence_of :name
  has_many :phones
  has_many :addresses
  has_many :websites

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
         user.first_name = auth['info']['first_name'] || ""
         user.last_name = auth['info']['last_name'] || ""
         user.picture_url = auth['info']["image"] || ""
         user.public_profile_url = auth['info']["urls"].public_profile || ""
         user.location = auth['info']['location'] || ""
         user.headline = auth['info']['headline'] || ""
         user.industry = auth['info']['industry'] || ""
      end
    end
  end

  def find_country_from_location
    if self.location
      location.split(', ')[1]
    end
  end


end
