class Website < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  attr_accessible :name, :url
end
