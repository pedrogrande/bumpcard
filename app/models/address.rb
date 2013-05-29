class Address < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  attr_accessible :city, :country, :name, :postcode, :street1, :street2
end
