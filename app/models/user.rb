class User < ActiveRecord::Base
    
  has_many :comments 
  has_many :links 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def user_params
    params.require(:user).permit(:email, :username, :comments, :links)
  end

end
