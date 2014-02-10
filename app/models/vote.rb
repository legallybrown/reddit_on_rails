class Vote < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :link
  has_many :ups
  
end
