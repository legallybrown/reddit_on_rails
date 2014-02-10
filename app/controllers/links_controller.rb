class LinksController < ApplicationController

  require 'action_view'
  include ActionView::Helpers::DateHelper 
  
  def index

    @links = Link.all

    respond_to do |format|
      format.html 
      format.json { render json: @links }
    end

  end 


  def show
    
    @link    = Link.find(params[:id])
    @comment = Comment.new 

    @posted = @comment.created_at

  end

  def new
    @link = Link.new 

  end

  def create
    
    @link = Link.new(link_params)
      if @link.save
        flash[:notice] = "Link succesfully added!"
        redirect_to link_path(@link) 
      else
        flash[:notice] = "Error, please try again"
        redirect_to new_link_path
      end
  end

  private

  def link_params
    params.require(:link).permit(:comment, :title, :url, :user_id)
  end

end


