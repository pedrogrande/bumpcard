class Position < ActiveRecord::Base
  belongs_to :user
  attr_accessible :company, :company_url, :title
end
