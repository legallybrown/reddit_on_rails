class Comment < ActiveRecord::Base

  belongs_to :users 
  belongs_to :links 

  def comment_params
    params.require(:comment).permit(:message, :user_id, :link_id, :link, :user)
  end

end

