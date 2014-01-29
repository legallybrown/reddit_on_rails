class LinksController < ApplicationController
  
  def show
    @links = Link.all

    respond_to do |format|
      format.html 
      format.json { render json: @links }
    end
  end

  def new
    @link = Link.new 
  end

  def create
    @links = Link.all 
  end

end
