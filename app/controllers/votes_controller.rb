class VotesController < ApplicationController

  before_filter :authenticate_user!

  def create
    @vote = current_user.votes.create(vote_params) 
    
    @vote.save

    redirect_to :back 

   end

  private

  def vote_params
    params.require(:vote).permit(:user, :link, :link_id, :up)
  end

end
