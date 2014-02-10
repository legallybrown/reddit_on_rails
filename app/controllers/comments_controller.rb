class CommentsController < ApplicationController 

  # The before_filter contains a devise method :authenticate_user used to ensure only the currently logged in user can comment. 
  # Avoids a situation where a malicious user could change user_id and comment as another user. 

  before_filter :authenticate_user! 

  def create
    # calling current_user means only the current, signed in user can create comments
    # calling current_user.comments requests the foreign key in comments to
    # be paired with the primary key (user_id) of the current user. Do not have to
    # specify user_id because of this/ fact it is the primary key. 

    @comment = current_user.comments.create(comment_params)

    redirect_to :back
    
  end

  def new
    @comment = Comment.new

  end


  private 

  def comment_params
    params.require(:comment).permit(:message, :user_id, :link_id, :username)
  end



end 