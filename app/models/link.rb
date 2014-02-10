class Link < ActiveRecord::Base
  
  belongs_to :users
  has_many :comments

  def link_params
    params.require(:links).permit(:user_id, :url, :comments, :users)  
  end
end
