class Phone < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  attr_accessible :name, :number
end
