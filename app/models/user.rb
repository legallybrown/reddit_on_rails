class User < ActiveRecord::Base
    
  has_many :comments 
  has_many :links
  has_many :votes
    
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
