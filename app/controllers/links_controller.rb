class LinksController < ApplicationController
  
  def show
    @link = Link.all

    respond_to do |format|
      format.html 
      format.json { render json: @links }
    end
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

  def link_params
    params.require(:link).permit(:title, :url, :created_at, :updated_at)
  end

end


